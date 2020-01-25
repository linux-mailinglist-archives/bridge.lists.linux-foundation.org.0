Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C2D14968E
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 17:16:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0A7520111;
	Sat, 25 Jan 2020 16:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDnHdZN+oRzq; Sat, 25 Jan 2020 16:16:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 151A22010A;
	Sat, 25 Jan 2020 16:16:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4962C0174;
	Sat, 25 Jan 2020 16:16:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 218E1C0174
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 16:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0FEAF8806D
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 16:16:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GP3QLyHR1VOt for <bridge@lists.linux-foundation.org>;
 Sat, 25 Jan 2020 16:16:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BC2F87E94
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 16:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7pOZtCRspHMG7P8OoioPIeVczYmsdyWf2zfgI15qGfA=; b=FBkqhd+zNjAokfOr0U28bnV6cy
 rS/LI20ZiGJKZQ169QVHehvysN/lCP2dukOffEJL6rkdG/UR3LJBUK0bE5+Wg1u6eXZIdevpfGxJ8
 0rK9AQ5S+ShDtvfzuhBY62mgUhN6r0jKdOegG0eMW+93WfcBWb5k7eaITn+tB7zYPErk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ivO6Z-00075c-Hs; Sat, 25 Jan 2020 17:16:15 +0100
Date: Sat, 25 Jan 2020 17:16:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200125161615.GD18311@lunn.ch>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200124161828.12206-10-horatiu.vultur@microchip.com>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 09/10] net: bridge: mrp: Integrate
 MRP into the bridge
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

>  br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
> @@ -338,6 +341,17 @@ rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
>  			return RX_HANDLER_CONSUMED;
>  		}
>  	}
> +#ifdef CONFIG_BRIDGE_MRP
> +	/* If there is no MRP instance do normal forwarding */
> +	if (!p->mrp_aware)
> +		goto forward;
> +
> +	if (skb->protocol == htons(ETH_P_MRP))
> +		return RX_HANDLER_PASS;

What MAC address is used for these MRP frames? It would make sense to
use a L2 link local destination address, since i assume they are not
supposed to be forwarded by the bridge. If so, you could extend the
if (unlikely(is_link_local_ether_addr(dest))) condition.

> +
> +	if (p->state == BR_STATE_BLOCKING)
> +		goto drop;
> +#endif

Is this needed? The next block of code is a switch statement on
p->state. The default case, which BR_STATE_BLOCKING should hit, is
drop.

This function is on the hot path. So we should try to optimize it as
much as possible.

     Andrew
