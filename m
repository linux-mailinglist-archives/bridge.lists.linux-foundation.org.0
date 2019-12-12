Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CE411C1DF
	for <lists.bridge@lfdr.de>; Thu, 12 Dec 2019 02:07:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79A54204CE;
	Thu, 12 Dec 2019 01:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 58kdfwJtYZNk; Thu, 12 Dec 2019 01:07:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A56C2204F7;
	Thu, 12 Dec 2019 01:07:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 737C2C18DC;
	Thu, 12 Dec 2019 01:07:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 15199C0881
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0400C86E35
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vypsd01GRywU for <bridge@lists.linux-foundation.org>;
 Thu, 12 Dec 2019 01:07:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F2FB86E2B
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:07:30 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id w127so224779qkb.11
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 17:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JcT5JaZ2ztlm9nVh3YJKAXgItNSZXXVSU78tCu2kIzQ=;
 b=tXiX5OtDHGhiywhmijDgyEx1NrbU4p93GnhnMF24bLBymtMFCimd4dBAq8qCMqsTlt
 xJmZioMRds/bSuhPZ7cO4ugVtbPQBAznxa6bT1Rq/11TFqWXS50gLBAuENcJULBOLZAQ
 4YM+bw+9S45jPdv/cNwcqYDZTnO7fPvtwVgwX3VL+Q01oFR7V3UiZinS7e01O8aJ59dR
 eRhTi2KuN8F1cNgp+4/fPiDZkC3+q77zp1YzK9TcRNYQwVq9T5qj9+OiCbQvrWTQZGeD
 8Fc2V8/CjbHFE9qLg6dl9pVs9L1pfo333+igJRuc6m7lR3LPXmyB2OPKunJINDf7WR1d
 D1fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JcT5JaZ2ztlm9nVh3YJKAXgItNSZXXVSU78tCu2kIzQ=;
 b=beiVkHDwz2r4Imltnpp4Bf6KCCGo3XLWL0yKnQH8MR/WwcmSsdL7WCE/IGTz6wSNFS
 BcowC27gY3Y4EHUageBBJi0L6U/EU/zGb752E7pxvCtzQOOQp/s1PunoJ71n0jLoSKBL
 UPpn1x/6xVyUalyYg/3dcBvIhXZBqfIJoREbYuPUQg5vkLjMJVb3bluRXRuM1nmAMZWy
 bLUaWy6CcRJBYyn6aJNcndAvJrh9dbcp40F+fztbpgT/tHFFbo4Kq5VnL+5Xv0xhXQes
 ZIwtwCXPyf9ZqmQPVQAFbJjEetGMj7Y/KBeSn+hN7F8O1w1rBM7SDoec4/FD6GFCjmdc
 lg3w==
X-Gm-Message-State: APjAAAUaY1sL0Kdo0V5Ez61zUaXmqoVe58w4B2Xgg6gNkn9ZsbuwrHg+
 3peIM1Reh+JO+9y07tcJpZL8ZmXF
X-Google-Smtp-Source: APXvYqzoggbrOAvzAN/pHjC7Zpbl6lZdgepimYfDRAotf0UDnrXbCPWgpXyAMuWu6G06cbJfr9/bzg==
X-Received: by 2002:a05:620a:20c7:: with SMTP id
 f7mr5901951qka.440.1576112849328; 
 Wed, 11 Dec 2019 17:07:29 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id f2sm1551198qtm.55.2019.12.11.17.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 17:07:28 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Wed, 11 Dec 2019 20:07:11 -0500
Message-Id: <20191212010711.1664000-2-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212010711.1664000-1-vivien.didelot@gmail.com>
References: <20191212010711.1664000-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 David Ahern <dsahern@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH iproute2 v4] iplink: add support for STP xstats
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

    # ip link xstats type bridge_slave dev lan4 stp
    lan4
                        STP BPDU:  RX: 0 TX: 61
                        STP TCN:   RX: 0 TX: 0
                        STP Transitions: Blocked: 2 Forwarding: 1

Or below as JSON:

    # ip -j -p link xstats type bridge_slave dev lan0 stp
    [ {
            "ifname": "lan0",
            "stp": {
                "rx_bpdu": 0,
                "tx_bpdu": 500,
                "rx_tcn": 0,
                "tx_tcn": 0,
                "transition_blk": 0,
                "transition_fwd": 0
            }
        } ]

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 include/uapi/linux/if_bridge.h | 10 ++++++++++
 ip/iplink_bridge.c             | 26 ++++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 31fc51bd..9fefc7f3 100644
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
@@ -262,6 +271,7 @@ enum {
 	BRIDGE_XSTATS_VLAN,
 	BRIDGE_XSTATS_MCAST,
 	BRIDGE_XSTATS_PAD,
+	BRIDGE_XSTATS_STP,
 	__BRIDGE_XSTATS_MAX
 };
 #define BRIDGE_XSTATS_MAX (__BRIDGE_XSTATS_MAX - 1)
diff --git a/ip/iplink_bridge.c b/ip/iplink_bridge.c
index 06f736d4..bbd6f3a8 100644
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
@@ -807,6 +808,29 @@ static void bridge_print_stats_attr(struct rtattr *attr, int ifindex)
 				  mstats->mld_parse_errors);
 			close_json_object();
 			break;
+		case BRIDGE_XSTATS_STP:
+			sstats = RTA_DATA(i);
+			open_json_object("stp");
+			print_string(PRINT_FP, NULL,
+				     "%-16s    STP BPDU:  ", "");
+			print_u64(PRINT_ANY, "rx_bpdu", "RX: %llu ",
+				  sstats->rx_bpdu);
+			print_u64(PRINT_ANY, "tx_bpdu", "TX: %llu\n",
+				  sstats->tx_bpdu);
+			print_string(PRINT_FP, NULL,
+				     "%-16s    STP TCN:   ", "");
+			print_u64(PRINT_ANY, "rx_tcn", "RX: %llu ",
+				  sstats->rx_tcn);
+			print_u64(PRINT_ANY, "tx_tcn", "TX: %llu\n",
+				  sstats->tx_tcn);
+			print_string(PRINT_FP, NULL,
+				     "%-16s    STP Transitions: ", "");
+			print_u64(PRINT_ANY, "transition_blk", "Blocked: %llu ",
+				  sstats->transition_blk);
+			print_u64(PRINT_ANY, "transition_fwd", "Forwarding: %llu\n",
+				  sstats->transition_fwd);
+			close_json_object();
+			break;
 		}
 	}
 	close_json_object();
@@ -843,6 +867,8 @@ int bridge_parse_xstats(struct link_util *lu, int argc, char **argv)
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

