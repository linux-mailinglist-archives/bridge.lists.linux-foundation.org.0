Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A090B4BCD73
	for <lists.bridge@lfdr.de>; Sun, 20 Feb 2022 10:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1082860B78;
	Sun, 20 Feb 2022 09:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G53a5kSr1f2d; Sun, 20 Feb 2022 09:18:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 995BA60B62;
	Sun, 20 Feb 2022 09:18:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5136C0073;
	Sun, 20 Feb 2022 09:18:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 355BBC0033
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CE3480B4C
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id db9ub2JdsE-I for <bridge@lists.linux-foundation.org>;
 Sun, 20 Feb 2022 09:18:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90CA180B46
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:18:34 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BCBDB5805C1;
 Sun, 20 Feb 2022 04:18:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 20 Feb 2022 04:18:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8YmlWNGsIRtVtoKHI
 ISw4bcjX7NWo7BrkPWPL8sPzOM=; b=O8QN/sSGleDt1HvNr2/Y+K9PT6s0BDSKR
 mcCNBALC+aTs44bOc3VLq3C+OY9+gi9DF6h8Us3C8O/EBjqatncIrQTALhyDCjBM
 G1j58Lpr6W+KNPWF5mbAC4nXS48jxi7b+iURc9jimwi6DF7KJkDd3CAZF/JLWGVy
 hzM/cRTGj/Vl2L19xsfLBM+XmoiS7aojOZO1dR4mG463ql+FSSQ1u1jJJ+hDhVke
 Ltiyn9ivIW/OxDeYTsDRjeLuqIXsYZck2YMoUKqz9kpekH/pvw/FxaDwXkVPhcUy
 UlW8c68jsSAjnDKKPkGbi9rNM3Pxy0sGkBa8V9SqyR4p8GP6HNeBQ==
X-ME-Sender: <xms:ZwcSYskNpiQAvPw582fP5xyDnDHElLRcseIwJlAfqGU59KAvc-wLQw>
 <xme:ZwcSYr2QWBZvWRaUHih388Iuz4HUkEo_IasFOQ9fZhdBMrq_v63il5-OaPmonxO51
 lRwvih6yUBZP4o>
X-ME-Received: <xmr:ZwcSYqrGW2GK7ol2Dqykx7LzDOezgIRzkLy35bueuD9PJb505T2089Nv7G3welxOpco6Wq4uDwl9YkQRtNapvErs_sk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrkeeggddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:ZwcSYom-K74dmZyJf0Fv68mJObSMJZnDnenymLme2dvyhQHLelxoVQ>
 <xmx:ZwcSYq36XvY7FP5VX-XAJYY3Ocwla1MnoYP1lahQ6bus1w_dRld4pQ>
 <xmx:ZwcSYvvFCtqAQnsFy2LFdYrJD_wuSCMjnwsrLYzFdRWTzF-C-EM3qg>
 <xmx:aAcSYj4zI9coJB66x72rmHm-NE55Wr1IHX3xUAkjvnd7XXpFUZKr8w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Feb 2022 04:18:31 -0500 (EST)
Date: Sun, 20 Feb 2022 11:18:28 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YhIHZBXodzr6bk0c@shredder>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-2-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220218155148.2329797-2-schultz.hans+netdev@gmail.com>
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Stephen Suryaputra <ssuryaextr@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 1/5] net: bridge: Add support for
 bridge port in locked mode
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

On Fri, Feb 18, 2022 at 04:51:44PM +0100, Hans Schultz wrote:
> In a 802.1X scenario, clients connected to a bridge port shall not
> be allowed to have traffic forwarded until fully authenticated.
> A static fdb entry of the clients MAC address for the bridge port
> unlocks the client and allows bidirectional communication.
> 
> This scenario is facilitated with setting the bridge port in locked
> mode, which is also supported by various switchcore chipsets.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>

With Nik's comment fixed:

Reviewed-by: Ido Schimmel <idosch@nvidia.com>
