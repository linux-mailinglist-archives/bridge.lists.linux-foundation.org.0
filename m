Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F961119577
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 22:21:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A848E86C1E;
	Tue, 10 Dec 2019 21:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnP6DCA5d1e5; Tue, 10 Dec 2019 21:21:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 621EF86C2C;
	Tue, 10 Dec 2019 21:21:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5272FC0881;
	Tue, 10 Dec 2019 21:21:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD2FDC1797
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D99A387CB6
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IhASKLYLo-e1 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 21:21:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F6B387C52
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:21:02 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id g17so4155048qtp.11
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 13:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HALsy1SsRzqboEILgEkyfVYlqeD8DKr+cao6rYYBxRU=;
 b=h8KmEzd6aYcu5L1jPwn+xhW3YL9g1YfC2E/rrg7Ni3VVQsOVCcSTsVBjPmW+tbRFjj
 0XLKbxozgAfBZPNBwOPq3f3RPGKoo08owZ3SMJwbHusB7MDQYbgMBBLgCXeIzgectv0l
 2m/MrWurpPhSvFsluQVjrbyXTPadOlkXN5WE1df2hzYgQKbfa54M/9nxB/BEc2q9/LSp
 fNeOj25nnv54dr4iqjAlroP13Oor8zRLr1S8CzUdi+iLy+P7CVhXe8dRHlTU1FWbuZtN
 luGwK3gjwgukY/FgzLfJ+gxXGsDH6UGsfTHIipae58yxrWa0A804cxLerG2i8vjcOUcz
 DdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HALsy1SsRzqboEILgEkyfVYlqeD8DKr+cao6rYYBxRU=;
 b=p4WAqS4kTx7uw8UoACIgbUQzkebqzFtXQbQ8prOeaIlgogsD7ZB6IYJcqg/ezCjePJ
 jxhkUViVtFxaa0YE6jsBujafK860MGE1+1HfTskU3jL+lPZl8RxuWKUFaWapLwSiu+PT
 vCED8x0v6j6iT43Hl+chQIN1yoPCcx+dO96e9AtlgaO3novR1fuO/FDCCeqflav4le3k
 iuF/Esxi8CVVzihFppy8nmRDLWOl9iZ7DbI3UekPcSI2XSN0CKi2BoBvJc7i5VQVdVkZ
 s8vGOb3MRvi4RE4sThfFMdemEAANqdOUMjHj7T/NFNfmZRzFHScK5514+iFS6Rca3WlY
 uToQ==
X-Gm-Message-State: APjAAAUOW6sL2HgIpmWLDSBw7X9UZ3dO3wNvBnJ5fWkamQUcfrlTHMc/
 GRmKDueAaB2FROTWNutr290=
X-Google-Smtp-Source: APXvYqxqitMcpdWFtvTfohucnCIEIENz0SWcPrCNmg3Mnxk3wY6wS78EyN7uNQF0xqRuFc6F29+3VQ==
X-Received: by 2002:ac8:538d:: with SMTP id x13mr32812154qtp.375.1576012861243; 
 Tue, 10 Dec 2019 13:21:01 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id l31sm2862qte.30.2019.12.10.13.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 13:21:00 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Tue, 10 Dec 2019 16:20:50 -0500
Message-Id: <20191210212050.1470909-2-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210212050.1470909-1-vivien.didelot@gmail.com>
References: <20191210212050.1470909-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH iproute2 v3] iplink: add support for STP xstats
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

