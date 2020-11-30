Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5046D2C8870
	for <lists.bridge@lfdr.de>; Mon, 30 Nov 2020 16:43:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF4FE228E7;
	Mon, 30 Nov 2020 15:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoEr09c4GQaJ; Mon, 30 Nov 2020 15:43:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 56870228D1;
	Mon, 30 Nov 2020 15:43:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4562DC0052;
	Mon, 30 Nov 2020 15:43:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 595F8C0052
 for <bridge@lists.linux-foundation.org>; Mon, 30 Nov 2020 15:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FEB887256
 for <bridge@lists.linux-foundation.org>; Mon, 30 Nov 2020 15:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KWqz97LJKiGU for <bridge@lists.linux-foundation.org>;
 Mon, 30 Nov 2020 15:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 776A887170
 for <bridge@lists.linux-foundation.org>; Mon, 30 Nov 2020 15:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606751005;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pc3sTfbXJOVt6vCEe9FHldGHV1UK5SFz3XNDNv2grKc=;
 b=iMqNJRfp8EQRXerxZCOZvWuuTwzSr8J5keA/OfbvRTB+wQbr1rxyQaSepDFrN0uYT+lNsM
 IXkyVrfdgszjcoXoLf86M3OFJZ2gsFeIS482aFaGo8jx4/2wGxOF/a2IJ08jLWWCWsmCvR
 rNXBuW/tzaL3IRWMwk1KodNB8X0Qoqw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-FYIPvKtJOLi8Kdje2lC_UA-1; Mon, 30 Nov 2020 10:43:19 -0500
X-MC-Unique: FYIPvKtJOLi8Kdje2lC_UA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A4A5185E481;
 Mon, 30 Nov 2020 15:43:17 +0000 (UTC)
Received: from ceranb (unknown [10.40.196.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 922286086F;
 Mon, 30 Nov 2020 15:43:14 +0000 (UTC)
Date: Mon, 30 Nov 2020 16:43:13 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20201130164313.535b6efa@ceranb>
In-Reply-To: <20201129125407.1391557-8-idosch@idosch.org>
References: <20201129125407.1391557-1-idosch@idosch.org>
 <20201129125407.1391557-8-idosch@idosch.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Cc: petrm@nvidia.com, amcohen@nvidia.com, danieller@nvidia.com,
 netdev@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, mlxsw@nvidia.com, nikolay@nvidia.com,
 jiri@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 7/9] bridge: switchdev: Notify about
 VLAN protocol changes
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

On Sun, 29 Nov 2020 14:54:05 +0200
Ido Schimmel <idosch@idosch.org> wrote:

> From: Danielle Ratson <danieller@nvidia.com>
> 
> Drivers that support bridge offload need to be notified about changes to
> the bridge's VLAN protocol so that they could react accordingly and
> potentially veto the change.
> 
> Add a new switchdev attribute to communicate the change to drivers.
> 
> Signed-off-by: Danielle Ratson <danieller@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  include/net/switchdev.h |  2 ++
>  net/bridge/br_vlan.c    | 16 ++++++++++++++--
>  2 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index 53e8b4994296..99cd538d6519 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -38,6 +38,7 @@ enum switchdev_attr_id {
>  	SWITCHDEV_ATTR_ID_PORT_MROUTER,
>  	SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME,
>  	SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
> +	SWITCHDEV_ATTR_ID_BRIDGE_VLAN_PROTOCOL,
>  	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
>  	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
>  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> @@ -58,6 +59,7 @@ struct switchdev_attr {
>  		bool mrouter;				/* PORT_MROUTER */
>  		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
>  		bool vlan_filtering;			/* BRIDGE_VLAN_FILTERING */
> +		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
>  		bool mc_disabled;			/* MC_DISABLED */
>  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
>  		u8 mrp_port_state;			/* MRP_PORT_STATE */
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index 11f54a7c0d1d..d07008678d32 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -854,15 +854,25 @@ EXPORT_SYMBOL_GPL(br_vlan_get_proto);
>  
>  int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
>  {
> +	struct switchdev_attr attr = {
> +		.orig_dev = br->dev,
> +		.id = SWITCHDEV_ATTR_ID_BRIDGE_VLAN_PROTOCOL,
> +		.flags = SWITCHDEV_F_SKIP_EOPNOTSUPP,
> +		.u.vlan_protocol = ntohs(proto),
> +	};
>  	int err = 0;
>  	struct net_bridge_port *p;
>  	struct net_bridge_vlan *vlan;
>  	struct net_bridge_vlan_group *vg;
> -	__be16 oldproto;
> +	__be16 oldproto = br->vlan_proto;
>  
>  	if (br->vlan_proto == proto)
>  		return 0;
>  
> +	err = switchdev_port_attr_set(br->dev, &attr);
> +	if (err && err != -EOPNOTSUPP)
> +		return err;
> +
>  	/* Add VLANs for the new proto to the device filter. */
>  	list_for_each_entry(p, &br->port_list, list) {
>  		vg = nbp_vlan_group(p);
> @@ -873,7 +883,6 @@ int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
>  		}
>  	}
>  
> -	oldproto = br->vlan_proto;
>  	br->vlan_proto = proto;
>  
>  	recalculate_group_addr(br);
> @@ -889,6 +898,9 @@ int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
>  	return 0;
>  
>  err_filt:
> +	attr.u.vlan_protocol = ntohs(oldproto);
> +	switchdev_port_attr_set(br->dev, &attr);
> +
>  	list_for_each_entry_continue_reverse(vlan, &vg->vlan_list, vlist)
>  		vlan_vid_del(p->dev, proto, vlan->vid);
>  

Reviewed-by: Ivan Vecera <ivecera@redhat.com>

