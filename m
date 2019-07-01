Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 547E7598F3
	for <lists.bridge@lfdr.de>; Fri, 28 Jun 2019 13:02:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E481ACB2;
	Fri, 28 Jun 2019 11:02:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BDB4DC74
	for <bridge@lists.linux-foundation.org>;
	Fri, 28 Jun 2019 11:02:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: greylisting inactive for zahari.doychev@linux.com in SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3617913A;
	Fri, 28 Jun 2019 11:02:29 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <johannes@sipsolutions.net>)
	id 1hgoe7-0007P4-VS; Fri, 28 Jun 2019 13:02:24 +0200
Message-ID: <411e7717a68243fc775910ee01fa110c45ce0630.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Toshiaki Makita <toshiaki.makita1@gmail.com>, Alexei Starovoitov
	<alexei.starovoitov@gmail.com>
Date: Fri, 28 Jun 2019 13:02:22 +0200
In-Reply-To: <828a23fe-8466-ae65-7829-620f32aacead@gmail.com>
	(sfid-20190617_131539_212442_3AC98020)
References: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
	<20190615151913.cgrfyflwwnhym4u2@ast-mbp.dhcp.thefacebook.com>
	<e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
	<828a23fe-8466-ae65-7829-620f32aacead@gmail.com>
	(sfid-20190617_131539_212442_3AC98020)
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: David Ahern <dsahern@gmail.com>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Jiri Pirko <jiri@mellanox.com>,
	Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	Cong Wang <xiyou.wangcong@gmail.com>,
	Simon Horman <simon.horman@netronome.com>
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

On Mon, 2019-06-17 at 20:15 +0900, Toshiaki Makita wrote:

> I'll try to explain the problem I see, which cannot be fixed by option 1...
> The bug is in tcf_vlan_act(), and mainly in skb->data, not in mac_len.
> 
> Consider about vlan packets from NIC, but non-hw-accelerated, where
> vlan devices are configured to receive them.
> 
> When __netif_receive_skb_core() is called, skb is like this.
> 
> +-----+------+--------
> > eth | vlan | TCP/IP
> 
> +-----+------+--------
>        ^
>       data
> 
> skb->data is at the beginning of the vlan header.

Right.

> This is reasonable because we did not process the vlan tag at this point.

I think with this simple sentence you just threw a whole new semantic
issue into the mix, one that I at least hadn't considered.

However, it's not clear to me whether we should consider a tag as
processed or not when we push it.

In a sense, this means we should have two different VLAN tag push
options - considering it processed or unprocessed. Or maybe it should
always be considered unprocessed, but that's not what we do today.

> Then after vlan_do_receive() (receive the skb on a vlan device), the skb is like this.
> 
> +-----+--------
> > eth | TCP/IP
> 
> +-----+--------
>        ^
>       data
> 
> Or if reorder_hdr is off (which does not remove vlan tags when receiving on vlan devices),
> 
> +-----+------+--------
> > eth | vlan | TCP/IP
> 
> +-----+------+--------
>               ^
>              data
> 
> Relying on this mechanism, we are currently able to handle multiple vlan tags.
> 
> For example if we have 2 tags,
> 
> - On __netif_receive_skb_core() invocation
> 
> +-----+------+------+--------
> > eth | vlan | vlan | TCP/IP
> 
> +-----+------+------+--------
>        ^
>       data
> 
> - After first vlan_do_receive()
> 
> +-----+------+--------
> > eth | vlan | TCP/IP
> 
> +-----+------+--------
>        ^
>       data
> 
> Or if reorder_hdr is off,
> 
> +-----+------+------+--------
> > eth | vlan | vlan | TCP/IP
> 
> +-----+------+------+--------
>               ^
>              data
> 
> When we process one tag, the data goes forward by one tag.

Right, that's a very good point.

> Now looking at TC vlan case...
> 
> After it inserts two tags, the skb looks like:
> 
> (The first tag is in vlan_tci)
> +-----+------+--------
> > eth | vlan | TCP/IP
> 
> +-----+------+--------
>               ^
>              data
> 
> The data pointer went forward before we process it.
> This is apparently wrong. I think we don't want to (or cannot?) handle cases like this
> after tcf_vlan_act(). This is why I said we should remember mac_len there.

Right, makes a lot of sense.

If you consider a tc VLAN pop, you'd argue that it should pop the next
unprocessed tag I guess, since if it was processed then it doesn't
really exist any more (semantically, you still see it if reorder_hdr is
off), right?

> So, my opinion is:
> On ingress, data pointer can be at the end of vlan header and mac_len probably should
> include vlan tag length, but only after the vlan tag is processed.

You're basically arguing for option (3), I think, making VLAN push/pop
not manipulate mac_len since they can just push/pop *unprocessed* tags,
right?

I fear this will cause all kinds of trouble in other code. Perhaps we
need to make this processed/unprocessed state more explicit.

> Bridge may need to handle mac_len that is not equal to ETH_HLEN but to me it's a
> different problem.

Yes. Like I just said to Daniel, I think we should make bridge handle
mac_len so that we can just exclude it from this whole discussion.
Regardless of the mac_len and processed/unprocessed tags, it would just
work as expected.

johannes

