Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9E9117843
	for <lists.bridge@lfdr.de>; Mon,  9 Dec 2019 22:19:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF30F878CD;
	Mon,  9 Dec 2019 21:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X08GktBcrDqH; Mon,  9 Dec 2019 21:19:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89B8E8833E;
	Mon,  9 Dec 2019 21:18:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 68594C1D7D;
	Mon,  9 Dec 2019 21:18:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BCC19C0881
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 21:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABDDA87765
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 21:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QlvR5KPPDMjg for <bridge@lists.linux-foundation.org>;
 Mon,  9 Dec 2019 21:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CFD7086661
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 21:18:55 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id w47so622235qtk.4
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 13:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ig1eHCKylkEmWRu7t2KErYZMcxU0K9tU+l/Fj2NMJYo=;
 b=boRahsRG3o1GrapnJGvDXkMqVk4EluBuMoCAQEkjAVANm7J4sMm4bxHTwWy6+ZZa2O
 VrqpP0QsgiRwHCLREQp1car1Rxut/wNXm6Z6VnrTeGsnZAlIYzV61nEJO7o5ErEkzf2c
 +EWfZEap/mqXTUAq77D+KfIqXhChtq+BMhAh2YkFuIHSj0uLaSHcxCdPN1lwHLnF51Nj
 AFzojSR+J81CFnwrzModx/RZ22cXXjjRgUwNZmJp5P+1TdqE4z1ZWpRUye0qc+EMXLMv
 s1XVxM+Lrn38exRCk+OPoBw1xsQqxR7lD6ePFrxSrmMiR7awzF9B2GDZ7V+jCzWg03d/
 t/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ig1eHCKylkEmWRu7t2KErYZMcxU0K9tU+l/Fj2NMJYo=;
 b=o3Jyt6aZ0QnXLu2kxOhFqPNxPon0XlX5UgAdNrRzH2fUav9vXk3DK2qdE3h20t59Jn
 wMH5gtJl0pypFQPOhb9YSKoQZ45bvH2L1xkCrRFpkjYDB46KnjVH/GfNhMBto/rjGySn
 O/ejhxBzAfTrH2JV9wLe95r1WN8CiV9tmrrMye3psTdhJt4xBajBU05TJzjrMuSiD0AG
 Rmb7AtNTmrkNb3jRhkIkbYT29nDCk35U09cROxGTtsyYrzGusVOxt4iI/JBe87AYWcfK
 rZrG/8XrTdT2qArviaSPI1HbSR+zejMPDUNpQnAtKLs6F3MPJiG25CKFWtyxp69D6cGM
 loKw==
X-Gm-Message-State: APjAAAWq5oJtO3U8f4heVI8If89ROqxERuv5/nTy+JTkVRFyXoGyDH6s
 7QIiX86SrT+K9GFXWA3vh/k=
X-Google-Smtp-Source: APXvYqzAkbDGlP4xXgoq9L6pives1YTLbN7SWdNjGqtkrUm/QYeaxVJPmDUarx4aZHwAOzInvEuFjA==
X-Received: by 2002:ac8:1194:: with SMTP id d20mr6949534qtj.243.1575926334809; 
 Mon, 09 Dec 2019 13:18:54 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id e123sm226057qkf.80.2019.12.09.13.18.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:18:54 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Mon,  9 Dec 2019 16:18:41 -0500
Message-Id: <20191209211841.1239497-2-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209211841.1239497-1-vivien.didelot@gmail.com>
References: <20191209211841.1239497-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH iproute2] iplink: add support for STP xstats
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

Add support for the BRIDGE_XSTATS_STP xstats, as follow:

    # ip link xstats type bridge_slave dev lan5
                        STP BPDU:
                          RX: 0
                          TX: 39
                        STP TCN:
                          RX: 0
                          TX: 0
                        STP Transitions:
                          Blocked: 0
                          Forwarding: 1
                        IGMP queries:
                          RX: v1 0 v2 0 v3 0
                          TX: v1 0 v2 0 v3 0
    ...

Or below as JSON:

    # ip -j -p link xstats type bridge_slave dev lan0 | head
    [ {
            "ifname": "lan0",
            "stp": {
                "rx_bpdu": 0,
                "tx_bpdu": 500,
                "rx_tcn": 0,
                "tx_tcn": 0,
                "transition_blk": 0,
                "transition_fwd": 1
            },
    ...

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 include/uapi/linux/if_bridge.h | 16 +++++++++++++---
 ip/iplink_bridge.c             | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 31fc51bd..e7f2bb78 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -11,8 +11,8 @@
  *	2 of the License, or (at your option) any later version.
  */
 
-#ifndef _LINUX_IF_BRIDGE_H
-#define _LINUX_IF_BRIDGE_H
+#ifndef _UAPI_LINUX_IF_BRIDGE_H
+#define _UAPI_LINUX_IF_BRIDGE_H
 
 #include <linux/types.h>
 #include <linux/if_ether.h>
@@ -156,6 +156,15 @@ struct bridge_vlan_xstats {
 	__u32 pad2;
 };
 
+struct bridge_stp_xstats {
+	__u64 transition_blk;
+	__u64 transition_fwd;
+	__u64 rx_bpdu;
+	__u64 tx_bpdu;
+	__u64 rx_tcn;
+	__u64 tx_tcn;
+};
+
 /* Bridge multicast database attributes
  * [MDBA_MDB] = {
  *     [MDBA_MDB_ENTRY] = {
@@ -261,6 +270,7 @@ enum {
 	BRIDGE_XSTATS_UNSPEC,
 	BRIDGE_XSTATS_VLAN,
 	BRIDGE_XSTATS_MCAST,
+	BRIDGE_XSTATS_STP,
 	BRIDGE_XSTATS_PAD,
 	__BRIDGE_XSTATS_MAX
 };
@@ -314,4 +324,4 @@ struct br_boolopt_multi {
 	__u32 optval;
 	__u32 optmask;
 };
-#endif /* _LINUX_IF_BRIDGE_H */
+#endif /* _UAPI_LINUX_IF_BRIDGE_H */
diff --git a/ip/iplink_bridge.c b/ip/iplink_bridge.c
index 06f736d4..92e051c8 100644
--- a/ip/iplink_bridge.c
+++ b/ip/iplink_bridge.c
@@ -688,6 +688,7 @@ static void bridge_print_xstats_help(struct link_util *lu, FILE *f)
 static void bridge_print_stats_attr(struct rtattr *attr, int ifindex)
 {
 	struct rtattr *brtb[LINK_XSTATS_TYPE_MAX+1];
+	struct bridge_stp_xstats *sstats;
 	struct br_mcast_stats *mstats;
 	struct rtattr *i, *list;
 	const char *ifname = "";
@@ -807,6 +808,35 @@ static void bridge_print_stats_attr(struct rtattr *attr, int ifindex)
 				  mstats->mld_parse_errors);
 			close_json_object();
 			break;
+		case BRIDGE_XSTATS_STP:
+			sstats = RTA_DATA(i);
+			open_json_object("stp");
+			print_string(PRINT_FP, NULL,
+				     "%-16s    STP BPDU:\n", "");
+			print_string(PRINT_FP, NULL, "%-16s      ", "");
+			print_u64(PRINT_ANY, "rx_bpdu", "RX: %llu\n",
+				  sstats->rx_bpdu);
+			print_string(PRINT_FP, NULL, "%-16s      ", "");
+			print_u64(PRINT_ANY, "tx_bpdu", "TX: %llu\n",
+				  sstats->tx_bpdu);
+			print_string(PRINT_FP, NULL,
+				     "%-16s    STP TCN:\n", "");
+			print_string(PRINT_FP, NULL, "%-16s      ", "");
+			print_u64(PRINT_ANY, "rx_tcn", "RX: %llu\n",
+				  sstats->rx_tcn);
+			print_string(PRINT_FP, NULL, "%-16s      ", "");
+			print_u64(PRINT_ANY, "tx_tcn", "TX: %llu\n",
+				  sstats->tx_tcn);
+			print_string(PRINT_FP, NULL,
+				     "%-16s    STP Transitions:\n", "");
+			print_string(PRINT_FP, NULL, "%-16s      ", "");
+			print_u64(PRINT_ANY, "transition_blk", "Blocked: %llu\n",
+				  sstats->transition_blk);
+			print_string(PRINT_FP, NULL, "%-16s      ", "");
+			print_u64(PRINT_ANY, "transition_fwd", "Forwarding: %llu\n",
+				  sstats->transition_fwd);
+			close_json_object();
+			break;
 		}
 	}
 	close_json_object();
@@ -843,6 +873,8 @@ int bridge_parse_xstats(struct link_util *lu, int argc, char **argv)
 	while (argc > 0) {
 		if (strcmp(*argv, "igmp") == 0 || strcmp(*argv, "mcast") == 0) {
 			xstats_print_attr = BRIDGE_XSTATS_MCAST;
+		} else if (strcmp(*argv, "stp") == 0) {
+			xstats_print_attr = BRIDGE_XSTATS_STP;
 		} else if (strcmp(*argv, "dev") == 0) {
 			NEXT_ARG();
 			filter_index = ll_name_to_index(*argv);
-- 
2.24.0

