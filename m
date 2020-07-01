Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E276C22CD11
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4434989372;
	Fri, 24 Jul 2020 18:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9YAyTiKQmzQr; Fri, 24 Jul 2020 18:22:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0D3288E5F;
	Fri, 24 Jul 2020 18:21:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72845C004E;
	Fri, 24 Jul 2020 18:21:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AE085C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 15:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A55282F8FA
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 15:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TW+cfKIdGyi4 for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 15:39:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D6202226B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 15:39:02 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a14so6590542pfi.2
 for <bridge@lists.linux-foundation.org>; Wed, 01 Jul 2020 08:39:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AZesbQnE9xZtAvlp8hgGkQiaXBzVdBqKAV0FPQQ6oZs=;
 b=sPGYQqsG+pchJ1bDliQkAVt0bvf/k45TGqza2D1Y9wqyLemA6fm6hqTuoyRYatakdv
 FoaoYhFoxlT9yt+gmiVkUk5PJK4OtjqRsPxYlPAm+qYMMe1BlLXibWXH8fsOqdKVU/RQ
 CJQ8HhyYHivI8ZaYahD/phrdKcd9YuyvQ4gNO5Hf+yXoj1XSAiPQYZTUH4eCpLn0Hu4C
 9+yle/eoYLXpGHm3Y9KMn+8KOPUnI+QttNxlyE6laNdGi/GPLu+msfWf7qJUjCYmKVY6
 UgDNRE1dM5RQTn54WgESFxy/c1s2H8dxQWKYS+s0bxySlEmF/ReIF8qEgqCR+hHrlhMN
 hkBQ==
X-Gm-Message-State: AOAM532QJ1FwKwn90wWrAshxhSYEOxwJgnyoaC+lp/hkmKeHSadeQ5LP
 5QIrnE+lpwmShYQ0Kafd/+c=
X-Google-Smtp-Source: ABdhPJwcc1ftRiobDwYJoEvcTEgwjxcf5bDCUJdlkJWOMFVXK83NcGgXQfCysyiX5lkFdVIUl46mrA==
X-Received: by 2002:aa7:9906:: with SMTP id z6mr25183903pff.60.1593617941931; 
 Wed, 01 Jul 2020 08:39:01 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id i196sm6357971pgc.55.2020.07.01.08.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 08:39:00 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 76FA2403DC; Wed,  1 Jul 2020 15:38:59 +0000 (UTC)
Date: Wed, 1 Jul 2020 15:38:59 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20200701153859.GT4332@42.do-not-panic.com>
References: <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
 <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, mcgrof@kernel.org,
 christian.brauner@ubuntu.com, yangtiezhu@loongson.cn,
 linux-s390 <linux-s390@vger.kernel.org>, bridge@lists.linux-foundation.org,
 jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, dhowells@redhat.com,
 linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 chuck.lever@oracle.com, "Eric W. Biederman" <ebiederm@xmission.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, davem@davemloft.net
Subject: Re: [Bridge] linux-next: umh: fix processed error when
 UMH_WAIT_PROC is used seems to break linux bridge on s390x (bisected)
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

On Wed, Jul 01, 2020 at 11:08:57PM +0900, Tetsuo Handa wrote:
> On 2020/07/01 22:53, Luis Chamberlain wrote:
> >> Well, it is not br_stp_call_user() but br_stp_start() which is expecting
> >> to set sub_info->retval for both KWIFEXITED() case and KWIFSIGNALED() case.
> >> That is, sub_info->retval needs to carry raw value (i.e. without "umh: fix
> >> processed error when UMH_WAIT_PROC is used" will be the correct behavior).
> > 
> > br_stp_start() doesn't check for the raw value, it just checks for err
> > or !err. So the patch, "umh: fix processed error when UMH_WAIT_PROC is
> > used" propagates the correct error now.
> 
> No. If "/sbin/bridge-stp virbr0 start" terminated due to e.g. SIGSEGV
> (for example, by inserting "kill -SEGV $$" into right after "#!/bin/sh" line),
> br_stp_start() needs to select BR_KERNEL_STP path. We can't assume that
> /sbin/bridge-stp is always terminated by exit() syscall (and hence we can't
> ignore KWIFSIGNALED() case in call_usermodehelper_exec_sync()).

Ah, well that would be a different fix required, becuase again,
br_stp_start() does not untangle the correct error today really.
I also I think it would be odd odd that SIGSEGV or another signal 
is what was terminating Christian's bridge stp call, but let's
find out!

Note we pass 0 to the options to wait so the mistake here could indeed
be that we did not need KWIFSIGNALED(). I was afraid of this prospect...
as it other implications.

It means we either *open code* all callers, or we handle this in a
unified way on the umh. And if we do handle this in a unified way, it
then begs the question as to *what* do we pass for the signals case and
continued case. Below we just pass the signal, and treat continued as
OK, but treating continued as OK would also be a *new* change as well.

For instance (this goes just boot tested, but Christian if you can
try this as well that would be appreciated):

diff --git a/include/linux/sched/task.h b/include/linux/sched/task.h
index bba06befbff5..d1898f5dd1fc 100644
--- a/include/linux/sched/task.h
+++ b/include/linux/sched/task.h
@@ -105,10 +105,12 @@ extern long kernel_wait4(pid_t, int __user *, int, struct rusage *);
 
 /* Only add helpers for actual use cases in the kernel */
 #define KWEXITSTATUS(status)		(__KWEXITSTATUS(status))
+#define KWTERMSIG(status)		(__KWTERMSIG(status))
+#define KWSTOPSIG(status)		(__KWSTOPSIG(status))
 #define KWIFEXITED(status)		(__KWIFEXITED(status))
-
-/* Nonzero if STATUS indicates normal termination.  */
-#define __KWIFEXITED(status)     (__KWTERMSIG(status) == 0)
+#define KWIFSIGNALED(status)		(__KWIFSIGNALED(status))
+#define KWIFSTOPPED(status)		(__KWIFSTOPPED(status))
+#define KWIFCONTINUED(status)		(__KWIFCONTINUED(status))
 
 /* If KWIFEXITED(STATUS), the low-order 8 bits of the status.  */
 #define __KWEXITSTATUS(status)   (((status) & 0xff00) >> 8)
@@ -116,6 +118,24 @@ extern long kernel_wait4(pid_t, int __user *, int, struct rusage *);
 /* If KWIFSIGNALED(STATUS), the terminating signal.  */
 #define __KWTERMSIG(status)      ((status) & 0x7f)
 
+/* If KWIFSTOPPED(STATUS), the signal that stopped the child.  */
+#define __KWSTOPSIG(status)      __KWEXITSTATUS(status)
+
+/* Nonzero if STATUS indicates normal termination.  */
+#define __KWIFEXITED(status)     (__KWTERMSIG(status) == 0)
+
+/* Nonzero if STATUS indicates termination by a signal.  */
+#define __KWIFSIGNALED(status) \
+	(((signed char) (((status) & 0x7f) + 1) >> 1) > 0)
+
+/* Nonzero if STATUS indicates the child is stopped.  */
+#define __KWIFSTOPPED(status)    (((status) & 0xff) == 0x7f)
+
+/* Nonzero if STATUS indicates the child continued after a stop. */
+#define __KWIFCONTINUED(status) ((status) == __KW_CONTINUED)
+
+#define __KW_CONTINUED		0xffff
+
 extern void free_task(struct task_struct *tsk);
 
 /* sched_exec is called by processes performing an exec */
diff --git a/kernel/umh.c b/kernel/umh.c
index f81e8698e36e..c98fb1ed90c9 100644
--- a/kernel/umh.c
+++ b/kernel/umh.c
@@ -156,6 +156,18 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
 		 */
 		if (KWIFEXITED(ret))
 			sub_info->retval = KWEXITSTATUS(ret);
+		/*
+		 * Do we really want to be passing the signal, or do we pass
+		 * a single error code for all cases?
+		 */
+		else if (KWIFSIGNALED(ret))
+			sub_info->retval = KWTERMSIG(ret);
+		/* Same here */
+		else if (KWIFSTOPPED((ret)))
+			sub_info->retval = KWSTOPSIG(ret);
+		/* And are we really sure we want this? */
+		else if (KWIFCONTINUED((ret)))
+			sub_info->retval = 0;
 	}
 
 	/* Restore default kernel sig handler */
