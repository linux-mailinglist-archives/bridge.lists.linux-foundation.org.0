Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 879B320AD34
	for <lists.bridge@lfdr.de>; Fri, 26 Jun 2020 09:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54E0E220C5;
	Fri, 26 Jun 2020 07:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iGcoGVjpayJ; Fri, 26 Jun 2020 07:34:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id CC0AB2075B;
	Fri, 26 Jun 2020 07:34:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ABD7AC016F;
	Fri, 26 Jun 2020 07:34:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81F0CC016F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 07:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69C2885531
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 07:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viB6jvCA_wVE for <bridge@lists.linux-foundation.org>;
 Fri, 26 Jun 2020 07:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7A0185516
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 07:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593156852; x=1624692852;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h3hNjRKGmfssGibJLg47pILaq4IrAogvkfO1FL2evKQ=;
 b=jcObcqJPQVWgWm6xSRiWQoi/Loi8FvQ9w0PGUhFQmw7QLY9rTqIzt1Lb
 eX2jN/YGaXSEAnhpYCak1+7qiF/qzyjUkzQQjiH0ortzC1/akFWgK46Gh
 tCSgOnngN+x3go6z3bBKlTmOMAJO3E9KnyyId1p3+LwItA1owFd365S/a
 sfZwQWte+WsobBHRwkGO46tCrnaOhRLeGUo7W1p5hpnyaHG+UxFZFpZrB
 RfpLHgRy0tZDg7vaX45ayPbmMhCn8qpVayzVZ1pjxpQiKK50wkniTdN65
 y2nk8xZRxgAhgJKnAdczbItYUONaKfsaBTfJXyth4g9N4JmyvWCNzA+dq A==;
IronPort-SDR: TDBgDjv8T6BH6sQX/6BrzOD161tQRQKChNa++FRk3xaqZKi+FiGcB09fB2RtuvyG0I/AIcw0A/
 nnXVjt3nGspLR4BK2JzRY7dqMOYW8DRCsD4z/lB0J7s1wOBIR7/BSIqjDGClw0dm0YefAliVAC
 CPA2GD9rvFzFP97AgxqNmcjYNRyDBrySsY0Fn4T00hRNb/28P/jdi/gkUl5DZwNC1KhGxuS0fc
 s7S3Univ4k120WOPEizjCTmMOdyEHWWOnKp2s4g0bc4IPAlYEnS/gLF3/9X4DfpTTC+h7/WMED
 /5w=
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="80986529"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2020 00:34:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 26 Jun 2020 00:34:10 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 26 Jun 2020 00:34:08 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Fri, 26 Jun 2020 09:33:47 +0200
Message-ID: <20200626073349.3495526-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 0/2] bridge: mrp: Extend MRP netlink
	interface with IFLA_BRIDGE_MRP_CLEAR
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

This patch series extends MRP netlink interface with IFLA_BRIDGE_MRP_CLEAR.
To allow the userspace to clear all MRP instances when is started. The
second patch in the series fix different sparse warnings.

v3:
  - add the second patch to fix sparse warnings

v2:
  - use list_for_each_entry_safe instead of list_for_each_entry_rcu
    when deleting mrp instances

Horatiu Vultur (2):
  bridge: mrp: Extend MRP netlink interface with IFLA_BRIDGE_MRP_CLEAR
  bridge: mrp: Fix endian conversion and some other warnings

 include/uapi/linux/if_bridge.h |  8 ++++++++
 net/bridge/br_mrp.c            | 17 ++++++++++++++++-
 net/bridge/br_mrp_netlink.c    | 26 ++++++++++++++++++++++++++
 net/bridge/br_private.h        |  2 +-
 net/bridge/br_private_mrp.h    |  3 ++-
 5 files changed, 53 insertions(+), 3 deletions(-)

-- 
2.26.2

