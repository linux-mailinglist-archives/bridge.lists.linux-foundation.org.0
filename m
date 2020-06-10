Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3346022CCE9
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 933898898E;
	Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UG-KgeTXpgh9; Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03CF487DA4;
	Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0691C004C;
	Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38359C016F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 349EB88A93
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6NpINuIDM-4d for <bridge@lists.linux-foundation.org>;
 Wed, 10 Jun 2020 15:49:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 709A9887C7
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:35 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id d66so1271599pfd.6
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 08:49:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ht44Q655K+m4n+7cL9U0d/GUBshFxQzLVevKrr2oj0M=;
 b=MPxzgViqEIEMYCATC4Lf7Ryf+4XAuHfrikIBcKaVz4YHj+SeWduLXCfiXXY37+Wvxz
 ap/CG3C2/3l9MM4wJjcMaUIqD6E0o2/3G5NF+cD6LocaQtKFbXEfvSGIAQ+yfE2xjWv/
 nmrx/hJ00Xx3uaAKyPFDsoeAYhPCvbLvjL2W3otqRqP+NZG02NTK1gkT7rj5f960VJb8
 hyZE++YyyZqNZwOWi+K5nxG22wSnFAKlFHAFqWQjgSqfrlIfmBZlLRLQEQ6bQCma+Owc
 2KoV09Ew3SmkmKNC+m17iGdlvZrTNFA4dkv/WP8pGKrvtvxepDfdA5/iDWro+CB1YboJ
 XG8A==
X-Gm-Message-State: AOAM5331IkBhSHR/K8EBh1cjy8CMPX8/0DkgPnRjzh/IRRtsS+PPbzZZ
 iurkzDL6Fm6mLhP2LLmA0hc=
X-Google-Smtp-Source: ABdhPJy5SAdyQfQNoaTz3plQH9NsEWiOAvKCXruBaMt6+7nC5TCy5/CdN/0cXMcdcKFyT5YHNMINbw==
X-Received: by 2002:a62:7a89:: with SMTP id v131mr3246047pfc.38.1591804174942; 
 Wed, 10 Jun 2020 08:49:34 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id m15sm247162pgv.45.2020.06.10.08.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 08:49:33 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 94C9741DD1; Wed, 10 Jun 2020 15:49:25 +0000 (UTC)
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk,
 philipp.reisner@linbit.com, lars.ellenberg@linbit.com, axboe@kernel.dk,
 bfields@fieldses.org, chuck.lever@oracle.com, roopa@cumulusnetworks.com,
 nikolay@cumulusnetworks.com, davem@davemloft.net, kuba@kernel.org,
 dhowells@redhat.com, jarkko.sakkinen@linux.intel.com, jmorris@namei.org,
 serge@hallyn.com, christian.brauner@ubuntu.com
Date: Wed, 10 Jun 2020 15:49:23 +0000
Message-Id: <20200610154923.27510-6-mcgrof@kernel.org>
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
Subject: [Bridge] [PATCH 5/5] selftests: simplify kmod failure value
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

From: Luis Chamberlain <mcgrof@kernel.org>

The "odd" 256 value was just an issue with the umh never
wrapping it around with WEXITSTATUS() for us. Now that it
does that, we can use a sane value / name for the selftest,
and this is no longer a oddity.

We add a way to detect this for older kernels, and support
the old return value for kernel code where it was given.

This never affected userspace.

Reported-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 tools/testing/selftests/kmod/kmod.sh | 46 +++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 7 deletions(-)

diff --git a/tools/testing/selftests/kmod/kmod.sh b/tools/testing/selftests/kmod/kmod.sh
index da60c3bd4f23..df7b21d8561c 100755
--- a/tools/testing/selftests/kmod/kmod.sh
+++ b/tools/testing/selftests/kmod/kmod.sh
@@ -64,6 +64,8 @@ ALL_TESTS="$ALL_TESTS 0009:150:1"
 ALL_TESTS="$ALL_TESTS 0010:1:1"
 ALL_TESTS="$ALL_TESTS 0011:1:1"
 
+MODULE_NOT_FOUND="FAILURE"
+
 # Kselftest framework requirement - SKIP code is 4.
 ksft_skip=4
 
@@ -155,14 +157,19 @@ test_finish()
 	echo "Test completed"
 }
 
+# OLD_FAILURE is just because the old kernel umh never wrapped
+# the error with WEXITSTATUS(). Now that it does it, we get the
+# appropriate actual value from userspace observed in-kernel.
+
+# We keep the old mapping to ensure this script keeps working
+# with older kernels.
 errno_name_to_val()
 {
 	case "$1" in
-	# kmod calls modprobe and upon of a module not found
-	# modprobe returns just 1... However in the kernel we
-	# *sometimes* see 256...
-	MODULE_NOT_FOUND)
+	OLD_FAILURE)
 		echo 256;;
+	FAILURE)
+		echo 1;;
 	SUCCESS)
 		echo 0;;
 	-EPERM)
@@ -181,7 +188,9 @@ errno_name_to_val()
 errno_val_to_name()
 	case "$1" in
 	256)
-		echo MODULE_NOT_FOUND;;
+		echo OLD_FAILURE;;
+	1)
+		echo FAILURE;;
 	0)
 		echo SUCCESS;;
 	-1)
@@ -335,6 +344,28 @@ kmod_defaults_fs()
 	config_set_test_case_fs
 }
 
+check_umh()
+{
+	NAME=''
+
+	kmod_defaults_driver
+	config_num_threads 1
+	printf '\0' >"$DIR"/config_test_driver
+	config_trigger ${FUNCNAME[0]}
+	RC=$(config_get_test_result)
+	if [[ "$RC" == "256" ]]; then
+		MODULE_NOT_FOUND="OLD_FAILURE"
+		echo "check_umh: you have and old umh which didn't wrap errors"
+		echo "           with WEXITSTATUS(). This is OK!"
+	elif [[ "$RC" != "1" ]]; then
+		echo "check_umh: Unexpected return value with no modprobe argument: $RC"
+		exit
+	else
+		echo "check_umh: You have a new umh which wraps erros with"
+		echo "           WEXITSTATUS(). This is OK!"
+	fi
+}
+
 kmod_test_0001_driver()
 {
 	NAME='\000'
@@ -343,7 +374,7 @@ kmod_test_0001_driver()
 	config_num_threads 1
 	printf $NAME >"$DIR"/config_test_driver
 	config_trigger ${FUNCNAME[0]}
-	config_expect_result ${FUNCNAME[0]} MODULE_NOT_FOUND
+	config_expect_result ${FUNCNAME[0]} $MODULE_NOT_FOUND
 }
 
 kmod_test_0001_fs()
@@ -371,7 +402,7 @@ kmod_test_0002_driver()
 	config_set_driver $NAME
 	config_num_threads 1
 	config_trigger ${FUNCNAME[0]}
-	config_expect_result ${FUNCNAME[0]} MODULE_NOT_FOUND
+	config_expect_result ${FUNCNAME[0]} $MODULE_NOT_FOUND
 }
 
 kmod_test_0002_fs()
@@ -648,6 +679,7 @@ load_req_mod
 MODPROBE=$(</proc/sys/kernel/modprobe)
 trap "test_finish" EXIT
 
+check_umh
 parse_args $@
 
 exit 0
-- 
2.26.2

