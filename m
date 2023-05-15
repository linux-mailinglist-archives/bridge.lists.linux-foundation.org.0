Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1043707B91
	for <lists.bridge@lfdr.de>; Thu, 18 May 2023 10:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBB9942841;
	Thu, 18 May 2023 08:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBB9942841
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=oK3ZKzYc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-k2OOfCLR2d; Thu, 18 May 2023 08:02:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4F89141EBA;
	Thu, 18 May 2023 08:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F89141EBA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2836C0094;
	Thu, 18 May 2023 08:02:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3E24DC002A
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 11:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 039ED83BF8
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 11:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 039ED83BF8
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=oK3ZKzYc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JvZexKMJzjPO for <bridge@lists.linux-foundation.org>;
 Mon, 15 May 2023 11:27:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43AED8195C
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::94])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43AED8195C
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 11:27:08 +0000 (UTC)
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Mon, 15 May 2023 13:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1684150024; bh=bcONLAH6knXEHrJvGB7J70yRBg1clKW8Wz9ykyvwfy8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oK3ZKzYcmUluEMqNNca2Kz/Ij2k2eig4BbmFqsmj+13HW3/R97ahsKogkAmpLDz3n
 AcM4x4WRdHofipIAN/j2LwMEamGTDiMC24lOotXmEVChJ1fkJ4J9SgqgylFGYE6F6l
 LJlbkZLSDogGewrnt0mlQGufbLecprRxc1i8tK90=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id D5C1382176;
 Mon, 15 May 2023 13:27:03 +0200 (CEST)
Date: Mon, 15 May 2023 13:27:03 +0200
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZGIXB2DYA4sal9eW@u-jnixdorf.ads.avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <20230515085046.4457-2-jnixdorf-oss@avm.de>
 <dc8dfe0b-cf22-c4f9-8532-87643a6a9ceb@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc8dfe0b-cf22-c4f9-8532-87643a6a9ceb@blackwall.org>
X-purgate-ID: 149429::1684150024-E743984B-2F0A3B9E/0/0
X-purgate-type: clean
X-purgate-size: 1831
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Thu, 18 May 2023 08:02:25 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
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

On Mon, May 15, 2023 at 12:35:47PM +0300, Nikolay Aleksandrov wrote:
> On 15/05/2023 11:50, Johannes Nixdorf wrote:
> > This is a convenience setting, which allows the administrator to limit
> > the default limit of FDB entries for all created bridges, instead of
> > having to set it for each created bridge using the netlink property.
> > 
> > The setting is network namespace local, and defaults to 0, which means
> > unlimited, for backwards compatibility reasons.
> > 
> > Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> > ---
> >  net/bridge/br.c         | 83 +++++++++++++++++++++++++++++++++++++++++
> >  net/bridge/br_device.c  |  4 +-
> >  net/bridge/br_private.h |  9 +++++
> >  3 files changed, 95 insertions(+), 1 deletion(-)
> > 
> 
> The bridge doesn't need private sysctls. Netlink is enough.
> Nacked-by: Nikolay Aleksandrov <razor@blackwall.org>

Fair enough.

I originally included the setting so there is a global setting an
administrator could toggle instead of having to hunt down each process
that might create a bridge, and teaching them to create them with an
FDB limit.

Does any of the following alternatives sound acceptable to you?:
 - Having the default limit (instead of the proposed default to unlimited)
   configurable in Kbuild. This would solve our problem, as we build
   our kernels ourselves, but I don't know whether putting a limit there
   would be acceptable for e.g. distributions.
 - Hardcoding a default limit != 0. I was afraid I'd break someones
   use-case with far too large bridged networks if I don't default to
   unlimited, but if you maintainers have a number in mind with which
   you don't see a problem, I'd be fine with it as well.

(Sorry for sending this mail twice, I accidentally dropped the list and
CC on the fist try)
