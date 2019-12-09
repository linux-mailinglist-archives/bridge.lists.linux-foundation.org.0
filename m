Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 304FE117B2C
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 00:05:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D053D869C5;
	Mon,  9 Dec 2019 23:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nyy6fJ3GX0eg; Mon,  9 Dec 2019 23:05:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9455586A40;
	Mon,  9 Dec 2019 23:05:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 632ECC1796;
	Mon,  9 Dec 2019 23:05:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2A02C0881
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 23:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC259860D2
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 23:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJy7UcSrEmdT for <bridge@lists.linux-foundation.org>;
 Mon,  9 Dec 2019 23:05:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D1C5869C5
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 23:05:35 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id l124so2810281qkf.8
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 15:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tck+Nhv2b/sVGzVhvefzQX+0sDVc0C2xky/4jXyT/vA=;
 b=oaW6tNV0UmLbVGY+zMcR887H34jET8qZ4u47t7JK168lOky24xA57wDTQ3HggOBqFg
 UOKh/jJ2bU7JRDCNHk9xc2HyHdUTw4Cq1bauel4BUd8D4jOpE7D7P+YoIrY56V7NuFnP
 Qk8X1WQdJvtzxy4lt0Nb6aIEyjl3px6eiXRNeiMzioX4yo9cpYVIHeHSycl7nlZkNYNf
 46sPybXbhlAZkSDYRJMx/nYrujGSd2NRqk32SnuThLMuY6+rJ+kFOpaPHFmFm9e7nE9h
 Kdz8mjIHNvtwnP/PxmdcXtTwnhsuaRmOlol68x2pSVD3UQwSLfn9wWeP46TbtQspTvdY
 +IDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tck+Nhv2b/sVGzVhvefzQX+0sDVc0C2xky/4jXyT/vA=;
 b=oeSTusTCOqtG806Iw9/94VTcbVe2R7GP5/XJEZjsvWkt0vSbr12i5N4N7DfA+HKUcn
 6qJtooJ1+uZtF+Qr717X6/4JODESwwbw75xuALTj3cfi7qAtRBPJw+2t6uGheG/x1vi/
 e76GasfwYK28UpWp7s69ZD9Y6COKprx/j3rrgxdY3Q7DWiCjYZs5lUTzQOZuz+9wGYN2
 xQDdN7n4SZMrEKxTxhd3mQ1fltrPJVsasjSZFzVnzoJFt3g7Atj3urLCMICHcu5BDWL7
 Y8PMVp6CzNyzEhwCNKl5FAgZhJhIaf0lVMDip4OwyYzznU96HLMCnxlqyxDyqhMubfai
 p1zw==
X-Gm-Message-State: APjAAAVjr7beoeAR0hlUvlUZY4DHn2BJpB73Z45u8dfNyPllGZd4OT8S
 VALuNJci/MQqEyt/7gXw4fA=
X-Google-Smtp-Source: APXvYqzZJFTgToFBA2qsELSUf0wdF9+7fCVfqjJW3+r64sGRnCqV4WORHv2eRXxx9TdwGhlxyMb+9w==
X-Received: by 2002:a37:bf82:: with SMTP id
 p124mr30157918qkf.337.1575932734375; 
 Mon, 09 Dec 2019 15:05:34 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id i19sm326579qki.124.2019.12.09.15.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 15:05:33 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Mon,  9 Dec 2019 18:05:22 -0500
Message-Id: <20191209230522.1255467-2-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209230522.1255467-1-vivien.didelot@gmail.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH iproute2 v2] iplink: add support for STP xstats
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
 include/uapi/linux/if_bridge.h | 10 ++++++++++
 ip/iplink_bridge.c             | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 31fc51bd..42f76697 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
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

