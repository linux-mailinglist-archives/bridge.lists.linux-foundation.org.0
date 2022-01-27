Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746A449E67E
	for <lists.bridge@lfdr.de>; Thu, 27 Jan 2022 16:46:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10DE4400C4;
	Thu, 27 Jan 2022 15:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id omYcWhdqk9sB; Thu, 27 Jan 2022 15:46:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3CF69400BF;
	Thu, 27 Jan 2022 15:46:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ECC45C0031;
	Thu, 27 Jan 2022 15:46:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16B75C000B
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 15:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB26B41677
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 15:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kroah.com header.b="kjxYAXUP";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="iOhqajQZ"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjO9Sk5s1xV4 for <bridge@lists.linux-foundation.org>;
 Thu, 27 Jan 2022 15:46:08 +0000 (UTC)
X-Greylist: delayed 00:06:22 by SQLgrey-1.8.0
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7397441660
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 15:46:08 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 26A1A580EB6;
 Thu, 27 Jan 2022 10:39:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 27 Jan 2022 10:39:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=WaIfKB6L73BlPeNtlmOZwTQbsqShiIjBr2J2vT
 exb+o=; b=kjxYAXUPvgtxdi3q7a5Uu7t9LhZ1vnb6czWe6Cr4hHD5TegHDG1Gor
 GrspqmoX3jRcFlFZwBfcbh/Gp7I29ACZWMweu+DHoT2klDGURHr5gdLcUGwrTfQB
 Ih5kmBc+DDWRbHO4ANUxga1LbAkU1xYTF/xc1632sgCrCj5qKafP1+wPp6gC6dSq
 9f3R8z+enlhWkpe3ibSjZzyWo6vRzrQZdg/AeBefZ20quHUH+jyO+qWl9oBj4SwZ
 qGbBCc4KCswhs/uBw+YX65lwFm7sxYFDF33hHu1SK06lsBK7ekKv7aFi8HTGdCF+
 chVPF+n+ti/6OkGByQtr99T/sC/aQs2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=WaIfKB6L73BlPeNtl
 mOZwTQbsqShiIjBr2J2vTexb+o=; b=iOhqajQZ1Rche6XXQ1tGBzf2007JAojWc
 3dO+f+Vpj8zAxhPM0r63LPqNXs5DKV5XG9NJFe2xM+R8cJltbHSDpIxiD7OMvXL+
 PDk3Taykm2iIOAdu4Qgtoo88myMUNShlh/vLBjpQ9QsCw2vsdrcQtXdjnF9YAhJs
 gacSk9PaWUfhvWofnU7FjXWhJCA59T+JG1U4E2/wI587ad+BGkLU3u2xmcGmirqD
 mtowlkNdDypNvogW2y07LyjD5icANqBw0tRJ6zrsEDBSMq9+2hZdUFZBQvxc49Ke
 EWdrO6QiWiCj1Ot7mzNz41wEZ6EaoSVtmqRLwm7UDiLpaXXqiHJJw==
X-ME-Sender: <xms:v7zyYaI0l6pPq49-jvD7f4HAEPt5dR_ChUF2wv3JR4uzmRDP41oaUQ>
 <xme:v7zyYSIR-cSmV9GufidZ-ocu-lrlFI9D5q_NonMx76JHDbiT1nfAylCUoDoDgqHaP
 KLiWAma593TLA>
X-ME-Received: <xmr:v7zyYasvKeIpWrMBvOnx4NBQc-NFgxt62UFSL_9ilv6uSyAZuVxqp0tlSKJoO1fuvsh58XaRsdn3WLb3837PdhD7m7fDL-9H>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeefgdejlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
 jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepveeuheejgf
 ffgfeivddukedvkedtleelleeghfeljeeiueeggeevueduudekvdetnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrd
 gtohhm
X-ME-Proxy: <xmx:v7zyYfZZ5MwGeKIFoJMnVuF4fcBdWjwMzTXkq-KmpSd19B-Fg_Wgvg>
 <xmx:v7zyYRYWGeXNO0j0fCM5nDWbuxNQV-RQxbKPwkVKoS1Vj9T5dxlI0w>
 <xmx:v7zyYbDHtAbGSZFfn1fY-e8AE1pIJUfamHz9pQlF4WTcYeN4eiddwA>
 <xmx:wLzyYVSBf8TmN9c2eWwPwCJlUY0KcIFZ-e1cOVutDJbu_Zjj2548iA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Jan 2022 10:39:42 -0500 (EST)
Date: Thu, 27 Jan 2022 16:39:41 +0100
From: Greg KH <greg@kroah.com>
To: Huang Guobin <huangguobin4@huawei.com>
Message-ID: <YfK8vTvSJAT8i6F4@kroah.com>
References: <20220126033639.909340-1-huangguobin4@huawei.com>
 <20220126033639.909340-2-huangguobin4@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126033639.909340-2-huangguobin4@huawei.com>
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 stable@vger.kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 4.19 1/1] net: bridge: clear bridge's private
 skb space on xmit
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, Jan 26, 2022 at 11:36:39AM +0800, Huang Guobin wrote:
> From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> 
> [ Upstream commit fd65e5a95d08389444e8591a20538b3edece0e15 ]
> 
> We need to clear all of the bridge private skb variables as they can be
> stale due to the packet being recirculated through the stack and then
> transmitted through the bridge device. Similar memset is already done on
> bridge's input. We've seen cases where proxyarp_replied was 1 on routed
> multicast packets transmitted through the bridge to ports with neigh
> suppress which were getting dropped. Same thing can in theory happen with
> the port isolation bit as well.
> 
> Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Signed-off-by: David S. Miller <davem@davemloft.net>
> Signed-off-by: Huang Guobin <huangguobin4@huawei.com>
> ---
>  net/bridge/br_device.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index a350c05b7ff5..7c6b1024dd4b 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -42,6 +42,8 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
>  	struct ethhdr *eth;
>  	u16 vid = 0;
>  
> +	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
> +
>  	rcu_read_lock();
>  	nf_ops = rcu_dereference(nf_br_ops);
>  	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
> -- 
> 2.25.1
> 

Now queued up, thanks.

greg k-h
