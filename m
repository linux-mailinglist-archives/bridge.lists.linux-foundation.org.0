Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3147154D6
	for <lists.bridge@lfdr.de>; Tue, 30 May 2023 07:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9593560E30;
	Tue, 30 May 2023 05:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9593560E30
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=SJAsnH5M
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cumkc88cRQ8z; Tue, 30 May 2023 05:18:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A20B860B9F;
	Tue, 30 May 2023 05:18:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A20B860B9F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48244C0089;
	Tue, 30 May 2023 05:18:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C96D4C002A
 for <bridge@lists.linux-foundation.org>; Tue, 30 May 2023 05:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0427A40192
 for <bridge@lists.linux-foundation.org>; Tue, 30 May 2023 05:18:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0427A40192
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SJAsnH5M
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MsBw8ls0kjHv for <bridge@lists.linux-foundation.org>;
 Tue, 30 May 2023 05:18:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1766B41836
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1766B41836
 for <bridge@lists.linux-foundation.org>; Tue, 30 May 2023 05:18:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F0B3A61F84;
 Tue, 30 May 2023 05:18:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92E3DC433EF;
 Tue, 30 May 2023 05:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1685423890;
 bh=TmcAKLb36S0mfPW5+98IjKrwm1yuWF74UnQr6qihhNo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SJAsnH5MKs8ERiYQlGGkUvq1av793AuCSQfI6cfI+K9+mffGwid+rQgxebgHnIz44
 fKnXg606WNs0yP064eYDHqRb40sBk3iZYgXgWXOXAg/GS7pGUC21rJtTTzGPaFolmr
 fC0Kf90kQvhzanjHAyd5Ar5HvUOBssX9ZB0JXf8Z4VfO8NH9d+TWSL27LA+49keLUE
 Q/4XOkKtI5nUacEXlA4Tpxg1i2bAziTtaamdORCy/jY6LKF4FCdoWmoEZZkifitVGd
 uBsXXlzdTIZ6hY2aSMXka1FG2U9RdSuMvlnIN5y/RQ4CZq7hXq28dqxRpbMXe1HG53
 gL1kn2u/8ntMA==
Date: Mon, 29 May 2023 22:18:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230529221808.360b04c6@kernel.org>
In-Reply-To: <20230529114835.372140-2-idosch@nvidia.com>
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-2-idosch@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, roopa@nvidia.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, claudiu.manoil@nxp.com,
 UNGLinuxDriver@microchip.com, edumazet@google.com, jhs@mojatatu.com,
 vladimir.oltean@nxp.com, simon.horman@corigine.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 1/8] skbuff: bridge: Add layer 2
 miss indication
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

On Mon, 29 May 2023 14:48:28 +0300 Ido Schimmel wrote:
> For EVPN non-DF (Designated Forwarder) filtering we need to be able to
> prevent decapsulated traffic from being flooded to a multi-homed host.
> Filtering of multicast and broadcast traffic can be achieved using the
> following flower filter:
> 
>  # tc filter add dev bond0 egress pref 1 proto all flower indev vxlan0 dst_mac 01:00:00:00:00:00/01:00:00:00:00:00 action drop
> 
> Unlike broadcast and multicast traffic, it is not currently possible to
> filter unknown unicast traffic. The classification into unknown unicast
> is performed by the bridge driver, but is not visible to other layers
> such as tc.
> 
> Solve this by adding a new 'l2_miss' bit to the tc skb extension. Clear
> the bit whenever a packet enters the bridge (received from a bridge port
> or transmitted via the bridge) and set it if the packet did not match an
> FDB or MDB entry. If there is no skb extension and the bit needs to be
> cleared, then do not allocate one as no extension is equivalent to the
> bit being cleared. The bit is not set for broadcast packets as they
> never perform a lookup and therefore never incur a miss.

Acked-by: Jakub Kicinski <kuba@kernel.org>
