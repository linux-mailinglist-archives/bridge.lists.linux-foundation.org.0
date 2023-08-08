Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6004773736
	for <lists.bridge@lfdr.de>; Tue,  8 Aug 2023 05:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B8D981EF4;
	Tue,  8 Aug 2023 03:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B8D981EF4
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tUST17gL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTO1Ar5Lhn02; Tue,  8 Aug 2023 03:01:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C161181EFA;
	Tue,  8 Aug 2023 03:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C161181EFA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D0B2C008D;
	Tue,  8 Aug 2023 03:01:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EAC6CC0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 03:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B782860E35
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 03:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B782860E35
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tUST17gL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ljp3bvhENUi5 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Aug 2023 03:01:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06BC660E02
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 03:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06BC660E02
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=awhihqdhuWHeoYd3N+GeqIh75MDzai4L3hYXPN/a5fs=; b=tUST17gLJ8xZ0XM9L8/HrXEzU6
 tZMGClzY4pZ/RImt/bnbB/JZcOjtt5PmKLr+dRTMvmYeQEcUBooY2DNhz58NUerVaQqDC015TRyjc
 g1IssTuWVGi/DL9wssEj8dLTlcAJscsVmNWS5BVgJhme/xZGO0m8ySRFoRMNYJTG4Xl7MxTjTGp7C
 ZalLCKJuEZWuvODxF3D9hPb9kAHImXekJu/C7Hsr+LVqEdAUuRP99EiAC4ltf/mLdEYZHlbcagzl2
 JAzO8s3ORZZCLfmIi6xHnozbVOvMIBfDJ4vQwyENOCQFObn49Nzg3oOA/pzlUucU/MFJhjPm93T0s
 D1w47+5g==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1qTCxh-001bG0-1K; Tue, 08 Aug 2023 03:00:45 +0000
Date: Mon, 7 Aug 2023 20:00:45 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Chris Maness <christopher.maness@gmail.com>
Message-ID: <ZNGv3Q5VBsS2/w4e@bombadil.infradead.org>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <ZMgpck0rjqHR74sl@bombadil.infradead.org>
 <ZNFlqwwvE6w6HyHl@bombadil.infradead.org>
 <CANnsUMG3WO_19GpnsNaXPqu6eEnpBvYUpkrf1QbHwsc9wEoCZQ@mail.gmail.com>
 <ZNGBrkP7J2g/BAWV@bombadil.infradead.org>
 <CANnsUMGRBnatKB4-3eYjb5aG7YnXDiZG6cjuwSgtjvVF6ErJNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANnsUMGRBnatKB4-3eYjb5aG7YnXDiZG6cjuwSgtjvVF6ErJNg@mail.gmail.com>
Cc: Joel Granados <j.granados@samsung.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 netfilter-devel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Paolo Abeni <pabeni@redhat.com>,
 Jan Karcher <jaka@linux.ibm.com>, Mat Martineau <martineau@kernel.org>,
 Tony Lu <tonylu@linux.alibaba.com>, Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Will Deacon <will@kernel.org>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Iurii Zaikin <yzaikin@google.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 Joel Granados <joel.granados@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, linux-sctp@vger.kernel.org,
 Wen Gu <guwen@linux.alibaba.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 Karsten Graul <kgraul@linux.ibm.com>
Subject: Re: [Bridge] [PATCH v2 00/14] sysctl: Add a size argument to
 register functions in sysctl
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

On Mon, Aug 07, 2023 at 07:50:44PM -0700, Chris Maness wrote:
> I tried running the current mainline kernel (current Arch Linux) with
> simple single MUX socket (ax0) using LinFBB.  I was a happy camper as
> it seemed to work fine at first, then the system just slowed to a
> crawl.  I am wondering if any of these patches are addressing this
> behavior.

If its a regressio no.

> No kernel panic like before, but not what I was hoping for.
> I have also tried sixpack, and that explodes instantly the last time I
> have checked.   That goes all the way back to the v4 kernels. 

Are you reporting a separate regression that goes all the way back to v4 kernels?

> v2 is fine there.

What does this mean?

  Luis
