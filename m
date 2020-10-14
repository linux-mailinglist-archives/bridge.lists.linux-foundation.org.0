Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DB728E931
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 01:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 920D887EF3;
	Wed, 14 Oct 2020 23:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-B-W9hV1U3d; Wed, 14 Oct 2020 23:30:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C85B87EE6;
	Wed, 14 Oct 2020 23:30:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E679C0051;
	Wed, 14 Oct 2020 23:30:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 221BAC0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F71687EE6
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQ05pAeedYec for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 23:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8941A87EF3
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:30:20 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C0812078A;
 Wed, 14 Oct 2020 23:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602718220;
 bh=vyv1Lw21EZsvgtDr0IaKBBfPkAhRje6PnLiOpTq5E5o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f9mHYFDstQRP7bqIKfSnesVOKCUWUPIUOuPPlhYlDUkXX0Xvu8NNd4GIgqQTAh1B6
 cbMiV3FE1FovKuPzzmIqLwQKKV5wvUAjhrGm6lfxBj8Xgd/6S+U0dv0LcIGvzgq5Zy
 thgbgr+xtvbqaRPR4J+ibbFJ2O1gUfSk4r0fgrtE=
Date: Wed, 14 Oct 2020 16:30:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201014163018.0c2a4fc7@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201012140428.2549163-5-henrik.bjoernlund@microchip.com>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-5-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 04/10] bridge: cfm: Kernel space
 implementation of CFM. MEP create/delete.
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

On Mon, 12 Oct 2020 14:04:22 +0000 Henrik Bjoernlund wrote:
> +	if (config->mdlevel > 7) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "MD level is invalid");
> +		return -EINVAL;
> +	}
> +	/* The MEP-ID is a 13 bit field in the CCM PDU identifying the MEP */
> +	if (config->mepid > 0x1FFF) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "MEP-ID is invalid");
> +		return -EINVAL;
> +	}

If I'm reading patch 7 correctly these parameters come from netlink,
right? In that case please use the netlink policies to check things
like ranges or correct values.
