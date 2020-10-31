Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 751452A123D
	for <lists.bridge@lfdr.de>; Sat, 31 Oct 2020 01:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B78D87128;
	Sat, 31 Oct 2020 00:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90N1VN4f4dYI; Sat, 31 Oct 2020 00:57:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C30687122;
	Sat, 31 Oct 2020 00:57:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F3CDC1AD5;
	Sat, 31 Oct 2020 00:57:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B356BC0051
 for <bridge@lists.linux-foundation.org>; Sat, 31 Oct 2020 00:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A2A386DF3
 for <bridge@lists.linux-foundation.org>; Sat, 31 Oct 2020 00:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0g9vps+5Yw7 for <bridge@lists.linux-foundation.org>;
 Sat, 31 Oct 2020 00:57:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14E9A86DF0
 for <bridge@lists.linux-foundation.org>; Sat, 31 Oct 2020 00:57:14 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40B21206CB;
 Sat, 31 Oct 2020 00:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604105833;
 bh=986U1WT2eTEVzODFd0gdq4cGAXDe6PZrM3EnpbUmszc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Yq2MLhjsts1DAWWm3hf2WQg+dUHPEb5Dn8Oijl9B5NkTlRoG/GeamZW9uF+Gl4GnT
 x8sJUCxB9lztjXA0DUZcLQvEV9YY7WGqIdetGcAHwdGAo5AlRAG3c0egovRSbDe6St
 AoRf5XJ1bmPQ8zj0JIjIvxAXNdf0mA+65iMkve8g=
Date: Fri, 30 Oct 2020 17:57:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20201030175712.6431ac84@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201028233831.610076-1-vladimir.oltean@nxp.com>
References: <20201028233831.610076-1-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 vivien.didelot@gmail.com, idosch@idosch.org, jiri@mellanox.com,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v4 net-next] net: bridge: mcast: add support
 for raw L2 multicast groups
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

On Thu, 29 Oct 2020 01:38:31 +0200 Vladimir Oltean wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Extend the bridge multicast control and data path to configure routes
> for L2 (non-IP) multicast groups.
> 
> The uapi struct br_mdb_entry union u is extended with another variant,
> mac_addr, which does not change the structure size, and which is valid
> when the proto field is zero.
> 
> To be compatible with the forwarding code that is already in place,
> which acts as an IGMP/MLD snooping bridge with querier capabilities, we
> need to declare that for L2 MDB entries (for which there exists no such
> thing as IGMP/MLD snooping/querying), that there is always a querier.
> Otherwise, these entries would be flooded to all bridge ports and not
> just to those that are members of the L2 multicast group.
> 
> Needless to say, only permanent L2 multicast groups can be installed on
> a bridge port.
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Applied, thanks!
