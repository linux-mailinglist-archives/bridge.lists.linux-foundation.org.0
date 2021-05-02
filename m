Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595AB370D8B
	for <lists.bridge@lfdr.de>; Sun,  2 May 2021 17:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22A8240150;
	Sun,  2 May 2021 15:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SonzzXIq2j6e; Sun,  2 May 2021 15:05:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id B829540157;
	Sun,  2 May 2021 15:05:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8B7D1C0024;
	Sun,  2 May 2021 15:05:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1F0BC0001
 for <bridge@lists.linux-foundation.org>; Sun,  2 May 2021 15:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD7BC844D7
 for <bridge@lists.linux-foundation.org>; Sun,  2 May 2021 15:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6Og2nBWE4BD for <bridge@lists.linux-foundation.org>;
 Sun,  2 May 2021 15:05:01 +0000 (UTC)
X-Greylist: delayed 00:06:11 by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22F07844D1
 for <bridge@lists.linux-foundation.org>; Sun,  2 May 2021 15:05:00 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E3D2F58073D;
 Sun,  2 May 2021 11:04:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 02 May 2021 11:04:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MQUkWK
 w9RCDKfqU9d+QuZkH1t07x/WW5tw+ukNqYQ5A=; b=toVyAOSn7fm87WscwoiYas
 bKbnXw10S1R+2Ar8fKvdRsYuRrQv3vJu23MEiHEKJifJFIrTxwn1AZYB632d7LKw
 nihJhDpGxl/MQyzejdc5CjJyPzw8uHQQEESNw8ImtUXiU3GwA+2o48lHo91E8tPg
 eP0rb+SRGSPzkj0qAr1+SxxhyVBhXnGYwZyRUgBavi2YyjrAPubJLlmCYJi2VCtW
 hERMUnmArPMtoV0xA5dNuFqDc+xbUiyf5oKFcXX7jnb5FQqm2j+aOPe4tmKy0dH5
 sJoefOoNqjcuHJ7avqTzZBxoaYhXrBLKPT7xnZ8DSKs1h5eMDozvz28k/c7458eQ
 ==
X-ME-Sender: <xms:mb-OYGQh9A6F7nNVPbKzJzdWFYCxQqcDlLr92GNuRhXiGjYbRizSLg>
 <xme:mb-OYLwrGHwj3iPKu4FJkyFJJDDKSbvU2XC6W1F5cAAc0-E6Te0AtAHLwXr8o0nVz
 _KkJHyEMsB3Dyo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefuddgudefhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudeh
 leetnecukfhppeduleefrdegjedrudeihedrvdehudenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:mb-OYD3fRd7ZE59pApqUsg3_ZP9aPMDU3r4y49eWQJWN8wFdynvPzg>
 <xmx:mb-OYCBHcGE3EkNKtRnvGtBmJA8RYL8XpF2TySdZ9mwyMGVK3UYZAQ>
 <xmx:mb-OYPjMeOrWUN3lD5wOEyG-ddB6X1Frzw2L--_AUjpLeeufUQaLyw>
 <xmx:m7-OYONvpfXQWt-X4IV6I0IIixxUXEfEeGRFdWmTAE5BUdh_Y3k-pQ>
Received: from localhost (unknown [193.47.165.251])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Sun,  2 May 2021 11:04:57 -0400 (EDT)
Date: Sun, 2 May 2021 18:04:54 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <YI6/li9hwHo8GfCm@shredder>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-5-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426170411.1789186-5-tobias@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 4/9] net: bridge: switchdev: Forward
	offloading
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

On Mon, Apr 26, 2021 at 07:04:06PM +0200, Tobias Waldekranz wrote:
> +static void nbp_switchdev_fwd_offload_add(struct net_bridge_port *p)
> +{
> +	void *priv;
> +
> +	if (!(p->dev->features & NETIF_F_HW_L2FW_DOFFLOAD))
> +		return;
> +
> +	priv = p->dev->netdev_ops->ndo_dfwd_add_station(p->dev, p->br->dev);

Some changes to team/bond/8021q will be needed in order to get this
optimization to work when they are enslaved to the bridge instead of the
front panel port itself?

> +	if (!IS_ERR_OR_NULL(priv))
> +		p->accel_priv = priv;
> +}
> +
> +static void nbp_switchdev_fwd_offload_del(struct net_bridge_port *p)
> +{
> +	if (!p->accel_priv)
> +		return;
> +
> +	p->dev->netdev_ops->ndo_dfwd_del_station(p->dev, p->accel_priv);
> +	p->accel_priv = NULL;
> +}
