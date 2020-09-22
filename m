Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB8A2747C0
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 19:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F042C861E7;
	Tue, 22 Sep 2020 17:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AEPY3nPFMKjO; Tue, 22 Sep 2020 17:51:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 690F786074;
	Tue, 22 Sep 2020 17:51:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52110C0893;
	Tue, 22 Sep 2020 17:51:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17149C0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 17:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 048C2203D0
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 17:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WihUV7jlkgZ0 for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 17:51:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by silver.osuosl.org (Postfix) with ESMTPS id 0178F203C4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 17:51:24 +0000 (UTC)
Date: Tue, 22 Sep 2020 19:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1600797081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zCM5VxHkCIoBQeDJlIyw4juC1TJgd0X5qSumEOZ5cdQ=;
 b=ipbW8ktr8x318xBdJvWFr4qPkL452gpIHsDdF3J32VjU7bTntUOieHxevcgOR+BvdjaCl6
 nO8NG59iip3n7eGDrLawIxbFoX0IBFfi11wbkClVA7vl1hn5pCwnp94dk2P8sMhfV8ePM9
 sp+Lu+eW+NEns8yJOA6ZEqAuMvfBxajboF2g9HWuDJ+8CP2Gpkh9p6ioC1hHKloRBHoOu9
 7zYbsY8OcfNgLjED8MjndpiscdZRtlIHY1qKXYD4frwq6epkS/0AH3LvCDdWrrDI1GLlye
 iagt4ajRj8F0cPxPsVp/Pw6zIPkYb/lVrsiqaQeSoOYrDCGO9c+Hz8UgpoQ/Fg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Message-ID: <20200922175119.GA10212@otheros>
References: <20200922073027.1196992-1-razor@blackwall.org>
 <20200922073027.1196992-7-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200922073027.1196992-7-razor@blackwall.org>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Cc: Marek Lindner <mareklindner@neomailbox.ch>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Antonio Quartulli <a@unstable.cc>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 06/16] net: bridge: mcast: rename
 br_ip's u member to dst
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

On Tue, Sep 22, 2020 at 10:30:17AM +0300, Nikolay Aleksandrov wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Since now we have src in br_ip, u no longer makes sense so rename
> it to dst. No functional changes.
> 
> v2: fix build with CONFIG_BATMAN_ADV_MCAST

Hi Nikolay,

I don't see a "src" in br_ip in net-next/master at the moment. Or
is that supposed to be added with your IGMPv3 implementation in
the future?

(which btw. is awesome, really looking forward to full IGMPv3(+MLDv2)
support, as source-specific-multicast would allow us to implement
some neat, way more efficient algorithms than with any-source-multicast
for multicast in batman-adv in the future, too)

Regards, Linus
