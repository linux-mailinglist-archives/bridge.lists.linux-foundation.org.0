Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0149622CCF3
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB10388AAB;
	Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3RZU5OsM6cb; Fri, 24 Jul 2020 18:21:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A690187EA6;
	Fri, 24 Jul 2020 18:21:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 87DEEC004E;
	Fri, 24 Jul 2020 18:21:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD6B0C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 14:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CAAD4896C2
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 14:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaI5Omz0HvHH for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 14:43:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A322896C1
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 14:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MmxB8m2YTQX4GpqX+DS37OeRO131e4ndrA9Pl7MwAgc=; b=IOKw7hTcqP1QeelKxku2fGErUp
 y+gPHThYulPLcw9ZipHA3WEiY0WwtrldwMIjz3I7xFlS4UrXh0IrgE+Nr+g3IVn/C5NubV4TtA66n
 mLCdiZe84XJ5gE3144uUmasV1evosCnueCmLRk8e5igFHS/jiN+zd4BOILHYYRSu5tnwTTHYczGNM
 1jNp5/TmBH3r+Cd233b/d63zVr4Nez7dPM6LjZYPehQuohr79GeKnvEyrBvDcVSHQMeCupwKnSb4b
 k2SF0UgTWsWjSf1WxnC6wYcLs8KKkTGGpdaa+3jajs+y6awdDlv2/jH3uD+C53erVvC46axMeuEel
 iaiP6SWQ==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jo6cJ-0001Xw-5j; Wed, 24 Jun 2020 14:43:11 +0000
Date: Wed, 24 Jun 2020 15:43:11 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200624144311.GA5839@infradead.org>
References: <20200610154923.27510-5-mcgrof@kernel.org>
 <20200623141157.5409-1-borntraeger@de.ibm.com>
 <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 dhowells@redhat.com, keyrings@vger.kernel.org, mcgrof@kernel.org,
 christian.brauner@ubuntu.com, yangtiezhu@loongson.cn,
 linux-s390 <linux-s390@vger.kernel.org>, bridge@lists.linux-foundation.org,
 jmorris@namei.org, kuba@kernel.org, serge@hallyn.com, keescook@chromium.org,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com, josh@joshtriplett.org,
 slyfox@gentoo.org, viro@zeniv.linux.org.uk, axboe@kernel.dk,
 bfields@fieldses.org, linux-nfs@vger.kernel.org, chainsaw@gentoo.org,
 ravenexp@gmail.com, gregkh@linuxfoundation.org, markward@linux.ibm.com,
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

On Wed, Jun 24, 2020 at 01:11:54PM +0200, Christian Borntraeger wrote:
> Does anyone have an idea why "umh: fix processed error when UMH_WAIT_PROC is used" breaks the
> linux-bridge on s390?

Are we even sure this is s390 specific and doesn't happen on other
architectures with the same bridge setup?
