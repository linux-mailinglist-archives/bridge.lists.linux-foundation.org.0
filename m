Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6177A2923EF
	for <lists.bridge@lfdr.de>; Mon, 19 Oct 2020 10:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADBBE86DF3;
	Mon, 19 Oct 2020 08:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L1JBHx2EIhQU; Mon, 19 Oct 2020 08:52:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F81486E09;
	Mon, 19 Oct 2020 08:52:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C773C0051;
	Mon, 19 Oct 2020 08:52:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E46C2C0051
 for <bridge@lists.linux-foundation.org>; Mon, 19 Oct 2020 08:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE7DA8728E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Oct 2020 08:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TNkbnYa2X7A for <bridge@lists.linux-foundation.org>;
 Mon, 19 Oct 2020 08:52:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0938487274
 for <bridge@lists.linux-foundation.org>; Mon, 19 Oct 2020 08:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1603097558; x=1634633558;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tJ/a1JvUOjBjoPtEuJeWoMkuf2rsk+6hMQF3y1Sz3mw=;
 b=qMeEnYvdXeZAw3yedp76hOAh+rTbpXp+oJIsZnoDFSWkwqF4xEGevHO3
 87cxwYnGZ2CD69MSj0SZEJaaW0JMiLh/NXhjltZrZK3jl6VCrEJrHYfr9
 73RkfI9FyWY/IWdwSyxZuBJtZ2B5vrq3WpOBwxJ3M8yr2tWpY6dmKqbJf
 3OmIgJnE1YDFczeB4XjcgkjPrB6ohVUWYGv2G/E55gDi7qkaB32/jdMWV
 5g77R7WZLeX81wpsENGe6Tr60uTNUpQj5P4JmMM/ZwJU68pX0TZqVqE4P
 S05IP+8RvDYgUVPbNZU1OdIZ6OyHAlFVvPKreRff7BHqRG9B9p8sSaQcj Q==;
IronPort-SDR: Xjs9Y3nloL7WeTI9F5WakznkLOCdoQdi1582lAkA0C7Z3S3NKwTvCbzEPATNuv0L+l91fVjIup
 1hGemwGMGYLlkpB5IMAWkINGC0nS0m09CNxRpnQTytqAs7ALTMO7G9mGUbYmVOb5totGOv5V7I
 3yUw/zibH+ZYyDYHkm3J6CS3tRhpG09ITAYLvxLZx/AbGpEiAr+3Eq68WUBfwoqfbOHH50/3pc
 Us8gACj93lDBn0dqEFwb3ylt4zn/wiz68gwccDHNIKO/nSy7F9YuFjgdEemoNIDKea61vCmESG
 SzI=
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="93092731"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Oct 2020 01:52:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 19 Oct 2020 01:52:37 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 19 Oct 2020 01:52:37 -0700
Date: Mon, 19 Oct 2020 08:51:04 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201019085104.2hkz2za2o2juliab@soft-test08>
References: <20201015115418.2711454-1-henrik.bjoernlund@microchip.com>
 <20201015115418.2711454-8-henrik.bjoernlund@microchip.com>
 <20201015103431.25d66c8b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201015103431.25d66c8b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v6 07/10] bridge: cfm: Netlink SET
 configuration Interface.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thank you for the review. Comments below.

The 10/15/2020 10:34, Jakub Kicinski wrote:
> 
> On Thu, 15 Oct 2020 11:54:15 +0000 Henrik Bjoernlund wrote:
> > +     [IFLA_BRIDGE_CFM_MEP_CONFIG_MDLEVEL]     = {
> > +     .type = NLA_U32, .validation_type = NLA_VALIDATE_MAX, .max = 7 },
> 
>         NLA_POLICY_MAX(NLA_U32, 7)

I will change as requested.

> 
> Also why did you keep the validation in the code in patch 4?

In patch 4 there is no CFM NETLINK so I desided to keep the validation in the
code until NETLINK was added that is now doing the check.
I this a problem?

-- 
/Henrik
