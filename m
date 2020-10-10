Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADC9289D2D
	for <lists.bridge@lfdr.de>; Sat, 10 Oct 2020 03:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07527878A5;
	Sat, 10 Oct 2020 01:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZSfMKrHuRTiW; Sat, 10 Oct 2020 01:46:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0883878A3;
	Sat, 10 Oct 2020 01:46:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F898C0051;
	Sat, 10 Oct 2020 01:46:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26A3EC0051
 for <bridge@lists.linux-foundation.org>; Sat, 10 Oct 2020 01:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14FF5878A3
 for <bridge@lists.linux-foundation.org>; Sat, 10 Oct 2020 01:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id liCZJ82thmrZ for <bridge@lists.linux-foundation.org>;
 Sat, 10 Oct 2020 01:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A42AD878A1
 for <bridge@lists.linux-foundation.org>; Sat, 10 Oct 2020 01:45:58 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCC8122245;
 Sat, 10 Oct 2020 01:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602294358;
 bh=iTtWEPs7R3iiq6VK1b1OfrjyVJP0Uism8CyeDJiP+1A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i3/UCdo4sP3wFVvX/GsyGPxSv+NwjzRumeuYLzX3/3SJCoMs2bq/S9SartvMqeZoV
 1SX+uZiRywSiMnwT0mk9trEnqyUeXfqOr5S87gAFtHsBvy+29SeRG8OiO0D0lwo1cX
 sHjtwGtujakQCWBgra+Xjitb8AkkTyt2bGyKVatA=
Date: Fri, 9 Oct 2020 18:45:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201009184556.6cfe6fbc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201009143530.2438738-8-henrik.bjoernlund@microchip.com>
References: <20201009143530.2438738-1-henrik.bjoernlund@microchip.com>
 <20201009143530.2438738-8-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 07/10] bridge: cfm: Netlink SET
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

On Fri, 9 Oct 2020 14:35:27 +0000 Henrik Bjoernlund wrote:
> +static inline struct mac_addr nla_get_mac(const struct nlattr *nla)

static inlines are generally not needed in C sources and just hide
unused code. Please drop the inline annotation.

> +{
> +	struct mac_addr mac;
> +
> +	nla_memcpy(&mac.addr, nla, sizeof(mac.addr));
> +
> +	return mac;
> +}
> +
> +static inline struct br_cfm_maid nla_get_maid(const struct nlattr *nla)

ditto

> +{
> +	struct br_cfm_maid maid;
> +
> +	nla_memcpy(&maid.data, nla, sizeof(maid.data));

returning a 48B struct from a helper is a little strange, but I guess
it's not too bad when compiler inlines the thing?

> +	return maid;
> +}
> +
> +static const struct nla_policy
> +br_cfm_policy[IFLA_BRIDGE_CFM_MAX + 1] = {
> +	[IFLA_BRIDGE_CFM_UNSPEC]		= { .type = NLA_REJECT },

Not needed, REJECT is treated the same as 0 / uninit, right?

> +	[IFLA_BRIDGE_CFM_MEP_CREATE]		= { .type = NLA_NESTED },

Consider using NLA_POLICY_NESTED() to link up the next layers.

> +	[IFLA_BRIDGE_CFM_MEP_DELETE]		= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_CFM_MEP_CONFIG]		= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_CFM_CC_CONFIG]		= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_CFM_CC_PEER_MEP_ADD]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_CFM_CC_PEER_MEP_REMOVE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_CFM_CC_RDI]		= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_CFM_CC_CCM_TX]		= { .type = NLA_NESTED },
> +};
