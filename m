Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AB922CCEA
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9EA188DAE;
	Fri, 24 Jul 2020 18:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBuZp5uYJ3rh; Fri, 24 Jul 2020 18:21:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43B2D88DF2;
	Fri, 24 Jul 2020 18:21:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 269A7C004C;
	Fri, 24 Jul 2020 18:21:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2691C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 16:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 798C81FE49
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 16:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zK0KKV9Woyu5 for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 16:09:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5830B1FEF0
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 16:09:56 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t6so1645191pgq.1
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 09:09:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DXTGnqae9YKhKIamwag0tCEqKTyhK0PYwMd2k+8bi0o=;
 b=KwXPriQCLSkBrFlXIi+iTLPrKPVCx/lcIfeXB9VGIVnkjyFbxqeANrYqm2HnK1rGdr
 Ar9UXSnHZ8DmbAgBUkxINB/A+sU/1gbDshLjl0oxPk56Sh/WSP58fTvB0w+2FOYddveO
 IBEsoMuRBbYyvqYWW/3peJ2tLy17DECZrDfMdnDcOOu/4Tdyl9MLRNqqExTs0EXnzFj1
 lpzp5ETSoJ8niyGIqE+xFXV1v1jjEMrWto8pOjpxZ/MeCP3rFN3lmRzI3W1NyhjtXiW6
 ciX5I+PtXOw/LkEHMGNZgaMixjnKc9Z2BQjZkpC1bJbJvNXkRT4TxkJNbT2e3xXFDpwl
 fpmQ==
X-Gm-Message-State: AOAM531JNDTGr0agZfzY6gVInkhTOiC5AWBCA6mor03kXwmLZyJlzNNK
 U3hJZ0UxPPC42FWWIroCFiY=
X-Google-Smtp-Source: ABdhPJz7KuHyVq6mrCHaNrsdJ4rdxo9vvtDFtAlwtCcIngaCRJg5DVLieAPvLLlWDXOb7tRXxvQHXg==
X-Received: by 2002:a62:7c49:: with SMTP id x70mr28351238pfc.66.1593014995813; 
 Wed, 24 Jun 2020 09:09:55 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id q129sm19485373pfc.60.2020.06.24.09.09.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 09:09:54 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 64A8A40430; Wed, 24 Jun 2020 16:09:53 +0000 (UTC)
Date: Wed, 24 Jun 2020 16:09:53 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200624160953.GH4332@42.do-not-panic.com>
References: <20200610154923.27510-5-mcgrof@kernel.org>
 <20200623141157.5409-1-borntraeger@de.ibm.com>
 <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
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

On Wed, Jun 24, 2020 at 05:54:46PM +0200, Christian Borntraeger wrote:
> 
> 
> On 24.06.20 16:43, Christoph Hellwig wrote:
> > On Wed, Jun 24, 2020 at 01:11:54PM +0200, Christian Borntraeger wrote:
> >> Does anyone have an idea why "umh: fix processed error when UMH_WAIT_PROC is used" breaks the
> >> linux-bridge on s390?
> > 
> > Are we even sure this is s390 specific and doesn't happen on other
> > architectures with the same bridge setup?
> 
> Fair point. AFAIK nobody has tested this yet on x86.

Regardless, can you enable dynamic debug prints, to see if the kernel
reveals anything on the bridge code which may be relevant:

echo "file net/bridge/* +p" > /sys/kernel/debug/dynamic_debug/control

  Luis
