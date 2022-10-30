Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8678B612D42
	for <lists.bridge@lfdr.de>; Sun, 30 Oct 2022 23:09:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E25401A2;
	Sun, 30 Oct 2022 22:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7E25401A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tftctaaL-cR5; Sun, 30 Oct 2022 22:09:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E6D03401BA;
	Sun, 30 Oct 2022 22:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6D03401BA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8B184C007B;
	Sun, 30 Oct 2022 22:09:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 02C34C002D
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 22:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD22381260
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 22:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD22381260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xjM-ZoS6nYh for <bridge@lists.linux-foundation.org>;
 Sun, 30 Oct 2022 22:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB70D81255
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB70D81255
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 22:09:35 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id C415C18845C3;
 Sun, 30 Oct 2022 22:09:31 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id AFB9F2500015;
 Sun, 30 Oct 2022 22:09:31 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id A95689EC0005; Sun, 30 Oct 2022 22:09:31 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 30 Oct 2022 23:09:31 +0100
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <20221025100024.1287157-2-idosch@nvidia.com>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-2-idosch@nvidia.com>
User-Agent: Gigahost Webmail
Message-ID: <0b1655f30a383f9b12c0d0c9c11efa56@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 01/16] bridge: Add MAC
 Authentication Bypass (MAB) support
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

On 2022-10-25 12:00, Ido Schimmel wrote:
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 5aeb3646e74c..bbc82c70b091 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -188,6 +188,7 @@ static inline size_t br_port_info_size(void)
>  		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
> +		+ nla_total_size(1)	/* IFLA_BRPORT_MAB */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* 
> IFLA_BRPORT_ROOT_ID */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* 
> IFLA_BRPORT_BRIDGE_ID */
>  		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
> @@ -274,7 +275,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>  	    nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
>  		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
>  	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) 
> ||
> -	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & 
> BR_PORT_LOCKED)))
> +	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & 
> BR_PORT_LOCKED)) ||
> +	    nla_put_u8(skb, IFLA_BRPORT_MAB, !!(p->flags & BR_PORT_MAB)))
>  		return -EMSGSIZE;
> 
>  	timerval = br_timer_value(&p->message_age_timer);
> @@ -876,6 +878,7 @@ static const struct nla_policy
> br_port_policy[IFLA_BRPORT_MAX + 1] = {
>  	[IFLA_BRPORT_NEIGH_SUPPRESS] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_ISOLATED]	= { .type = NLA_U8 },
>  	[IFLA_BRPORT_LOCKED] = { .type = NLA_U8 },
> +	[IFLA_BRPORT_MAB] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_BACKUP_PORT] = { .type = NLA_U32 },
>  	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
>  };
> @@ -943,6 +946,14 @@ static int br_setport(struct net_bridge_port *p,
> struct nlattr *tb[],
>  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, 
> BR_NEIGH_SUPPRESS);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
> +	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
> +
> +	if ((p->flags & BR_PORT_MAB) &&
> +	    (!(p->flags & BR_PORT_LOCKED) || !(p->flags & BR_LEARNING))) {
> +		NL_SET_ERR_MSG(extack, "MAB can only be enabled on a locked port
> with learning enabled");

It's a bit odd to get this message when turning off learning on a port 
with MAB on, e.g....

# bridge link set dev a2 learning off
Error: MAB can only be enabled on a locked port with learning enabled.

