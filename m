Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D7622CCF0
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48C03872B2;
	Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Go4H7_Io2iX7; Fri, 24 Jul 2020 18:21:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57E50872A4;
	Fri, 24 Jul 2020 18:21:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B264C004C;
	Fri, 24 Jul 2020 18:21:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FDE5C0733
 for <bridge@lists.linux-foundation.org>; Fri,  3 Jul 2020 13:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E0DC88BCD
 for <bridge@lists.linux-foundation.org>; Fri,  3 Jul 2020 13:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yC4cwhlTchyM for <bridge@lists.linux-foundation.org>;
 Fri,  3 Jul 2020 13:28:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1119288BB4
 for <bridge@lists.linux-foundation.org>; Fri,  3 Jul 2020 13:28:53 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id b92so14031388pjc.4
 for <bridge@lists.linux-foundation.org>; Fri, 03 Jul 2020 06:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nZixvdmK63kTxJGVp6SPuFsnYljJqU7VXv2wxF9MXFA=;
 b=k5tjntTokWY72OJTof16+Ql5fAMjxfd/kwG3EUhJ85N0I8CZk4vBFejwpx9SUcYEKG
 Dq/M4BOBaoiRIyhvMJbjV1ss8KWz9fnVSIIDtmce0Phtzm4DPo8PaPmGWGUbGPTHB5uJ
 N/pNPeZJtcmq8VPeAW8EDQQhpZ3Qp4AOBBJX81hAlZcfteZcLqVhn5NW0vW4/nOD1hCs
 UQ3RhSX74zjl3wPr6m8Eazm4E2gplC1QFej5t0cnKPGiMDU63xY3MoiIo903NSUMQ5t4
 RtUhWPpUeFZizgpVfhjD7J/I0yT4X5/BL4DNZ4ekeKWUWiybHYusRuSZ1MkrHKpvcKme
 Bb+g==
X-Gm-Message-State: AOAM5304ErdJLUYx4Rh2QxJP4/t9lGM7XXmq7NhEBJc4oqYfekK+T9Ex
 tA1Ens1QXWMbeKdws7Gm6JM=
X-Google-Smtp-Source: ABdhPJx7Zgvv1Ln8YT3HW6KzNg/0D212spMjLCprFe2ez6VGItOK7VCNoHYcRalmweCVJasHt2okLw==
X-Received: by 2002:a17:90a:3223:: with SMTP id
 k32mr38367135pjb.121.1593782932606; 
 Fri, 03 Jul 2020 06:28:52 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 125sm11298479pff.130.2020.07.03.06.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 06:28:51 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 5569C40945; Fri,  3 Jul 2020 13:28:50 +0000 (UTC)
Date: Fri, 3 Jul 2020 13:28:50 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20200703132850.GW4332@42.do-not-panic.com>
References: <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
 <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
 <20200701153859.GT4332@42.do-not-panic.com>
 <e3f3e501-2cb7-b683-4b85-2002b7603244@i-love.sakura.ne.jp>
 <20200702194656.GV4332@42.do-not-panic.com>
 <d8a74a06-de97-54ae-de03-0d955e82f62b@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8a74a06-de97-54ae-de03-0d955e82f62b@i-love.sakura.ne.jp>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 David Howells <dhowells@redhat.com>, keyrings@vger.kernel.org,
 christian.brauner@ubuntu.com, yangtiezhu@loongson.cn,
 linux-s390 <linux-s390@vger.kernel.org>, bridge@lists.linux-foundation.org,
 jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, bfields@fieldses.org,
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

On Fri, Jul 03, 2020 at 09:52:01AM +0900, Tetsuo Handa wrote:
> On 2020/07/03 4:46, Luis Chamberlain wrote:
> > The alternative to making a compromise is using generic wrappers for
> > things which make sense and letting the callers use those.
> 
> I suggest just introducing KWIFEXITED()/KWEXITSTATUS()/KWIFSIGNALED()/KWTERMSIG()
> macros and fixing the callers, for some callers are not aware of possibility of
> KWIFSIGNALED() case.

OK so we open code all uses. Do that in a next iteration.

  Luis

