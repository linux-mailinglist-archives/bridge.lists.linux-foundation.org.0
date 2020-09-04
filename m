Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0B625DCB1
	for <lists.bridge@lfdr.de>; Fri,  4 Sep 2020 17:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 313B186EB3;
	Fri,  4 Sep 2020 15:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEytvc3yKYdQ; Fri,  4 Sep 2020 15:03:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B62ED86E89;
	Fri,  4 Sep 2020 15:03:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94E10C0051;
	Fri,  4 Sep 2020 15:03:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0BC93C0051
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 15:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE29B86DED
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 15:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcY8zh0PN60Y for <bridge@lists.linux-foundation.org>;
 Fri,  4 Sep 2020 15:02:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85DB686D48
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 15:02:59 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5FE42073B;
 Fri,  4 Sep 2020 15:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599231779;
 bh=wycQ6jI9pjOiTB5GIp2mZuyFyDlyeuQ9huVpOEiGNBc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=htsQ614gJzrBICf3ZITx+iZk2nx7WN/yqvMGOxY3MATmyUrnWJsSI9Pg0c3Jq56tm
 63i5K7T62hgsFtEj1HoH3hQQu95Nn0y+RDaLW8QQ+6nXu2QzYeu2fLGevjksP5N8mq
 KZ9E3hS88vzoqWlLX6qsM7yhXbGaZrZ6HsHaovXg=
Date: Fri, 4 Sep 2020 08:02:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20200904080257.6b2a643f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200904091527.669109-5-henrik.bjoernlund@microchip.com>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904091527.669109-5-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH RFC 4/7] bridge: cfm: Kernel space
 implementation of CFM.
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

On Fri, 4 Sep 2020 09:15:24 +0000 Henrik Bjoernlund wrote:
> +	rcu_read_lock();
> +	b_port = rcu_dereference(mep->b_port);
> +	if (!b_port)
> +		return NULL;
> +	skb = dev_alloc_skb(CFM_CCM_MAX_FRAME_LENGTH);
> +	if (!skb)
> +		return NULL;

net/bridge/br_cfm.c:171:23: warning: context imbalance in 'ccm_frame_build' - different lock contexts for basic block
