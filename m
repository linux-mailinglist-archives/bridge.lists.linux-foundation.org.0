Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA5477E01F
	for <lists.bridge@lfdr.de>; Wed, 16 Aug 2023 13:17:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4FC5828BA;
	Wed, 16 Aug 2023 11:16:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4FC5828BA
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=NI7KTXyn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZVPcr6155Vho; Wed, 16 Aug 2023 11:16:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id F11BE828B3;
	Wed, 16 Aug 2023 11:16:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11BE828B3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 909A6C0DD4;
	Wed, 16 Aug 2023 11:16:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 885F4C0032
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 11:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5657D40541
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 11:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5657D40541
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NI7KTXyn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y4gkRd4sgb7a for <bridge@lists.linux-foundation.org>;
 Wed, 16 Aug 2023 11:16:53 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8611B400D1
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 11:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8611B400D1
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5741962512;
 Wed, 16 Aug 2023 11:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77E48C433C7;
 Wed, 16 Aug 2023 11:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692184611;
 bh=wfhySSnPK75SKJ9vyK9+QFR5+bImMQwF+/PIQmTua/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NI7KTXynb5crT3rAJwh9tudjya++J9+kamFqQjnVdxIWmv+inAgkrelMfl8d+Vg4U
 KU5PNDU4WAmY24PvegTFeIysG1P5Av4P/WgCg+FOu384kbsN7M4w7FEH2MTNu9k4DO
 P1RVMmI7lwqMXeZYwcGw7+bSh2fpVfy2K8Y8OvDraxNASkMGn+UYoYnMsoXflMwdKA
 O1HUknXRSyp8upNJfiT0CJ542nONDCsz8oFucll8yfF68QFhw8+W5Pzvjtul7sHzWw
 gFHQAk8LKUKLYmtQGFq6/SUKjAziJfDhEgw2xuj6HFg1SAX6WSvfjpQ2uh4oEduXqE
 PrGbtWqgXM2Kw==
Date: Wed, 16 Aug 2023 13:16:46 +0200
From: Simon Horman <horms@kernel.org>
To: "GONG, Ruiqi" <gongruiqi@huaweicloud.com>
Message-ID: <ZNywHiWhaL6pRZsd@vergenet.net>
References: <20230816093443.1460204-1-gongruiqi@huaweicloud.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230816093443.1460204-1-gongruiqi@huaweicloud.com>
Cc: coreteam@netfilter.org, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Florian Westphal <fw@strlen.de>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>, gongruiqi1@huawei.com,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH net-next v2] netfilter: ebtables: replace
 zero-length array members
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

On Wed, Aug 16, 2023 at 05:34:43PM +0800, GONG, Ruiqi wrote:
> From: "GONG, Ruiqi" <gongruiqi1@huawei.com>
> 
> As suggested by Kees[1], replace the old-style 0-element array members
> of multiple structs in ebtables.h with modern C99 flexible array.
> 
> [1]: https://lore.kernel.org/all/5E8E0F9C-EE3F-4B0D-B827-DC47397E2A4A@kernel.org/
> 
> Link: https://github.com/KSPP/linux/issues/21
> Signed-off-by: GONG, Ruiqi <gongruiqi1@huawei.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
> 
> v2: designate to net-next; cc more netdev maintainers

It's slightly unclear to me if this should be targeting
net-next or nf-next. But regardless, it doesn't seem
to apply cleanly to the main branch of either tree.

Please consider resolving that and posting again,
being sure to allow 24h before postings.

Link: https://www.kernel.org/doc/html/next/process/maintainer-netdev.html

-- 
pw-bot: changes-requested
