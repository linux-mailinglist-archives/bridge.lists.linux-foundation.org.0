Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCA92104DB
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 09:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B0D489470;
	Wed,  1 Jul 2020 07:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CEOSqZrkpFfI; Wed,  1 Jul 2020 07:22:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22F6C89469;
	Wed,  1 Jul 2020 07:22:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 006CCC0733;
	Wed,  1 Jul 2020 07:22:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BD8CFC0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC0A38ABB5
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21eQeN6RCClK for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 07:22:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F45F8ABBC
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593588149; x=1625124149;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ASReo1CJm8170qaaG0UUzUeLV1c7HctXtdLcR5LMm/I=;
 b=tSnmokbPztLf4L//Jmmh+kI3T1295R0tcteFEYeZrFMg8hHiJsw4IipK
 nkl17KadobHgUm/tbPB5tL+9ahbCFvJQGcZs75nrNTDrSZ0W/KekTGor1
 /gZ8PXAydXYMmbxYWfhnEZqIDs++ipfHRFRYB+dhJYB5Cb6jk/MtJVrm0
 PETkvPF5125T2GcI6mS/Sa9rZVDulBBvgCHzk+z6FfbXg62JrEiS2fdHV
 q9KgrlknyLtqppaV5lrFyrE5xpRn2Czqt4uPUbxkljNoyrAv6Cp7RKLv8
 cNM6wo2cDk1BL3Wf1NKsiAtWF3Zjbne4CeCBz1KgZQleSlrUYwKQbvq/z Q==;
IronPort-SDR: 5uBsSbrAYzBz21ZsGyql3MBfc5HFsT+DIsLVPvR9k9KUP3UL8ZRn6zg8Pqylahvk/RtcYsoyCF
 +JFRTvX5nkUBBOWg4uG3NRXCreQZk9AHTUThhgcQXz4QIuqV0SaiEVYq4G42+YBtR3SFg0/n2h
 eBstsnmZhCxENpQOl88X6SMJWlHRsWQTj8nMp+t95HQl8hZWxwvQ/bU/aDGi5pK2uXNkw60p0a
 HFM/5a0ib6PxMRWZ1PBck/1IvEd4oOJSUODs8W+cDD73eP62u4eGN1skCi2DJzgMoYTmxTutwW
 fZs=
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="81498611"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jul 2020 00:22:29 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 1 Jul 2020 00:22:27 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 1 Jul 2020 00:22:05 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Wed, 1 Jul 2020 09:21:17 +0200
Message-ID: <20200701072120.520571-1-horatiu.vultur@microchip.com>
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

