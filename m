Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E640728B5BF
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 15:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1E1D86102;
	Mon, 12 Oct 2020 13:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YEofV6HlKfx4; Mon, 12 Oct 2020 13:15:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 437D086119;
	Mon, 12 Oct 2020 13:15:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2A6C5C0051;
	Mon, 12 Oct 2020 13:15:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A717EC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B9EA214E6
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBixJxZVtXUE for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 13:15:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id CE1D320C45
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602508510; x=1634044510;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WbHem3m4Q3i89Pivd83Tm6CpRpEgWOJlMqGFw8xU/Kg=;
 b=gUyuvq1tWYWRvRZxJhzDV2JiqMD8IUhDmMaLn1H78M3tze8K6G6/6fKG
 0Lxhpbd3ii3AL3Pfhx1RffWAaaN5rxfVxQO4GOLLfBjZ9fTY6oEOu+6U+
 8KaZ9SMgwqYj2iEmWFweJ/sEGqagFUxFlp7M6mfxifKrMhse/z91TNnfl
 9C65/+Yir2k7YPD2tmqpYhxA7S3s3V/c3KYGUGx50p2uWRwgGNOFrTzGo
 f3J9Phm3eYKx4MOWVSeLfB6so2/OXrF1Nox1GBKbT8/rYHxujad4GmYfq
 QWOCNUkaznMA3qqHgK2h50nhSZDQ9gWwHg5JE8HSjZserSTY4oWsgfrO7 Q==;
IronPort-SDR: 2QmRD1kAxMGt5epuEPtKZ6+SMue+ESBgCZTzUgu+x3l00LBicP/QnEE2bVTuoDuQ0wxsis7/oj
 qhyfFREhoczmXFOSRl2sYjpqbfyZ05mpYiTyjVz7kH5Yx2RUWjVPt1mvclfBVK29xT2eTF1eW3
 KpHd0xjMhhzzmVrHvAguZOLm0dkX61a92M+RigBXb48pSDgLXRhYmk0DOZl2WFEdUmBr90g3hy
 AFaL9hJ7NF0fScOpGzP3YJ+2m3fN6o5Xkk7wzJilP4SY3TNM6VVrk2i3P0zbPyua2q4LMbxtTx
 uPE=
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="89898620"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Oct 2020 06:15:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 12 Oct 2020 06:15:09 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 12 Oct 2020 06:15:09 -0700
Date: Mon, 12 Oct 2020 13:13:24 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201012131324.qlxqxfpamievgrkz@soft-test08>
References: <20201009143530.2438738-1-henrik.bjoernlund@microchip.com>
 <20201009143530.2438738-3-henrik.bjoernlund@microchip.com>
 <f3e27f2363bf116ada0f352f263d6cbd051b6a87.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <f3e27f2363bf116ada0f352f263d6cbd051b6a87.camel@nvidia.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 02/10] bridge: cfm: Add BRIDGE_CFM
	to Kconfig.
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
From: "henrik.bjoernlund--- via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "henrik.bjoernlund@microchip.com" <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for the review.

The 10/09/2020 21:39, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-10-09 at 14:35 +0000, Henrik Bjoernlund wrote:
> > This makes it possible to include or exclude the CFM
> > protocol according to 802.1Q section 12.14.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > ---
> >  net/bridge/Kconfig      | 11 +++++++++++
> >  net/bridge/br_device.c  |  3 +++
> >  net/bridge/br_private.h |  3 +++
> >  3 files changed, 17 insertions(+)
> >
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 

-- 
/Henrik
