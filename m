Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 209C522CD20
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BC1B88A98;
	Fri, 24 Jul 2020 18:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nfF-Qo8p567P; Fri, 24 Jul 2020 18:22:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC95B885E9;
	Fri, 24 Jul 2020 18:21:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CF24FC004E;
	Fri, 24 Jul 2020 18:21:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB856C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B25EB8BEEC
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1AVZdfturI4 for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 13:53:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F7688BED7
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:53:26 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id g67so10858080pgc.8
 for <bridge@lists.linux-foundation.org>; Wed, 01 Jul 2020 06:53:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h6MIEo0w4YZ3T+eJF1TvR/2DQpsBFpaOhagpRiYZ+H8=;
 b=k1ODOduIXerZ2xHbbuEN9BZibhAqmIgqrfykLcSC6CNbp7/1rwtgaZfcCOa5zVdNFz
 nGT0yCILw7cOvcqSeCOEHOmgyJY7GvZ9AI6VNHzjqMdVCUqvsuakW099h6TwliGnvXJ7
 fdhBPQxux2uqf4mqLKYk79IYQpuLTWZahgdqCphiQFIRW5V9ue2QVPgovD5P1TQXzeuQ
 FITKehEWmb+4nRSv7pbgurXklrLmYzQM90XE++cQGTW+TWrdGzGi6d4+ir5yaAX6EyyA
 ptb+n19QJQS+PsBvt47TRT60eflITkAURTgJF6Vm1I5tRBbXABE+Ju2NxIHm8FTICNlx
 TydQ==
X-Gm-Message-State: AOAM532LNi7XGGbNF0q2CuSHgakpUQaup4m3xRq4Ytr77oA/ACHUAKg9
 XT8lztHJSLKIQSvfa5Mcwg8=
X-Google-Smtp-Source: ABdhPJwr8PB63d+2w+lLb3Er1zsrEZRI+fJcdyF7BlE5PN4Mx8QBpZaoVFxqxCr8t6D5Itc3OYVSZA==
X-Received: by 2002:a62:1801:: with SMTP id 1mr24742854pfy.242.1593611606042; 
 Wed, 01 Jul 2020 06:53:26 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id w20sm6018568pfn.44.2020.07.01.06.53.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 06:53:24 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 3BAEC403DC; Wed,  1 Jul 2020 13:53:24 +0000 (UTC)
Date: Wed, 1 Jul 2020 13:53:24 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20200701135324.GS4332@42.do-not-panic.com>
References: <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, dhowells@redhat.com,
 linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 chuck.lever@oracle.com, netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
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

On Wed, Jul 01, 2020 at 10:24:29PM +0900, Tetsuo Handa wrote:
> On 2020/07/01 19:08, Christian Borntraeger wrote:
> > 
> > 
> > On 30.06.20 19:57, Luis Chamberlain wrote:
> >> On Fri, Jun 26, 2020 at 02:54:10AM +0000, Luis Chamberlain wrote:
> >>> On Wed, Jun 24, 2020 at 08:37:55PM +0200, Christian Borntraeger wrote:
> >>>>
> >>>>
> >>>> On 24.06.20 20:32, Christian Borntraeger wrote:
> >>>> [...]> 
> >>>>> So the translations look correct. But your change is actually a sematic change
> >>>>> if(ret) will only trigger if there is an error
> >>>>> if (KWIFEXITED(ret)) will always trigger when the process ends. So we will always overwrite -ECHILD
> >>>>> and we did not do it before. 
> >>>>>
> >>>>
> >>>> So the right fix is
> >>>>
> >>>> diff --git a/kernel/umh.c b/kernel/umh.c
> >>>> index f81e8698e36e..a3a3196e84d1 100644
> >>>> --- a/kernel/umh.c
> >>>> +++ b/kernel/umh.c
> >>>> @@ -154,7 +154,7 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
> >>>>                  * the real error code is already in sub_info->retval or
> >>>>                  * sub_info->retval is 0 anyway, so don't mess with it then.
> >>>>                  */
> >>>> -               if (KWIFEXITED(ret))
> >>>> +               if (KWEXITSTATUS(ret))
> >>>>                         sub_info->retval = KWEXITSTATUS(ret);
> 
> Well, it is not br_stp_call_user() but br_stp_start() which is expecting
> to set sub_info->retval for both KWIFEXITED() case and KWIFSIGNALED() case.
> That is, sub_info->retval needs to carry raw value (i.e. without "umh: fix
> processed error when UMH_WAIT_PROC is used" will be the correct behavior).

br_stp_start() doesn't check for the raw value, it just checks for err
or !err. So the patch, "umh: fix processed error when UMH_WAIT_PROC is
used" propagates the correct error now.

Christian, can you try removing the binary temporarily and seeing if
you get your bridge working?

  Luis
