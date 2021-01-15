Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4452F717C
	for <lists.bridge@lfdr.de>; Fri, 15 Jan 2021 05:14:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F386203AF;
	Fri, 15 Jan 2021 04:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5KiKM+xMqF7W; Fri, 15 Jan 2021 04:14:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id D51FD203AC;
	Fri, 15 Jan 2021 04:14:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA0C4C1DA7;
	Fri, 15 Jan 2021 04:14:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21F67C013A
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 04:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09B5A84995
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 04:14:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nhQb0NqN4R7m for <bridge@lists.linux-foundation.org>;
 Fri, 15 Jan 2021 04:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BBEE811D9
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 04:14:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8ACEF23AC9;
 Fri, 15 Jan 2021 04:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610684050;
 bh=2pbAemQNRup2me0OaNGafy1g5R/x8+eGuOc+MB36rVo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=T7byPPZfiIKDKCFJEexDVf055Pp47eELH51bVEQ2e0/npgyzbODUVCbiC6nN5KKp1
 a2dCmcII0G24vxWk7d1khxfHImGQJuQ35x0tQuHru0uDrARuSkjbHFr/kEV5CzPQO0
 Qg5N+5A7F6dzJKju2qxvACLffu9w5VVlRXcVHXsKm9s7uHJzdY31VqtV+G7csUp/G6
 meHjl4MS6vN9Oi8tmAZPiJBr+Ximfn44tCy1XHnqXtD8T1pzjZBk9fDW66QJ5qjDOD
 0pNKzUgzyo2wlLPdYLPg4hE+cSu8rhKDBJEv2QL8fuZFcnA/KhYyZEEcHLtl+9cdst
 lAuyv/2u1Ot1g==
Date: Thu, 14 Jan 2021 20:14:09 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: menglong8.dong@gmail.com
Message-ID: <20210114201409.41778f77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210115022344.4407-1-dong.menglong@zte.com.cn>
References: <20210115022344.4407-1-dong.menglong@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next] net: bridge: check vlan with
 eth_type_vlan() method
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

On Thu, 14 Jan 2021 18:23:44 -0800 menglong8.dong@gmail.com wrote:
> From: Menglong Dong <dong.menglong@zte.com.cn>
> 
> Replace some checks for ETH_P_8021Q and ETH_P_8021AD with
> eth_type_vlan().
> 
> Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>

This adds a new warning when built with W=1 C=1:

net/bridge/br_vlan.c:920:28: warning: incorrect type in argument 1 (different base types)
net/bridge/br_vlan.c:920:28:    expected restricted __be16 [usertype] ethertype
net/bridge/br_vlan.c:920:28:    got unsigned long val
