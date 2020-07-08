Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 586BA22CCF1
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0CD0872C6;
	Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7DoG_t_mSJXn; Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6ECB9872A4;
	Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3DBAAC004F;
	Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 11A7CC016F
 for <bridge@lists.linux-foundation.org>; Wed,  8 Jul 2020 18:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F2BFE87AAA
 for <bridge@lists.linux-foundation.org>; Wed,  8 Jul 2020 18:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIPFUrGTKvQ8 for <bridge@lists.linux-foundation.org>;
 Wed,  8 Jul 2020 18:25:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D010787A80
 for <bridge@lists.linux-foundation.org>; Wed,  8 Jul 2020 18:25:06 +0000 (UTC)
Received: from embeddedor (unknown [201.162.240.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F4362078D;
 Wed,  8 Jul 2020 18:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594232706;
 bh=M9MY+fWX6+x29R7/l42mVKrvKcjn7f0nCowboASuXE8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bMhYtMoFpRSCBD1jPT24LCNWTQrQSw+82QgcYiQLI0gRA70YcJQT+Ju4VSHdQ0pLI
 FyLQwsk0fX///QKIxb5z1OCMSBawvXXEW2wcLBbF+Rw0LpmEDMbj/AH/vb0He6Q2Af
 LdZjwrsMDsGuqOniiyvSdo7GcDQayAzsr8JhGWn0=
Date: Wed, 8 Jul 2020 13:30:33 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Message-ID: <20200708183033.GG11533@embeddedor>
References: <20200707194717.GA3596@embeddedor> <20200708160931.GA14715@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200708160931.GA14715@salvia>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH][next] netfilter: nf_tables: Use fallthrough
 pseudo-keyword
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

On Wed, Jul 08, 2020 at 06:09:31PM +0200, Pablo Neira Ayuso wrote:
> On Tue, Jul 07, 2020 at 02:47:17PM -0500, Gustavo A. R. Silva wrote:
> > Replace the existing /* fall through */ comments and its variants with
> > the new pseudo-keyword macro fallthrough[1]. Also, remove unnecessary
> > fall-through markings when it is the case.
> 
> I suggest:
> 
>         netfilter: Use fallthrough pseudo-keyword
> 
> instead, since this is also updating iptables and ipset codebase.
> 

Yep; I noticed that, but forgot to change the subject before submitting
the patch.

I will address the rest of the comments and send v2, shortly.

Thanks
--
Gustavo

