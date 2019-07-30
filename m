Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BDC7DD22
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:01:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3435F1905;
	Thu,  1 Aug 2019 13:59:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 087BC2CA2
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:41:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 501DD2C6
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:41:27 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n9so40533787wrr.4
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 05:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=BlP4513unQUdet+MKvQ2g15uNq4TvoNSOCqk6BEJf7o=;
	b=gJ1Zv7I1MINBx3xVNBcaEWYgqiAI2Hxdpv8UWLgZ1l+KCYj74JMQWldehUfc6SIkAz
	6wAw9qlPZq6SQKIeNsAhxvcBfOZEMvPvAc5Q0LHyJdD4gVZgojW4m+qLNz4GfrBixnVY
	AKPWBhhHasuwPOKwO/HteYm4dTpfSYy2+WL0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=BlP4513unQUdet+MKvQ2g15uNq4TvoNSOCqk6BEJf7o=;
	b=II4kTv2mAmSr8LuXSLe7FLnWNtXlOaxRw9Ub5NINm0gLLkOsid3a/xVMS1jkhCdmZ5
	WO/o0twfW+/5oIePRO+US6xu2Z+vYlcrjACLexDliB/zechJD5TOjN4ufhr8Z399ZPz2
	BSK96jJ9mTY0XT2gCiHSjn/EqG6qhHIpM2An1YsEeYykpZ86BoQubZMOPgaDc0uaj9ch
	y01ujiyFmRL/zhZTue2vkV76McA7eJ9lOQaucfKO7nHs1KbFfJOLMDvBAH6Uet37P2dG
	z1DB7uFR+MvMGA6LfVMc0DYk+cZ3KIE1xl5uv1W5+Zv99FDqUus4DW3njycTnmK2y0sf
	KedQ==
X-Gm-Message-State: APjAAAUMFdYVPQcjtJvynbiK9+1sDdIjynI+FIreL3rdO448VtbOQIaB
	UrQA2IAxXJvOEXhJzDSsczue1A==
X-Google-Smtp-Source: APXvYqymLpYKBAlscHzFKItEq4jYCoeLBstlJUeaMgXHLDywH09H+q/A04KfrqhOZLQGA6w7A4n4MQ==
X-Received: by 2002:a5d:5507:: with SMTP id b7mr12759586wrv.35.1564490485822; 
	Tue, 30 Jul 2019 05:41:25 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	g12sm94634989wrv.9.2019.07.30.05.41.24
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 05:41:25 -0700 (PDT)
To: Rundong Ge <rdong.ge@gmail.com>, davem@davemloft.net
References: <20190730122534.30687-1-rdong.ge@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <1dc87e69-628b-fd04-619a-8dbe5bdfa108@cumulusnetworks.com>
Date: Tue, 30 Jul 2019 15:41:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190730122534.30687-1-rdong.ge@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: yoshfuji@linux-ipv6.org, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, kadlec@netfilter.org,
	coreteam@netfilter.org, netfilter-devel@vger.kernel.org,
	kuznet@ms2.inr.ac.ru, pablo@netfilter.org
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

On 30/07/2019 15:25, Rundong Ge wrote:
> Given following setup:
> -modprobe br_netfilter
> -echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
> -brctl addbr br0
> -brctl addif br0 enp2s0
> -brctl addif br0 enp3s0
> -brctl addif br0 enp6s0
> -ifconfig enp2s0 mtu 1300
> -ifconfig enp3s0 mtu 1500
> -ifconfig enp6s0 mtu 1500
> -ifconfig br0 up
> 
>                  multi-port
> mtu1500 - mtu1500|bridge|1500 - mtu1500
>   A                  |            B
>                    mtu1300
> 
> With netfilter defragmentation/conntrack enabled, fragmented
> packets from A will be defragmented in prerouting, and refragmented
> at postrouting.
> But in this scenario the bridge found the frag_max_size(1500) is
> larger than the dst mtu stored in the fake_rtable whitch is
> always equal to the bridge's mtu 1300, then packets will be dopped.
> 
> This modifies ip_skb_dst_mtu to use the out dev's mtu instead
> of bridge's mtu in bridge refragment.
> 
> Signed-off-by: Rundong Ge <rdong.ge@gmail.com>
> ---
>  include/net/ip.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/net/ip.h b/include/net/ip.h
> index 29d89de..0512de3 100644
> --- a/include/net/ip.h
> +++ b/include/net/ip.h
> @@ -450,6 +450,8 @@ static inline unsigned int ip_dst_mtu_maybe_forward(const struct dst_entry *dst,
>  static inline unsigned int ip_skb_dst_mtu(struct sock *sk,
>  					  const struct sk_buff *skb)
>  {
> +	if ((skb_dst(skb)->flags & DST_FAKE_RTABLE) && skb->dev)
> +		return min(skb->dev->mtu, IP_MAX_MTU);
>  	if (!sk || !sk_fullsock(sk) || ip_sk_use_pmtu(sk)) {
>  		bool forwarding = IPCB(skb)->flags & IPSKB_FORWARDED;
>  
> 

I don't think this is correct, there's a reason why the bridge chooses the smallest
possible MTU out of its members and this is simply a hack to circumvent it.
If you really like to do so just set the bridge MTU manually, we've added support
so it won't change automatically to the smallest, but then how do you pass packets
1500 -> 1300 in this setup ?

You're talking about the frag_size check in br_nf_ip_fragment(), right ?

