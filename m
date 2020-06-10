Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E607A22CCE5
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1BFA724C66;
	Fri, 24 Jul 2020 18:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAIASltUChxI; Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id AABB224214;
	Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A999C004C;
	Fri, 24 Jul 2020 18:21:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7D36C016F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B799A86F8D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izgjFAZ-9NBZ for <bridge@lists.linux-foundation.org>;
 Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E8DE8714A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:28 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p21so1148843pgm.13
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 08:49:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qSIwN4KZGofFPlUal7btJTGNfkPGbkCJjMaiuCB3kq4=;
 b=P7WA4MGaSmP8dcppONo2LRjAi7Y2iohuhejxw17FpdGiRNr9qe83XSLTbD+wo9h8se
 DazjPhJp+PHY5wrYeaqZL2xfiJ1Ox2drigJcYKxOUSrPYDOrno2AUe13e4ZJVrUboCU0
 86Czrp5YRCxSNTUtWFI2FaG9+8Km4qcICcVjdsKa7eQdwy3yUrSTMTClZ/5Ah2A2gY9P
 nso11PZnBYNQHo9Na8S3CxqrIQvCBJq8ZxdWobEvmJpVJ1ABibJXSVoWz6BTp4GXTDA1
 kzVlGvpwsfN2pHKFUWoPgKdWTnESzxhiRhCHuarfjlz6UB6/v8Vy7VvkpiLqTkEFlR9g
 1FCA==
X-Gm-Message-State: AOAM5335d/PBcFYXLcoEgYOKa/4WSVLQDVviXVHVN8Jgc7pugdZE9lsz
 ZWQpUZZKQTwMvdKLPpfGgUw=
X-Google-Smtp-Source: ABdhPJzQjKy64D7JAY2b9Df/J8XTTNXeIN4ec7JdMHHdnO0cu4EShFKvEj31fLfQzVASTIHoxJ1AIw==
X-Received: by 2002:a62:4e91:: with SMTP id c139mr3418995pfb.18.1591804167551; 
 Wed, 10 Jun 2020 08:49:27 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 12sm338947pfb.3.2020.06.10.08.49.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 08:49:25 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 606C741C23; Wed, 10 Jun 2020 15:49:25 +0000 (UTC)
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk,
 philipp.reisner@linbit.com, lars.ellenberg@linbit.com, axboe@kernel.dk,
 bfields@fieldses.org, chuck.lever@oracle.com, roopa@cumulusnetworks.com,
 nikolay@cumulusnetworks.com, davem@davemloft.net, kuba@kernel.org,
 dhowells@redhat.com, jarkko.sakkinen@linux.intel.com, jmorris@namei.org,
 serge@hallyn.com, christian.brauner@ubuntu.com
Date: Wed, 10 Jun 2020 15:49:21 +0000
Message-Id: <20200610154923.27510-4-mcgrof@kernel.org>
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
Subject: [Bridge] [PATCH 3/5] test_kmod: Avoid potential double free in
	trigger_config_run_type()
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

Reset the member "test_fs" of the test configuration after a call
of the function "kfree_const" to a null pointer so that a double
memory release will not be performed.

Fixes: d9c6a72d6fa2 ("kmod: add test driver to stress test the module loader")
Acked-by: Luis Chamberlain <mcgrof@kernel.org>
Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 lib/test_kmod.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/test_kmod.c b/lib/test_kmod.c
index e651c37d56db..eab52770070d 100644
--- a/lib/test_kmod.c
+++ b/lib/test_kmod.c
@@ -745,7 +745,7 @@ static int trigger_config_run_type(struct kmod_test_device *test_dev,
 		break;
 	case TEST_KMOD_FS_TYPE:
 		kfree_const(config->test_fs);
-		config->test_driver = NULL;
+		config->test_fs = NULL;
 		copied = config_copy_test_fs(config, test_str,
 					     strlen(test_str));
 		break;
-- 
2.26.2

