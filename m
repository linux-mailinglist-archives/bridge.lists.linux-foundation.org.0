Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E64A4FA6F5
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:05:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76A0841A42;
	Sat,  9 Apr 2022 11:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWoj5bHXBzzS; Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 99BE5416E0;
	Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 70C4AC002C;
	Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F426C0087
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF85E841D5
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F10zLVbMTbU1 for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3273B8418C
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id p15so21863691ejc.7
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ByfL8z/R6BuRgwZqTxWQ31zr/BQkKOOXCLKFqhleuTY=;
 b=ilhuW9/NCRq4MTKKfWSDcWFxlWcnsF2ZZozvoMJG02Aiw6o1FZiMM93nJSKtnNfLWI
 OPN7XWVHpxnl+tP18PkJud6MfyjAWUorgmDYQdfVl3dbUTvMK0fIqxcInmuOFSQFmq6l
 ypvTJJ1pGUzjZJaaBaB3X+FDpSB3ALFjZzuALMG9ZKj4OFleKGGrtWhL5CIvdJZQyp8j
 +pg1P7f5FQAxjdPVVbyPotaNcXjxy1ieOy/Bq5U1b0xpt32co5tOSnijoKHmL1gODEjq
 hJmrlLC8K21YWB5fRAiYJbPb/wEWDPafq8z0g1N9MBDvt4jzGzwPQvg/A9QN8L3wNSx7
 FZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ByfL8z/R6BuRgwZqTxWQ31zr/BQkKOOXCLKFqhleuTY=;
 b=PoeZYPN7Arvojd8tZP49Euy17VKsRNRPLWjkL5yCTvpRHkE39U0MNQXEm948c5IosU
 E1uhXBTTrdDAjh3aeG3aGshZilVT8aunv38jrKK5Ko0/+V9CDV6mrB69rcPfeOyduhwM
 yNFIj9FFAJJwoTggOCf9Tf4EwC5D5syrUq8hd/eGJFuz2BCBN2vVj+cp/2Bq7aEclMyU
 xHiueHkgXaCBFiCXqErzzcXCo/dP3kJEwqPK26Na6xcEEruYEWIVLkPHsNGIxiZ6KsKi
 JIt04GrgdEfEBbgBtWrAn2/syl/2iZt/TvaZHFdDgRrPX2SpX8DQ/1MalA1zB0nt937h
 3FfQ==
X-Gm-Message-State: AOAM532GgR2Q+2OFuRCkYW4zBXZfvN5+s7zwjkhffeBmNcMCtgbUKRbT
 rQb8iNqN7E0IadZMWAp8fJA0vA==
X-Google-Smtp-Source: ABdhPJxtyzsUMBx+lnq/Dwpwi4sb6B14tB2bpLSu2+2TcHoBKiJLynE/mrdnudx7dnKRecCCrqd6bg==
X-Received: by 2002:a17:906:d10c:b0:6cd:4aa2:cd62 with SMTP id
 b12-20020a170906d10c00b006cd4aa2cd62mr22117209ejz.229.1649502292179; 
 Sat, 09 Apr 2022 04:04:52 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:51 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:54 +0300
Message-Id: <20220409105857.803667-4-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 3/6] net: bridge: fdb: add new nl
	attribute-based flush call
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

Add a new fdb flush call which parses the embedded attributes in
BRIDGE_FLUSH_FDB and fills in the fdb flush descriptor to delete only
matching entries. Currently it's a complete flush, support for more
fine-grained filtering will be added in the following patches.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/if_bridge.h |  8 ++++++++
 net/bridge/br_fdb.c            | 24 ++++++++++++++++++++++++
 net/bridge/br_netlink.c        |  8 ++++++++
 net/bridge/br_private.h        |  2 ++
 4 files changed, 42 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 221a4256808f..2f3799cf14b2 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -807,7 +807,15 @@ enum {
 /* embedded in IFLA_BRIDGE_FLUSH */
 enum {
 	BRIDGE_FLUSH_UNSPEC,
+	BRIDGE_FLUSH_FDB,
 	__BRIDGE_FLUSH_MAX
 };
 #define BRIDGE_FLUSH_MAX (__BRIDGE_FLUSH_MAX - 1)
+
+/* embedded in BRIDGE_FLUSH_FDB */
+enum {
+	FDB_FLUSH_UNSPEC,
+	__FDB_FLUSH_MAX
+};
+#define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
 #endif /* _UAPI_LINUX_IF_BRIDGE_H */
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 4b0bf88c4121..62f694a739e1 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -594,6 +594,30 @@ void br_fdb_flush(struct net_bridge *br,
 	rcu_read_unlock();
 }
 
+static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
+	[FDB_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
+};
+
+int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
+			struct netlink_ext_ack *extack)
+{
+	struct nlattr *fdb_flush_tb[FDB_FLUSH_MAX + 1];
+	struct net_bridge_fdb_flush_desc desc = {};
+	int err;
+
+	err = nla_parse_nested(fdb_flush_tb, FDB_FLUSH_MAX, fdb_flush_attr,
+			       br_fdb_flush_policy, extack);
+	if (err)
+		return err;
+
+	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
+		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
+
+	br_fdb_flush(br, &desc);
+
+	return 0;
+}
+
 /* Flush all entries referring to a specific port.
  * if do_all is set also flush static entries
  * if vid is set delete all entries that match the vlan_id
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 6e6dce6880c9..bd2c91e5723d 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -781,6 +781,7 @@ int br_process_vlan_info(struct net_bridge *br,
 
 static const struct nla_policy br_flush_policy[BRIDGE_FLUSH_MAX + 1] = {
 	[BRIDGE_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
+	[BRIDGE_FLUSH_FDB]	= { .type = NLA_NESTED },
 };
 
 static int br_flush(struct net_bridge *br, int cmd,
@@ -804,6 +805,13 @@ static int br_flush(struct net_bridge *br, int cmd,
 	if (err)
 		return err;
 
+	if (flush_tb[BRIDGE_FLUSH_FDB]) {
+		err = br_fdb_flush_nlattr(br, flush_tb[BRIDGE_FLUSH_FDB],
+					  extack);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e6930e9ee69d..c7ea531d30ef 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -768,6 +768,8 @@ int br_fdb_hash_init(struct net_bridge *br);
 void br_fdb_hash_fini(struct net_bridge *br);
 void br_fdb_flush(struct net_bridge *br,
 		  const struct net_bridge_fdb_flush_desc *desc);
+int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
+			struct netlink_ext_ack *extack);
 void br_fdb_find_delete_local(struct net_bridge *br,
 			      const struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid);
-- 
2.35.1

