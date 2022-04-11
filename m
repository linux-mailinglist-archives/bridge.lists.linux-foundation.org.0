Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 297BD4FC372
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 447BC4156C;
	Mon, 11 Apr 2022 17:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcMrc6XIhn42; Mon, 11 Apr 2022 17:30:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7DF164157E;
	Mon, 11 Apr 2022 17:30:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CF54C008F;
	Mon, 11 Apr 2022 17:30:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BAD1C0033
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37D2060FFE
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqoxX1gNX-li for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6152660FF9
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:06 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id lc2so11774111ejb.12
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O/VZLSKKUr9Ihqy6S3wZzx57tDuzGbENOM9GV5qAtjA=;
 b=fFAeWA901r46qOOdPqJ4hjzi3NDTcPdGTCrShzVqlrXGohdJz5OqOhbR53eJj+8/Mz
 jNsj1Ll+69KR3nuryXJWdWkkpKWIrq0tGF98iH4JSZiXpx9yrldzFYvXmWU2LU35kGxI
 2a0zL+wy9JNmACu4OFV0CW+eoeI6F723MISF2PvEnIHToEZ9xwXZtYYRS9/FFpY97Z9d
 L3z1fX9r31aAfIgro65HkUnPXsAkNUU5O+x+VOr+pCw9pmQaThoJ1+usUZFN8fxTEpbw
 DXGDKEZe1rK0SoyB953x362v9H+VCZ7WHPKRd3soJS63WL6Jh7M/9EjYA34boDNsiCU/
 DuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O/VZLSKKUr9Ihqy6S3wZzx57tDuzGbENOM9GV5qAtjA=;
 b=LKnnlX+NtjOrhbFYXAKA5bPHXBzd4v78GFYZWw2fwOy7/kBYIoNkFiu5hz7z/+3kTt
 NhGC/VXkLexru5XYCOXwnpKRCQBT17TCZTJUlgeVphcHQ7TzmRtF/zP6BwXtn85bk/iV
 RaYlvsm9JbPuTorEWbe3HQlgxOHG82j+r9wbDSR5fA0/v7NaeC9ves/XAu6yuvc+RG3/
 Xd53rkXwbGPBeFrHIaElhuZAqMEAuV0zvZJ/k+X/Gam+nuOyClGCBQHRbe4oQLda+WN0
 hJEee7zj0CdXt/+QrSh7z/441MfW38rJFtC+nwzUDvAAR+l6qtlCRLxpM6R+zih9togg
 zUww==
X-Gm-Message-State: AOAM533jnXuGCx/uj5OYTTP0YfLyQR3XeDweR7Rw7T7JYFad9Xq2QtPv
 I4V/NPxJ78we/Z9rO+TuUgd9sg==
X-Google-Smtp-Source: ABdhPJx3nKeCKQpSmaPdqh76RCSsXmqoKXzgCblRjdLmXrHbv2xJUhepqMv+qlK5mBnORk9EyAvm6A==
X-Received: by 2002:a17:906:2c0d:b0:6e8:979c:be8 with SMTP id
 e13-20020a1709062c0d00b006e8979c0be8mr4246836ejh.239.1649698204541; 
 Mon, 11 Apr 2022 10:30:04 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.30.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:30:04 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:34 +0300
Message-Id: <20220411172934.1813604-9-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 8/8] net: bridge: fdb: add support for
	flush filtering based on ifindex and vlan
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

Add support for fdb flush filtering based on destination ifindex and
vlan id. The ifindex must either match a port's device ifindex or the
bridge's. The vlan support is trivial since it's already validated by
rtnl_fdb_flush, we just need to fill it in.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v2: validate ifindex and fill in vlan id

 net/bridge/br_fdb.c | 42 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 2cea03cbc55f..b078a656776a 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -622,12 +622,44 @@ static unsigned long __ndm_flags_to_fdb_flags(u8 ndm_flags)
 	return flags;
 }
 
+static int __fdb_flush_validate_ifindex(const struct net_bridge *br,
+					int ifindex,
+					struct netlink_ext_ack *extack)
+{
+	const struct net_device *dev;
+
+	dev = __dev_get_by_index(dev_net(br->dev), ifindex);
+	if (!dev) {
+		NL_SET_ERR_MSG_MOD(extack, "Unknown flush device ifindex");
+		return -ENODEV;
+	}
+	if (!netif_is_bridge_master(dev) && !netif_is_bridge_port(dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Flush device is not a bridge or bridge port");
+		return -EINVAL;
+	}
+	if (netif_is_bridge_master(dev) && dev != br->dev) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Flush bridge device does not match target bridge device");
+		return -EINVAL;
+	}
+	if (netif_is_bridge_port(dev)) {
+		struct net_bridge_port *p = br_port_get_rtnl(dev);
+
+		if (p->br != br) {
+			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
 		 struct net_device *dev, u16 vid,
 		 struct netlink_ext_ack *extack)
 {
 	u8 ndm_flags = ndm->ndm_flags & ~FDB_FLUSH_IGNORED_NDM_FLAGS;
-	struct net_bridge_fdb_flush_desc desc = {};
+	struct net_bridge_fdb_flush_desc desc = { .vlan_id = vid };
 	struct net_bridge *br;
 
 	if (netif_is_bridge_master(dev)) {
@@ -663,6 +695,14 @@ int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
 
 		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
 	}
+	if (tb[NDFA_IFINDEX]) {
+		int err, ifidx = nla_get_s32(tb[NDFA_IFINDEX]);
+
+		err = __fdb_flush_validate_ifindex(br, ifidx, extack);
+		if (err)
+			return err;
+		desc.port_ifindex = ifidx;
+	}
 
 	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
 		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
-- 
2.35.1

