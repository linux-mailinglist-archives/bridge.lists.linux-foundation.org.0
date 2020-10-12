Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9303728B5B9
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 15:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E0BA86B76;
	Mon, 12 Oct 2020 13:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adF4omkH2tLi; Mon, 12 Oct 2020 13:14:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DF2086B74;
	Mon, 12 Oct 2020 13:14:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E906BC0052;
	Mon, 12 Oct 2020 13:14:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9296DC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AF6F86B88
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1BlF+uB6qf9H for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 13:14:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05D6F86B74
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602508486; x=1634044486;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uXTNY8a8tuZF0KFVmfREJP/EwiyPuPGpWMVASP/6Lpg=;
 b=szOI02t0ZyS7Iu7YiLFHx8A5ILEoHETlaeEUb9ZLxO1dkMLpu2hc5Hsd
 p1yDnHaktl6DQ5+pJaOx9k0lUlpb+yvipyELo+SVwAN54tV0XBzyp7E4G
 KBCcEESt5VMle2BzMd7JAMvR9enKx6sMTej9pKq2yD6ww0xlMeDAV1HLh
 U35la75P+7TZ9H2QsBCZXc3ZpPs7TCtQaGqu7z6aCk6xIq+02WAy6NUFf
 L2Dg5iwfjNzbw4ikLLE4ou0hjChN4wmtIzXosiK/zMbMNcAOpdQNJWgk8
 usAFJZMBW5l30nbjp+mRyO9z3cqUGYHZQ7DXU8vG2ND+xUGFLgEDwzzOD w==;
IronPort-SDR: iYsowwes9JlAUw7kme3W4EdixpwaqGu67jeDmGQdyIOqXupMtVoRQifvHPyWOhhbFr2E28J6cC
 lHJoltMTAjk3o6wKxgJnIcCzGObmYBMYG4adk0BqB3KW/PKh+d8f2PZ5zdFvprV4+DRy1iIgbO
 DAL9Sa4H+C19ywkA1QyXjxq+zH08JjefSajosiYuPmFncoksGUnBvksFs+HuTxObadyeQWfJ8Z
 KK1Y9Px8koaf9ZsXL3SCZAyvPbLW3FpauwQPXOmuAoQirDaOBmB12IpcO0FrbXYz+Dlb/7NVAk
 tig=
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="95012027"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Oct 2020 06:14:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 12 Oct 2020 06:14:45 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 12 Oct 2020 06:14:45 -0700
Date: Mon, 12 Oct 2020 13:13:00 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201012131300.e7moweci4a475qa3@soft-test08>
References: <20201009143530.2438738-1-henrik.bjoernlund@microchip.com>
 <20201009143530.2438738-4-henrik.bjoernlund@microchip.com>
 <eda6fb9c0535077be89d2ee7dd9f7e12f730ef68.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <eda6fb9c0535077be89d2ee7dd9f7e12f730ef68.camel@nvidia.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 03/10] bridge: uapi: cfm: Added
 EtherType used by the CFM protocol.
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

The 10/09/2020 21:41, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-10-09 at 14:35 +0000, Henrik Bjoernlund wrote:
> > This EtherType is used by all CFM protocal frames transmitted
> > according to 802.1Q section 12.14.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> > ---
> >  include/uapi/linux/if_ether.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

-- 
/Henrik
