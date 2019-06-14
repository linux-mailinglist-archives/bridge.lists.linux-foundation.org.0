Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AA845A3A
	for <lists.bridge@lfdr.de>; Fri, 14 Jun 2019 12:19:04 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7E9D51112;
	Fri, 14 Jun 2019 10:18:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F37B10FE
	for <bridge@lists.linux-foundation.org>;
	Fri, 14 Jun 2019 10:18:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 24CCBE5
	for <bridge@lists.linux-foundation.org>;
	Fri, 14 Jun 2019 10:18:46 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <johannes@sipsolutions.net>)
	id 1hbjIB-0005RR-1o; Fri, 14 Jun 2019 12:18:43 +0200
Message-ID: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: netdev@vger.kernel.org
Date: Fri, 14 Jun 2019 12:18:41 +0200
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	nikolay@cumulusnetworks.com, Simon Horman <simon.horman@netronome.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Jiri Pirko <jiri@mellanox.com>, David Ahern <dsahern@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>, Alexei Starovoitov <ast@plumgrid.com>
Subject: [Bridge] VLAN tags in mac_len
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Hi all,

Sorry for the long CC list - it's a bit unclear where the issue is.

Zahari has been looking at this forever, and we keep talking about it,
but every time we squint and look at it in a different way, the issue
appears in a different place.

Ultimately, the issue appears to be that we cannot make up our mind
whether we consider VLAN tags to be covered by mac_len or not.


Some history first.

For OVS datapath, Simon evidently considered the VLAN tags to be part of
the mac_len, since the OVS VLAN push/pop actions manipulate it, see
commit 25cd9ba0abc07 ("openvswitch: Add basic MPLS support to kernel").
It's not clear to me, however, why it previously wasn't considered and
only MPLS needed to consider it this way - perhaps nobody ever tried
double-VLAN tagging or something.

Anyway, then in commit 93515d53b133 ("net: move vlan pop/push functions
into common code") Jiri moved the code as is into common code, which
still kinda made sense since OVS was the only user. Maybe at this point
we should've asked whether or not the mac_len manipulations make sense
or not though.

Now clearly Jiri had an agenda (btw, sorry for misspelling your name all
the time), and followed up with commit c7e2b9689ef8 ("sched: introduce
vlan action"). I assume this was tested, but probably not in the
scenario we have now.

There's also commit 4e10df9a60d9 ("bpf: introduce
bpf_skb_vlan_push/pop() helpers") which then makes all of this get used
in BPF.

The bridge code, on the other hand, has basically always (I stopped
looking when I hit the end of current git history) assumed that VLAN
tags are not part of mac_len, and does skb_push(ETH_HLEN).


Next, the scenario.

Basically, what Zahari is trying to do is to use TC to push *two* VLAN
tags on ingress, before the packet then goes to the bridge.

This results in the following flow:

We start with an ingress skb, somewhere:
-> eth_type_trans()
 => skb->mac_len = 14,
    skb->data = ethhdr + 14

Push the first tag with TC:
-> tc vlan push (tag1)
 -> skb_push(mac_len)
  => skb->data = ethhdr

 -> skb_vlan_push(tag1)
  -> __vlan_hwaccel_put_tag(tag1)

 -> skb_pull(mac_len)
  => skb->data = ethhdr + 14
 => no changes in SKB other than recorded VLAN acceleration

Push the second tag with TC
-> tc vlan push (tag2)
 -> skb_push(mac_len)
   * skb->data = ethhdr
 -> skb_vlan_push(tag2)
  -> __vlan_insert_tag()
  -> skb->mac_len += 4
   => skb->mac_len = 18
 -> __vlan_hwaccel_put_tag(tag2)
 -> skb_pull(mac_len)
  => skb->data = ethhdr + 18

-> bridge
 -> br_dev_queue_push_xmit()
  -> skb_push(14)
   => skb->data = ethhdr + 4 (!!!)
  -> dev_queue_xmit()

=> as a result, now the first 4 bytes of the frame are lost, as
   on xmit drivers expect to start at skb->data

(There's some more complication here if we actually don't have HW
offload for the VLAN tag, but the end result is basically the same)



Possible solutions?

So far, Zahari tried three different ways of fixing this:

 1) Make the bridge code use skb->mac_len instead of ETH_HLEN. This
    works for this particular case, but breaks some other cases;
    evidently some places exist where skb->mac_len isn't even set to
    ETH_HLEN when a packet gets to the bridge. I don't know right now
    what that was, I think probably somebody who's CC'ed reported that.

 2) Let tc_act_vlan() just pull ETH_HLEN instead of skb->mac_len, but
    this is rather asymmetric and strange, and while it works for this
    case it may cause confusion elsewhere.

 2b) Toshiaki said it might be better to make that code *remember*
     mac_len and then use it to push and pull (so not caring about the
     change made by skb_vlan_push()), but that ultimately leads to
     confusion and if you have TC push/pop combinations things just get
     completely out of sync and die

 3) Make skb_vlan_push()/_pop() just not change mac_len at all. So far
    this also addresses the issue, but it's likely that this will break
    OVS, and I don't know how it'd affect BPF. Quite possibly like TC
    does and is broken, but perhaps not.


But now we're stuck. Depending on how you look at it, all of these seem
sort of reasonable, or not.

Ultimately, the issue seems to be that we couldn't really decide whether
VLAN tags (and probably MPLS tags, for that matter) are covered by
mac_len or not. At least not consistently on ingress and egress.
eth_type_trans() doesn't take them into account, so of course on simple
ingress mac_len will only cover the ETH_HLEN.

If you have an accelerated tag and then push it into the SKB, it will
*not* be taken into account in mac_len. OTOH, if you have a new tag and
use skb_vlan_push() then it *will* be taken into account.


I'm trending towards solution (3), because if we consider other
combinations of VLAN push/pop in TC, I think we can end up in a very
messy situation today. For example, POP/PUSH seems like it should be a
no-op, but it isn't due to the mac_len, *unless* it can use the HW accel
only (i.e. only a single tag).

I think then to propose such a patch though we'd have to figure out
where the BPF case is, and to keep OVS working probably either add an
argument ("bool adjust_mac_len") to the function signatures, or just do
the adjustments in OVS code after calling them?


Any other thoughts?

Thanks,
Zahari & Johannes

