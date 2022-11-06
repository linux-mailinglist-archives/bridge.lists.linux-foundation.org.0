Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D37961E1FB
	for <lists.bridge@lfdr.de>; Sun,  6 Nov 2022 13:04:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EA0B6059C;
	Sun,  6 Nov 2022 12:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EA0B6059C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zfrmsCYcZi1; Sun,  6 Nov 2022 12:04:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BAA1D605A1;
	Sun,  6 Nov 2022 12:04:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAA1D605A1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 62789C0077;
	Sun,  6 Nov 2022 12:04:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 531A2C002D
 for <bridge@lists.linux-foundation.org>; Sun,  6 Nov 2022 12:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F48240591
 for <bridge@lists.linux-foundation.org>; Sun,  6 Nov 2022 12:04:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F48240591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2mW2EPUKb6l for <bridge@lists.linux-foundation.org>;
 Sun,  6 Nov 2022 12:04:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A7374033D
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A7374033D
 for <bridge@lists.linux-foundation.org>; Sun,  6 Nov 2022 12:04:40 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id BC34B1883857;
 Sun,  6 Nov 2022 12:04:36 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id B5A582500015;
 Sun,  6 Nov 2022 12:04:36 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 83A4C9EC0021; Sun,  6 Nov 2022 12:04:36 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 06 Nov 2022 13:04:36 +0100
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <20221025100024.1287157-1-idosch@nvidia.com>
References: <20221025100024.1287157-1-idosch@nvidia.com>
User-Agent: Gigahost Webmail
Message-ID: <e6c4c3755e4aba80b3c7ebf31c8cdb58@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 00/16] bridge: Add MAC
 Authentication Bypass (MAB) support with offload
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

On 2022-10-25 12:00, Ido Schimmel wrote:
> Merge plan
> ==========
> 
> We need to agree on a merge plan that allows us to start submitting
> patches for inclusion and finally conclude this work. In my experience,
> it is best to work in small batches. I therefore propose the following
> plan:
> 
> * Add MAB support in the bridge driver. This corresponds to patches
>   #1-#2.
> 
> * Switchdev extensions for MAB offload together with mlxsw
>   support. This corresponds to patches #3-#16. I can reduce the number
>   of patches by splitting out the selftests to a separate submission.
> 
> * mv88e6xxx support. I believe the blackhole stuff is an optimization,
>   so I suggest getting initial MAB offload support without that. 
> Support
>   for blackhole entries together with offload can be added in a 
> separate
>   submission.

As I understand for the mv88e6xxx support, we will be sending 
SWITCHDEV_FDB_ADD_TO_BRIDGE
events from the driver to the bridge without installing entries in the 
driver.
Just to note, that will of course imply that the bridge FDB will be out 
of sync with the
FDB in the driver (ATU).

> 
> * Switchdev extensions for dynamic FDB entries together with mv88e6xxx
>   support. I can follow up with mlxsw support afterwards.
> 
> [1] 
> https://lore.kernel.org/netdev/20221018165619.134535-1-netdev@kapio-technology.com/
> [2] 
> https://lore.kernel.org/netdev/20221004152036.7848-1-netdev@kapio-technology.com/
> [3] 
> https://github.com/westermo/hostapd/blob/bridge_driver/hostapd/hostapd_auth_deauth.sh#L11
> [4] 
> https://lore.kernel.org/netdev/a11af0d07a79adbd2ac3d242b36dec7e@kapio-technology.com/
