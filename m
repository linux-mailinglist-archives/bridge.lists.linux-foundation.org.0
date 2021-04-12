Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091735C9FE
	for <lists.bridge@lfdr.de>; Mon, 12 Apr 2021 17:34:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE953600C4;
	Mon, 12 Apr 2021 15:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRW_G2pTS1xN; Mon, 12 Apr 2021 15:34:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B4B4605BF;
	Mon, 12 Apr 2021 15:34:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E6643C0011;
	Mon, 12 Apr 2021 15:34:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EDAD0C000A
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 15:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE29C4026F
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 15:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpW0lUIQ8DnY for <bridge@lists.linux-foundation.org>;
 Mon, 12 Apr 2021 15:34:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3111640241
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 15:34:15 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id n38so9444811pfv.2
 for <bridge@lists.linux-foundation.org>; Mon, 12 Apr 2021 08:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DULGFHBJnNIBDcJR7ISAEqnxJlDd+FQ1KbleP4GPr8c=;
 b=f3d0TB4wuPR205TU6Xg0rOT0rg2o2/MGNLVmTatsQRPWxlX8DKFB31lNm5IjTBHK2P
 5ukbgmb092ZZVP2utuzVPsM8QvPGzvEZUqVp5CWd6aIp4ahggSC3WYukwaaMYM2JQT+M
 smbjpS6FEkhVaFm610Zy5JBaLpXW/EQDcQbXp/SyXqj+4lcRU7g19AtOTE4LkLITxRkU
 ZmDjwFrV2F51S2oQg3UNv/3wODItMzi5Kj5hFDQJGmU36xYnTjP8RAVnfPtVFXi+6T9U
 r5LDBHQFc3lFNY+p9BXV5xW/ofGzLKRjiNoKeolgdS9bYRaC6CxF8kLzHNty/3aivr/W
 AQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DULGFHBJnNIBDcJR7ISAEqnxJlDd+FQ1KbleP4GPr8c=;
 b=ml18cejQK+FnL25Z/1XNdMhAdpZF2sx+hoSK0RdrewN/fVgFFj9RYi9zvwO6eS2EqC
 ZPamMShGXg1k5lELoZMmb3ECxL6oiwQOvRmUNkTS6ayJhKtR3+WkIvARXUrHRjggZxGy
 x9U1SvP4rbja6DFX190H7Y77Zu7CSTnxY3A54lTb6IMzsUVQMgNu/s1R+fn3UOtvjHMn
 f7eSA1W8Go1zQA4nAaKIeDSP+yg1nzfD+P2YTOqnBFAtY375iGRKMWVcOl2LecmEr5xN
 NUObw9Wfb7VhhXiJPlu3hMOx6H6Jfkyi2x7wlPgTfdQLVOo1ebRkqdWSasxp0y5aPOfr
 dTHw==
X-Gm-Message-State: AOAM532+dlMZCD52+pCiq9pFMcEJ1YzKVJMqZ32yFvKrMnr+HR8Ky7pv
 z8wSg8cGFKd62F1KycWOKrTN1Q==
X-Google-Smtp-Source: ABdhPJyXO/AF2e7wdVwLnfBTpDQesKfC0H8tePVKJw057tTuPlWqVd3RtKcUn6+zF8DO3BU0zdQqlw==
X-Received: by 2002:a63:6d8a:: with SMTP id i132mr27878668pgc.82.1618241654917; 
 Mon, 12 Apr 2021 08:34:14 -0700 (PDT)
Received: from hermes.local (76-14-218-44.or.wavecable.com. [76.14.218.44])
 by smtp.gmail.com with ESMTPSA id p10sm10085252pfn.109.2021.04.12.08.34.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 08:34:14 -0700 (PDT)
Date: Mon, 12 Apr 2021 08:34:06 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Matt Weber <matthew.weber@rockwellcollins.com>
Message-ID: <20210412083406.627efc12@hermes.local>
In-Reply-To: <20210412143034.22415-1-matthew.weber@rockwellcollins.com>
References: <20210412143034.22415-1-matthew.weber@rockwellcollins.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH] Include header for use of PATH_MAX
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

On Mon, 12 Apr 2021 09:30:34 -0500
Matt Weber <matthew.weber@rockwellcollins.com> wrote:

> Since a1f20223cfcf7b9eae8c9e7e7a07e7bf1377f65b in some build
> configurations PATH_MAX is undefined.
> 
> Build log from Buildroot testing failure:
> http://autobuild.buildroot.net/results/3ec818e676827c03f08c264c6c7a53b025b7ba1d/build-end.log
> 
> ...
> /home/giuliobenetti/autobuild/run/instance-0/output-1/host/bin/arm-buildroot-linux-musleabihf-gcc -Wall -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -O2   -I/home/giuliobenetti/autobuild/run/instance-0/output-1/host/arm-buildroot-linux-musleabihf/sysroot/usr/include  -c libbridge_misc.c
> libbridge_init.c: In function 'isbridge':
> libbridge_init.c:49:12: error: 'PATH_MAX' undeclared (first use in this function); did you mean 'AF_MAX'?
>    49 |  char path[PATH_MAX];
>       |            ^~~~~~~~
>       |            AF_MAX
> libbridge_init.c:49:12: note: each undeclared identifier is reported only once for each function it appears in
> libbridge_init.c:49:7: warning: unused variable 'path' [-Wunused-variable]
>    49 |  char path[PATH_MAX];
>       |       ^~~~
> make[2]: *** [Makefile:37: libbridge_init.o] Error 1
> make[2]: *** Waiting for unfinished jobs....
> libbridge_devif.c: In function 'fpopen':
> libbridge_devif.c:33:12: error: 'PATH_MAX' undeclared (first use in this function); did you mean 'AF_MAX'?
>    33 |  char path[PATH_MAX];
>       |            ^~~~~~~~
>       |            AF_MAX
> 
> Signed-off-by: Matthew Weber <matthew.weber@rockwellcollins.com>
> ---
>  libbridge/libbridge_devif.c | 1 +
>  libbridge/libbridge_init.c  | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/libbridge/libbridge_devif.c b/libbridge/libbridge_devif.c
> index 8b7d954..95f7769 100644
> --- a/libbridge/libbridge_devif.c
> +++ b/libbridge/libbridge_devif.c
> @@ -24,6 +24,7 @@
>  #include <string.h>
>  #include <dirent.h>
>  #include <fcntl.h>
> +#include <linux/limits.h>
>  
>  #include "libbridge.h"
>  #include "libbridge_private.h"
> diff --git a/libbridge/libbridge_init.c b/libbridge/libbridge_init.c
> index c914971..645dda6 100644
> --- a/libbridge/libbridge_init.c
> +++ b/libbridge/libbridge_init.c
> @@ -24,6 +24,7 @@
>  #include <dirent.h>
>  #include <sys/types.h>
>  #include <sys/stat.h>
> +#include <linux/limits.h>

Shouldn't refer to Linux version of the file.

According IWYU

libbridge/libbridge_devif.c should add these lines:
#include <limits.h>             // for PATH_MAX
#include <linux/if.h>           // for ifreq, IFNAMSIZ, ifr_data, ifr_name
#include <linux/if_bridge.h>    // for __bridge_info, __port_info, __fdb_entry
#include <sys/ioctl.h>          // for ioctl, SIOCDEVPRIVATE
struct timeval;

libbridge/libbridge_devif.c should remove these lines:
- #include <stdlib.h>  // lines 21-21

The full include-list for libbridge/libbridge_devif.c:
#include <dirent.h>             // for closedir, opendir, DIR
#include <errno.h>              // for errno, EAGAIN
#include <fcntl.h>              // for open, O_WRONLY, SEEK_SET
#include <limits.h>             // for PATH_MAX
#include <linux/if.h>           // for ifreq, IFNAMSIZ, ifr_data, ifr_name
#include <linux/if_bridge.h>    // for __bridge_info, __port_info, __fdb_entry
#include <stdio.h>              // for snprintf, fclose, fopen, fscanf, FILE
#include <string.h>             // for memcpy, memset, strerror
#include <sys/ioctl.h>          // for ioctl, SIOCDEVPRIVATE
#include <unistd.h>             // for close, sleep, write
#include "libbridge.h"          // for bridge_info, port_info, strlcpy, brid...
#include "libbridge_private.h"  // for __jiffies_to_tv, __tv_to_jiffies, SYS...







