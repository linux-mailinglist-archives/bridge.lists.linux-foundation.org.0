Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 138CE4FA6F2
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:04:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E2A241803;
	Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TYiJlDPr1St; Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4084D41687;
	Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12592C0088;
	Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66BCAC002C
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA98E60E1E
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvKN4ycwAHfA for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A87860F82
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:52 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id p15so21863614ejc.7
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OJhM912bfhb7uMFugRwaEA6kDWsFt0tEfGy7vW0mS0I=;
 b=SIbGuIOlNQM2gXLI6wvPq/OiqaZuZlgUzTQ45QFtUYdm6NIIc3GSxL6kYcVzdawb6b
 YtW8i9z7gmBXEx64ydeD1JW3GTPA4jfmSs7UXYvcry4+LO+XfgoAZ2BAUkhM0BN7fDC3
 ZVTQ4/fosfRQ50fAeOZTNrrhPjvb74jIQ7eojyRiEQaDd2e2lr7ydHrYgHH7DOHESflO
 HIbFJgGZ35WPNj4QMOx+/QVLiwJryGWgzxyc3n8Xgfg/V4MSz/LE8o7IH8YKJgvSwDxO
 qtA4SE/Kn94ydc9pgbR4fj45t3HbfndToPy2YfOehBYZodIAiWm53alkq0FjLLV2UwIn
 vURw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OJhM912bfhb7uMFugRwaEA6kDWsFt0tEfGy7vW0mS0I=;
 b=MeNztIYPCLz5u30z9Ab+SXs3JtAeFqDVumFEHxcAyvvA2wc21Q+7K334S8swuKNbN5
 RZekO85RSay0XwIKJbH4rwZi5NMx74Pp02+hJ2U4xZdDjYpLqafM4sddpneELNQyjWaF
 /Dsd2vtIB2rwsot2puQeLVNJIRoAk25CKqsvlGdlFlwxOMzxfnBP25fduyAACWdt9bOD
 QACH9zgh5z9dTm7kZVPY+wSpwrzRc0BJQ61xTO+mIHskshn6jxkq2E2/dstb/9eq2QkD
 U2tZw6R0o61p2qDm0LIKwpok25lt2ycDCXwaWv//7B7iAupwmrwYmHpLNEI+8t070w43
 uR3w==
X-Gm-Message-State: AOAM531BneHxwBU2BvDNiFut/HcR022192vlUnB6iaei8Qhj2D5N+r4N
 B6T4gI3XTJGZx+N2X2Gh+aTcUA==
X-Google-Smtp-Source: ABdhPJwYEMDPohwDYUiufv/XqoQdYice2/kWKxabF4RdtB+3ZoftUjO0iq+5NsvsIs/XnS0PYmWXGQ==
X-Received: by 2002:a17:907:72cc:b0:6e0:2d3:bcba with SMTP id
 du12-20020a17090772cc00b006e002d3bcbamr22158460ejc.642.1649502290289; 
 Sat, 09 Apr 2022 04:04:50 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:49 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:52 +0300
Message-Id: <20220409105857.803667-2-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 1/6] net: bridge: add a generic flush
	operation
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

Add a new bridge attribute (IFLA_BRIDGE_FLUSH) which will have embedded
attributes describing the object types that will be flushed. It will
allow fine-grained object flushing. Only a single flush attribute is
allowed per call since it can be a very load heavy operation. Also it is
allowed only with setlink command (similar to changelink flush). A nice
side-effect of using an af spec attribute is that it avoids making the
bridge link attribute options list longer.

An example structure for fdbs:
 [ IFLA_BRIDGE_FLUSH ]
  `[ BRIDGE_FDB_FLUSH ]
    `[ FDB_FLUSH_NDM_STATE ]
    `[ FDB_FLUSH_NDM_FLAGS ]

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/if_bridge.h |  8 +++++++
 net/bridge/br_netlink.c        | 42 +++++++++++++++++++++++++++++++++-
 2 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index a86a7e7b811f..221a4256808f 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -123,6 +123,7 @@ enum {
 	IFLA_BRIDGE_MRP,
 	IFLA_BRIDGE_CFM,
 	IFLA_BRIDGE_MST,
+	IFLA_BRIDGE_FLUSH,
 	__IFLA_BRIDGE_MAX,
 };
 #define IFLA_BRIDGE_MAX (__IFLA_BRIDGE_MAX - 1)
@@ -802,4 +803,11 @@ enum {
 	__BRIDGE_QUERIER_MAX
 };
 #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
+
+/* embedded in IFLA_BRIDGE_FLUSH */
+enum {
+	BRIDGE_FLUSH_UNSPEC,
+	__BRIDGE_FLUSH_MAX
+};
+#define BRIDGE_FLUSH_MAX (__BRIDGE_FLUSH_MAX - 1)
 #endif /* _UAPI_LINUX_IF_BRIDGE_H */
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 200ad05b296f..fe2211d4c0c7 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -779,6 +779,34 @@ int br_process_vlan_info(struct net_bridge *br,
 	return err;
 }
 
+static const struct nla_policy br_flush_policy[BRIDGE_FLUSH_MAX + 1] = {
+	[BRIDGE_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
+};
+
+static int br_flush(struct net_bridge *br, int cmd,
+		    struct nlattr *flush_attr,
+		    struct netlink_ext_ack *extack)
+{
+	struct nlattr *flush_tb[BRIDGE_FLUSH_MAX + 1];
+	int err;
+
+	switch (cmd) {
+	case RTM_SETLINK:
+		break;
+	default:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Bridge flush attribute is allowed only with RTM_SETLINK");
+		return -EINVAL;
+	}
+
+	err = nla_parse_nested(flush_tb, BRIDGE_FLUSH_MAX, flush_attr,
+			       br_flush_policy, extack);
+	if (err)
+		return err;
+
+	return 0;
+}
+
 static int br_afspec(struct net_bridge *br,
 		     struct net_bridge_port *p,
 		     struct nlattr *af_spec,
@@ -787,9 +815,10 @@ static int br_afspec(struct net_bridge *br,
 {
 	struct bridge_vlan_info *vinfo_curr = NULL;
 	struct bridge_vlan_info *vinfo_last = NULL;
-	struct nlattr *attr;
 	struct vtunnel_info tinfo_last = {};
 	struct vtunnel_info tinfo_curr = {};
+	bool flushed = false;
+	struct nlattr *attr;
 	int err = 0, rem;
 
 	nla_for_each_nested(attr, af_spec, rem) {
@@ -845,6 +874,17 @@ static int br_afspec(struct net_bridge *br,
 			if (err)
 				return err;
 			break;
+		case IFLA_BRIDGE_FLUSH:
+			if (flushed) {
+				NL_SET_ERR_MSG_MOD(extack,
+						   "Multiple bridge flush attributes are not allowed");
+				return -EINVAL;
+			}
+			err = br_flush(br, cmd, attr, extack);
+			if (err)
+				return err;
+			flushed = true;
+			break;
 		}
 	}
 
-- 
2.35.1

