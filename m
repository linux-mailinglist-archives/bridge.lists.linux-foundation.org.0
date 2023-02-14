Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC226957C0
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 05:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6471D40A91;
	Tue, 14 Feb 2023 04:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6471D40A91
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=W0QU6Meh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QE0AtqGKJEFX; Tue, 14 Feb 2023 04:11:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 09D65400D0;
	Tue, 14 Feb 2023 04:11:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09D65400D0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AAB39C0078;
	Tue, 14 Feb 2023 04:11:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74B5BC002B
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 04:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B16381DFE
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 04:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B16381DFE
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W0QU6Meh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5oJXAulsSdFe for <bridge@lists.linux-foundation.org>;
 Tue, 14 Feb 2023 04:11:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70CE081DFA
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 70CE081DFA
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 04:11:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 93F18B81B1F;
 Tue, 14 Feb 2023 04:11:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF508C433D2;
 Tue, 14 Feb 2023 04:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676347893;
 bh=llJZR7pK98/emAvHoO6xCRuI8lj7T3XJRXFwIvfYO9Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=W0QU6Meho9pQJ8b8exCiXRy6k20TLCCCZOT3xwU1SC/WBE2Dy8+ZNJz0EG0w3FvAr
 d/p71BdHJBcsl+V14RK0zxshK4SNWDjPM7SnA2C5c7XfFWOe5hKeoWyd8Qzua+Ui9+
 1fGH1WVRkOZ1K5uPR9fXyUBI9D4zyU+goEdGC35VYv52KT+kYNCklVav6JpVGsJUXU
 c6Xj0nd9/yqVgkkVgODVfcj0SGBwPOosODiy9rMM4VMdQRHfQJbvQIhcOClxfkpOY3
 ACkguakfAMrFsgqo+ijiyNbCHl9bLMVbMovPnaIH7oooT9VUaciW/dX4zL57aTeP1o
 iE82zjFxCJWng==
Date: Mon, 13 Feb 2023 20:11:31 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Thomas =?UTF-8?B?V2Vpw59zY2h1aA==?= <linux@weissschuh.net>
Message-ID: <20230213201131.7ed238f9@kernel.org>
In-Reply-To: <20230211-kobj_type-net-v1-0-e3bdaa5d8a78@weissschuh.net>
References: <20230211-kobj_type-net-v1-0-e3bdaa5d8a78@weissschuh.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Chuck Lever <chuck.lever@oracle.com>, Anna Schumaker <anna@kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Subject: Re: [Bridge] [PATCH 0/3] net: make kobj_type structures constant
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

On Sat, 11 Feb 2023 03:32:28 +0000 Thomas Wei=C3=9Fschuh wrote:
> Since commit ee6d3dd4ed48 ("driver core: make kobj_type constant.")
> the driver core allows the usage of const struct kobj_type.
>=20
> Take advantage of this to constify the structure definitions to prevent
> modification at runtime.

Could you resend just the first two with [PATCH net-next] in the
subject? Patch 3 needs to go to a different tree.
