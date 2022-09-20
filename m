Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EACAB5BF112
	for <lists.bridge@lfdr.de>; Wed, 21 Sep 2022 01:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFB4140A02;
	Tue, 20 Sep 2022 23:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFB4140A02
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=BfwBkfqb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EK9F-2OAr2PS; Tue, 20 Sep 2022 23:30:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EC0B04176C;
	Tue, 20 Sep 2022 23:30:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC0B04176C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8AAAFC0077;
	Tue, 20 Sep 2022 23:30:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4B9BEC002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 23:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03E7940C1B
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 23:30:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03E7940C1B
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BfwBkfqb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q6PBqWH_mVpT for <bridge@lists.linux-foundation.org>;
 Tue, 20 Sep 2022 23:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 991D840129
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 991D840129
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 23:29:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E34E6B82C0A;
 Tue, 20 Sep 2022 23:29:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FB2CC433B5;
 Tue, 20 Sep 2022 23:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663716595;
 bh=nD4QLliR2Fg9W839ij/O4HSyRbpGyiFLDJtkdeZ/HeY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BfwBkfqbihYRed6NuVk9N/7VrgAlWrxMTTnaQQMPx7cebYpFkqsE/ktZQWEHBiYaX
 cwb7Y3AEkerp3zVtNY/ziEbnaENtxPrhGS2KNFOpI3iXxcnGhMvgX70B+w7J7FZ7Qa
 gyI9tRxfZgHOF677hYUGAYQ6JwTXL76IREzWK8r+S2mxTeINADcF+H3zunuUqAWrR0
 aX9eX8dtdd4RMautD7Rb4Nl0d45XaSRDRwrxVHc0ijebPXXz9ay9zNlH78gp7F9lj9
 F37xn7mSvuyaRC4CLmwhHztTmpzkWd8eXwN79QyBkJSDeLNm5wQE7HPnfkuPhJlNC4
 vsHKvmKaq4Txg==
Date: Tue, 20 Sep 2022 16:29:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220920162954.1f4aaf7b@kernel.org>
In-Reply-To: <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
 <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/5] net: vlan: fix bridge binding
 behavior and add selftests
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

On Tue, 20 Sep 2022 12:16:26 +0300 Nikolay Aleksandrov wrote:
> The set looks good to me, the bridge and vlan direct dependency is gone and
> the new notification type is used for passing link type specific info.

IDK, vlan knows it's calling the bridge:

+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
+	    netif_is_bridge_master(vlan->real_dev)) {

bridge knows it's vlan calling:

+	if (is_vlan_dev(dev)) {
+		br_vlan_device_event(dev, event, ptr);

going thru the generic NETDEV notifier seems odd.

If this is just to avoid the dependency we can perhaps add a stub 
like net/ipv4/udp_tunnel_stub.c ?

> If the others are ok with it I think you can send it as non-RFC, but I'd give it
> a few more days at least. :)
