Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0947122CCE6
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88C8787E38;
	Fri, 24 Jul 2020 18:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2R8dxqSoRLXL; Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AC9C87DC1;
	Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB447C004C;
	Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC203C016F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A59FF86762
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V6gnWHtlixHA for <bridge@lists.linux-foundation.org>;
 Wed, 10 Jun 2020 15:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F32B086746
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id s23so1270116pfh.7
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 08:49:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CrxGEOGFjsdVHn3Jd9UDXtWDflxIQ5FEpiOYf5podJs=;
 b=aIEUGK/04eNyoYAMa5+Dw5TikquZAR/1IA4R73zK+iVsAg6z9QcWOkac6Q6M7dAxbf
 XQstHWGY3iaLNk+E4t1y1fWkOi7YJ9bE8y0i+Ik/eYJh0S33w9YM5nDq//Ntx8Kho7CR
 aIWY0jT8X0Lc6nYGlF8/td/ShuUP7b2uoAyGd0iybcaBmyt0U3ZD/rtU4FPoCBFOEPv6
 eL89im2CpdyDGb6XSSEK3+EoOBvml37UOnHiplTo9RWFWOYgZryLkZQ8Fo4b9yOVzbp0
 hKu0RmB3SncxQzwIWGnKdqmsW+OsX709YbUJT2bUuWUtMahm5ACa9pyFlpIfPe+74WDv
 HsTw==
X-Gm-Message-State: AOAM533BgnyU2WzuFfA1cweyFrMM4k+0oO7q/Eamzs+yOhlSPYYO7D1J
 6GxuLdErzaJ4XkQI7150GoM=
X-Google-Smtp-Source: ABdhPJwXqgq7uS6Tcjx1SZx1Aww2/d5U2tI05GsSHHER7yozK95nSSwZLGkFi7ZnI4HAy3+k2OwCKQ==
X-Received: by 2002:a63:ce14:: with SMTP id y20mr3147465pgf.186.1591804168526; 
 Wed, 10 Jun 2020 08:49:28 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id c9sm302681pfp.100.2020.06.10.08.49.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 08:49:26 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 4CCCE40ED5; Wed, 10 Jun 2020 15:49:25 +0000 (UTC)
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk,
 philipp.reisner@linbit.com, lars.ellenberg@linbit.com, axboe@kernel.dk,
 bfields@fieldses.org, chuck.lever@oracle.com, roopa@cumulusnetworks.com,
 nikolay@cumulusnetworks.com, davem@davemloft.net, kuba@kernel.org,
 dhowells@redhat.com, jarkko.sakkinen@linux.intel.com, jmorris@namei.org,
 serge@hallyn.com, christian.brauner@ubuntu.com
Date: Wed, 10 Jun 2020 15:49:20 +0000
Message-Id: <20200610154923.27510-3-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200610154923.27510-1-mcgrof@kernel.org>
References: <20200610154923.27510-1-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org,
 josh@joshtriplett.org, slyfox@gentoo.org, ast@kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Tiezhu Yang <yangtiezhu@loongson.cn>, keescook@chromium.org
Subject: [Bridge] [PATCH 2/5] kmod: Remove redundant "be an" in the comment
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

From: Tiezhu Yang <yangtiezhu@loongson.cn>

There exists redundant "be an" in the comment, remove it.

Acked-by: Luis Chamberlain <mcgrof@kernel.org>
Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 kernel/kmod.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/kernel/kmod.c b/kernel/kmod.c
index 37c3c4b97b8e..3cd075ce2a1e 100644
--- a/kernel/kmod.c
+++ b/kernel/kmod.c
@@ -36,9 +36,8 @@
  *
  * If you need less than 50 threads would mean we're dealing with systems
  * smaller than 3200 pages. This assumes you are capable of having ~13M memory,
- * and this would only be an be an upper limit, after which the OOM killer
- * would take effect. Systems like these are very unlikely if modules are
- * enabled.
+ * and this would only be an upper limit, after which the OOM killer would take
+ * effect. Systems like these are very unlikely if modules are enabled.
  */
 #define MAX_KMOD_CONCURRENT 50
 static atomic_t kmod_concurrent_max = ATOMIC_INIT(MAX_KMOD_CONCURRENT);
-- 
2.26.2

