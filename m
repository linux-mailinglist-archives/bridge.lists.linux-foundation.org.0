Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCB14FA6F4
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2D1A8422E;
	Sat,  9 Apr 2022 11:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmEmz8p0WSKl; Sat,  9 Apr 2022 11:04:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2BD6F84178;
	Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9ABBBC0089;
	Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE4BEC002C
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D84A440476
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bp-faliWlycI for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 107B84002B
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id u15so3223690ejf.11
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=guCQtZJSW+6tAwRjn+xEzfBeefFkGekLuh0Y+O3VkjU=;
 b=bbLtwEAsjB9MTLVpVYrxb3AsIdDdsAXY/PaSdP03vlHL8c/dcfd+Et0gbMMg0K6fR/
 eDjuxvcHs8D/c0Usg9KTbOCYM9jDquU/oVvK/okxHcSF+121z2zgMf1rR0JU6n1cD2U3
 sMSbMW4pQu+USvN+a/xOlLxQR3h+KH3q3Oc4XdI7bEdEq4PRobUoXPDsYMvej1mHljdY
 DxNb8Kfw3DBLUwvrKztbdw2m4qBAauU8M/v1ap3yHlT0ZkZfU0W4scTbVMJregvx3PqO
 tuVR8vRzq0hkxLTBoP7IlBOXp+tuv2ZtAEm+5HlUZSkH1nQORIdvMue809+Qe4wxCQG5
 wQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=guCQtZJSW+6tAwRjn+xEzfBeefFkGekLuh0Y+O3VkjU=;
 b=XSfQLBlV/C/FJd7+hjeh+OdNvYlR6zWZw1wg6ga/c3MxyrAYHmIpa6z9KsdmOKc6WC
 3r3H/7CjlB0aALxqii7TcgMccHul9O+u0d4QnZRiAjedpX/wdYozOioPRvNQ32pEtQ7d
 1t+FXrpoaq6evGLsnjx3CAVEAv9+CN4iRQEjLmoazjdVP2rSBohVpNjdQ/UapaePhrGt
 p4vNvEUf7QMhx2EjNo6LOP0zcliupdTx6+Gf0iP65JBzYxAygAUxC87xwk3VNBwz0oyf
 71zVVgVDDaAppReham7n0hUhMAHloa4pGCpLwKcvwwG9uUswdBWsr4vPy6QLIvWaB4xo
 DOoQ==
X-Gm-Message-State: AOAM532RyjfWOunZMbWDM8lXv1CCJRWRQoeB690j2/LHI3hdjCYUXsZO
 YlVnKPIQcoHdXsG8pZ19OZ1+Cw==
X-Google-Smtp-Source: ABdhPJxTsykKKSk5FioE0+8GII9stuEihStRh+ExC+z5gJiPkOO8jGnT8FIQsbsGcvIlfrklLNqPzQ==
X-Received: by 2002:a17:907:9868:b0:6e8:7ae3:7f42 with SMTP id
 ko8-20020a170907986800b006e87ae37f42mr266476ejc.224.1649502293056; 
 Sat, 09 Apr 2022 04:04:53 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:52 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:55 +0300
Message-Id: <20220409105857.803667-5-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 4/6] net: bridge: fdb: add support for
	flush filtering based on ndm flags and state
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

Add support for fdb flush filtering based on ndm flags and state. The
new attributes allow users to specify a mask and value which are mapped
to bridge-specific flags. NTF_USE is used to represent added_by_user
flag since it sets it on fdb add and we don't have a 1:1 mapping for it.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/if_bridge.h |  4 +++
 net/bridge/br_fdb.c            | 55 ++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 2f3799cf14b2..4638d7e39f2a 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -815,6 +815,10 @@ enum {
 /* embedded in BRIDGE_FLUSH_FDB */
 enum {
 	FDB_FLUSH_UNSPEC,
+	FDB_FLUSH_NDM_STATE,
+	FDB_FLUSH_NDM_STATE_MASK,
+	FDB_FLUSH_NDM_FLAGS,
+	FDB_FLUSH_NDM_FLAGS_MASK,
 	__FDB_FLUSH_MAX
 };
 #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 62f694a739e1..340a2ace1d5e 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -594,8 +594,40 @@ void br_fdb_flush(struct net_bridge *br,
 	rcu_read_unlock();
 }
 
+static unsigned long __ndm_state_to_fdb_flags(u16 ndm_state)
+{
+	unsigned long flags = 0;
+
+	if (ndm_state & NUD_PERMANENT)
+		__set_bit(BR_FDB_LOCAL, &flags);
+	if (ndm_state & NUD_NOARP)
+		__set_bit(BR_FDB_STATIC, &flags);
+
+	return flags;
+}
+
+static unsigned long __ndm_flags_to_fdb_flags(u16 ndm_flags)
+{
+	unsigned long flags = 0;
+
+	if (ndm_flags & NTF_USE)
+		__set_bit(BR_FDB_ADDED_BY_USER, &flags);
+	if (ndm_flags & NTF_EXT_LEARNED)
+		__set_bit(BR_FDB_ADDED_BY_EXT_LEARN, &flags);
+	if (ndm_flags & NTF_OFFLOADED)
+		__set_bit(BR_FDB_OFFLOADED, &flags);
+	if (ndm_flags & NTF_STICKY)
+		__set_bit(BR_FDB_STICKY, &flags);
+
+	return flags;
+}
+
 static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
 	[FDB_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
+	[FDB_FLUSH_NDM_STATE]	= { .type = NLA_U16 },
+	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
+	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
+	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },
 };
 
 int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
@@ -610,6 +642,29 @@ int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
 	if (err)
 		return err;
 
+	if (fdb_flush_tb[FDB_FLUSH_NDM_STATE]) {
+		u16 ndm_state = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_STATE]);
+
+		desc.flags |= __ndm_state_to_fdb_flags(ndm_state);
+	}
+	if (fdb_flush_tb[FDB_FLUSH_NDM_STATE_MASK]) {
+		u16 ndm_state_mask;
+
+		ndm_state_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_STATE_MASK]);
+		desc.flags_mask |= __ndm_state_to_fdb_flags(ndm_state_mask);
+	}
+	if (fdb_flush_tb[FDB_FLUSH_NDM_FLAGS]) {
+		u16 ndm_flags = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS]);
+
+		desc.flags |= __ndm_flags_to_fdb_flags(ndm_flags);
+	}
+	if (fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]) {
+		u16 ndm_flags_mask;
+
+		ndm_flags_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]);
+		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
+	}
+
 	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
 		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
 
-- 
2.35.1

