Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C41F1DD957
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 23:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B046C88AE8;
	Thu, 21 May 2020 21:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rz9-yrlryI6j; Thu, 21 May 2020 21:21:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F09588AA6;
	Thu, 21 May 2020 21:21:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 087EAC0176;
	Thu, 21 May 2020 21:21:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 666EBC0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 21:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 626FC88681
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 21:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sx2Qqy7bGESC for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 21:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7316F86739
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 21:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590096091; x=1621632091;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3YYTfA2G0R/lyoHmUaWO5sWwSP3/w89inO0e4lZ0ubk=;
 b=0JVUGlvF4xiwPL9v/BXrVCK0AsKKw7qmIbtbxfLtU22PBWxNBxCPsLzy
 ykEi0hoiI10xzNUKQKtIGt8NBR5JUoRPvy9loY3zoc/QPFM4gdA6Uq7n7
 xkgvlSTvsWt5NTKmVZ36Tq2KbR6GZPcGwh8OTkrgzTInX7JE3TtRP6M3a
 YZn7ka30h0uEBbC2oBS+9hPhIURRgwUXtYceSqfNccnwokYAUIXhPZFF/
 Vu2fAzyh4MajQLRjmgl3gQN08zuljjJAa7OljKzQbsUrMJOENNdRKjT7C
 AEXU+Wfok6+3vyT7+Uz92R3Lnl51ufZbdsfmH4jPNxAJKUMldcI5nlQWG Q==;
IronPort-SDR: CSSKbGS8Vh8u8ljYKS/8gGpe0qNuSxHPahN2RKcrWxNmqqWIdQRW7YwzCLWMC4K405dmsYL6vA
 BRV+7t6lEoO62I8tEbHUKoTJ9rBKY8y/jy/aaUnbnkRvQqY2EG42WzolYC9PCAsokXRoqrHs8a
 vpHFDDrXWrfbu+Iwce3z0FIoxM/b7L9x07OTJojgp+e3GfhR0GNZ+HWIV0eixWjJcfsgKZ8q5S
 0VqdWJrIL6YMNPo/Udmc0LXP1JuMEdgw3Qe9ic+mP7sugpjps8nW/HEJNZBAoDedySNtNOgxj2
 WFs=
X-IronPort-AV: E=Sophos;i="5.73,419,1583218800"; d="scan'208";a="77506680"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 May 2020 14:21:30 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 May 2020 14:21:30 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 21 May 2020 14:21:28 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Thu, 21 May 2020 23:19:04 +0000
Message-ID: <20200521231907.3564679-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH v2 0/3] bridge: mrp: Add br_mrp_unique_ifindex
	function
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

This patch series adds small fixes to MRP implementation.
The following are fixed in this patch series:
- now is not allow to add the same port to multiple MRP rings
- remove unused variable
- restore the port state according to the bridge state when the MRP instance
  is deleted

v2:
 - use rtnl_dereference instead of rcu_dereference in the first patch

Horatiu Vultur (3):
  bridge: mrp: Add br_mrp_unique_ifindex function
  switchdev: mrp: Remove the variable mrp_ring_state
  bridge: mrp: Restore port state when deleting MRP instance

 include/net/switchdev.h |  1 -
 net/bridge/br_mrp.c     | 38 ++++++++++++++++++++++++++++++++++----
 2 files changed, 34 insertions(+), 5 deletions(-)

-- 
2.26.2

