Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CEB22CD1D
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 961A788C18;
	Fri, 24 Jul 2020 18:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MVpT5ky3wFK; Fri, 24 Jul 2020 18:22:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0ABE087E4D;
	Fri, 24 Jul 2020 18:21:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE698C004C;
	Fri, 24 Jul 2020 18:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4885DC016E
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 17:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39D7787C89
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 17:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pC846ErQJZ-T for <bridge@lists.linux-foundation.org>;
 Tue, 30 Jun 2020 17:57:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 857A587AD1
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 17:57:07 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id i4so9806004pjd.0
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 10:57:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IxDMdmHFz25rQeZrQw7NFOS8gOPg1n8YJ7nCrO0iZow=;
 b=jszAp1/yFIUyVw6DH0IGEPxdL8Ty+APKIuvuFQY46AHgZqzz2Etxuk/qvArCrMYCKL
 vR+0brYVW462G33xWB4Zav8vmckhtsMgwGRNJnVPhOkdHtMVcI21x7ha/bZ1B4v1YciQ
 KEKYCz9998AyWu/2my9JA4Ha32dIfqX1Q7PJah2iBQniJuM+kLDEuGWo2XHgYzCxry76
 BFPMTMzM69CT9cngpxw+5jNq5SFU0snqE/rIOZMwF03r7XRWX8UHKeSVe3YtV5DgP0kO
 FBjfvoPIfmhEavgln+1gQqjzUQ7NFhboPzr/SH/LHMZR4W7dHkhxbmu6Z4SE2YgRA041
 znSQ==
X-Gm-Message-State: AOAM533ajj7eRopk5EaiLSTt6sbAYMMEuq5iiS4WzloYnqMm/SqdMqB3
 M3bBonIqbn6XfuyhNARJkyc=
X-Google-Smtp-Source: ABdhPJyO4r2+2U3N9gJ5+4QVVzssPbq2nonngepycpeUVR0nzxS79dBaptYeC8a26mlqfwKjmxeziQ==
X-Received: by 2002:a17:90a:668f:: with SMTP id
 m15mr23597845pjj.32.1593539826969; 
 Tue, 30 Jun 2020 10:57:06 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id j16sm3304413pfr.100.2020.06.30.10.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jun 2020 10:57:05 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 720B9403DC; Tue, 30 Jun 2020 17:57:04 +0000 (UTC)
Date: Tue, 30 Jun 2020 17:57:04 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200630175704.GO13911@42.do-not-panic.com>
References: <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200626025410.GJ4332@42.do-not-panic.com>
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

On Fri, Jun 26, 2020 at 02:54:10AM +0000, Luis Chamberlain wrote:
> On Wed, Jun 24, 2020 at 08:37:55PM +0200, Christian Borntraeger wrote:
> > 
> > 
> > On 24.06.20 20:32, Christian Borntraeger wrote:
> > [...]> 
> > > So the translations look correct. But your change is actually a sematic change
> > > if(ret) will only trigger if there is an error
> > > if (KWIFEXITED(ret)) will always trigger when the process ends. So we will always overwrite -ECHILD
> > > and we did not do it before. 
> > > 
> > 
> > So the right fix is
> > 
> > diff --git a/kernel/umh.c b/kernel/umh.c
> > index f81e8698e36e..a3a3196e84d1 100644
> > --- a/kernel/umh.c
> > +++ b/kernel/umh.c
> > @@ -154,7 +154,7 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
> >                  * the real error code is already in sub_info->retval or
> >                  * sub_info->retval is 0 anyway, so don't mess with it then.
> >                  */
> > -               if (KWIFEXITED(ret))
> > +               if (KWEXITSTATUS(ret))
> >                         sub_info->retval = KWEXITSTATUS(ret);
> >         }
> >  
> > I think.
> 
> Nope, the right form is to check for WIFEXITED() before using WEXITSTATUS().
> I'm not able to reproduce this on x86 with a bridge. What type of bridge
> are you using on a guest, or did you mean using KVM so that the *host*
> can spawn kvm guests?
> 
> It would be good if you can try to add a bridge manually and see where
> things fail. Can you do something like this:
> 
> brctl addbr br0
> brctl addif br0 ens6 
> ip link set dev br0 up
> 
> Note that most callers are for modprobe. I'd be curious to see which
> umh is failing which breaks bridge for you. Can you trut this so we can
> see which umh call is failing?

Christian, any luck getting to test the code below to see what this
reveals?

  Luis

> 
> diff --git a/kernel/umh.c b/kernel/umh.c
> index f81e8698e36e..5ad74bc301d8 100644
> --- a/kernel/umh.c
> +++ b/kernel/umh.c
> @@ -2,6 +2,9 @@
>  /*
>   * umh - the kernel usermode helper
>   */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
>  #include <linux/module.h>
>  #include <linux/sched.h>
>  #include <linux/sched/task.h>
> @@ -154,8 +157,12 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
>  		 * the real error code is already in sub_info->retval or
>  		 * sub_info->retval is 0 anyway, so don't mess with it then.
>  		 */
> -		if (KWIFEXITED(ret))
> +		printk("== ret: %02x\n", ret);
> +		printk("== KWIFEXITED(ret): %02x\n", KWIFEXITED(ret));
> +		if (KWIFEXITED(ret)) {
> +			printk("KWEXITSTATUS(ret): %d\n", KWEXITSTATUS(ret));
>  			sub_info->retval = KWEXITSTATUS(ret);
> +		}
>  	}
>  
>  	/* Restore default kernel sig handler */
> @@ -383,6 +390,7 @@ struct subprocess_info *call_usermodehelper_setup(const char *path, char **argv,
>  		void *data)
>  {
>  	struct subprocess_info *sub_info;
> +	unsigned int i = 0;
>  	sub_info = kzalloc(sizeof(struct subprocess_info), gfp_mask);
>  	if (!sub_info)
>  		goto out;
> @@ -394,6 +402,11 @@ struct subprocess_info *call_usermodehelper_setup(const char *path, char **argv,
>  #else
>  	sub_info->path = path;
>  #endif
> +	pr_info("sub_info->path: %s\n", sub_info->path);
> +	while (argv[i])
> +		printk(KERN_INFO "%s ", argv[i++]);
> +	printk(KERN_INFO  "\n");
> +
>  	sub_info->argv = argv;
>  	sub_info->envp = envp;
>  
> 
