Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC49728E939
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 01:33:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7718688578;
	Wed, 14 Oct 2020 23:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EoNK6DR5-HdL; Wed, 14 Oct 2020 23:33:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2BE58857C;
	Wed, 14 Oct 2020 23:33:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5929C0051;
	Wed, 14 Oct 2020 23:33:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 06F2BC0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E6DEF2E332
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:33:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIlIZyz95UN3 for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 23:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 598672E45C
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:33:51 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 656042078A;
 Wed, 14 Oct 2020 23:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602718430;
 bh=fJuaBZAYZB2ASZnOsQGXjvE2pynwdjPBgfBtVj+H8F4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=c/Mwj5CLJFeg5vBNDeMaxa33nHbmDZun8T/4ILG736efYFWqfucNlCWD/mIFyIp0U
 EbkSPN2poPGBQpgEfedIaBV4grIdHVZ/SciOKy6ZsdQv2lRhMDJIo1dCmFQiNAj1mh
 NUAIvlAl5JzBpAH2m/B0/JqLfxXctsj8mei7fBTM=
Date: Wed, 14 Oct 2020 16:33:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201014163348.2f99e349@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201012140428.2549163-9-henrik.bjoernlund@microchip.com>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-9-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 08/10] bridge: cfm: Netlink GET
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

On Mon, 12 Oct 2020 14:04:26 +0000 Henrik Bjoernlund wrote:
> +		if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_SEQ_NO_UPDATE,
> +				mep->cc_ccm_tx_info.seq_no_update))
> +			goto nla_put_failure;
> +
> +		if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PERIOD,
> +				mep->cc_ccm_tx_info.period))
> +			goto nla_put_failure;
> +
> +		if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_IF_TLV,
> +				mep->cc_ccm_tx_info.if_tlv))
> +			goto nla_put_failure;
> +
> +		if (nla_put_u8(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_IF_TLV_VALUE,
> +			       mep->cc_ccm_tx_info.if_tlv_value))
> +			goto nla_put_failure;
> +
> +		if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PORT_TLV,
> +				mep->cc_ccm_tx_info.port_tlv))
> +			goto nla_put_failure;
> +
> +		if (nla_put_u8(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PORT_TLV_VALUE,
> +			       mep->cc_ccm_tx_info.port_tlv_value))
> +			goto nla_put_failure;

Consider collapsing writing related attrs in a nest into a single
if statement:

	if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_SEQ_NO_UPDATE,
			mep->cc_ccm_tx_info.seq_no_update) ||
	    nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PERIOD,
			mep->cc_ccm_tx_info.period) ||
		...
