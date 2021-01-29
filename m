Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85498308896
	for <lists.bridge@lfdr.de>; Fri, 29 Jan 2021 12:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49A2F87181;
	Fri, 29 Jan 2021 11:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HsUGLuwg09bM; Fri, 29 Jan 2021 11:51:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87B128717A;
	Fri, 29 Jan 2021 11:51:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E316C08A1;
	Fri, 29 Jan 2021 11:51:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E99EFC0FA8
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B82F827256
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19i0Qm1Att2U for <bridge@lists.linux-foundation.org>;
 Fri, 29 Jan 2021 11:51:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CA65232D2
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:54 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id d2so10249339edz.3
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 03:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZvmKhhGuNfQqKYS0ONCipHml5PaR0WqqxykEBH6rscI=;
 b=ip6LdHc/G3yEH9xz5h6f+xeDxBXZwmiONIChDNt1lGD19nYiDc5DCCLV7DxI555Xn+
 bUMtYieBQ6B1aLSk42ueetUHQenPlixh/wlXfBONAPcEVP6SrBbKhR+HTee0o+YZv+qP
 Y0IBsyKgJMFi6JOScWUujlkZtAwGvtCK3a4KsyGtTYuhOnUY+THayB0DQPMe9eVZy6RT
 y/zPae2K1TC+d7Y6z1jlPCe109/JGMabIq+EWdBi+OKdKgNukHTIouABMas6FY++1Zt/
 Z6KKFFEb52V8o3tsPp8ybiRzmCZallGfD066bIRU3xFog5Ts20bAfDDR/rpktm0comUI
 rfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZvmKhhGuNfQqKYS0ONCipHml5PaR0WqqxykEBH6rscI=;
 b=I7ljazQV0c+/SwRMXJKN0JoqcW7i0PZ/ZptYrU+RKTiYd6+UMMGzbvOD6rgYVMavRH
 nuW2juh0ECBXbaiXp+4lqTsX/xpiWJKj9Xm7oFxjb/GE7FVPG26DZ0ETrGug0b06ldeK
 l825md3/Pm0dhq9R309iq0qHlgIEr9PPm48JyLry8Qsab9887FSkx7Rb7moruZlaZFgj
 S3eNcmSqF6E3t22RhDv876amTb45yeAJkrWMJhnmI/w85iQM96CjWK6ccXQdZyiRRQJj
 4N+8B9J2KubmcEDvmJArWI3zygRSJEOkPfsEqsVM706mioh5Ztrkchlcc9MG7aStn6g3
 nXgQ==
X-Gm-Message-State: AOAM5318ZvJwITjSxF0AiH6vc3gyYCmOtHWUUNB8IfOUINPUeyvmHy29
 2sj1e9YieNLN1N0dR/gO3HYNoQ==
X-Google-Smtp-Source: ABdhPJyvSKxl3ILg15YLnCwXHKL/JiYO/eXmx7WRqWlc2kDJuNUygPlLKWZbyjXNrVQiCRRJ0SdPHQ==
X-Received: by 2002:aa7:cdc7:: with SMTP id h7mr4674096edw.353.1611921113225; 
 Fri, 29 Jan 2021 03:51:53 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u23sm4450130edt.87.2021.01.29.03.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 03:51:52 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 29 Jan 2021 13:51:42 +0200
Message-Id: <20210129115142.188455-3-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210129115142.188455-1-razor@blackwall.org>
References: <20210129115142.188455-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 2/2] net: bridge: add warning comments to
	avoid extending sysfs
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

We're moving to netlink-only options, so add comments in the bridge's
sysfs files to warn against adding any new sysfs entries.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_sysfs_br.c | 4 ++++
 net/bridge/br_sysfs_if.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index 7db06e3f642a..71f0f671c4ef 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -19,6 +19,10 @@
 
 #include "br_private.h"
 
+/* IMPORTANT: new bridge options must be added with netlink support only
+ *            please do not add new sysfs entries
+ */
+
 #define to_bridge(cd)	((struct net_bridge *)netdev_priv(to_net_dev(cd)))
 
 /*
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 7a59cdddd3ce..96ff63cde1be 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -17,6 +17,10 @@
 
 #include "br_private.h"
 
+/* IMPORTANT: new bridge port options must be added with netlink support only
+ *            please do not add new sysfs entries
+ */
+
 struct brport_attribute {
 	struct attribute	attr;
 	ssize_t (*show)(struct net_bridge_port *, char *);
-- 
2.29.2

