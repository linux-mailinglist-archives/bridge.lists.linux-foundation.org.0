Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BAA35C8C8
	for <lists.bridge@lfdr.de>; Mon, 12 Apr 2021 16:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11646403F6;
	Mon, 12 Apr 2021 14:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wS6eBbHg4MBw; Mon, 12 Apr 2021 14:30:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id 719F5403F7;
	Mon, 12 Apr 2021 14:30:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2FBA7C0011;
	Mon, 12 Apr 2021 14:30:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9F68C000A
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 14:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A916683A51
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 14:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=rockwellcollins.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V47AQhLHS1XR for <bridge@lists.linux-foundation.org>;
 Mon, 12 Apr 2021 14:30:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ch3vs02.rockwellcollins.com (ch3vs02.rockwellcollins.com
 [205.175.226.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 696A283A43
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 14:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rockwellcollins.com; s=hrcrc2020;
 h=from:to:cc:subject:date:message-id;
 bh=7LIvHoGH5BOpbn/7Pvv1gTxxp/EZlQ7PilgSRSf9hzM=;
 b=aG7siru3l8o3/4+Up7xvvxoRqeXb+7HBIqrGZ4ia/Pl55skYUyQJMPKT
 zv95opXSa1Upaj7xXLaRSJHwD+p6yfHu7WMCfTX/pRGtiUO458ni8gNAG
 Fvli7jQV7F6hFmFjYVOOAl4VevO5zaujzWnsSs54j2TQpZxbR/GyjEjIi
 EhsJOcuJNAreDsw72qrSa7gNTCON7wDzkAKRta58YRaJHY65fLmMpu3Qd
 QkwPFs0/c08RtGBjyLYMRwGuhirc7VKh8g8ga9LjG6c1j5IezCvaVaSk0
 4qKajk/zTmYA2X0Bw6FACOYts+TXEQPUgtO7QxVGI9O0ylQeqTy7cmI42 Q==;
IronPort-SDR: l+gvnYd/cLkgN+psbz9LQ1/amuryLsSbxj3yEvYG4+SIiL2zXfJWOadZVUfY0B88f9Adj/kejK
 mxj2yh7eiIJOuE0G74DEo1/35dHNSbQT+MmkWffTSOI4npaBokmjU6rR6QqCNVPeWU3Lqsl41P
 pwNo9dyiCnM30RnpLcB7XT+iFb6HMVyO+6OJbCmuIb9EYVz8pku1x8nni0/CwqVCzm8WpvrvNx
 8jB68wMFGDk1cU9BZivNl14Zhcm16bUWkfEhOObroB+KbVj1yY53NcwuC27Zxf+0wUUY1yChKN
 PRI=
Received: from ofwch3n02.rockwellcollins.com (HELO
 dtulimr02.rockwellcollins.com) ([205.175.226.14])
 by ch3vs02.rockwellcollins.com with ESMTP; 12 Apr 2021 09:30:36 -0500
X-Received: from biscuits.rockwellcollins.com (biscuits.rockwellcollins.lab
 [10.148.119.137])
 by dtulimr02.rockwellcollins.com (Postfix) with ESMTP id 69BD92058A;
 Mon, 12 Apr 2021 09:30:36 -0500 (CDT)
From: Matt Weber <matthew.weber@rockwellcollins.com>
To: bridge@lists.linux-foundation.org
Date: Mon, 12 Apr 2021 09:30:34 -0500
Message-Id: <20210412143034.22415-1-matthew.weber@rockwellcollins.com>
X-Mailer: git-send-email 2.17.1
Subject: [Bridge] [PATCH] Include header for use of PATH_MAX
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

Since a1f20223cfcf7b9eae8c9e7e7a07e7bf1377f65b in some build
configurations PATH_MAX is undefined.

Build log from Buildroot testing failure:
http://autobuild.buildroot.net/results/3ec818e676827c03f08c264c6c7a53b025b7ba1d/build-end.log

...
/home/giuliobenetti/autobuild/run/instance-0/output-1/host/bin/arm-buildroot-linux-musleabihf-gcc -Wall -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -O2   -I/home/giuliobenetti/autobuild/run/instance-0/output-1/host/arm-buildroot-linux-musleabihf/sysroot/usr/include  -c libbridge_misc.c
libbridge_init.c: In function 'isbridge':
libbridge_init.c:49:12: error: 'PATH_MAX' undeclared (first use in this function); did you mean 'AF_MAX'?
   49 |  char path[PATH_MAX];
      |            ^~~~~~~~
      |            AF_MAX
libbridge_init.c:49:12: note: each undeclared identifier is reported only once for each function it appears in
libbridge_init.c:49:7: warning: unused variable 'path' [-Wunused-variable]
   49 |  char path[PATH_MAX];
      |       ^~~~
make[2]: *** [Makefile:37: libbridge_init.o] Error 1
make[2]: *** Waiting for unfinished jobs....
libbridge_devif.c: In function 'fpopen':
libbridge_devif.c:33:12: error: 'PATH_MAX' undeclared (first use in this function); did you mean 'AF_MAX'?
   33 |  char path[PATH_MAX];
      |            ^~~~~~~~
      |            AF_MAX

Signed-off-by: Matthew Weber <matthew.weber@rockwellcollins.com>
---
 libbridge/libbridge_devif.c | 1 +
 libbridge/libbridge_init.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/libbridge/libbridge_devif.c b/libbridge/libbridge_devif.c
index 8b7d954..95f7769 100644
--- a/libbridge/libbridge_devif.c
+++ b/libbridge/libbridge_devif.c
@@ -24,6 +24,7 @@
 #include <string.h>
 #include <dirent.h>
 #include <fcntl.h>
+#include <linux/limits.h>
 
 #include "libbridge.h"
 #include "libbridge_private.h"
diff --git a/libbridge/libbridge_init.c b/libbridge/libbridge_init.c
index c914971..645dda6 100644
--- a/libbridge/libbridge_init.c
+++ b/libbridge/libbridge_init.c
@@ -24,6 +24,7 @@
 #include <dirent.h>
 #include <sys/types.h>
 #include <sys/stat.h>
+#include <linux/limits.h>
 
 #include "libbridge.h"
 #include "libbridge_private.h"
-- 
2.17.1

