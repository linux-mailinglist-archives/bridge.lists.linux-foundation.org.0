Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEF828F0E4
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 13:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CA6787F7D;
	Thu, 15 Oct 2020 11:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWXi+-35Ih5l; Thu, 15 Oct 2020 11:25:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5267B87F50;
	Thu, 15 Oct 2020 11:25:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 34B62C0051;
	Thu, 15 Oct 2020 11:25:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E074CC0051
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF37A885A9
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3TYdALicCFn for <bridge@lists.linux-foundation.org>;
 Thu, 15 Oct 2020 11:25:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2AB3088131
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602761155; x=1634297155;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZoVMllBI6FapwInWS1hyhHru/VQbiws2d3z0bAqZ7Gw=;
 b=IZ4RgBWpfOSjsBAchw7LkaohE899sQ2QCDN4EmnwSQD1oBs/omRWyAXY
 u54aa3umY6tFnFVsWhY2XeqFxjeGHOtcMBCguDz0N7zMNk/X5drwjfHA0
 43KZA7WwMob4ShZHXcrUoklHmK8fIBsP5endy7C+3u0/3qrdYmuXzWC0u
 ub2xpL4fVE2SATSP+zNlKe/ubVvQNhS5UySDPCDS1nVNQ9NBNxqKEJhPh
 +RlF6ZjwUXyCj2uM4P9OYJ2lySChBFcU1ypDifGP9ExhOKUvXgOLxS/uQ
 kOPH1lY5YdNcjvJdpOMZVVdLIQtUb0ATHD8N7NCRySBEme4hFJuLeff3i Q==;
IronPort-SDR: ZvMN9xDzjixyB3O2ezKYGx3c9lRJrAkDrFUkpaFJPtYdPVKLgSUn7HupHbbZ2TANbJDRz1b3dy
 L7kI2SKEEtAGY7WDujON8OPQOvV247jGs1aJ4QQnPAEh8Qz5kObMNG++dmAdu/zVie9dQ5ZCaf
 WjXUvECAZ+J5/yMXeE8H2mn36q5tKT9AqOyB4KvUcSrFGsX3J1tmxMoNmFQGCDAc1fbQYceik8
 0t+g6CJ8PIM9aPrCd6YbgS+d11B0FNO3KYWdg9wXECXB+rZ9rAj7blhF7jqlNxWRv+jzWqCVcT
 cMc=
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="99624065"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2020 04:25:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 15 Oct 2020 04:25:54 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 15 Oct 2020 04:25:53 -0700
Date: Thu, 15 Oct 2020 11:24:13 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201015112413.5vzxwvykmteiesyx@soft-test08>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-9-henrik.bjoernlund@microchip.com>
 <20201014163348.2f99e349@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201014163348.2f99e349@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for your review. Comment below.
Regards
Henrik

The 10/14/2020 16:33, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 12 Oct 2020 14:04:26 +0000 Henrik Bjoernlund wrote:
> > +             if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_SEQ_NO_UPDATE,
> > +                             mep->cc_ccm_tx_info.seq_no_update))
> > +                     goto nla_put_failure;
> > +
> > +             if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PERIOD,
> > +                             mep->cc_ccm_tx_info.period))
> > +                     goto nla_put_failure;
> > +
> > +             if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_IF_TLV,
> > +                             mep->cc_ccm_tx_info.if_tlv))
> > +                     goto nla_put_failure;
> > +
> > +             if (nla_put_u8(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_IF_TLV_VALUE,
> > +                            mep->cc_ccm_tx_info.if_tlv_value))
> > +                     goto nla_put_failure;
> > +
> > +             if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PORT_TLV,
> > +                             mep->cc_ccm_tx_info.port_tlv))
> > +                     goto nla_put_failure;
> > +
> > +             if (nla_put_u8(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PORT_TLV_VALUE,
> > +                            mep->cc_ccm_tx_info.port_tlv_value))
> > +                     goto nla_put_failure;
> 
> Consider collapsing writing related attrs in a nest into a single
> if statement:
> 
>         if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_SEQ_NO_UPDATE,
>                         mep->cc_ccm_tx_info.seq_no_update) ||
>             nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_CCM_TX_PERIOD,
>                         mep->cc_ccm_tx_info.period) ||
>                 ...
I will prefer to keep it as is for my personal taste :-)

-- 
/Henrik
