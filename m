Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF52A22CCFF
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DE8388739;
	Fri, 24 Jul 2020 18:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XdX2Ie38UFm; Fri, 24 Jul 2020 18:22:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FE7488552;
	Fri, 24 Jul 2020 18:21:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4871DC004C;
	Fri, 24 Jul 2020 18:21:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC6FBC016F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 02:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD07B86866
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 02:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t7khup1JJUnH for <bridge@lists.linux-foundation.org>;
 Fri, 26 Jun 2020 02:54:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D90928682A
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 02:54:13 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id m2so4333411pjv.2
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 19:54:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bd0tbnV2l+YFNxwEQU+UFTSpztM9BxdQCKFAYWQxEMA=;
 b=QIZSuisPNWzppbXJFbhSv2J9NQZsKWbbYKjs0EwE9zhEnMRsZPP6xsUg1t19OE3I15
 XMEzTHl+kF/XReV9GmgE00lUqWhb/HE47vRd6CmG5lo3ba0Tn7s69TqZdUFlXlf2x3sL
 ECzevagRgOjeaZgr3G2lU7RHZFQYNx9hXhuxnAR4bX650osrH9LBcaiAg4kpcUalQgjo
 A8pdUj9KBlonpt01YJ4+Bag9J68rVWDV0ttJK7fxYL46wpT00sZqvnxMx0A/XvkB6qcu
 4cbsRb/o3WrJDNrMfHONG6PCX8oUf7hALfUEptmMhBSLj09vWc2nkzY9Cy5enegYeXMc
 TUWg==
X-Gm-Message-State: AOAM530M+fioIpqI3MAYQi2yBGleg0lhpye6fVERhP523qYBZOVMYuT4
 azUjdc6AXIoP+ZQkNxWrE/8=
X-Google-Smtp-Source: ABdhPJxHaLH/4n3uZFgLSBrdqLXbfEfRi9bTdaJAv9rYuDwTXW57R9muWUsfk5iNFsxMlxVPGbK2vg==
X-Received: by 2002:a17:902:162:: with SMTP id 89mr183989plb.211.1593140053280; 
 Thu, 25 Jun 2020 19:54:13 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id t9sm9409782pjs.16.2020.06.25.19.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 19:54:11 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id BC43340430; Fri, 26 Jun 2020 02:54:10 +0000 (UTC)
Date: Fri, 26 Jun 2020 02:54:10 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200626025410.GJ4332@42.do-not-panic.com>
References: <20200623141157.5409-1-borntraeger@de.ibm.com>
 <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>, kuba@kernel.org, serge@hallyn.com,
 keescook@chromium.org, nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 josh@joshtriplett.org, slyfox@gentoo.org, viro@zeniv.linux.org.uk,
 axboe@kernel.dk, dhowells@redhat.com, linux-nfs@vger.kernel.org,
 chainsaw@gentoo.org, ravenexp@gmail.com, gregkh@linuxfoundation.org,
 markward@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, chuck.lever@oracle.com,
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

On Wed, Jun 24, 2020 at 08:37:55PM +0200, Christian Borntraeger wrote:
> 
> 
> On 24.06.20 20:32, Christian Borntraeger wrote:
> [...]> 
> > So the translations look correct. But your change is actually a sematic change
> > if(ret) will only trigger if there is an error
> > if (KWIFEXITED(ret)) will always trigger when the process ends. So we will always overwrite -ECHILD
> > and we did not do it before. 
> > 
> 
> So the right fix is
> 
> diff --git a/kernel/umh.c b/kernel/umh.c
> index f81e8698e36e..a3a3196e84d1 100644
> --- a/kernel/umh.c
> +++ b/kernel/umh.c
> @@ -154,7 +154,7 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
>                  * the real error code is already in sub_info->retval or
>                  * sub_info->retval is 0 anyway, so don't mess with it then.
>                  */
> -               if (KWIFEXITED(ret))
> +               if (KWEXITSTATUS(ret))
>                         sub_info->retval = KWEXITSTATUS(ret);
>         }
>  
> I think.

Nope, the right form is to check for WIFEXITED() before using WEXITSTATUS().
I'm not able to reproduce this on x86 with a bridge. What type of bridge
are you using on a guest, or did you mean using KVM so that the *host*
can spawn kvm guests?

It would be good if you can try to add a bridge manually and see where
things fail. Can you do something like this:

brctl addbr br0
brctl addif br0 ens6 
ip link set dev br0 up

Note that most callers are for modprobe. I'd be curious to see which
umh is failing which breaks bridge for you. Can you trut this so we can
see which umh call is failing?

diff --git a/kernel/umh.c b/kernel/umh.c
index f81e8698e36e..5ad74bc301d8 100644
--- a/kernel/umh.c
+++ b/kernel/umh.c
@@ -2,6 +2,9 @@
 /*
  * umh - the kernel usermode helper
  */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
 #include <linux/module.h>
 #include <linux/sched.h>
 #include <linux/sched/task.h>
@@ -154,8 +157,12 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
 		 * the real error code is already in sub_info->retval or
 		 * sub_info->retval is 0 anyway, so don't mess with it then.
 		 */
-		if (KWIFEXITED(ret))
+		printk("== ret: %02x\n", ret);
+		printk("== KWIFEXITED(ret): %02x\n", KWIFEXITED(ret));
+		if (KWIFEXITED(ret)) {
+			printk("KWEXITSTATUS(ret): %d\n", KWEXITSTATUS(ret));
 			sub_info->retval = KWEXITSTATUS(ret);
+		}
 	}
 
 	/* Restore default kernel sig handler */
@@ -383,6 +390,7 @@ struct subprocess_info *call_usermodehelper_setup(const char *path, char **argv,
 		void *data)
 {
 	struct subprocess_info *sub_info;
+	unsigned int i = 0;
 	sub_info = kzalloc(sizeof(struct subprocess_info), gfp_mask);
 	if (!sub_info)
 		goto out;
@@ -394,6 +402,11 @@ struct subprocess_info *call_usermodehelper_setup(const char *path, char **argv,
 #else
 	sub_info->path = path;
 #endif
+	pr_info("sub_info->path: %s\n", sub_info->path);
+	while (argv[i])
+		printk(KERN_INFO "%s ", argv[i++]);
+	printk(KERN_INFO  "\n");
+
 	sub_info->argv = argv;
 	sub_info->envp = envp;
 

