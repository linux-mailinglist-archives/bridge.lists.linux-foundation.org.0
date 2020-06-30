Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153C220FBF6
	for <lists.bridge@lfdr.de>; Tue, 30 Jun 2020 20:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A30968852C;
	Tue, 30 Jun 2020 18:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ucijok4gIIIf; Tue, 30 Jun 2020 18:45:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 633A88851D;
	Tue, 30 Jun 2020 18:45:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51C23C08A6;
	Tue, 30 Jun 2020 18:45:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABEE6C016E
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 18:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91A1C87FCC
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 18:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R+wVcfoEx8tQ for <bridge@lists.linux-foundation.org>;
 Tue, 30 Jun 2020 18:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0317A87EE6
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 18:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593542712; x=1625078712;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gVXFKwkoilJ+WRsAX2ilDSQvX1wsECjHxbakjfFTTiA=;
 b=tGZFtzXvjzO9lbqNel/0gcYL4b4H+zhgg3c4Dnt4UZCgiT2VgKFm448F
 RGSERHcKSG9aisUbyRWvhi6+ZI468HnjmvF3E1JgyUnRKbnINzecotvNV
 EOBBooR4ItH4rowB2QvtgbYMkz1bcCy7xLMV0rO9Dwx6bqajdQKMh+b2L
 XGqHl395ojo/leeoyk+9XOuQBtD9lSMsnJ6YUvx5asBl4v5OEnytjF3Ly
 /K1wxhHF5Nwuo718zhvP0Sd9NUDSUzlw8FgyRuXM6Yzu76Txs66COEgHO
 VOiE17X4BZkO/zmJrQmigt+KPJi1tfg+JJ9Rnk76+rs/yeSjqd6Ey8mcd Q==;
IronPort-SDR: B2IzWVA38/w48UWB3itF4A+Rwr6HJm/1RLFOSZ1jh39DRujU3c63OwDplG43A2Tbp2nc5hoNrz
 Q5KdOLy+yOLRAA4y0rrUYrDsk2evMj9CnJcr3+92gd9QLctf+O+80XTKTEiXCSq6hvhrqFw8ep
 6BkF3fRKu6/AGsvBMp7b1qD46yAVTV42KfDZEI657Qbg8LSn/k7C8lyVgszI6rwAjNcnzt0khD
 5HTDUhLIQENl3UyPtxLlx4dmMmgDUmFpeLIffoAg+i1Hm70/VWNsjhmjWEPtGkIxXMilVAzEkc
 YQE=
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="17608615"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Jun 2020 11:45:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 30 Jun 2020 11:45:11 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 30 Jun 2020 11:45:11 -0700
Date: Tue, 30 Jun 2020 20:45:09 +0200
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200630184509.oliwf3ui4gxno756@soft-dev3.localdomain>
References: <20200630134424.4114086-1-horatiu.vultur@microchip.com>
 <20200630134424.4114086-3-horatiu.vultur@microchip.com>
 <20200630091243.124869e2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200630091243.124869e2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, jiri@mellanox.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/3] bridge: mrp: Add br_mrp_fill_info
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 06/30/2020 09:12, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Tue, 30 Jun 2020 15:44:23 +0200 Horatiu Vultur wrote:
> > Add the function br_mrp_fill_info which populates the MRP attributes
> > regarding the status of each MRP instance.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> 
> This adds warnings when built with W=1 C=1:

The warnings at line 316 will be fixed once net will be merged into
net-next. But I need to fix the others.

> 
> net/bridge/br_mrp_netlink.c:316:9: warning: dereference of noderef expression
> net/bridge/br_mrp_netlink.c:325:36: warning: dereference of noderef expression
> net/bridge/br_mrp_netlink.c:328:36: warning: dereference of noderef expression
> net/bridge/br_mrp_netlink.c:316:9: warning: dereference of noderef expression

-- 
/Horatiu
