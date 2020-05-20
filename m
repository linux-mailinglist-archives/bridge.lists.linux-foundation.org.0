Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B05821DB111
	for <lists.bridge@lfdr.de>; Wed, 20 May 2020 13:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5752B860FC;
	Wed, 20 May 2020 11:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GK7gpLbNsPIx; Wed, 20 May 2020 11:11:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AE20862BC;
	Wed, 20 May 2020 11:11:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 397D9C0176;
	Wed, 20 May 2020 11:11:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7A9EAC0176
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 69E542302C
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KnA6U8Iol+QT for <bridge@lists.linux-foundation.org>;
 Wed, 20 May 2020 11:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A52220409
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589973078; x=1621509078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JsYCUzXlsDfKtKNFoYWxhgyWbE9JFx+fChYZvOyLb/8=;
 b=SUYQ1pucnAgYEwtQuj2gjBGZwjgXq454vsILk42bKqWu5a8oNbqXd6J6
 PZlBny0nuZciH4T2iTdqjARlNajgkMi6iZom5p9xgDlmpl5pAA3PsgtbX
 v/poxcSekk8fig4KObsS1toDVxctS0Mdb3EbPFW0kWCzrR3LS8+xzx/Nb
 dTmcS7MP3yB95pc+u7ngDp8rLjVXPGP5rKrnyViBt8J+8v+Tida0esDiN
 NNBFojgowf53pZfBoPoHo0KiKlUoqS0iJ+3FekcTTHOUtJEGp7zEfc30/
 sfARI+jno19elgLCtzckg9GwBM/9+JNNP7bqiSAxysfoPrSouuPuZ+EQ4 A==;
IronPort-SDR: hULINyyKvQELhKkzLfoNOWo8H94vU3VkTHKWL7m5CJNyeDJEKBR7za+GwI7t1sDbkib2qZJ/PF
 Kgfgk3nhWAqlM6tijoAOM6Nr+ZL388Z2Bc6TPfwA9LX9oqrxAnIXsaJyGfm0Af2jE/+qXfaqqZ
 ogNDnJNELpXYKl9PEb2XF9f8XiCwb+1x+egtNYLCu9BYnTTdAemaynnesU2muKjdsy2hdN0CUS
 t+mKg0MJ6jF98Z3gyi5WGyad/BTjqtLM9vkkp2g1ZkJsNZbnLe3lEMzpBS21enjtOLeqmvS8zg
 6CE=
X-IronPort-AV: E=Sophos;i="5.73,413,1583218800"; d="scan'208";a="77278923"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 May 2020 04:11:17 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 04:11:17 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 20 May 2020 04:11:14 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 20 May 2020 13:09:20 +0000
Message-ID: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH 0/3] net: bridge: mrp: Add small fixes to MRP
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

Horatiu Vultur (3):
  bridge: mrp: Add br_mrp_unique_ifindex function
  switchdev: mrp: Remove the variable mrp_ring_state
  bridge: mrp: Restore port state when deleting MRP instance

 include/net/switchdev.h |  1 -
 net/bridge/br_mrp.c     | 44 +++++++++++++++++++++++++++++++++++++----
 2 files changed, 40 insertions(+), 5 deletions(-)

-- 
2.26.2

