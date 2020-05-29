Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8113E1E77C8
	for <lists.bridge@lfdr.de>; Fri, 29 May 2020 10:05:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EB90925D4A;
	Fri, 29 May 2020 08:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGcBu798ORkd; Fri, 29 May 2020 08:05:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E4205203EA;
	Fri, 29 May 2020 08:05:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7E24C016F;
	Fri, 29 May 2020 08:05:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9AC0C016F
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C87B1873E3
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qtyqDXwozZFA for <bridge@lists.linux-foundation.org>;
 Fri, 29 May 2020 08:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4089385641
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590739549; x=1622275549;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1j8r2lwJHp5ulvUar/6tSATkidOUKeT/fSsRUakAa/4=;
 b=cclR5EkC5um+2ZdnIr6XafLbAG5DNd1SwgVU4hh0izoLomJENqThOb7C
 ktV0+yVRbFeL1/cKmbtgtPSGRkS87/fYgLLbMqyERvYb3BlUMlSNOgiEv
 2V8vq7Aj4h+AxfgFXpMVOQiYGeFzOo4dUI6R4AiYu5Ei5BPmh6+9L4prW
 DTsyE+ttfXDoBVKS1GFhIoGhOiYoCY1ap+GcArVff6J1emkrI0hy9jN6Q
 2TOo9AwpmoNWNxj6xejeJzTNW9ZU9ydlMQ9NDofVclN+Kss/lPKawFLpE
 6FM3Ry3eJAhBxu5Nv7Dqee6wiLoP2RSMyfp0MnGSh/cJMNEKWl9AV9DgR w==;
IronPort-SDR: e5l2prvpyvdvJ/xf0M93avS/ZfurjyADByBkLuA0Mx9ni0bU/lkv0KvnDmHTh3eZ7mi8BItQh4
 vGPgUhs77NHVpWa5+F2hikK+akbM7J5gJVbHgCfLPQdwiLjWFRyOdCGbTSfb97nzfBIqNp2g5g
 z7O+/kNa3RDnMQ1nBLhAMVmc5UQsN3r/xuze0+6Wl5w+Zh1xVYwIxWJVupaR+hvwBuan/6y4PZ
 001d0Be3A2n/T5EsixXT8/nzWu2q/dpjMKObb/Igp31Xh4DPbxeAIrxZlrNvGIGkml5zorTpn+
 9iY=
X-IronPort-AV: E=Sophos;i="5.73,447,1583218800"; d="scan'208";a="81492430"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 May 2020 01:05:48 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 May 2020 01:05:48 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 29 May 2020 01:05:45 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Fri, 29 May 2020 10:05:12 +0000
Message-ID: <20200529100514.920537-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 0/2] bridge: mrp: Add support for MRA role
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

This patch series extends the MRP with the MRA role.
A node that has the MRA role can behave as a MRM or as a MRC. In case there are
multiple nodes in the topology that has the MRA role then only one node can
behave as MRM and all the others need to be have as MRC. The node that has the
higher priority(lower value) will behave as MRM.
A node that has the MRA role and behaves as MRC, it just needs to forward the
MRP_Test frames between the ring ports but also it needs to detect in case it
stops receiving MRP_Test frames. In that case it would try to behave as MRM.

Horatiu Vultur (2):
  bridge: mrp: Set the priority of MRP instance
  bridge: mrp: Add support for role MRA

 include/net/switchdev.h         |   2 +
 include/uapi/linux/if_bridge.h  |   4 +
 include/uapi/linux/mrp_bridge.h |  38 ++++++++++
 net/bridge/br_mrp.c             | 128 +++++++++++++++++++++++++++-----
 net/bridge/br_mrp_netlink.c     |  11 +++
 net/bridge/br_mrp_switchdev.c   |   5 +-
 net/bridge/br_private_mrp.h     |   5 +-
 7 files changed, 171 insertions(+), 22 deletions(-)

-- 
2.26.2

