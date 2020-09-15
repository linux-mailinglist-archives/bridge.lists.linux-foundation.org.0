Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C02BB26E228
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:20:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E81A2E1B4;
	Thu, 17 Sep 2020 17:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJdT1ynrqf8P; Thu, 17 Sep 2020 17:20:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 38DE62E1BD;
	Thu, 17 Sep 2020 17:19:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 29569C0888;
	Thu, 17 Sep 2020 17:19:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5635CC0051
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 10:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EEF5204DD
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 10:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFckHQMC6Pub for <bridge@lists.linux-foundation.org>;
 Tue, 15 Sep 2020 10:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id F1082204C3
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 10:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1600165631; x=1631701631;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6pj42hcpmKOUyMQ9MhDbUOl6HOtbIojY8r2/GLfcYBk=;
 b=cAI6zxY48uUIZKfOkoAgTqTHMvUJuLOZgJIoeviH6e5s1RlOZ+L6TCaB
 eZlYrjHwsPb720R1E6Ha9XWnb6oxKOttBh4Mx4T18KzcBNJDkHH4knOIB
 ITEG/QIyHyl7gctWlLh1Z1LTT8BB/0uUlwpAIVvZUecu9bQCR72fWJsyV
 nNabZHNMLXfgkCQrt8Yv8IEMwq3oh4/mvfjPY41eDbxdptSnlE8dLijgB
 VePo863cuP1jg3TySt1IrTVCOLJ7P5m7wxMAUTycTQ9tQJljI5t1Zoj0Q
 1k89KohnB1+WhGlMP35nXn06LZNPx8woPgkqXzRy9/40T9B77AKgnEt6j g==;
IronPort-SDR: SeG2nD/GORJgPmYvGhclPsw+G8TXL3rsyaBt8PW20lW/8KhOAwcwu7c0eGtJj72zuL7UlA7vic
 ySqqbTGvBfI2fKz8lGViZBn4kK5p9XyK4r2BIii3Iz2GtNniC3dZSytzS9Vcjjgo/S7wMsI2e4
 FO7vUlsYEQNxoRf0xi0VOFr1dcb1zwL+IgMfbPMxZdkKVZ0J+U3caEcyKBBghp2SaOjNDAmV9O
 KxljA5ep7WrE3dRTvSEPUUcQByQQqZ00iKc0dcKAliua+/ybuR9seP2ngf/8cs+CmLDVuYurI8
 R7g=
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="95789163"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2020 03:26:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 15 Sep 2020 03:26:48 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 15 Sep 2020 03:26:48 -0700
Date: Tue, 15 Sep 2020 10:24:22 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20200915102422.ronvnumdu4lk3l4b@soft-test08>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904091527.669109-7-henrik.bjoernlund@microchip.com>
 <cbb516e37457ef1875f99001ec72624c49ab51ed.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cbb516e37457ef1875f99001ec72624c49ab51ed.camel@nvidia.com>
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC 6/7] bridge: cfm: Netlink Notifications.
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

Thanks for the review. Comments below.

The 09/08/2020 13:54, Nikolay Aleksandrov wrote:
> 
> On Fri, 2020-09-04 at 09:15 +0000, Henrik Bjoernlund wrote:
> > This is the implementation of Netlink notifications out of CFM.
> >
> > Notifications are initiated whenever a state change happens in CFM.
> >
> [snip]
> > +     *count = 0;
> > +
> > +     rcu_read_lock();
> > +     list_for_each_entry_rcu(mep, &br->mep_list, head)
> > +             * count += 1;
> 
> please remove the extra space
> 
I have removed the extra space.
This space was added to satify checkpatch as without this space it gives
this error:
CHECK: spaces preferred around that '*' (ctx:ExV)
#136: FILE: net/bridge/br_cfm.c:883:
+               *count += 1;
                ^

> > +     rcu_read_unlock();
> > +
> > +     return 0;
> > +}
> > +
> 
> 

-- 
/Henrik
