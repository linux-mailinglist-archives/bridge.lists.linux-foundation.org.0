Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE2860334F
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 21:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EABB441B40;
	Tue, 18 Oct 2022 19:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EABB441B40
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ISTTBdpU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MdetrcJrYKdo; Tue, 18 Oct 2022 19:21:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 398AE41B38;
	Tue, 18 Oct 2022 19:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 398AE41B38
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D22E4C007C;
	Tue, 18 Oct 2022 19:21:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 766EDC002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 19:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43D71610CC
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 19:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43D71610CC
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ISTTBdpU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c_YqOfoS-R1N for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 19:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D73D760B6E
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D73D760B6E
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 19:21:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EAC71B81F4A;
 Tue, 18 Oct 2022 19:21:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61A58C433C1;
 Tue, 18 Oct 2022 19:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666120873;
 bh=AQ4yB5Ac7ETTgAmEBRKy2WlBUrbMZ1TtZeZz1xVByU4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ISTTBdpU+cHma5SnbaIVWgRj+lX/ZmIkrgZHgOYkMUAC9fJHg99Eq3F/W8jw0VmoA
 9BShnifPmNRs7b6oVE3abXn3Nt1aoSgq6QkTJpmk/P1GL9B/T1qXzOwybnyQoyP3bo
 AmJzLUL4X4l+TrNMaYxWAwxqhdpSFWXYL4SO74e4EoJbyJieE8tj22coI2tmYL8BAP
 Qu4NMX6dlnGh6gZWE/igyDyQdxaIusPkaDHMUV86ggqZiyIefZhfmvl3jQF25IWHwB
 8vxT+p41V4fz7JTD4NDy+Dxm6RbqECJYDYuOI6kRzGwFPPqVSysKJMMcdDvALhT+CD
 CsNf49Z6FN1zA==
Date: Tue, 18 Oct 2022 12:21:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221018122112.7218792b@kernel.org>
In-Reply-To: <20221018120420.561846-1-idosch@nvidia.com>
References: <20221018120420.561846-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 00/19] bridge: mcast: Extensions
	for EVPN
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

On Tue, 18 Oct 2022 15:04:01 +0300 Ido Schimmel wrote:
> 	[ MDBE_ATTR_SRC_LIST ]		// new
> 		[ MDBE_SRC_LIST_ENTRY ]
> 			[ MDBE_SRCATTR_ADDRESS ]
> 				struct in_addr / struct in6_addr
> 		[ ...]

nit: I found that the MDBE_ATTR_SRC_LIST level of wrapping corresponds
to how "sane" formats work, but in practice there is no need for it in
netlink. You can put the entry nests directly in the outer. Saves one
layer of parsing. Just thought I'd mention it, you can keep as is if
you prefer.
