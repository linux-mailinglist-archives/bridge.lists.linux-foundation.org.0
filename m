Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C2B763E11
	for <lists.bridge@lfdr.de>; Wed, 26 Jul 2023 20:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A67860EF9;
	Wed, 26 Jul 2023 18:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A67860EF9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Iln/whwi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NhcxnMLXSkDY; Wed, 26 Jul 2023 18:01:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id F12FC60EFE;
	Wed, 26 Jul 2023 18:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F12FC60EFE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 96955C0DD4;
	Wed, 26 Jul 2023 18:01:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16D0EC0032
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jul 2023 18:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E612D405CE
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jul 2023 18:01:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E612D405CE
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Iln/whwi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htHDfM2y_dTo for <bridge@lists.linux-foundation.org>;
 Wed, 26 Jul 2023 18:01:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 862EF405D8
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jul 2023 18:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 862EF405D8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mOs0FbEX7U/JftVf/7w+izAt0GEtfD+who6ul2jmL1A=; b=Iln/whwi3yb0OCDfnbyBjMdx+m
 juFI59CritCNSyW6F5D0XpHC0iscqFmdZ00//lCiuYir0a6u4x+Trb0fDiT1I8lWJsP6oU29GK/FQ
 HnfImdfWz3d/FFVFAVn2c5NvOhMlPOV/jQ9Gw7gF/R+QQhgAxkPBg30gZGpfWe9e6F1g3T860ToDU
 3b3igthrZTDls6/w68U1gJwMhAvJIATJevMX85S2LJO5gw+sF1p7LDa7daV4DC/GaXuMpeYo9ezaB
 YVbkS848bTHFzserKKNJffxnqBuL9rIXky9EaSjRDnBy0AFCo9mO69kFKWdY6Q9jqUcRgtsOlJyZn
 kzcXs81A==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1qOip5-00BERo-0b; Wed, 26 Jul 2023 18:01:19 +0000
Date: Wed, 26 Jul 2023 11:01:19 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Joel Granados <j.granados@samsung.com>
Message-ID: <ZMFfb4bJ6neACe5X@bombadil.infradead.org>
References: <20230726140635.2059334-1-j.granados@samsung.com>
 <CGME20230726140706eucas1p1b11e5f0bd17f0de19af9608cbd8d17f3@eucas1p1.samsung.com>
 <20230726140635.2059334-11-j.granados@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726140635.2059334-11-j.granados@samsung.com>
Cc: coreteam@netfilter.org, keescook@chromium.org, josh@joshtriplett.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Florian Westphal <fw@strlen.de>,
 Julian Anastasov <ja@ssi.bg>, willy@infradead.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, lvs-devel@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Simon Horman <horms@verge.net.au>, netfilter-devel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH 10/14] netfilter: Update to
	register_net_sysctl_sz
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

On Wed, Jul 26, 2023 at 04:06:30PM +0200, Joel Granados wrote:
> This is part of the effort to remove the sentinel (last empty) element
> from the ctl_table arrays. We update to the new function and pass it the
> array size. Care is taken to mirror the NULL assignments with a size of
> zero (for the unprivileged users)

Same in this commit, the "why" is missing and size impact, if any.

  Luis
