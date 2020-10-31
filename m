Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0406F2A1241
	for <lists.bridge@lfdr.de>; Sat, 31 Oct 2020 01:59:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B91286786;
	Sat, 31 Oct 2020 00:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TY9skO6cBFXb; Sat, 31 Oct 2020 00:59:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D06F786E33;
	Sat, 31 Oct 2020 00:59:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B3367C0051;
	Sat, 31 Oct 2020 00:59:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 351F9C0051
 for <bridge@lists.linux-foundation.org>; Sat, 31 Oct 2020 00:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1BEB1876B8
 for <bridge@lists.linux-foundation.org>; Sat, 31 Oct 2020 00:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzolh4BRiEcn for <bridge@lists.linux-foundation.org>;
 Sat, 31 Oct 2020 00:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B410A87687
 for <bridge@lists.linux-foundation.org>; Sat, 31 Oct 2020 00:59:27 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 091CD2087E;
 Sat, 31 Oct 2020 00:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604105967;
 bh=cVlkYBQn4AVUKpo9IrkEihc7Z9GmAo1XSN3I3NkOHfU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=W/hL/Fpon9IaclV9nSVJhHw0iiobWpti0PMBQihqHSX3+X7/iD2bkD3UGNzyQ2A93
 NFLbxqRMAW87SHo6rR1eMtEaHHvsXeUB3c0fNXpFZQh6lLeeXXOwr/zTCqBYOjOT1z
 BWHoWIbbT5XzigepQJ2RRgCQ3dBgWVnTvqZbryV0=
Date: Fri, 30 Oct 2020 17:59:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20201030175926.5e30a1e6@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201028234815.613226-1-vladimir.oltean@nxp.com>
References: <20201028234815.613226-1-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: explicitly convert
 between mdb entry state and port group flags
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

On Thu, 29 Oct 2020 01:48:15 +0200 Vladimir Oltean wrote:
> When creating a new multicast port group, there is implicit conversion
> between the __u8 state member of struct br_mdb_entry and the unsigned
> char flags member of struct net_bridge_port_group. This implicit
> conversion relies on the fact that MDB_PERMANENT is equal to
> MDB_PG_FLAGS_PERMANENT.
> 
> Let's be more explicit and convert the state to flags manually.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Applied, thanks!
