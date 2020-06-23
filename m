Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D54F20601E
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 22:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B7A2881DA;
	Tue, 23 Jun 2020 20:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThD7FfU+ZTYb; Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4939883D5;
	Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97390C016F;
	Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66CA7C016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5544020111
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5VkxQLzNJjM for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 20:47:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3410320382
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:41 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id o8so118517wmh.4
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 13:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kDvcE8bgVLnQmVLk1Xzq+JHO7t/A7+JPYOpEZQ7t0NQ=;
 b=WJ7ugitIgMYh9Ww55r4ot8/2Nm8x2Kyn1/BxY+UkEcHeXa9LlBXrjycJ/rp+twNWd9
 5D+0TPnNsCc5dojT+du6DUvapnbpyj2HQvmjM/ToERVKR+edYUnvr8+u0WneWvZAq0Zt
 qixCGtvJzNYDMKs8uclC0wcv2hfS2TDUxVW9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kDvcE8bgVLnQmVLk1Xzq+JHO7t/A7+JPYOpEZQ7t0NQ=;
 b=rPa+nhLV1nxLTdzI8+YvEDE7BQiIBmOIPkDJbjC9c17fiReYt/AUVaR7BVZPrgSBl6
 ibCRY8icTQiA39sREmT4zeFOltZkiBd/8NeFZWSExDMBr0r3d42RZSCZVitzxnNZf+XP
 qm6gSA+hnhb9l8IaOwq2CU4qSi0ePP+ubWbwFPardvxChiiW/N2R5OzL2jRk1uaM8ugL
 QuMvakj5KgFYSoXhoz7JxBZGYeLkgYn3Wb1uR5lmBzcqXCjuWtnX4M9ANe5aHMNpwKku
 Xr77Rx2RC5wy1vdJhQ9k2c2YyJcSLTqNDOfG4GtRWksF9tOnzrhZ+Fu81Rj+b0UzHPMU
 rZGA==
X-Gm-Message-State: AOAM533YD5EIFyjh/38zJtc170yLFowmMhW5+UHrxElVEWqvm+OF9MJZ
 wyW3KxasUx3tBkGDaS3o+Rjp7w==
X-Google-Smtp-Source: ABdhPJxRBapKolkz51XsYCkXmzq0IWz+vAgelSl91Nq69sAf3U/bC5e9BkKvdrKf0Gr7PSJdczYk6w==
X-Received: by 2002:a1c:2901:: with SMTP id p1mr26965088wmp.144.1592945259707; 
 Tue, 23 Jun 2020 13:47:39 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j6sm5686924wmb.3.2020.06.23.13.47.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 13:47:39 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 23 Jun 2020 23:47:16 +0300
Message-Id: <20200623204718.1057508-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
References: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, anuradhak@cumulusnetworks.com
Subject: [Bridge] [PATCH net-next 2/4] net: neighbor: add fdb extended
	attribute
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

Add an attribute to NDA which will contain all future fdb-specific
attributes in order to avoid polluting the NDA namespace with e.g.
bridge or vxlan specific attributes. The attribute is called
NDA_FDB_EXT_ATTRS and the structure would look like:
 [NDA_FDB_EXT_ATTRS] = {
    [NFEA_xxx]
 }

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/neighbour.h | 12 ++++++++++++
 net/core/neighbour.c           |  1 +
 2 files changed, 13 insertions(+)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index eefcda8ca44e..540ff48402a1 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -30,6 +30,7 @@ enum {
 	NDA_SRC_VNI,
 	NDA_PROTOCOL,  /* Originator of entry */
 	NDA_NH_ID,
+	NDA_FDB_EXT_ATTRS,
 	__NDA_MAX
 };
 
@@ -172,4 +173,15 @@ enum {
 };
 #define NDTA_MAX (__NDTA_MAX - 1)
 
+/* embedded into NDA_FDB_EXT_ATTRS:
+ * [NDA_FDB_EXT_ATTRS] = {
+ *     ...
+ * }
+ */
+enum {
+	NFEA_UNSPEC,
+	__NFEA_MAX
+};
+#define NFEA_MAX (__NFEA_MAX - 1)
+
 #endif
diff --git a/net/core/neighbour.c b/net/core/neighbour.c
index ef6b5a8f629c..8e39e28b0a8d 100644
--- a/net/core/neighbour.c
+++ b/net/core/neighbour.c
@@ -1783,6 +1783,7 @@ const struct nla_policy nda_policy[NDA_MAX+1] = {
 	[NDA_MASTER]		= { .type = NLA_U32 },
 	[NDA_PROTOCOL]		= { .type = NLA_U8 },
 	[NDA_NH_ID]		= { .type = NLA_U32 },
+	[NDA_FDB_EXT_ATTRS]	= { .type = NLA_NESTED },
 };
 
 static int neigh_delete(struct sk_buff *skb, struct nlmsghdr *nlh,
-- 
2.25.4

