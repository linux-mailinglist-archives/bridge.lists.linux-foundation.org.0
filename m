Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BB922CD00
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8EBFF884EF;
	Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nru0Z8d4NT0X; Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF73A8915B;
	Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B8E12C004C;
	Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D4630C016F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 09:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C368186C3E
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 09:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id REtuE4Gsxjp2 for <bridge@lists.linux-foundation.org>;
 Fri, 26 Jun 2020 09:00:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D812C8698F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 09:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PW5Ju7i2z/xdb7PaCVtfmKC/YY2ETFHvsdEj0WQnO9U=; b=H0t9tcKO/oe2xP19f0tqZ2btQ2
 JydK0qH+x4SGaETRrERKdMOpP621gT0V3kPnsFp86jSzNYd24TuXWryuHydxSYYaOE1tFaSz7xDmh
 rftH0TCYRw7oTvAnQAZT3kQwbGv6xjkmFVSUfAu3Vedud733FNTz/Yp3HW0Fl2W6H/0VE0DEckB9s
 fvQjjc574P7/dfEj2sLldqMG5TzexTqTAAkV7qWphtWgkzgmQTX3sSJy0UOTFW6iYfKnOZAY061Mp
 GXVh1/UHj5bzI6Yit0MKd/wtbdVF+8i0N5bVT6NPR3SUUiA39SuWJMG9gkiKlUm76y44fglbXvRzT
 sftdo1RQ==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jokDJ-0008JE-71; Fri, 26 Jun 2020 09:00:01 +0000
Date: Fri, 26 Jun 2020 10:00:01 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200626090001.GA30103@infradead.org>
References: <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <feb6a8c4-2b94-3f95-6637-679e089a71ca@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <feb6a8c4-2b94-3f95-6637-679e089a71ca@de.ibm.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-security-module@vger.kernel.org,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>, kuba@kernel.org, serge@hallyn.com,
 keescook@chromium.org, linux-s390 <linux-s390@vger.kernel.org>,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com, josh@joshtriplett.org,
 slyfox@gentoo.org, viro@zeniv.linux.org.uk, axboe@kernel.dk,
 dhowells@redhat.com, linux-nfs@vger.kernel.org, chainsaw@gentoo.org,
 ravenexp@gmail.com, gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
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

On Fri, Jun 26, 2020 at 07:22:34AM +0200, Christian Borntraeger wrote:
> 
> 
> On 26.06.20 04:54, Luis Chamberlain wrote:
> > On Wed, Jun 24, 2020 at 08:37:55PM +0200, Christian Borntraeger wrote:
> >>
> >>
> >> On 24.06.20 20:32, Christian Borntraeger wrote:
> >> [...]> 
> >>> So the translations look correct. But your change is actually a sematic change
> >>> if(ret) will only trigger if there is an error
> >>> if (KWIFEXITED(ret)) will always trigger when the process ends. So we will always overwrite -ECHILD
> >>> and we did not do it before. 
> >>>
> >>
> >> So the right fix is
> >>
> >> diff --git a/kernel/umh.c b/kernel/umh.c
> >> index f81e8698e36e..a3a3196e84d1 100644
> >> --- a/kernel/umh.c
> >> +++ b/kernel/umh.c
> >> @@ -154,7 +154,7 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
> >>                  * the real error code is already in sub_info->retval or
> >>                  * sub_info->retval is 0 anyway, so don't mess with it then.
> >>                  */
> >> -               if (KWIFEXITED(ret))
> >> +               if (KWEXITSTATUS(ret))
> >>                         sub_info->retval = KWEXITSTATUS(ret);
> >>         }
> >>  
> >> I think.
> > 
> > Nope, the right form is to check for WIFEXITED() before using WEXITSTATUS().
> 
> But this IS a change over the previous code, no?
> I will test next week as I am travelling right now. 

I'm all for reverting back to the previous behavior.  If someone wants
a behavior change it should be a separate patch.  And out of pure self
interest I'd like to see that change after my addition of the
kernel_wait helper to replace the kernel_wait4 abuse :)
