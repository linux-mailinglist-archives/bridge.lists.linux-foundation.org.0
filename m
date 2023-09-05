Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C92A179306B
	for <lists.bridge@lfdr.de>; Tue,  5 Sep 2023 22:54:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C7DC408E9;
	Tue,  5 Sep 2023 20:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C7DC408E9
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=NqWVB2b+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OHsXKaZ3Mtjq; Tue,  5 Sep 2023 20:54:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A02CB4091A;
	Tue,  5 Sep 2023 20:54:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A02CB4091A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E844C008C;
	Tue,  5 Sep 2023 20:54:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B7DEAC0032
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 20:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 911514091A
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 20:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 911514091A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ga9zfINOlQ3d for <bridge@lists.linux-foundation.org>;
 Tue,  5 Sep 2023 20:54:07 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8AE92408E9
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 20:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AE92408E9
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 476E0CE131A;
 Tue,  5 Sep 2023 20:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E837EC433C8;
 Tue,  5 Sep 2023 20:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693947239;
 bh=rPD3WYvBqg9PWkPEMXs+yj80x0SnlrDTEIJPptThAxM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NqWVB2b+z6W60vXKcAyJOlNDeQSZjzea/uXqVnYc7iCgDpebHFjnDD367NrZOd+B+
 w7ITI3lz/UMcj/AKpm7M3+eoWxmN2y6/ouzwOGt8niR40hI1BXX2fGle8KQvrKu8Nm
 ZqWlmszQ2c8UrWNeROdO2qslZlSKz7w09EFm+KeRCeFVgGTfNDvrb/5zX7otstp3n+
 GLV2tQYnFRud7FsTFz9JiQ9OFnq8SvdRlOaZRFxtS+cpK9zP6W8gfYwvjwIBAk461T
 CVQ3BMJ2c7Uad7kkOaER3hDLYA1GEBDyt0Hg5M7CAA6t3XLgsKotxFvSqCB5iXDGoe
 iuHy49aD1XwTw==
Date: Tue, 5 Sep 2023 13:53:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Message-ID: <20230905135357.78b57cde@kernel.org>
In-Reply-To: <20230905-fdb_limit-v3-6-7597cd500a82@avm.de>
References: <20230905-fdb_limit-v3-0-7597cd500a82@avm.de>
 <20230905-fdb_limit-v3-6-7597cd500a82@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v3 6/6] selftests: forwarding:
 bridge_fdb_learning_limit: Add a new selftest
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

On Tue, 05 Sep 2023 13:47:23 +0200 Johannes Nixdorf wrote:
> Add a suite covering the fdb_n_learned_entries and fdb_max_learned_entries
> bridge features, touching all special cases in accounting at least once.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>  .../net/forwarding/bridge_fdb_learning_limit.sh    | 283 +++++++++++++++++++++

Please add it to the Makefile so it gets run by automation.
