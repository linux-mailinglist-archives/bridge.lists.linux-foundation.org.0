Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 614C622CCE2
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8AF887E0A;
	Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQe7+Kkhgfkl; Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7326B87DA4;
	Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37EF8C004C;
	Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58709C016F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40B4C871C7
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 188loxmLD9Uu for <bridge@lists.linux-foundation.org>;
 Wed, 10 Jun 2020 15:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 52A5986F8D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:27 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t7so1115220plr.0
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 08:49:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VaG7u6/oJsTeb5TEDlgcUeH6UZPnr3RsvPE6NVTbAOU=;
 b=hWXMPRrq/SbFY+9QkTdjmFr4i5dkAjcRfqHIYOUp7kTSWopLPjo/SIr7XCI7TrVOQw
 WjjWHy3mmIsd49uikI3aP6jlKfVcHmRY7vrnqhJx7VD7RLo4KzwO2pv3Uj080XbWjOBY
 9W9knkDuEqTqt8Dj5gXLmjVA1lL2LMemUzOtuNW/mQtWnpevjt2vMIWLo42JNK7lkuEb
 ugUkqQGz5qQlwe+YgPIjufu06sqqM+guRkOfaqpvFk7EPF6jiMILYP3Q9NA0ClQ7pWIn
 s739ERKIAvdKPK/JKtOpB3XBz9qCBM2qVBkkSDc5xnLEdFbui7316t3ea6JzY6HEmMy1
 brxA==
X-Gm-Message-State: AOAM533wXjVN2FrWzoPmH3eZrIa7O3UElFmX2hj2Dd6zNiYwcztuSM/2
 m6UvGjsy8WFEMVDxCSPeJSY=
X-Google-Smtp-Source: ABdhPJzZoTl6eBSN8rqRCZozE//xcl2A2KM4BNx2Ocdpgf10NDUQ83ejBj8RMkeBJS9LOY1t52eKiw==
X-Received: by 2002:a17:90a:21a2:: with SMTP id
 q31mr3700686pjc.230.1591804166854; 
 Wed, 10 Jun 2020 08:49:26 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id p31sm252812pgb.46.2020.06.10.08.49.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 08:49:25 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 3872940B24; Wed, 10 Jun 2020 15:49:25 +0000 (UTC)
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk,
 philipp.reisner@linbit.com, lars.ellenberg@linbit.com, axboe@kernel.dk,
 bfields@fieldses.org, chuck.lever@oracle.com, roopa@cumulusnetworks.com,
 nikolay@cumulusnetworks.com, davem@davemloft.net, kuba@kernel.org,
 dhowells@redhat.com, jarkko.sakkinen@linux.intel.com, jmorris@namei.org,
 serge@hallyn.com, christian.brauner@ubuntu.com
Date: Wed, 10 Jun 2020 15:49:19 +0000
Message-Id: <20200610154923.27510-2-mcgrof@kernel.org>
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
Subject: [Bridge] [PATCH 1/5] selftests: kmod: Use variable NAME in
	kmod_test_0001()
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

Use the variable NAME instead of "\000" directly in kmod_test_0001().

Acked-by: Luis Chamberlain <mcgrof@kernel.org>
Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 tools/testing/selftests/kmod/kmod.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/kmod/kmod.sh b/tools/testing/selftests/kmod/kmod.sh
index 3702dbcc90a7..da60c3bd4f23 100755
--- a/tools/testing/selftests/kmod/kmod.sh
+++ b/tools/testing/selftests/kmod/kmod.sh
@@ -341,7 +341,7 @@ kmod_test_0001_driver()
 
 	kmod_defaults_driver
 	config_num_threads 1
-	printf '\000' >"$DIR"/config_test_driver
+	printf $NAME >"$DIR"/config_test_driver
 	config_trigger ${FUNCNAME[0]}
 	config_expect_result ${FUNCNAME[0]} MODULE_NOT_FOUND
 }
@@ -352,7 +352,7 @@ kmod_test_0001_fs()
 
 	kmod_defaults_fs
 	config_num_threads 1
-	printf '\000' >"$DIR"/config_test_fs
+	printf $NAME >"$DIR"/config_test_fs
 	config_trigger ${FUNCNAME[0]}
 	config_expect_result ${FUNCNAME[0]} -EINVAL
 }
-- 
2.26.2

