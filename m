Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5035F4FA6F6
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64D1C4040D;
	Sat,  9 Apr 2022 11:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fKQxyAATgaCo; Sat,  9 Apr 2022 11:04:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id F2E3A4002B;
	Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C6A71C008A;
	Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8994C0084
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B24A84048B
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-GfJx_yjaGP for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 068194002B
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id z99so4091321ede.5
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ruKthvyRBdKBojJ9cI3HF+YHEwKh0vpzBB/A3CTMky8=;
 b=6Lxea4KtEreyzkvQXC0nXxpr8fx0jK/b9OrGY4V/fWEGgtpTyMivpumpy3aP/IakOl
 tqVLSodTNTYTpQ7nOYxeY3DWoUkI9LM4YNnXNIig8zMAbaaZ8LFKcq6lVH4Hg9WbSkwU
 jTRbFngE6hu3Xu3J2kVRxEMKESXUSZW3ey55pOVgGeAsnL8nsATeU2BIyhIJfSJ8A3aO
 Em6+F2H38vxyVEYmwaXQmrYtUnZ1AZrDD/rwvwLZfTCGD2vkgvjKhTrffJLfn4krZwcy
 pCIyS4zrwr7HuYVY2dX1o81fiyK0PS3A//+MMjEsSS4E+eOtJmNuC6vHi9ZM4oQVFR6V
 5cyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ruKthvyRBdKBojJ9cI3HF+YHEwKh0vpzBB/A3CTMky8=;
 b=bTQ5qrgGaZDw+/V407OljU3/0v5RCt2ahqZaLfsNYcKHVvGr8ycEHvzO+yEy8cxd0Z
 Y+1L6HLZz02k1faywFZKhg/MSPXiuOkYhEhm+qU582xre8AcShofi1op6fg2kr//OxwK
 nJOh1W6bxBL9um866VS/OxB6jmuNMeF7kluzDl9Xkr/oiUxGBlRJ4SuMKQ/hWeaYjUni
 fgrmRBXHdHitWFaDqmVYKaqBY9It4JDgt+I+8tsxkJkIUGsD3yzWL0xaG+LtWFF1x5Gk
 vhxQ4L613QE8Ls3REsizwZeEzZIs5ET0KjthgpMGaYeLpkzGbW9/dUHSkpkqQuvj0nDh
 hAjw==
X-Gm-Message-State: AOAM533BeWo+zdxaZiKp41H7ZkncwLY5B4yoQrsXipO7MicG4PA+f4Z4
 ih101Hi9SAwFbPnIJqldK9/mcQ==
X-Google-Smtp-Source: ABdhPJwcaCWCNll8VthWgjCMOUW/rW1g9RgnU8vk5G+v2JLm8Bb+cuJ3ez96x+uRgXD37ZMt8TsErA==
X-Received: by 2002:a05:6402:1e92:b0:41d:219:d936 with SMTP id
 f18-20020a0564021e9200b0041d0219d936mr13400331edf.383.1649502294074; 
 Sat, 09 Apr 2022 04:04:54 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:53 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:56 +0300
Message-Id: <20220409105857.803667-6-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 5/6] net: bridge: fdb: add support for
	flush filtering based on ifindex
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

Add support for fdb flush filtering based on destination ifindex. The
ifindex must either match a port's device ifindex or the bridge's.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/if_bridge.h | 1 +
 net/bridge/br_fdb.c            | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 4638d7e39f2a..67ee12586844 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -819,6 +819,7 @@ enum {
 	FDB_FLUSH_NDM_STATE_MASK,
 	FDB_FLUSH_NDM_FLAGS,
 	FDB_FLUSH_NDM_FLAGS_MASK,
+	FDB_FLUSH_PORT_IFINDEX,
 	__FDB_FLUSH_MAX
 };
 #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 340a2ace1d5e..53208adf7474 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -628,6 +628,7 @@ static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
 	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
 	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
 	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },
+	[FDB_FLUSH_PORT_IFINDEX]	= { .type = NLA_S32 },
 };
 
 int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
@@ -664,6 +665,12 @@ int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
 		ndm_flags_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]);
 		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
 	}
+	if (fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]) {
+		int port_ifidx;
+
+		port_ifidx = nla_get_u32(fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]);
+		desc.port_ifindex = port_ifidx;
+	}
 
 	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
 		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
-- 
2.35.1

