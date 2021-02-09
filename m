Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2563157A8
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 21:24:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 224666F757
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 20:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNYjg8gaFdKJ for <lists.bridge@lfdr.de>;
	Tue,  9 Feb 2021 20:24:31 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 80D846F6CF; Tue,  9 Feb 2021 20:24:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81CFA6F4BE;
	Tue,  9 Feb 2021 20:24:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63456C013A;
	Tue,  9 Feb 2021 20:24:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 963C6C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 842956F5B2
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9aqOqISSWQR for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 20:24:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B6FD36F5C4; Tue,  9 Feb 2021 20:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84A326F4BE
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612902257; x=1644438257;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mScHVWGIFuV1tfRo50B5fq0AL0izsRJ5iX46aUKbLLE=;
 b=cRhBKZ4zpIxfX0JOkjuMAhgP+nJfgQ1B2nOj18iJOZiU2ohp5UArPE8Q
 EX3yjO9QdwN7isuuidqO8eok8d2dvXKTHCnZTqf9zt+fo7jJg2Q49gXa/
 SD0JXfFpENIMVIP4HH/RbGOzq5isoo2UEBpjO+lkoe+UVzn4E10CSZpMR
 i4suYXj7wrE3q0X2NQ7uaRt133Qq9iEamL7ZCgqDzyM0+NqCve8jHuBFX
 fFfLe2Mqwhdy9Mg2XnCi9gyUwIidgF7sYbzehxjQzmspz5UP9Ec6suy2n
 1Cay5cdaXN2pOKCADkz3AQs5hVDCGefBSxqrsUVClF6LINDkCodJoeG4N Q==;
IronPort-SDR: KjYwtPOHWP5tWem3jg22SO7acL0+yz1lFMGHjo0eSG+/LPoamWxx+LdtPW6YMKnALP1of4Aytk
 asUmOmfSttvcFGeyZ0UuuHAtS/LurkxIscutOh8fEwo3mICPV91OFl3E3FjMujLBIE713QfWTR
 N1hAKbpk8A3u1CKBm3qjWerBUFPIhrgSjUU1bvlK3wWK6bU3NPjbnGBTymNLE1xrhhN78dWIi0
 bCtQ4F7l6zytIusbblU0SKrT5Q7j9UTkjrrKaBgaZ+PEqR4UbPqEUa+Scgatj2uNyyY168ck+U
 Kdc=
X-IronPort-AV: E=Sophos;i="5.81,166,1610434800"; d="scan'208";a="106029114"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Feb 2021 13:24:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 9 Feb 2021 13:24:15 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 9 Feb 2021 13:24:12 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <vladimir.oltean@nxp.com>,
 <claudiu.manoil@nxp.com>, <alexandre.belloni@bootlin.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Tue, 9 Feb 2021 21:21:07 +0100
Message-ID: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 0/5] bridge: mrp: Extend
	br_mrp_switchdev_*
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

This patch series extends MRP switchdev to allow the SW to have a better
understanding if the HW can implement the MRP functionality or it needs
to help the HW to run it. There are 3 cases:
- when HW can't implement at all the functionality.
- when HW can implement a part of the functionality but needs the SW
  implement the rest. For example if it can't detect when it stops
  receiving MRP Test frames but it can copy the MRP frames to CPU to
  allow the SW to determine this.  Another example is generating the MRP
  Test frames. If HW can't do that then the SW is used as backup.
- when HW can implement completely the functionality.

So, initially the SW tries to offload the entire functionality in HW, if
that fails it tries offload parts of the functionality in HW and use the
SW as helper and if also this fails then MRP can't run on this HW.

Also implement the switchdev calls for Ocelot driver. This is an example
where the HW can't run completely the functionality but it can help the SW
to run it, by trapping all MRP frames to CPU.

v3:
 - implement the switchdev calls needed by Ocelot driver.
v2:
 - fix typos in comments and in commit messages
 - remove some of the comments
 - move repeated code in helper function
 - fix issue when deleting a node when sw_backup was true

Horatiu Vultur (5):
  switchdev: mrp: Extend ring_role_mrp and in_role_mrp
  bridge: mrp: Add 'enum br_mrp_hw_support'
  bridge: mrp: Extend br_mrp_switchdev to detect better the errors
  bridge: mrp: Update br_mrp to use new return values of
    br_mrp_switchdev
  net: mscc: ocelot: Add support for MRP

 drivers/net/ethernet/mscc/ocelot_net.c     | 154 +++++++++++++++++++
 drivers/net/ethernet/mscc/ocelot_vsc7514.c |   6 +
 include/net/switchdev.h                    |   2 +
 include/soc/mscc/ocelot.h                  |   6 +
 net/bridge/br_mrp.c                        |  43 ++++--
 net/bridge/br_mrp_switchdev.c              | 171 +++++++++++++--------
 net/bridge/br_private_mrp.h                |  38 +++--
 7 files changed, 327 insertions(+), 93 deletions(-)

-- 
2.27.0

