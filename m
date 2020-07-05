Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F628214ECB
	for <lists.bridge@lfdr.de>; Sun,  5 Jul 2020 21:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2BA8227AA;
	Sun,  5 Jul 2020 19:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BSFzpajqqjsE; Sun,  5 Jul 2020 19:09:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 1B679226F5;
	Sun,  5 Jul 2020 19:09:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EDC61C016F;
	Sun,  5 Jul 2020 19:08:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9B80C016F
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB399864EF
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXE_0dYn2tWu for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jul 2020 19:08:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6D4685D6C
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:08:55 +0000 (UTC)
Date: Sun, 5 Jul 2020 21:08:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1593976134;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8dlf83gnJimOcGLge0RE4YQ95UNZUa/xyinaF6hcyXc=;
 b=ScLBZ4iErn0Ka4U7KqaaDg1VueVrFtp84H2/aG3f0uGS28X0BYcFs15LJj7RPuLZaanzu0
 NdXnXkh+VwdYK3b8AMcCnswepuR+sCmZnuQ8F4RMio3BBUsaBTYDqmxzqSu9lqry/rohjL
 08AOQ10u1m45BPMcYdksNeTDAsBoEJjaY1czMLt+ybLjZp69Ux11tlhrJqsFvvlC3eqSiK
 WXed3+Xo69XCNYJrlZNFWc+1ciwJJUmLRmcm/dfW+UgLdo0T/Js1ByFx/irHtd9h31Oy+E
 Gt3ncm95HdhnC6w6HF5Up+nQANTiVneEN5G5FX+wVE/advm6FZqpJaNv4knCfw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200705190851.GC2648@otheros>
References: <20200705182234.10257-1-linus.luessing@c0d3.blue>
 <093beb97-87e8-e112-78ad-b3e4fe230cdb@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <093beb97-87e8-e112-78ad-b3e4fe230cdb@cumulusnetworks.com>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Cc: Martin Weinelt <martin@linuxlounge.net>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] bridge: mcast: Fix MLD2 Report IPv6
 payload length check
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

On Sun, Jul 05, 2020 at 09:33:13PM +0300, Nikolay Aleksandrov wrote:
> On 05/07/2020 21:22, Linus Lüssing wrote:
> > Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
> > igmp3/mld2 report handling") introduced a small bug which would potentially
> > lead to accepting an MLD2 Report with a broken IPv6 header payload length
> > field.
> > 
> > The check needs to take into account the 2 bytes for the "Number of
> > Sources" field in the "Multicast Address Record" before reading it.
> > And not the size of a pointer to this field.
> > 
> > Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling")
> > Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
> > ---
> >  net/bridge/br_multicast.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> 
> I'd rather be more concerned with it rejecting a valid report due to wrong size. The ptr
> size would always be bigger. :)
> 
> Thanks!
> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Aiy, you're right, it's the other way round. I'll update the
commit message and send a v2 in a minute, with your Acked-by
included.
