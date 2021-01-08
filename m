Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A55002EEB80
	for <lists.bridge@lfdr.de>; Fri,  8 Jan 2021 03:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A958F86CA1;
	Fri,  8 Jan 2021 02:54:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sGhGU_vMO8ay; Fri,  8 Jan 2021 02:54:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0919F86C25;
	Fri,  8 Jan 2021 02:54:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EDA21C013A;
	Fri,  8 Jan 2021 02:54:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 99E28C013A
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jan 2021 02:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 802CF87225
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jan 2021 02:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nhcz7QwMBz27 for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jan 2021 02:54:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 74D958713D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jan 2021 02:54:51 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t6so4937394plq.1
 for <bridge@lists.linux-foundation.org>; Thu, 07 Jan 2021 18:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y35UHLlMiYde51iVKR+n3JoxvCegZU0uBAWABZsfWpo=;
 b=eQCBTdA+Ch3bNPD2oGxk0hSRW0ovBl0Rm0wBdTk4EF9lFur536Q3u8Bz4+dKmSdnD/
 gUbomYCApSVyXY1zOsWUrhc4oeqfl1+G1OZq40rz40oQeia16ACoHKNQvQETD5cwHPc1
 y5RaYEciKf2BXwKgAJX7j943LUu5EmFf/3LSTRmAG16s9nyBpVdLJXiKP/GzcRksI000
 QwVNOTwpmmfvL9/Ki+sc0Y75e4OqW+rHVb//19GumefJaqE9iOtFf9RPJayGRY5mtFB2
 J2ZrkqBPVnfZccL8vjU5y9ebewsKeGhwUE82pVOeHDOo0Bvd8SUfd/JvSwOaJ1uoc1HB
 qpJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y35UHLlMiYde51iVKR+n3JoxvCegZU0uBAWABZsfWpo=;
 b=ST7aeTlmAVwRAj1fiEoeU+VocD+Zy21pkCFF9sD/5Nq15gd1qzcvB/JgdgveQ9vee+
 /m1/xPc6x1WKSB1vo6K3/phJJ6qtoILq90wsseI/+niOC2ld3T2oL+URdKDLLVK4kLlt
 H65tMyLfJ79ollfEGOWL4jN10gfVCYqid0pr7TxcW+ZOGtQ/3X2+MKWftfFQlf7BwBSP
 5qONCu+BGzC06UTlgPcBllbUFa/R1FZnwvsCpm1/goSJmzdHCrlR82EgvWme/mXEgMQN
 Paik3BDw/U9O+yB4vnn/V6YnZTsn3VT4T2HWgoq2ihM2tgyegRQh3GnY6sW4y/M3MHfT
 eang==
X-Gm-Message-State: AOAM530On4uwMUbQRxAK7716uHkNdOfBiwTKLcrx30Ui+lwLBN5Tqg1T
 O/q2GQKHfGdMwSfpoQtd9e4=
X-Google-Smtp-Source: ABdhPJxVfmfr+RHqVf5h9a5LvsLpxM5Y7ikc00Qn8MOC5QdyoX2BQ+qNspWHuU0k2Cumc090gMjtaQ==
X-Received: by 2002:a17:90a:a10e:: with SMTP id
 s14mr1417416pjp.133.1610074491116; 
 Thu, 07 Jan 2021 18:54:51 -0800 (PST)
Received: from localhost.localdomain ([178.236.46.205])
 by smtp.gmail.com with ESMTPSA id f193sm7444219pfa.81.2021.01.07.18.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 18:54:50 -0800 (PST)
From: menglong8.dong@gmail.com
X-Google-Original-From: dong.menglong@zte.com.cn
To: roopa@nvidia.com
Date: Thu,  7 Jan 2021 18:53:32 -0800
Message-Id: <20210108025332.52480-1-dong.menglong@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next] net/bridge: fix misspellings using
	codespell tool
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

From: Menglong Dong <dong.menglong@zte.com.cn>

Some typos are found out by codespell tool:

$ codespell ./net/bridge/
./net/bridge/br_stp.c:604: permanant  ==> permanent
./net/bridge/br_stp.c:605: persistance  ==> persistence
./net/bridge/br.c:125: underlaying  ==> underlying
./net/bridge/br_input.c:43: modue  ==> mode
./net/bridge/br_mrp.c:828: Determin  ==> Determine
./net/bridge/br_mrp.c:848: Determin  ==> Determine
./net/bridge/br_mrp.c:897: Determin  ==> Determine

Fix typos found by codespell.

Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
---
 net/bridge/br.c       | 2 +-
 net/bridge/br_input.c | 2 +-
 net/bridge/br_mrp.c   | 6 +++---
 net/bridge/br_stp.c   | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index 1b169f8e7491..ef743f94254d 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -122,7 +122,7 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 		break;
 
 	case NETDEV_PRE_TYPE_CHANGE:
-		/* Forbid underlaying device to change its type. */
+		/* Forbid underlying device to change its type. */
 		return NOTIFY_BAD;
 
 	case NETDEV_RESEND_IGMP:
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 8ca1f1bc6d12..222285d9dae2 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -40,7 +40,7 @@ static int br_pass_frame_up(struct sk_buff *skb)
 
 	vg = br_vlan_group_rcu(br);
 	/* Bridge is just like any other port.  Make sure the
-	 * packet is allowed except in promisc modue when someone
+	 * packet is allowed except in promisc mode when someone
 	 * may be running packet capture.
 	 */
 	if (!(brdev->flags & IFF_PROMISC) &&
diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index cec2c4e4561d..fc0a98874bfc 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -825,7 +825,7 @@ int br_mrp_start_in_test(struct net_bridge *br,
 	return 0;
 }
 
-/* Determin if the frame type is a ring frame */
+/* Determine if the frame type is a ring frame */
 static bool br_mrp_ring_frame(struct sk_buff *skb)
 {
 	const struct br_mrp_tlv_hdr *hdr;
@@ -845,7 +845,7 @@ static bool br_mrp_ring_frame(struct sk_buff *skb)
 	return false;
 }
 
-/* Determin if the frame type is an interconnect frame */
+/* Determine if the frame type is an interconnect frame */
 static bool br_mrp_in_frame(struct sk_buff *skb)
 {
 	const struct br_mrp_tlv_hdr *hdr;
@@ -894,7 +894,7 @@ static void br_mrp_mrm_process(struct br_mrp *mrp, struct net_bridge_port *port,
 		br_mrp_ring_port_open(port->dev, false);
 }
 
-/* Determin if the test hdr has a better priority than the node */
+/* Determine if the test hdr has a better priority than the node */
 static bool br_mrp_test_better_than_own(struct br_mrp *mrp,
 					struct net_bridge *br,
 					const struct br_mrp_ring_test_hdr *hdr)
diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
index 3e88be7aa269..a3a5745660dd 100644
--- a/net/bridge/br_stp.c
+++ b/net/bridge/br_stp.c
@@ -601,8 +601,8 @@ int __set_ageing_time(struct net_device *dev, unsigned long t)
 /* Set time interval that dynamic forwarding entries live
  * For pure software bridge, allow values outside the 802.1
  * standard specification for special cases:
- *  0 - entry never ages (all permanant)
- *  1 - entry disappears (no persistance)
+ *  0 - entry never ages (all permanent)
+ *  1 - entry disappears (no persistence)
  *
  * Offloaded switch entries maybe more restrictive
  */
-- 
2.25.1

