Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5B4610B7F
	for <lists.bridge@lfdr.de>; Fri, 28 Oct 2022 09:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2046A400D0;
	Fri, 28 Oct 2022 07:46:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2046A400D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7yOIujLtrlm8; Fri, 28 Oct 2022 07:46:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A476540186;
	Fri, 28 Oct 2022 07:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A476540186
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FDFBC0077;
	Fri, 28 Oct 2022 07:46:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D17FC002D
 for <bridge@lists.linux-foundation.org>; Fri, 28 Oct 2022 07:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 447F060A92
 for <bridge@lists.linux-foundation.org>; Fri, 28 Oct 2022 07:45:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 447F060A92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBSX96nKWvE2 for <bridge@lists.linux-foundation.org>;
 Fri, 28 Oct 2022 07:45:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 224E56074C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 224E56074C
 for <bridge@lists.linux-foundation.org>; Fri, 28 Oct 2022 07:45:56 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 070FA1883F32;
 Fri, 28 Oct 2022 07:45:53 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 02E752500015;
 Fri, 28 Oct 2022 07:45:53 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id EAC609EC0007; Fri, 28 Oct 2022 07:45:52 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 28 Oct 2022 09:45:52 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20221027225832.2yg4ljivjymuj353@skbuf>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-2-idosch@nvidia.com>
 <20221027225832.2yg4ljivjymuj353@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <1a66212fdb43fb8d03fc1e4c7612ad1b@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, ivecera@redhat.com, Ido Schimmel <idosch@nvidia.com>,
 razor@blackwall.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 edumazet@google.com, mlxsw@nvidia.com, jiri@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 01/16] bridge: Add MAC
 Authentication Bypass (MAB) support
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

On 2022-10-28 00:58, Vladimir Oltean wrote:

> I was going to ask if we should bother to add code to prohibit packets
> from being forwarded to an FDB entry that was learned as LOCKED, since
> that FDB entry is more of a "ghost" and not something fully committed?

I think that it is a security flaw if there is any forwarding to 
BR_FDB_LOCKED
entries. I can imagine a host behind a locked port with no credentials,
that gets a BR_FDB_LOCKED entry and has a friend on another non-locked 
port
who can now communicate uni-directional to the host with the 
BR_FDB_LOCKED
entry. It should not be too hard to create a scheme using UDP packets or
other for that.
