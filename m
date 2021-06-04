Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DB739B73B
	for <lists.bridge@lfdr.de>; Fri,  4 Jun 2021 12:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CF2B4063D;
	Fri,  4 Jun 2021 10:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ARRFzfr0uKC; Fri,  4 Jun 2021 10:38:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C0AF40631;
	Fri,  4 Jun 2021 10:38:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AF259C001C;
	Fri,  4 Jun 2021 10:38:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23C3BC0001
 for <bridge@lists.linux-foundation.org>; Fri,  4 Jun 2021 10:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1B494016D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Jun 2021 10:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GC-_QtW1zboc for <bridge@lists.linux-foundation.org>;
 Fri,  4 Jun 2021 10:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFA7640104
 for <bridge@lists.linux-foundation.org>; Fri,  4 Jun 2021 10:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1622803083; x=1654339083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4sXc9RFUGLKrPBrTE/aA0NwwQbDYVun7rUmFq44v2zA=;
 b=KZmv+fk030p1ROt1V3Mb0BeYbAb9YOJmx0mZuNGvEFSzTngDIaoW+GKF
 NixSCOP7VvGa3IpLKpHDVha3ym9Wg/jR0q32rk9Mdp79ihgdDjm7OKvzG
 S+OX8Oheyl9zFMN2fnUpsMeaVOqqAepXBzEh5rOoZf1hjtiGPLLuetuUu
 7o9Y+/WbyoYcSkfpLEw3t+6s8tnEeXPDMQWLYhptrpnkeLNhFYTJhFcsq
 ppHWY/lZ/D6rJLP120jjFhEuvCZ2iz1FnwzvkOEueeFKHp00nLKFqdnj3
 6rqmQpzN5IuVcEQ4lFaPv+eSWHNkBJgUgFZUFGbHSv6Non0LL4lRH3lKH w==;
IronPort-SDR: abUF0oX24C7cEcjkxaszfgou2C+JQ+g7Cgg7mlDxB67pz2LZxGWM0gNeJSpYgSr9rxLFWdGOpt
 cBDo5VV8is6ATpynZlOqOoXMlUelK5Mi9JQaOvHthZ3zdfNituA9qEjAmKxYe96w74WmekP5Kq
 Icqk19Cmb7tPDmcQlZR74z8V+Szibp1xN/bUkFaNXeruhZ0LWK3JbRo1+YZVC7gHWec0ff8+gU
 W2IGbjzoPrOauJWvIwfG+UKFsR1vucKXeoSGkuMAheeog84fhQpA7XDSW1zA6CYGPCxbuQvvR4
 4yA=
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="124079584"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Jun 2021 03:38:02 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 4 Jun 2021 03:38:02 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Fri, 4 Jun 2021 03:38:00 -0700
To: <roopa@nvidia.com>, <nikolay@nvidia.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <UNGLinuxDriver@microchip.com>
Date: Fri, 4 Jun 2021 12:37:47 +0200
Message-ID: <20210604103747.3824212-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next] net: bridge: mrp: Update ring transitions.
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

According to the standard IEC 62439-2, the number of transitions needs
to be counted for each transition 'between' ring state open and ring
state closed and not from open state to closed state.

Therefore fix this for both ring and interconnect ring.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index cd2b1e424e54..f7012b7d7ce4 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -627,8 +627,7 @@ int br_mrp_set_ring_state(struct net_bridge *br,
 	if (!mrp)
 		return -EINVAL;
 
-	if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED &&
-	    state->ring_state != BR_MRP_RING_STATE_CLOSED)
+	if (mrp->ring_state != state->ring_state)
 		mrp->ring_transitions++;
 
 	mrp->ring_state = state->ring_state;
@@ -715,8 +714,7 @@ int br_mrp_set_in_state(struct net_bridge *br, struct br_mrp_in_state *state)
 	if (!mrp)
 		return -EINVAL;
 
-	if (mrp->in_state == BR_MRP_IN_STATE_CLOSED &&
-	    state->in_state != BR_MRP_IN_STATE_CLOSED)
+	if (mrp->in_state != state->in_state)
 		mrp->in_transitions++;
 
 	mrp->in_state = state->in_state;
-- 
2.31.1

