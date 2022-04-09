Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B29004FA6F7
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FEB084290;
	Sat,  9 Apr 2022 11:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D5shR-3s2ih5; Sat,  9 Apr 2022 11:05:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2716284239;
	Sat,  9 Apr 2022 11:04:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEC62C0089;
	Sat,  9 Apr 2022 11:04:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3A8BC0088
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD5B060F84
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oln8C4uvhmrf for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 008B660E1E
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id b24so12658767edu.10
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pI4juhDXvvHTh0rGKGfMfLE6PZX77VF+PfLCGPPEVPU=;
 b=7Xj6XrbUXlfjlBFZqVNm3ajjO3GpKvG9FGv29kYvmyM0tZ/j7ilBb7io1qOU53kWbb
 yr4jlrpYDe7dIV7kbQk282i9NwC2uFaWTAwGux3wcAoxVpIUddc1LVr6cnmHxOQjFDg6
 2F+mew77iqtO4+3ht4Rg+43B0GcBiFyMyrPW48qVeHUcd9HilQp0FDei3LEkYybW7O5J
 DvEPuEddTG1Drn3hMrsH005CeJXzgYaJVV2Hj6HDEHi/oWo3/wtq2EXzirUHJY9gXFXg
 +tiwAyrWhoZLoa+lCuh2d4yTc+zkPlGPKWTRSE7hbtm4R2MuL9Wev4RwFd/GpTMEpdgi
 c91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pI4juhDXvvHTh0rGKGfMfLE6PZX77VF+PfLCGPPEVPU=;
 b=J159llnRmniaTwuitcCkKBVwDnHROIG7ZBE9atewNfYGjho7KaBaC+rsHFLUrY68Pq
 s9FJUhnUFTq9dknLZ/eMszABIOpksO+g7pIfs6AZncAT+mBkWGNbdXVMQre7V9yV++Vb
 fa5LqIhZqReP0sgTCDyVPNxlZln+hCDdHv7eCss8YikiRgwM2HEy/wjxsXKUg9w7CtG1
 yRlAdf9yq4WDCiun41jXx1tCOgGO1ToP5LybgvVktu0UPfZPp4QJxrT4mhn9tqZpwuvR
 MfFS4UqlUmiu4IxLmgnzOtn7wuxlno3obf09W0xp7OoUqYiMdxljRAmsy5K6RDtxXiY9
 nUug==
X-Gm-Message-State: AOAM5336fCZQNw3+h9n4E5h4E1oiQgyOTaf+JsUGh25r8JIv4QyKm0G7
 HLUZGbN7IJdb56r99gcRgDPoZw==
X-Google-Smtp-Source: ABdhPJx4bak1GlJt3DvLQ7SnZM7ZLqBj3nF8XgcBSJrJRibsIUXwPLesQXqb4zLYtnsmq8p0vs8xqg==
X-Received: by 2002:a50:cd19:0:b0:41d:709f:5c57 with SMTP id
 z25-20020a50cd19000000b0041d709f5c57mr689523edi.227.1649502295159; 
 Sat, 09 Apr 2022 04:04:55 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:54 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:57 +0300
Message-Id: <20220409105857.803667-7-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 6/6] net: bridge: fdb: add support for
	flush filtering based on vlan id
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

Add support for fdb flush filtering based on vlan id.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/if_bridge.h | 1 +
 net/bridge/br_fdb.c            | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 67ee12586844..7f6730812916 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -820,6 +820,7 @@ enum {
 	FDB_FLUSH_NDM_FLAGS,
 	FDB_FLUSH_NDM_FLAGS_MASK,
 	FDB_FLUSH_PORT_IFINDEX,
+	FDB_FLUSH_VLAN_ID,
 	__FDB_FLUSH_MAX
 };
 #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 53208adf7474..bc8b5cbde8ed 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -626,6 +626,7 @@ static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
 	[FDB_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
 	[FDB_FLUSH_NDM_STATE]	= { .type = NLA_U16 },
 	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
+	[FDB_FLUSH_VLAN_ID]	= { .type = NLA_U16 },
 	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
 	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },
 	[FDB_FLUSH_PORT_IFINDEX]	= { .type = NLA_S32 },
@@ -671,6 +672,11 @@ int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
 		port_ifidx = nla_get_u32(fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]);
 		desc.port_ifindex = port_ifidx;
 	}
+	if (fdb_flush_tb[FDB_FLUSH_VLAN_ID]) {
+		desc.vlan_id = nla_get_u16(fdb_flush_tb[FDB_FLUSH_VLAN_ID]);
+		if (!br_vlan_valid_id(desc.vlan_id, extack))
+			return -EINVAL;
+	}
 
 	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
 		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
-- 
2.35.1

