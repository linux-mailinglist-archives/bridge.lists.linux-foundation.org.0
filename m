Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ECE273BEF
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:30:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FADB85C52;
	Tue, 22 Sep 2020 07:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUAd_fKeklh3; Tue, 22 Sep 2020 07:30:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FC6985C62;
	Tue, 22 Sep 2020 07:30:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 79864C0051;
	Tue, 22 Sep 2020 07:30:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E73C7C0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DE34086690
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7AOJNF6recVR for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:30:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4F4E847E6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so2223365wmh.4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pqwHkNx0jImltrLZO0K43fN+lXj/WQjYzW88BeELohU=;
 b=atRRHV9IlbTQawV3JVthS769j53S90jNCkYuH9B+dQM2RTPH5FlrA5YVZDU7ESZFJD
 pANEzYV9YHskDwxh9dZ8esmtW0WMbthCczLIgxwqy6ql5KGM1ZT7YfYKF/xR5UuPfiw3
 8qooEFNTKmD2BhzKSnRiomdsYrQJXDItfh0szas17vzBM2CsoVLNdpgingW1lOkoG5FQ
 CXZV4qFSpxllbiIAB8DW290Po6LtqBNwyVnbYQr95cfVhmGzMwGG764H00BEBpP44Ldz
 DXkBQ1slvuRrDgf0eYMrLE52firaHKNxLC80cBY+/x2hUSgZuaZowKG/m7bKS/nkxMb6
 za5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pqwHkNx0jImltrLZO0K43fN+lXj/WQjYzW88BeELohU=;
 b=Cn14YWwR+ep3X51SziSiXxFdC9Z/FInzGw9D3yXqDWiB6F1X2sKNyXlhyfrECPB9nN
 RBa9vmdJ2fVeZh/mZmm8f+4GyAw1FWfD46N3p92SsIkd/PepAEDdaHKaDiV5dIold/VP
 pS4UXFFezEwRjfPfc2n320BeqxY4YYPF+wV6dDFgvZYTorJgzVBy4nd0mTnMmkkh+E46
 4TbzAps+JY+wJPAskHObnwRRZscWKwpnS60tvk1aBndnDCmINjrDctadPcpe7/jWPMVd
 4kXuV5s+TJlIOoNjk30qqpgQSocEsyaMrtpSJwZwQE3jJPaOdPeVLQI3rrGOb0YRTDId
 qSCA==
X-Gm-Message-State: AOAM531er4UDaQSRkZLXPIzL5J+NFvKMEtjchcyc6FDoY50/n0bg3q31
 7IXDTVuzeC0CjZmqQfFsFDY3KA==
X-Google-Smtp-Source: ABdhPJwAVP98OQUk/0GoHzYCd0p/KWi33bb4ZYPoWX3RCRNqzfRMvv29VmWsc/hn98XKKMq8D8A16A==
X-Received: by 2002:a7b:cb97:: with SMTP id m23mr2933677wmi.173.1600759852070; 
 Tue, 22 Sep 2020 00:30:52 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:30:51 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:18 +0300
Message-Id: <20200922073027.1196992-8-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 07/16] net: bridge: mdb: add support to
	extend add/del commands
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Since the MDB add/del code expects an exact struct br_mdb_entry we can't
really add any extensions, thus add a new nested attribute at the level of
MDBA_SET_ENTRY called MDBA_SET_ENTRY_ATTRS which will be used to pass
all new options via netlink attributes. This patch doesn't change
anything functionally since the new attribute is not used yet, only
parsed.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h | 12 ++++++++++++
 net/bridge/br_mdb.c            | 22 +++++++++++++++++++---
 2 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 75a2ac479247..dc52f8cffa0d 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -530,10 +530,22 @@ struct br_mdb_entry {
 enum {
 	MDBA_SET_ENTRY_UNSPEC,
 	MDBA_SET_ENTRY,
+	MDBA_SET_ENTRY_ATTRS,
 	__MDBA_SET_ENTRY_MAX,
 };
 #define MDBA_SET_ENTRY_MAX (__MDBA_SET_ENTRY_MAX - 1)
 
+/* [MDBA_SET_ENTRY_ATTRS] = {
+ *    [MDBE_ATTR_xxx]
+ *    ...
+ * }
+ */
+enum {
+	MDBE_ATTR_UNSPEC,
+	__MDBE_ATTR_MAX,
+};
+#define MDBE_ATTR_MAX (__MDBE_ATTR_MAX - 1)
+
 /* Embedded inside LINK_XSTATS_TYPE_BRIDGE */
 enum {
 	BRIDGE_XSTATS_UNSPEC,
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index a1ff0a372185..907df6d695ec 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -670,9 +670,12 @@ static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
 	return true;
 }
 
+static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
+};
+
 static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 			struct net_device **pdev, struct br_mdb_entry **pentry,
-			struct netlink_ext_ack *extack)
+			struct nlattr **mdb_attrs, struct netlink_ext_ack *extack)
 {
 	struct net *net = sock_net(skb->sk);
 	struct br_mdb_entry *entry;
@@ -719,6 +722,17 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -EINVAL;
 	*pentry = entry;
 
+	if (tb[MDBA_SET_ENTRY_ATTRS]) {
+		err = nla_parse_nested(mdb_attrs, MDBE_ATTR_MAX,
+				       tb[MDBA_SET_ENTRY_ATTRS],
+				       br_mdbe_attrs_pol, extack);
+		if (err)
+			return err;
+	} else {
+		memset(mdb_attrs, 0,
+		       sizeof(struct nlattr *) * (MDBE_ATTR_MAX + 1));
+	}
+
 	return 0;
 }
 
@@ -803,6 +817,7 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
 static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 		      struct netlink_ext_ack *extack)
 {
+	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
@@ -812,7 +827,7 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_bridge *br;
 	int err;
 
-	err = br_mdb_parse(skb, nlh, &dev, &entry, extack);
+	err = br_mdb_parse(skb, nlh, &dev, &entry, mdb_attrs, extack);
 	if (err < 0)
 		return err;
 
@@ -921,6 +936,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		      struct netlink_ext_ack *extack)
 {
+	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
@@ -930,7 +946,7 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_bridge *br;
 	int err;
 
-	err = br_mdb_parse(skb, nlh, &dev, &entry, extack);
+	err = br_mdb_parse(skb, nlh, &dev, &entry, mdb_attrs, extack);
 	if (err < 0)
 		return err;
 
-- 
2.25.4

