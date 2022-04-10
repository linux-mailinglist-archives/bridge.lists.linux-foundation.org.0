Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5F64FAF45
	for <lists.bridge@lfdr.de>; Sun, 10 Apr 2022 19:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DE5D60F1A;
	Sun, 10 Apr 2022 17:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TOKQA3g_0ZzW; Sun, 10 Apr 2022 17:19:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C115160F26;
	Sun, 10 Apr 2022 17:19:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 836CAC0088;
	Sun, 10 Apr 2022 17:19:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 673DFC0033
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 17:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4839B8305A
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 17:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vMM4NFBC7LR for <bridge@lists.linux-foundation.org>;
 Sun, 10 Apr 2022 17:19:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6A6D82FE4
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 17:19:53 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 46CF13201DB0;
 Sun, 10 Apr 2022 13:19:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 10 Apr 2022 13:19:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=cuyUckZywUZIygZ8ZXPDDXCDGhQWLlczqmeYcUsJb
 28=; b=Y2sjtjMKmcZN+iFCh6tUH9R8b1YIFSMf47MxY2GFUEI/LzkJm4YgQ7xRW
 8Cz7sAaGDTn/I+kaN8xJae6Zqz0402CY/Y4AYqxdrQDOD+eYKMF8dNfbkLdq3h3C
 w5b/qnHKtUOMmpykk/SsUXHiJ5VD1/K5x9vWzDvjGpnpyvIBu2/M76F3qaXMgVKc
 wNkj9SVI8LbQMsS/Ucn43FOzmkE7JAOr9ZctrwysezMQAryXu7SnGAzcsmjkR+u6
 avT5xcQ87Pvh0E3MRRg/jX5DCjz702OeF70yA1NCuVhPs9bUEA3UByXOrrk/cCXU
 S/fP1Yq79etHPpSGyAaxoo3hDa+wQ==
X-ME-Sender: <xms:txFTYlOdJcMHhK9qCpvHaR0uLC4iFVVtaxnsB6vN1LXAVnpi9mLMBA>
 <xme:txFTYn-q1ixuadHZWK7xbJI6Mof3HYLeC0LDIOADJzaRbkt2Ku-4Pd7cB3v6K2XHd
 nLE_9vcRV7H2XU>
X-ME-Received: <xmr:txFTYkQKCTvlMnDcZOGXFeieE4LEl8S-_3qEKEe8AVgCRnsXmvp_TJJ5dp3Z>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekgedguddtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefkugho
 ucfutghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrg
 htthgvrhhnpeeugfejfeeviedvkedtgfeghfegvedugeevgfetudfgteevveeutdfghfek
 gfeggfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:txFTYhvjpfUyMCWA_iDroIimEHx3YmyOhV4DQnMAkABhc5hFywB_MA>
 <xmx:txFTYte406Q9vQBtdatJAOuQQN-KG68-E3yHi2XdZJP1v-iAH-T_qw>
 <xmx:txFTYt15Ub969jQ5FyOFMplYTLhgK_XMA7xtC67-USbci_ML0tFFwQ>
 <xmx:txFTYnvSy-Px09zQyzzasUP0oH6QKvHfikuRvD8bB8K9_6mQjfoWAQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Apr 2022 13:19:50 -0400 (EDT)
Date: Sun, 10 Apr 2022 20:19:48 +0300
From: Ido Schimmel <idosch@idosch.org>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Message-ID: <YlMRtBR3+b4dKjC/@shredder>
References: <20220410134227.18810-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220410134227.18810-1-arinc.unal@arinc9.com>
Cc: Vladimir Oltean <olteanv@gmail.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: offload BR_HAIRPIN_MODE,
 BR_ISOLATED, BR_MULTICAST_TO_UNICAST
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

On Sun, Apr 10, 2022 at 04:42:27PM +0300, Arınç ÜNAL wrote:
> Add BR_HAIRPIN_MODE, BR_ISOLATED and BR_MULTICAST_TO_UNICAST port flags to
> BR_PORT_FLAGS_HW_OFFLOAD so that switchdev drivers which have an offloaded
> data plane have a chance to reject these bridge port flags if they don't
> support them yet.
> 
> It makes the code path go through the
> SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
> -EINVAL for everything they don't recognize.
> 
> For drivers that don't catch SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS at
> all, switchdev will return -EOPNOTSUPP for those which is then ignored, but
> those are in the minority.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

> ---
> Let me know if this is netdev/net material instead.

I prefer net-next
