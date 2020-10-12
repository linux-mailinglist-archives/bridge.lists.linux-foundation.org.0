Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7809028B5AA
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 15:12:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2712D86A48;
	Mon, 12 Oct 2020 13:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aZybeaZxQjst; Mon, 12 Oct 2020 13:12:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id F09C486A6B;
	Mon, 12 Oct 2020 13:12:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CB116C0051;
	Mon, 12 Oct 2020 13:12:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 199F4C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 159CE8748C
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lNXL0X+vQbSQ for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 13:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4A95E87285
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602508349; x=1634044349;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BvRgfKsWnUUiY2S+8Go0egDsI593xJ25XxSEy5lPTmM=;
 b=KgBml0rLHqlObRfTxm87oMgej84vjGevggp0N4h1IjYpXSVy2+b3WTTW
 bvpdbMJCWaIkBPmlNLFL69S1st1aCEuG6Ue3E3QG1kBFmZGaOMqgC0sEu
 uR5uW5aolQUwqAdq0HpLtlMaePG5Jp6lvllVtUaz7FDqhs0mDcq/vrX5a
 6rZzAAIfRh1ze0Wtm/TSAllrvtyjXWjNMxABDtex7iG1x5/FM//cOtu2l
 7+l58OsrF9ThyvpQe80KuTzfZp1BuPcaluQ1sO14wdxMlXYNEk0zqi/KP
 FVcAlLXT/4x5Hvqr/KJ0TpJlGiOJafM0vAnbeyFWIjaeK+mVCb05FqJPT g==;
IronPort-SDR: wrMTk+a252npyrDyx6gC8bu5AE6B+0dD2qSBpq3BnnnUQrNS0IgjVTuJGYZmNE8ov6U2u5ZAUU
 cgiDGKZsEYVAAd4viJiaj/isWoxC+A36vA1ZGco1KF5SP8SjbhhCSQWI5C6XADDcD6GhT/R+SY
 LUSAtaj6CzJB3qKqrnye5UuibSidCrnaDv9sNcx9q2LsmrCM5X9ACUV8/M2RJTosbjVAaQWQT1
 SdHGF1jAKVL8BNL2qTV2gijY8PPpOdvNNCtBin+IuJGf/XtXzENDUoAbwWuXdvy2mJm+tlZlug
 bZg=
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="94260500"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Oct 2020 06:12:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 12 Oct 2020 06:12:27 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 12 Oct 2020 06:12:27 -0700
Date: Mon, 12 Oct 2020 13:10:41 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201012131041.kisnsotj4dws7kee@soft-test08>
References: <20201009143530.2438738-1-henrik.bjoernlund@microchip.com>
 <20201009143530.2438738-9-henrik.bjoernlund@microchip.com>
 <1180153d9d7dc5d5c6af9c2eb32f4052c47e14f3.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <1180153d9d7dc5d5c6af9c2eb32f4052c47e14f3.camel@nvidia.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 08/10] bridge: cfm: Netlink GET
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
From: "henrik.bjoernlund--- via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "henrik.bjoernlund@microchip.com" <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for the review.

The 10/09/2020 21:56, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-10-09 at 14:35 +0000, Henrik Bjoernlund wrote:
> > This is the implementation of CFM netlink configuration
> > get information interface.
> >
> > Add new nested netlink attributes. These attributes are used by the
> > user space to get configuration information.
> >
> > GETLINK:
> >     Request filter RTEXT_FILTER_CFM_CONFIG:
> >     Indicating that CFM configuration information must be delivered.
> >
> >     IFLA_BRIDGE_CFM:
> >         Points to the CFM information.
> >
> >     IFLA_BRIDGE_CFM_MEP_CREATE_INFO:
> >         This indicate that MEP instance create parameters are following.
> >     IFLA_BRIDGE_CFM_MEP_CONFIG_INFO:
> >         This indicate that MEP instance config parameters are following.
> >     IFLA_BRIDGE_CFM_CC_CONFIG_INFO:
> >         This indicate that MEP instance CC functionality
> >         parameters are following.
> >     IFLA_BRIDGE_CFM_CC_RDI_INFO:
> >         This indicate that CC transmitted CCM PDU RDI
> >         parameters are following.
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_INFO:
> >         This indicate that CC transmitted CCM PDU parameters are
> >         following.
> >     IFLA_BRIDGE_CFM_CC_PEER_MEP_INFO:
> >         This indicate that the added peer MEP IDs are following.
> >
> > CFM nested attribute has the following attributes in next level.
> >
> > GETLINK RTEXT_FILTER_CFM_CONFIG:
> >     IFLA_BRIDGE_CFM_MEP_CREATE_INSTANCE:
> >         The created MEP instance number.
> >         The type is u32.
> >     IFLA_BRIDGE_CFM_MEP_CREATE_DOMAIN:
> >         The created MEP domain.
> >         The type is u32 (br_cfm_domain).
> >         It must be BR_CFM_PORT.
> >         This means that CFM frames are transmitted and received
> >         directly on the port - untagged. Not in a VLAN.
> >     IFLA_BRIDGE_CFM_MEP_CREATE_DIRECTION:
> >         The created MEP direction.
> >         The type is u32 (br_cfm_mep_direction).
> >         It must be BR_CFM_MEP_DIRECTION_DOWN.
> >         This means that CFM frames are transmitted and received on
> >         the port. Not in the bridge.
> >     IFLA_BRIDGE_CFM_MEP_CREATE_IFINDEX:
> >         The created MEP residence port ifindex.
> >         The type is u32 (ifindex).
> >
> >     IFLA_BRIDGE_CFM_MEP_DELETE_INSTANCE:
> >         The deleted MEP instance number.
> >         The type is u32.
> >
> >     IFLA_BRIDGE_CFM_MEP_CONFIG_INSTANCE:
> >         The configured MEP instance number.
> >         The type is u32.
> >     IFLA_BRIDGE_CFM_MEP_CONFIG_UNICAST_MAC:
> >         The configured MEP unicast MAC address.
> >         The type is 6*u8 (array).
> >         This is used as SMAC in all transmitted CFM frames.
> >     IFLA_BRIDGE_CFM_MEP_CONFIG_MDLEVEL:
> >         The configured MEP unicast MD level.
> >         The type is u32.
> >         It must be in the range 1-7.
> >         No CFM frames are passing through this MEP on lower levels.
> >     IFLA_BRIDGE_CFM_MEP_CONFIG_MEPID:
> >         The configured MEP ID.
> >         The type is u32.
> >         It must be in the range 0-0x1FFF.
> >         This MEP ID is inserted in any transmitted CCM frame.
> >
> >     IFLA_BRIDGE_CFM_CC_CONFIG_INSTANCE:
> >         The configured MEP instance number.
> >         The type is u32.
> >     IFLA_BRIDGE_CFM_CC_CONFIG_ENABLE:
> >         The Continuity Check (CC) functionality is enabled or disabled.
> >         The type is u32 (bool).
> >     IFLA_BRIDGE_CFM_CC_CONFIG_EXP_INTERVAL:
> >         The CC expected receive interval of CCM frames.
> >         The type is u32 (br_cfm_ccm_interval).
> >         This is also the transmission interval of CCM frames when enabled.
> >     IFLA_BRIDGE_CFM_CC_CONFIG_EXP_MAID:
> >         The CC expected receive MAID in CCM frames.
> >         The type is CFM_MAID_LENGTH*u8.
> >         This is MAID is also inserted in transmitted CCM frames.
> >
> >     IFLA_BRIDGE_CFM_CC_PEER_MEP_INSTANCE:
> >         The configured MEP instance number.
> >         The type is u32.
> >     IFLA_BRIDGE_CFM_CC_PEER_MEPID:
> >         The CC Peer MEP ID added.
> >         The type is u32.
> >         When a Peer MEP ID is added and CC is enabled it is expected to
> >         receive CCM frames from that Peer MEP.
> >
> >     IFLA_BRIDGE_CFM_CC_RDI_INSTANCE:
> >         The configured MEP instance number.
> >         The type is u32.
> >     IFLA_BRIDGE_CFM_CC_RDI_RDI:
> >         The RDI that is inserted in transmitted CCM PDU.
> >         The type is u32 (bool).
> >
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_INSTANCE:
> >         The configured MEP instance number.
> >         The type is u32.
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_DMAC:
> >         The transmitted CCM frame destination MAC address.
> >         The type is 6*u8 (array).
> >         This is used as DMAC in all transmitted CFM frames.
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_SEQ_NO_UPDATE:
> >         The transmitted CCM frame update (increment) of sequence
> >         number is enabled or disabled.
> >         The type is u32 (bool).
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_PERIOD:
> >         The period of time where CCM frame are transmitted.
> >         The type is u32.
> >         The time is given in seconds. SETLINK IFLA_BRIDGE_CFM_CC_CCM_TX
> >         must be done before timeout to keep transmission alive.
> >         When period is zero any ongoing CCM frame transmission
> >         will be stopped.
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_IF_TLV:
> >         The transmitted CCM frame update with Interface Status TLV
> >         is enabled or disabled.
> >         The type is u32 (bool).
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_IF_TLV_VALUE:
> >         The transmitted Interface Status TLV value field.
> >         The type is u8.
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_PORT_TLV:
> >         The transmitted CCM frame update with Port Status TLV is enabled
> >         or disabled.
> >         The type is u32 (bool).
> >     IFLA_BRIDGE_CFM_CC_CCM_TX_PORT_TLV_VALUE:
> >         The transmitted Port Status TLV value field.
> >         The type is u8.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > ---
> >  include/uapi/linux/if_bridge.h |   6 ++
> >  net/bridge/br_cfm_netlink.c    | 161 +++++++++++++++++++++++++++++++++
> >  net/bridge/br_netlink.c        |  29 +++++-
> >  net/bridge/br_private.h        |   6 ++
> >  4 files changed, 200 insertions(+), 2 deletions(-)
> >
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 

-- 
/Henrik
