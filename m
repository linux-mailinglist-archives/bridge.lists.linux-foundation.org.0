Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D88902D0247
	for <lists.bridge@lfdr.de>; Sun,  6 Dec 2020 10:38:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FEB923265;
	Sun,  6 Dec 2020 09:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkNQmov7ffwd; Sun,  6 Dec 2020 09:38:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E7CC1230E6;
	Sun,  6 Dec 2020 09:38:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B5E48C1DA2;
	Sun,  6 Dec 2020 09:38:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F14FEC013B
 for <bridge@lists.linux-foundation.org>; Fri,  4 Dec 2020 16:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7C66875FB
 for <bridge@lists.linux-foundation.org>; Fri,  4 Dec 2020 16:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cu2yayWqKDFT for <bridge@lists.linux-foundation.org>;
 Fri,  4 Dec 2020 16:11:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79BD6875F0
 for <bridge@lists.linux-foundation.org>; Fri,  4 Dec 2020 16:11:54 +0000 (UTC)
Date: Fri, 4 Dec 2020 08:11:53 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607098314;
 bh=t7l9nX5UkyKRq8h2G9WlrGZktfzK+n7e18YEE+2zpCE=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=h/AS4nNJ48FNWSpNFkSAToFJ+zj6dTgm1ogidDY9A+ScjDObCwrPJfBLaZZY4DczW
 3q6mpw/NKC7fyD1HdLBZglXgK5sabbUr6MggDNZiyxgd662lL/KHQmflzw2tqZHiJv
 BnoBhUTUznIx3YSsScLRHMPVUOjQTnfQbrm5pYmlpNyB6ny978fBz3+utogOxhPXnd
 0L4ECSf3ze8Blthlk/3F9LNGHHjyNcLcA5GcMWvmHUrnUMIZFOJduUZc82d1Kh1EnN
 vfowxW0x5nS4IeMtGaewsZDR1t7pxamDhrTWQEUFjwduhlRRVYzCvB8ocIU0PHM/cR
 IQo267aFJKdZQ==
From: Jakub Kicinski <kuba@kernel.org>
To: "Huang, Joseph" <Joseph.Huang@garmin.com>
Message-ID: <20201204081153.496626f6@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <75cf7844-8df7-0ea2-1980-ff868a1bc34e@nvidia.com>
References: <20201201214047.128948-1-Joseph.Huang@garmin.com>
 <20201203102802.62bc86ba@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <bd84ca4c-c694-6fd2-81ef-08e9253c18a4@nvidia.com>
 <c82ce96d74ed4d3897d2e68a258f7834@garmin.com>
 <2b96b845990e4a84a3b3fd46f4138ac6@garmin.com>
 <75cf7844-8df7-0ea2-1980-ff868a1bc34e@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Sun, 06 Dec 2020 09:38:38 +0000
Cc: netdev@vger.kernel.org,
 "bridge@lists.linux-foundation.org\" <bridge@lists.linux-foundation.org>,
 "@osuosl.org, "  <netdev@vger.kernel.org>, "@osuosl.org,
 linux-kernel@vger.kernel.org, "  <linux-kernel@vger.kernel.org>,
 Linus =?UTF-8?B?TMO8c3Npbmc=?=  <linus.luessing@c0d3.blue>"@osuosl.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] bridge: Fix a deadlock when enabling multicast
	snooping
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

On Fri, 4 Dec 2020 01:34:57 +0200 Nikolay Aleksandrov wrote:
> Please add a comment why it's needed, so we won't wonder about it
> later. And also include the trace in the commit message so we'd have
> it.

And please drop the empty line between the Fixes tag and your sign-off.
We like tags all clustered together at the end, sort of reverse of
email headers.
