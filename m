Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF5C28E8FC
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 01:00:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F30592E323;
	Wed, 14 Oct 2020 23:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7yYEj92CqVpb; Wed, 14 Oct 2020 23:00:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 2E8EF2001C;
	Wed, 14 Oct 2020 23:00:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06B3CC0051;
	Wed, 14 Oct 2020 23:00:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BEB63C0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A869E8787C
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ft0pe9xfyQcS for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 23:00:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 414C9875A2
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:00:01 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4293420776;
 Wed, 14 Oct 2020 23:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602716400;
 bh=qUBUKi9Uhs8lwmVMgMRaCqfD9agAtCwndy7lYGBk0yU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fgN6ZvZYNVWAQiqZrNS9uUImAjj6mzR5LbgtovtEqMUMFtkfG1qqut3r6Tf05xKLL
 feG1uoZaCrWOsFy2kzvfGYHLCaXRULH7DQGNDtE6K8whEkEfWTksRpxsaVoJY3zAPw
 YOUnMIoYH4dSKrS6J/nAmipv7jfckZntPP/3vrm8=
Date: Wed, 14 Oct 2020 15:59:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201014155958.12e38308@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201012140428.2549163-6-henrik.bjoernlund@microchip.com>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-6-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 05/10] bridge: cfm: Kernel space
 implementation of CFM. CCM frame TX added.
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

On Mon, 12 Oct 2020 14:04:23 +0000 Henrik Bjoernlund wrote:
> +	skb = dev_alloc_skb(CFM_CCM_MAX_FRAME_LENGTH);
> +	if (!skb)
> +		return NULL;
> +
> +	rcu_read_lock();
> +	b_port = rcu_dereference(mep->b_port);
> +	if (!b_port) {
> +		rcu_read_unlock();
> +		return NULL;
> +	}

At a quick scan I noticed you appear to be leaking the skb here.
So let me point out some more nit picks.
