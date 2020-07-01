Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E962104DD
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 09:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DB728C251;
	Wed,  1 Jul 2020 07:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8zM0aD6wN8He; Wed,  1 Jul 2020 07:22:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 571798C2B5;
	Wed,  1 Jul 2020 07:22:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E887C0733;
	Wed,  1 Jul 2020 07:22:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3401FC0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 236578ABBE
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hX68o0jmWhqG for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 07:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EAF6B8ABBA
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593588172; x=1625124172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ASReo1CJm8170qaaG0UUzUeLV1c7HctXtdLcR5LMm/I=;
 b=lhRMXL/49QwyrzTl+tCF2VkPIh4cv9f2gtZLugO9+ZNCBbTbjGFkeSqZ
 0mhDpV3/t7qdPwtYrr+rWdvOdqcBXFm0QrIs23Ky5Iy6pQWfMJVDce0UK
 SQNj4Zbf72POdMX833JWXdaST0LMPH7vfuhnDBy7ung0id0szuqMUTuID
 7cJ9Q1r1kwQtQfkHWkm99Fehe5g0hWqy1XWes9xEo0zxbO1KcutUDs9wL
 8g0F8sDNFFLiorK8vTXfWjMkXaeI1gJlmg4dQjJeXnLW4siWYDug3A1Tm
 QTZdNCmxy6y4UoW529tbwQAfmRvFM6S1ge/FFpSbvXJw28Ai84Zk3E7Ye A==;
IronPort-SDR: dx6YWF45EaJUUid5tzRABJTT/zLGOxeI4WC1j94JuHpBZ+qFmmiXbqG0qY4gMaPetuuNqFMHLr
 L1VbaOZ7z9xXQ08pr2nmpE3B44zCHGHhH0C+iIoxArvw9WRZtpDrrkeb1b4E45NCE6NvOwRQS+
 ScjG909CpUxg7faRiAYSyLBEUMmVy1TscPtmAnox8Lmt5tLn8I/7s76dkz8dVSu/07dGtgLFt9
 BBOoLl0SMwIE5AGMWUh+QMPzvKDxmjUgHWhnj2xwacQImJPiQdSgtsxr51JiUxqSPWgvtPCAJV
 Gfo=
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="85776837"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jul 2020 00:22:51 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 1 Jul 2020 00:22:51 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 1 Jul 2020 00:22:30 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Wed, 1 Jul 2020 09:22:36 +0200
Message-ID: <20200701072239.520807-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 0/3] bridge: mrp: Add support for
	getting the status
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

This patch series extends the MRP netlink interface to allow the userspace
daemon to get the status of the MRP instances in the kernel.

v2:
  - fix sparse warnings

Horatiu Vultur (3):
  bridge: uapi: mrp: Extend MRP attributes to get the status
  bridge: mrp: Add br_mrp_fill_info
  bridge: Extend br_fill_ifinfo to return MPR status

 include/uapi/linux/if_bridge.h | 17 +++++++++
 include/uapi/linux/rtnetlink.h |  1 +
 net/bridge/br_mrp_netlink.c    | 64 ++++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        | 29 ++++++++++++++-
 net/bridge/br_private.h        |  7 ++++
 5 files changed, 117 insertions(+), 1 deletion(-)

-- 
2.27.0

