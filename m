Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F0222CD22
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E774287E9D;
	Fri, 24 Jul 2020 18:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSR32JlRL-+q; Fri, 24 Jul 2020 18:22:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1416A88AAF;
	Fri, 24 Jul 2020 18:21:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E2689C004E;
	Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E20BAC0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 19:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C594A2040F
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 19:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlHljEzepYzJ for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 19:46:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C7812042E
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 19:46:59 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id h22so12958597pjf.1
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jul 2020 12:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OHFXCZoREfl1GMwKik+5lcCUbnGDc+wlkQ8rGpzOHJY=;
 b=BTjuU1zIWFMjBXtxDNKGeQXv1ZpBdBfqxeKTUSKk8utDXC638bi48j4RpqGoUGzLvE
 l0cDBoXibtEfhN6Hy5oF7opJh4lOBMnPql7zzubqDciBmWQhlZnd0Fm3jENDIXHyEH3S
 m3PsuPFXQKfv9H6GUdewQDCHyybnXgFPo9LNv5pwJhHca1Q44niRVlKhm715zWZesQPa
 nbXI02UGdIrolhDeFi3QXKsbL9cHju0WOX7Oq4XHmuHojNqU0f4RtbvGzooWLUROWQnm
 vumpaAV0lG0EKX/syTIhGBsHzJ6DZzEAGgJmm33tp3ELhm+eIph7G2WByHdAKn0KD/xP
 NQAg==
X-Gm-Message-State: AOAM532MVv18loIGasVniiYLzcmxDlBNyM1o8VjFnEA8OxAjgSF1vvli
 YJnfzhQCe4pcMFT7AVvd/oM=
X-Google-Smtp-Source: ABdhPJzZRZZnyTT/LL8zshMzqSe4q6iWh/bqF3eI60b4K/yHnYqIox4lLP9gZCWSkU96CYlxNiNA6Q==
X-Received: by 2002:a17:90a:b38b:: with SMTP id
 e11mr15548657pjr.120.1593719219005; 
 Thu, 02 Jul 2020 12:46:59 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id n18sm10014912pfd.99.2020.07.02.12.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 12:46:57 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 695BF403DC; Thu,  2 Jul 2020 19:46:56 +0000 (UTC)
Date: Thu, 2 Jul 2020 19:46:56 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 David Howells <dhowells@redhat.com>
Message-ID: <20200702194656.GV4332@42.do-not-panic.com>
References: <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
 <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
 <20200701153859.GT4332@42.do-not-panic.com>
 <e3f3e501-2cb7-b683-4b85-2002b7603244@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3f3e501-2cb7-b683-4b85-2002b7603244@i-love.sakura.ne.jp>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, linux-nfs@vger.kernel.org,
 chainsaw@gentoo.org, ravenexp@gmail.com, gregkh@linuxfoundation.org,
 markward@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, chuck.lever@oracle.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, lars.ellenberg@linbit.com, davem@davemloft.net
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

On Thu, Jul 02, 2020 at 01:26:53PM +0900, Tetsuo Handa wrote:
> On 2020/07/02 0:38, Luis Chamberlain wrote:
> > @@ -156,6 +156,18 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
> >  		 */
> >  		if (KWIFEXITED(ret))
> >  			sub_info->retval = KWEXITSTATUS(ret);
> > +		/*
> > +		 * Do we really want to be passing the signal, or do we pass
> > +		 * a single error code for all cases?
> > +		 */
> > +		else if (KWIFSIGNALED(ret))
> > +			sub_info->retval = KWTERMSIG(ret);
> 
> No, this is bad. Caller of usermode helper is unable to distinguish exit(9)
> and e.g. SIGKILL'ed by the OOM-killer.

Right, the question is: do we care?

> Please pass raw exit status value.
> 
> I feel that caller of usermode helper should not use exit status value.
> For example, call_sbin_request_key() is checking
> 
>   test_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags) || key_validate(key) < 0
> 
> condition (if usermode helper was invoked) in order to "ignore any errors from
> userspace if the key was instantiated".

For those not familiar with this code path, or if you cannot decipher
the above, the code path in question was:

static int call_sbin_request_key(struct key *authkey, void *aux)                
{
	...
	/* do it */                                                             
	ret = call_usermodehelper_keys(request_key, argv, envp, keyring,        
				       UMH_WAIT_PROC);
	kdebug("usermode -> 0x%x", ret);
	if (ret >= 0) {
		/* ret is the exit/wait code */
		if (test_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags) ||
		    key_validate(key) < 0)
		    ret = -ENOKEY;
		/* ignore any errors from userspace if the key was      
		 * instantiated */  
		 ret = 0;
	}
	...
}

And the umh patch "umh: fix processed error when UMH_WAIT_PROC is used"
changed this to:

-       if (ret >= 0) {
+       if (ret != 0) {

Prior to the patch negative return values from userspace were still
being captured, and likewise signals, but the error value was not
raw, not the actual value. After the patch, since we check for ret != 0
we still upkeep the sanity check for any error, correct the error value,
but as you noted signals were ignored as I made the wrong assumption
we would ignore them. The umh sub_info->retval is set after my original
patch only if KWIFSIGNALED(ret)), and ignored signals, and so that
would be now capitured with the additional KWIFSIGNALED(ret)) check.

The question still stands:

Do we want to open code all these checks or simply wrap them up in
the umh. If we do the later, as you note exit(9) and a SIGKILL will
be the same to the inspector in the kernel. But do we care?

Do we really want umh callers differntiatin between signals and exit values?

The alternative to making a compromise is using generic wrappers for
things which make sense and letting the callers use those.

  Luis

> > +		/* Same here */
> > +		else if (KWIFSTOPPED((ret)))
> > +			sub_info->retval = KWSTOPSIG(ret);
> > +		/* And are we really sure we want this? */
> > +		else if (KWIFCONTINUED((ret)))
> > +			sub_info->retval = 0;
> >  	}
> >  
> >  	/* Restore default kernel sig handler */
> > 
> 
