Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB98687800
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 09:56:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 379F140BD9;
	Thu,  2 Feb 2023 08:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 379F140BD9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=aTwXXRoN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jIQEgLuOyFzL; Thu,  2 Feb 2023 08:56:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 69A4440BDB;
	Thu,  2 Feb 2023 08:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69A4440BDB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 25D2DC007C;
	Thu,  2 Feb 2023 08:56:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 56A45C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 08:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3118A6102F
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 08:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3118A6102F
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=aTwXXRoN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBTDykxzr7uV for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 08:56:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14DE260640
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14DE260640
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 08:56:09 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id k4so4021854eje.1
 for <bridge@lists.linux-foundation.org>; Thu, 02 Feb 2023 00:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TKaIimbcL17+UfaUby4wYmN0o5ZNEawiPRqtUTMoEE0=;
 b=aTwXXRoN8YjE1vAsfs+QLUws1VL3n4/sZnoxTJDNoUK5af4UCvycdtqfRqLDortV/i
 elXAyNW3+tSOMuDHR5+vPMKodHtIuEbB9798B4b/iKG9DYbUXhyLbo63j7fHD45f2p7i
 BIGQzZZy+FEbrlV44aAb1BK4ltlT37xZk9/kNDstZZIc439yg/kWCUE5PsaVECaKvVDo
 5Rt/NnV/2GZREHrrHB+t3cidlniiVFYgcJoVUhQsnOIka30jH8TihXND56ORkPPBy/r5
 jBMAkcKqJwNyJlJoixD75EL2DNwaASTriuv2cHe7LaUAvMx2suHmeooCKvniFjP0eWzP
 p8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TKaIimbcL17+UfaUby4wYmN0o5ZNEawiPRqtUTMoEE0=;
 b=uMP+WuTgXCmjcNA+0n+soPr8TkLNAa8vmlOq4uV0/2DCR9GEx7Prvj68alC3p7nchq
 NTplwM6RKew2Exp1UoXGsA7E2w7vjG8KWLxKvtoMoE9x5QLWmWl4c6duRPJrlkv2DweG
 aOrwWOJTR4d8VcCEGrzomK1ItPyhVUDJj45KDGxYuTUz4KGaYMI+dP2kpnyJlGT66Y/N
 4NdJG9v5tFs0vq4Wf5b4YRgE/FrwB/E0h+ReaxUrMbYrcurZGaU2XXWmhjzaJvi0Lpf5
 cYn10nOG3UEXBbThV1mVfwmvm0N6gZ+NbfeCvfOTM2rXPoisPV83OZXpQYueg6DhBYGU
 aRWQ==
X-Gm-Message-State: AO0yUKUm1o32ZdivqH9z9gkjFK6SzrivrWVUZx1jNxXxsplEnt7xX2U3
 zHwdCuIT6Yigr7YM+nvfCf+IMw==
X-Google-Smtp-Source: AK7set8U1qq9SdFNGoDRXU45Qwa/0rIVs/yYwPj9hcoCAZAQWlG/+axKvnISGyoajq+dsyR4J+axhQ==
X-Received: by 2002:a17:907:a703:b0:878:56ae:36e6 with SMTP id
 vw3-20020a170907a70300b0087856ae36e6mr1501288ejc.35.1675328166998; 
 Thu, 02 Feb 2023 00:56:06 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 t26-20020a17090616da00b007aee7ca1199sm11430752ejd.10.2023.02.02.00.56.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Feb 2023 00:56:06 -0800 (PST)
Message-ID: <18e82e5a-1ee9-94ee-78a7-15bc08b62978@blackwall.org>
Date: Thu, 2 Feb 2023 10:56:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1675271084.git.petrm@nvidia.com>
 <706d902460b69454ffeb57908beb8dce46e9b064.1675271084.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <706d902460b69454ffeb57908beb8dce46e9b064.1675271084.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next mlxsw v2 07/16] net: bridge: Maintain
 number of MDB entries in net_bridge_mcast_port
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

On 01/02/2023 19:28, Petr Machata wrote:
> The MDB maintained by the bridge is limited. When the bridge is configured
> for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
> capacity. In SW datapath, the capacity is configurable through the
> IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
> similar limit exists in the HW datapath for purposes of offloading.
> 
> In order to prevent the issue of unilateral exhaustion of MDB resources,
> introduce two parameters in each of two contexts:
> 
> - Per-port and per-port-VLAN number of MDB entries that the port
>   is member in.
> 
> - Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
>   per-port-VLAN maximum permitted number of MDB entries, or 0 for
>   no limit.
> 
> The per-port multicast context is used for tracking of MDB entries for the
> port as a whole. This is available for all bridges.
> 
> The per-port-VLAN multicast context is then only available on
> VLAN-filtering bridges on VLANs that have multicast snooping on.
> 
> With these changes in place, it will be possible to configure MDB limit for
> bridge as a whole, or any one port as a whole, or any single port-VLAN.
> 
> Note that unlike the global limit, exhaustion of the per-port and
> per-port-VLAN maximums does not cause disablement of multicast snooping.
> It is also permitted to configure the local limit larger than hash_max,
> even though that is not useful.
> 
> In this patch, introduce only the accounting for number of entries, and the
> max field itself, but not the means to toggle the max. The next patch
> introduces the netlink APIs to toggle and read the values.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     - In br_multicast_port_ngroups_inc_one(), bounce
>       if n>=max, not if n==max
>     - Adjust extack messages to mention ngroups, now that
>       the bounces appear when n>=max, not n==max
>     - In __br_multicast_enable_port_ctx(), do not reset
>       max to 0. Also do not count number of entries by
>       going through _inc, as that would end up incorrectly
>       bouncing the entries.
> 
>  net/bridge/br_multicast.c | 132 +++++++++++++++++++++++++++++++++++++-
>  net/bridge/br_private.h   |   2 +
>  2 files changed, 133 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index 51b622afdb67..e7ae339a8757 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -31,6 +31,7 @@
>  #include <net/ip6_checksum.h>
>  #include <net/addrconf.h>
>  #endif
> +#include <trace/events/bridge.h>
>  
>  #include "br_private.h"
>  #include "br_private_mcast_eht.h"
> @@ -234,6 +235,29 @@ br_multicast_pg_to_port_ctx(const struct net_bridge_port_group *pg)
>  	return pmctx;
>  }
>  
> +static struct net_bridge_mcast_port *
> +br_multicast_port_vid_to_port_ctx(struct net_bridge_port *port, u16 vid)
> +{
> +	struct net_bridge_mcast_port *pmctx = NULL;
> +	struct net_bridge_vlan *vlan;
> +
> +	lockdep_assert_held_once(&port->br->multicast_lock);
> +
> +	if (!br_opt_get(port->br, BROPT_MCAST_VLAN_SNOOPING_ENABLED))
> +		return NULL;
> +
> +	/* Take RCU to access the vlan. */
> +	rcu_read_lock();
> +
> +	vlan = br_vlan_find(nbp_vlan_group_rcu(port), vid);
> +	if (vlan && !br_multicast_port_ctx_vlan_disabled(&vlan->port_mcast_ctx))
> +		pmctx = &vlan->port_mcast_ctx;
> +
> +	rcu_read_unlock();
> +
> +	return pmctx;
> +}
> +
>  /* when snooping we need to check if the contexts should be used
>   * in the following order:
>   * - if pmctx is non-NULL (port), check if it should be used
> @@ -668,6 +692,82 @@ void br_multicast_del_group_src(struct net_bridge_group_src *src,
>  	__br_multicast_del_group_src(src);
>  }
>  
> +static int
> +br_multicast_port_ngroups_inc_one(struct net_bridge_mcast_port *pmctx,
> +				  struct netlink_ext_ack *extack)
> +{
> +	if (pmctx->mdb_max_entries &&
> +	    pmctx->mdb_n_entries >= pmctx->mdb_max_entries)

These should be using *_ONCE() because of the next patch.
KCSAN might be sad otherwise. :)

> +		return -E2BIG;
> +
> +	pmctx->mdb_n_entries++;

WRITE_ONCE()

> +	return 0;
> +}
> +
> +static void br_multicast_port_ngroups_dec_one(struct net_bridge_mcast_port *pmctx)
> +{
> +	WARN_ON_ONCE(pmctx->mdb_n_entries-- == 0);

READ_ONCE()

> +}
> +
> +static int br_multicast_port_ngroups_inc(struct net_bridge_port *port,
> +					 const struct br_ip *group,
> +					 struct netlink_ext_ack *extack)
> +{
> +	struct net_bridge_mcast_port *pmctx;
> +	int err;
> +
> +	lockdep_assert_held_once(&port->br->multicast_lock);
> +
> +	/* Always count on the port context. */
> +	err = br_multicast_port_ngroups_inc_one(&port->multicast_ctx, extack);
> +	if (err) {
> +		NL_SET_ERR_MSG_FMT_MOD(extack, "Port is already in %u groups, and mcast_max_groups=%u",
> +				       port->multicast_ctx.mdb_n_entries,
> +				       port->multicast_ctx.mdb_max_entries);

READ_ONCE()

> +		trace_br_mdb_full(port->dev, group);
> +		return err;
> +	}
> +
> +	/* Only count on the VLAN context if VID is given, and if snooping on
> +	 * that VLAN is enabled.
> +	 */
> +	if (!group->vid)
> +		return 0;
> +
> +	pmctx = br_multicast_port_vid_to_port_ctx(port, group->vid);
> +	if (!pmctx)
> +		return 0;
> +
> +	err = br_multicast_port_ngroups_inc_one(pmctx, extack);
> +	if (err) {
> +		NL_SET_ERR_MSG_FMT_MOD(extack, "Port-VLAN is already in %u groups, and mcast_max_groups=%u",
> +				       pmctx->mdb_n_entries,
> +				       pmctx->mdb_max_entries);

READ_ONCE()

> +		trace_br_mdb_full(port->dev, group);
> +		goto dec_one_out;
> +	}
> +
> +	return 0;
> +
> +dec_one_out:
> +	br_multicast_port_ngroups_dec_one(&port->multicast_ctx);
> +	return err;
> +}
> +
> +static void br_multicast_port_ngroups_dec(struct net_bridge_port *port, u16 vid)
> +{
> +	struct net_bridge_mcast_port *pmctx;
> +
> +	lockdep_assert_held_once(&port->br->multicast_lock);
> +
> +	if (vid) {
> +		pmctx = br_multicast_port_vid_to_port_ctx(port, vid);
> +		if (pmctx)
> +			br_multicast_port_ngroups_dec_one(pmctx);
> +	}
> +	br_multicast_port_ngroups_dec_one(&port->multicast_ctx);
> +}
> +
>  static void br_multicast_destroy_port_group(struct net_bridge_mcast_gc *gc)
>  {
>  	struct net_bridge_port_group *pg;
> @@ -702,6 +802,7 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
>  	} else {
>  		br_multicast_star_g_handle_mode(pg, MCAST_INCLUDE);
>  	}
> +	br_multicast_port_ngroups_dec(pg->key.port, pg->key.addr.vid);
>  	hlist_add_head(&pg->mcast_gc.gc_node, &br->mcast_gc_list);
>  	queue_work(system_long_wq, &br->mcast_gc_work);
>  
> @@ -1165,6 +1266,7 @@ struct net_bridge_mdb_entry *br_multicast_new_group(struct net_bridge *br,
>  		return mp;
>  
>  	if (atomic_read(&br->mdb_hash_tbl.nelems) >= br->hash_max) {
> +		trace_br_mdb_full(br->dev, group);
>  		br_mc_disabled_update(br->dev, false, NULL);
>  		br_opt_toggle(br, BROPT_MULTICAST_ENABLED, false);
>  		return ERR_PTR(-E2BIG);
> @@ -1288,11 +1390,16 @@ struct net_bridge_port_group *br_multicast_new_port_group(
>  			struct netlink_ext_ack *extack)
>  {
>  	struct net_bridge_port_group *p;
> +	int err;
> +
> +	err = br_multicast_port_ngroups_inc(port, group, extack);
> +	if (err)
> +		return NULL;
>  
>  	p = kzalloc(sizeof(*p), GFP_ATOMIC);
>  	if (unlikely(!p)) {
>  		NL_SET_ERR_MSG_MOD(extack, "Couldn't allocate new port group");
> -		return NULL;
> +		goto dec_out;
>  	}
>  
>  	p->key.addr = *group;
> @@ -1326,18 +1433,22 @@ struct net_bridge_port_group *br_multicast_new_port_group(
>  
>  free_out:
>  	kfree(p);
> +dec_out:
> +	br_multicast_port_ngroups_dec(port, group->vid);
>  	return NULL;
>  }
>  
>  void br_multicast_del_port_group(struct net_bridge_port_group *p)
>  {
>  	struct net_bridge_port *port = p->key.port;
> +	__u16 vid = p->key.addr.vid;
>  
>  	hlist_del_init(&p->mglist);
>  	if (!br_multicast_is_star_g(&p->key.addr))
>  		rhashtable_remove_fast(&port->br->sg_port_tbl, &p->rhnode,
>  				       br_sg_port_rht_params);
>  	kfree(p);
> +	br_multicast_port_ngroups_dec(port, vid);
>  }
>  
>  void br_multicast_host_join(const struct net_bridge_mcast *brmctx,
> @@ -1951,6 +2062,25 @@ static void __br_multicast_enable_port_ctx(struct net_bridge_mcast_port *pmctx)
>  		br_ip4_multicast_add_router(brmctx, pmctx);
>  		br_ip6_multicast_add_router(brmctx, pmctx);
>  	}
> +
> +	if (br_multicast_port_ctx_is_vlan(pmctx)) {
> +		struct net_bridge_port_group *pg;
> +		u32 n = 0;
> +
> +		/* The mcast_n_groups counter might be wrong. First,
> +		 * BR_VLFLAG_MCAST_ENABLED is toggled before temporary entries
> +		 * are flushed, thus mcast_n_groups after the toggle does not
> +		 * reflect the true values. And second, permanent entries added
> +		 * while BR_VLFLAG_MCAST_ENABLED was disabled, are not reflected
> +		 * either. Thus we have to refresh the counter.
> +		 */
> +
> +		hlist_for_each_entry(pg, &pmctx->port->mglist, mglist) {
> +			if (pg->key.addr.vid == pmctx->vlan->vid)
> +				n++;
> +		}
> +		pmctx->mdb_n_entries = n;

WRITE_ONCE()

> +	}
>  }
>  
>  void br_multicast_enable_port(struct net_bridge_port *port)
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index e4069e27b5c6..49f411a0a1f1 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -126,6 +126,8 @@ struct net_bridge_mcast_port {
>  	struct hlist_node		ip6_rlist;
>  #endif /* IS_ENABLED(CONFIG_IPV6) */
>  	unsigned char			multicast_router;
> +	u32				mdb_n_entries;
> +	u32				mdb_max_entries;
>  #endif /* CONFIG_BRIDGE_IGMP_SNOOPING */
>  };
>  

