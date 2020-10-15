Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB1228F7AC
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 19:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CDB102E34A;
	Thu, 15 Oct 2020 17:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kBwpAqbdr4og; Thu, 15 Oct 2020 17:34:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7CCAF2E348;
	Thu, 15 Oct 2020 17:34:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6B2D3C0051;
	Thu, 15 Oct 2020 17:34:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E227C0051
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 17:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C93E883F8
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 17:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5M6IO1DEAgG for <bridge@lists.linux-foundation.org>;
 Thu, 15 Oct 2020 17:34:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6EA6C88362
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 17:34:34 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51DFC2225F;
 Thu, 15 Oct 2020 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602783274;
 bh=DNxvAuV7cKNsPEncClCJJJ0vr4kkwu9AJqh2X91MJ+I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ma63it46MNeYoPlFyYS5c1K5Cr4yl4b0mvpITcv+TdQSvEqmopd6R4HZanFaS0Ga3
 Sg9uHJdGQ51/ZZRXYNcxvJph/r1CpZQxyJWJzJhM7/JtRPWs7mYClAwKFR7Swjx7/8
 48jSLBH9u8JSFCL2ndfp0McKVKoUbsT8Lq397YIg=
Date: Thu, 15 Oct 2020 10:34:31 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201015103431.25d66c8b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201015115418.2711454-8-henrik.bjoernlund@microchip.com>
References: <20201015115418.2711454-1-henrik.bjoernlund@microchip.com>
 <20201015115418.2711454-8-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v6 07/10] bridge: cfm: Netlink SET
 configuration Interface.
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

On Thu, 15 Oct 2020 11:54:15 +0000 Henrik Bjoernlund wrote:
> +	[IFLA_BRIDGE_CFM_MEP_CONFIG_MDLEVEL]	 = {
> +	.type = NLA_U32, .validation_type = NLA_VALIDATE_MAX, .max = 7 },

	NLA_POLICY_MAX(NLA_U32, 7)

Also why did you keep the validation in the code in patch 4?
