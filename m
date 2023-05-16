Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B83707B92
	for <lists.bridge@lfdr.de>; Thu, 18 May 2023 10:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 881B4405A8;
	Thu, 18 May 2023 08:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 881B4405A8
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=LDkJ7udF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7pPGHswg2tP; Thu, 18 May 2023 08:02:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B4C2B401A4;
	Thu, 18 May 2023 08:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4C2B401A4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4BA59C009B;
	Thu, 18 May 2023 08:02:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E3D9C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60870405F1
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60870405F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j4Q4Q1v9ZR1i for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 08:35:20 +0000 (UTC)
X-Greylist: delayed 00:08:06 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 522004018F
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::119])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 522004018F
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:35:20 +0000 (UTC)
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 16 May 2023 10:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1684225630; bh=Tyjh52SJUtEZHmo/Wzy9QwV/tPNvfbDEEm6u+11MU2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LDkJ7udFpSJqnmgyawPTu++RK58Dl96gSGRBixHmhsVKfvnHypuCY49oKafaf9wBR
 0O7JcG68AGzGJRBtNNQJMp9ztVtukmHHInGGSqNszId8LOWAHNevaI+d7ma03tfuYt
 TDPTnk4Z8vP3CKhzMEhaqzsgJc/1V7twHeObB59k=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 5065F8210B;
 Tue, 16 May 2023 10:27:10 +0200 (CEST)
Date: Tue, 16 May 2023 10:27:10 +0200
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <ZGM-Xv8sRmeePiGL@u-jnixdorf.ads.avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <20230515085046.4457-2-jnixdorf-oss@avm.de>
 <20230515085627.5897dab1@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515085627.5897dab1@hermes.local>
X-purgate-ID: 149429::1684225630-BC4657B1-D066D2A4/0/0
X-purgate-type: clean
X-purgate-size: 1286
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Thu, 18 May 2023 08:02:25 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 2/2] bridge: Add a sysctl to limit new
 brides FDB entries
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, May 15, 2023 at 08:56:27AM -0700, Stephen Hemminger wrote:
> On Mon, 15 May 2023 10:50:46 +0200
> Johannes Nixdorf <jnixdorf-oss@avm.de> wrote:
> 
> > +static struct ctl_table br_sysctl_table[] = {
> > +	{
> > +		.procname     = "bridge-fdb-max-entries-default",
> 
> 
> That name is too long.
> 
> Also, all the rest of bridge code does not use sysctl's.

The code in net/bridge/br_netfilter_hooks.c also uses sysctls, which is
where I took inspiration for the approach for setting them up, and also
the naming scheme.

> Why is this special and why should the property be global and not per bridge?

As explained in the commit message and [1] it is a global default
setting. It makes no sense to make it per bridge, as there is already
a per bridge netlink setting that overrides it. The only alternative
option is to not have it at all, which is what I will be going to do
with a v2.

> NAK

Fair enough. I took it out in my pending-v2-state of the series, but
would welcome some input on whether you see any value in the proposed
alternatives in [1], or are strictly against having a global default !=
0 here at all.

[1]: https://lore.kernel.org/netdev/20230515085046.4457-1-jnixdorf-oss@avm.de/T/#ma4145398516bfd39dfa09976b7892f5fdb76f8c0
