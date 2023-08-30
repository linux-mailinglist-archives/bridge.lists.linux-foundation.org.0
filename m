Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2F77970BA
	for <lists.bridge@lfdr.de>; Thu,  7 Sep 2023 10:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD0B48224B;
	Thu,  7 Sep 2023 08:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD0B48224B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ADgZbQku
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vDLkFfJkWFaT; Thu,  7 Sep 2023 08:23:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 00E07821E8;
	Thu,  7 Sep 2023 08:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00E07821E8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0DC2C008D;
	Thu,  7 Sep 2023 08:23:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 43491C0032
 for <bridge@lists.linux-foundation.org>; Wed, 30 Aug 2023 03:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1749B82154
 for <bridge@lists.linux-foundation.org>; Wed, 30 Aug 2023 03:58:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1749B82154
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HvtHjOGzjlOb for <bridge@lists.linux-foundation.org>;
 Wed, 30 Aug 2023 03:58:09 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 564608148F
 for <bridge@lists.linux-foundation.org>; Wed, 30 Aug 2023 03:58:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 564608148F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2DC856226F;
 Wed, 30 Aug 2023 03:58:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F31C433C8;
 Wed, 30 Aug 2023 03:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693367887;
 bh=mPKk2+swFtGFWy8pTYH1vfYUh7/3u0eFDl38x3vBbbc=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=ADgZbQkup9SM4uuEjVXPl0kZb5qU5cRxcBUYIV68ssaOHHCZrS2+ntwfLz0HT21Ih
 e386cEZAZNnNJznyld2KJf/v8fe7MjFSYHeqn2jCi/au5X8+GFJAJs2UqaMkjl13Pt
 tBWufYtEAuzWRPX8V1l2CtngKltT6f7/s0ANkfkNNyVfix0L9B91QYMTHLJdOVoFVq
 IlamCyGNhuWsTR9+yFkPDS5wrnr9z9xFHderl/6D+AsGosodrxgWcJDG1GU30wgN9F
 bxisMSAemfMVycuM7wn1I11u7D6rtj9+5B2G88KHjzTBzjQzbN1UyndsBWNsRv7wH+
 v1R8ONmU6MaSg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6A11CE29F34; Wed, 30 Aug 2023 03:58:07 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZO5Yx5JFogGi/cBo@bombadil.infradead.org>
References: <ZO5Yx5JFogGi/cBo@bombadil.infradead.org>
X-PR-Tracked-List-Id: <linux-s390.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZO5Yx5JFogGi/cBo@bombadil.infradead.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux.git/
 tags/sysctl-6.6-rc1
X-PR-Tracked-Commit-Id: 53f3811dfd5e39507ee3aaea1be09aabce8f9c98
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: adfd671676c922bada16477eb68b5eb5f065addc
Message-Id: <169336788741.6268.886734446514047714.pr-tracker-bot@kernel.org>
Date: Wed, 30 Aug 2023 03:58:07 +0000
To: Luis Chamberlain <mcgrof@kernel.org>
X-Mailman-Approved-At: Thu, 07 Sep 2023 08:23:15 +0000
Cc: Joel Granados <j.granados@samsung.com>,
	Alexander Aring <alex.aring@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	coreteam@netfilte.lists.linuxfoundation.org,
	Nikolay Aleksandrov <razor@blackwall.org>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
	linux-sctp@vger.kernel.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Jan Karcher <jaka@linux.ibm.com>,
	Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
	Alexander Gordeev <agordeev@linux.ibm.com>,
	Stefan Schmidt <stefan@datenfreihafen.org>,
	Steffen Klassert <steffen.klassert@secunet.com>,
	linux-s390@vger.kernel.org, rds-devel@oss.oracle.com,
	Xin Long <lucien.xin@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
	Tony Lu <tonylu@linux.alibaba.com>,
	bridge@lists.linux-foundation.org, willy@infradead.org,
	Jozsef Kadlecsik <kadlec@netfilter.org>, lvs-devel@vger.kernel.org,
	Julian Anastasov <ja@ssi.bg>, Iurii Zaikin <yzaikin@google.com>,
	r.org@osuosl.org, Wen Gu <guwen@linux.alibaba.com>,
	Christian Borntraeger <borntraeger@linux.ibm.com>,
	Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
	Joel Granados <joel.granados@gmail.com>, keescook@chromium.org,
	Vasily Gorbik <gor@linux.ibm.com>,
	Heiko Carstens <hca@linux.ibm.com>, Roopa Prabhu <roopa@nvidia.com>,
	josh@joshtriplett.org, Wenjia Zhang <wenjia@linux.ibm.com>,
	Simon Horman <horms@verge.net.au>, Jakub Kicinski <kuba@kernel.org>,
	linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Santosh Shilimkar <santosh.shilimkar@oracle.com>,
	Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
	linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
	Karsten Graul <kgraul@linux.ibm.com>, mcgrof@kernel.org,
	netfilter-devel@vger.kernel.org,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	"D. Wythe" <alibuda@linux.alibaba.com>, netdev@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	Matthieu Baerts <matthieu.baerts@tessares.net>,
	linux-wpan@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [GIT PULL] sysctl changes for v6.6-rc1
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

The pull request you sent on Tue, 29 Aug 2023 13:44:55 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux.git/ tags/sysctl-6.6-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/adfd671676c922bada16477eb68b5eb5f065addc

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
