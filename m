Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C1447D8D
	for <lists.bridge@lfdr.de>; Mon, 17 Jun 2019 10:50:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C4373C3A;
	Mon, 17 Jun 2019 08:49:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7ABBA8D7
	for <bridge@lists.linux-foundation.org>;
	Mon, 17 Jun 2019 08:49:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: greylisting inactive for zahari.doychev@linux.com in SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4ABBE6;
	Mon, 17 Jun 2019 08:49:45 +0000 (UTC)
Received: from [78.46.172.3] (helo=sslproxy06.your-server.de)
	by www62.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1hcnKe-0007WH-Aw; Mon, 17 Jun 2019 10:49:40 +0200
Received: from [178.199.41.31] (helo=linux.home)
	by sslproxy06.your-server.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <daniel@iogearbox.net>)
	id 1hcnKe-000XPn-4B; Mon, 17 Jun 2019 10:49:40 +0200
To: Johannes Berg <johannes@sipsolutions.net>,
	Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
	<20190615151913.cgrfyflwwnhym4u2@ast-mbp.dhcp.thefacebook.com>
	<e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <fa2b9787-c658-ac49-1c35-0d84d52b3ec1@iogearbox.net>
Date: Mon, 17 Jun 2019 10:49:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25483/Mon Jun 17 09:56:00 2019)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	Jiri Pirko <jiri@mellanox.com>, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Simon Horman <simon.horman@netronome.com>, David Ahern <dsahern@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>
Subject: Re: [Bridge] VLAN tags in mac_len
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

On 06/15/2019 09:19 PM, Johannes Berg wrote:
> Hi Alexei,
> 
> Sorry for messing up your address btw, not sure where I dug that one
> up...
> 
>>>  1) Make the bridge code use skb->mac_len instead of ETH_HLEN. This
>>>     works for this particular case, but breaks some other cases;
>>>     evidently some places exist where skb->mac_len isn't even set to
>>>     ETH_HLEN when a packet gets to the bridge. I don't know right now
>>>     what that was, I think probably somebody who's CC'ed reported that.
>>>
>>>  2) Let tc_act_vlan() just pull ETH_HLEN instead of skb->mac_len, but
>>>     this is rather asymmetric and strange, and while it works for this
>>>     case it may cause confusion elsewhere.
>>>
>>>  2b) Toshiaki said it might be better to make that code *remember*
>>>      mac_len and then use it to push and pull (so not caring about the
>>>      change made by skb_vlan_push()), but that ultimately leads to
>>>      confusion and if you have TC push/pop combinations things just get
>>>      completely out of sync and die
>>>
>>>  3) Make skb_vlan_push()/_pop() just not change mac_len at all. So far
>>>     this also addresses the issue, but it's likely that this will break
>>>     OVS, and I don't know how it'd affect BPF. Quite possibly like TC
>>>     does and is broken, but perhaps not.
>>>
>>>
>>> But now we're stuck. Depending on how you look at it, all of these seem
>>> sort of reasonable, or not.
>>>
>>> Ultimately, the issue seems to be that we couldn't really decide whether
>>> VLAN tags (and probably MPLS tags, for that matter) are covered by
>>> mac_len or not. At least not consistently on ingress and egress.
>>> eth_type_trans() doesn't take them into account, so of course on simple
>>> ingress mac_len will only cover the ETH_HLEN.
>>>
>>> If you have an accelerated tag and then push it into the SKB, it will
>>> *not* be taken into account in mac_len. OTOH, if you have a new tag and
>>> use skb_vlan_push() then it *will* be taken into account.
>>>
>>>
>>> I'm trending towards solution (3), because if we consider other
>>> combinations of VLAN push/pop in TC, I think we can end up in a very
>>> messy situation today. For example, POP/PUSH seems like it should be a
>>> no-op, but it isn't due to the mac_len, *unless* it can use the HW accel
>>> only (i.e. only a single tag).
>>>
>>> I think then to propose such a patch though we'd have to figure out
>>> where the BPF case is, and to keep OVS working probably either add an
>>> argument ("bool adjust_mac_len") to the function signatures, or just do
>>> the adjustments in OVS code after calling them?
>>>
>>>
>>> Any other thoughts?
>>
>> imo skb_vlan_push() should still change mac_len.
>> tc, ovs, bpf use it and expect vlan to be part of L2.
> 
> I'm not sure tc really cares, but it *is* a reasonable argument to make.
> 
> Like I said, whichever way I look at the problem, a different solution
> looks more reasonable ;-)

Agree with Alexei that the approach which would be least confusing and/or
potentially causing regressions might be to go for 1). tc *does* care at least
for the *BPF* case. In sch_clsact we have the ingress and egress hook where we
can attach to and programs don't need to care where they are being attached
since for both cases they see skb->data starting at eth header! In order to
do this, we do a __skb_push()/__skb_pull() dance based on skb->mac_len depending
from where we come. This also means that if a program pushed/popped a vlan tag,
this still must be correct wrt expectations for the receive side. It is essential
that there is consistent behavior on skb->mac_len given skbs can also be redirected
from TX->RX or RX->TX(->RX), so that we don't pull to a wrong offset next time.

Thanks,
Daniel
