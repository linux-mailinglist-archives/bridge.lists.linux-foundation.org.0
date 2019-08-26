Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 648099D4C4
	for <lists.bridge@lfdr.de>; Mon, 26 Aug 2019 19:14:50 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 210F01BF1;
	Mon, 26 Aug 2019 17:13:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E691F1805
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 02:46:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
	[209.85.217.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC80F756
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 02:46:04 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id j25so9927072vsq.12
	for <bridge@lists.linux-foundation.org>;
	Sun, 25 Aug 2019 19:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ng3r5ONd1UXk9XbKRQ/zQ2B6srwD/ZPTNQ4V19/Kj9k=;
	b=bnUIMT7JohUlW4Oahlrsf7w9EBYZqsvNo09J+X+VLhDwVpX6jTeQWC6IN6sIQAq7fp
	0a54HgDv5nhu19OUAynDvvP15aLc44u6qo11gYC5RnNCo0J3lGtNAqhB7eWX8kzNEk/r
	hRrg9fGUKL9FK97XUN+qWd2ptbq0ggMlaPw9C9ifvDxMrj9ox9RBsmdJDuINDmZ+2Qut
	yvN3RnEFO8fuxwRn8FSXkieO1xxa/17uHZz9eIBgCTs0py11lO5bPabcGqwRMFnmeZ3C
	mOH/WFKR23C0xMfMtYjDn5R3uHjgc0j7kKQa5+LCkhqbZY3Fsx7eSvmew0cspGOTaZtD
	TsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ng3r5ONd1UXk9XbKRQ/zQ2B6srwD/ZPTNQ4V19/Kj9k=;
	b=iv2KjK9OhmGauDZ1OPxY4gx17ZdaTJ4Nu9lk3wyJIBp/3Ypzi+aBzAd825EChDujJQ
	OuIrLMs4Oon7h5uglH04EQH/mO7xDfqFboFV6+R5xVRRLAAGjXYf9vhQdsUXxnobj+QC
	iOlh6ydOUeg/69Q0MfH0Dv4SMbp6couiq6TAWZU3k+sHfarSNzyh/PtScAkHguLj82pD
	LKNG50jEcouMbzf/XdaQeV9JcR16SXU6L2+jBxRvFKnX6UTVBfb2EpUusCpeBcMqKpIF
	hrHll1cqhyXpUtcGsdrEYW+AQWB3mrb/EsZ5pmnDUVLAn2Y2WZMPLXKC2rBMtzxbUsoi
	exyQ==
X-Gm-Message-State: APjAAAVXqt5HVZMe9MF/+GdZYniV3p4NnKQblq9AgD+PRff5e+53sXZQ
	lwD0wfAjKXwPSWj9azG6TATpVoeIVIeiklggPg==
X-Google-Smtp-Source: APXvYqzQCcgTMZNQ/nWhyrJuz9jbUm0rIgbeTEFk88hIcZ0/xc+RP1r9NgPZajYUzJYrKIyUk683wwYVBYswndDjx/Q=
X-Received: by 2002:a67:eb12:: with SMTP id a18mr9289943vso.231.1566787563972; 
	Sun, 25 Aug 2019 19:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190730122534.30687-1-rdong.ge@gmail.com>
	<1dc87e69-628b-fd04-619a-8dbe5bdfa108@cumulusnetworks.com>
In-Reply-To: <1dc87e69-628b-fd04-619a-8dbe5bdfa108@cumulusnetworks.com>
From: Rundong Ge <rdong.ge@gmail.com>
Date: Mon, 26 Aug 2019 10:45:52 +0800
Message-ID: <CAN1LvyoL3YUot0JAfz1BwN9LBxM0XUgSkYHhWJ75DFHW_-6+zw@mail.gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
	kadlec@netfilter.org, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kuznet@ms2.inr.ac.ru,
	davem@davemloft.net, Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH] bridge:fragmented packets dropped by bridge
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

On Tue, Jul 30, 2019 at 8:41 PM Nikolay Aleksandrov
<nikolay@cumulusnetworks.com> wrote:
>
> On 30/07/2019 15:25, Rundong Ge wrote:
> > Given following setup:
> > -modprobe br_netfilter
> > -echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
> > -brctl addbr br0
> > -brctl addif br0 enp2s0
> > -brctl addif br0 enp3s0
> > -brctl addif br0 enp6s0
> > -ifconfig enp2s0 mtu 1300
> > -ifconfig enp3s0 mtu 1500
> > -ifconfig enp6s0 mtu 1500
> > -ifconfig br0 up
> >
> >                  multi-port
> > mtu1500 - mtu1500|bridge|1500 - mtu1500
> >   A                  |            B
> >                    mtu1300
> >
> > With netfilter defragmentation/conntrack enabled, fragmented
> > packets from A will be defragmented in prerouting, and refragmented
> > at postrouting.
> > But in this scenario the bridge found the frag_max_size(1500) is
> > larger than the dst mtu stored in the fake_rtable whitch is
> > always equal to the bridge's mtu 1300, then packets will be dopped.
> >
> > This modifies ip_skb_dst_mtu to use the out dev's mtu instead
> > of bridge's mtu in bridge refragment.
> >
> > Signed-off-by: Rundong Ge <rdong.ge@gmail.com>
> > ---
> >  include/net/ip.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/include/net/ip.h b/include/net/ip.h
> > index 29d89de..0512de3 100644
> > --- a/include/net/ip.h
> > +++ b/include/net/ip.h
> > @@ -450,6 +450,8 @@ static inline unsigned int ip_dst_mtu_maybe_forward(const struct dst_entry *dst,
> >  static inline unsigned int ip_skb_dst_mtu(struct sock *sk,
> >                                         const struct sk_buff *skb)
> >  {
> > +     if ((skb_dst(skb)->flags & DST_FAKE_RTABLE) && skb->dev)
> > +             return min(skb->dev->mtu, IP_MAX_MTU);
> >       if (!sk || !sk_fullsock(sk) || ip_sk_use_pmtu(sk)) {
> >               bool forwarding = IPCB(skb)->flags & IPSKB_FORWARDED;
> >
> >
>
> I don't think this is correct, there's a reason why the bridge chooses the smallest
> possible MTU out of its members and this is simply a hack to circumvent it.
> If you really like to do so just set the bridge MTU manually, we've added support
> so it won't change automatically to the smallest, but then how do you pass packets
> 1500 -> 1300 in this setup ?
>
> You're talking about the frag_size check in br_nf_ip_fragment(), right ?
>

Hi Nikolay
My setup may not be common. And may I know if there is any reason to
use output port's MTU
to do the re-fragment check but then use the bridge's MTU to do the re-fragment?
Is it the expected behavior that the bridge's MTU will affect the
FORWARD traffic re-fragment,
because I used to think the bridge's MTU will only effect the OUTPUT
traffic sent from "br0".
And the modification in this patch will replace the MTU in the
fake_rtable which is only
used in the FORWARD re-fragment and won't affect the local traffic from "br0".

TKS
Raydodn
