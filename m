Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7E156B4CA
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 10:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E7676134B;
	Fri,  8 Jul 2022 08:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E7676134B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=e12K0uKg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfsZidmaNcNK; Fri,  8 Jul 2022 08:54:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B4EA961343;
	Fri,  8 Jul 2022 08:54:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4EA961343
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BC97C0077;
	Fri,  8 Jul 2022 08:54:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4FCB3C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 08:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C92684210
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 08:54:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C92684210
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=e12K0uKg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKoOrDSJh1N5 for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 08:54:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E29E5844DA
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E29E5844DA
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 08:54:07 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id y4so12715682edc.4
 for <bridge@lists.linux-foundation.org>; Fri, 08 Jul 2022 01:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GLta0ma1QRgwgTjNye7xmCBAicIOxPPoavgPQ9dFRiA=;
 b=e12K0uKghad8E1eFk6kHiXmwmYvwmFd7QbmPO/Cyh6+CMAgyDzRShTmdMlcC7kzpOM
 QvVazj+JGLyERlGfseCP77FwHhBNh4eCGQwT/XfJ/AMOgAiw3XPF23qO/34glo3Ii+5M
 BoSrJh6LoFDYWdUQhqpZ6FcdNd28jnTIVzKbWrfs/dkVE2iDTCSlr+/pmu5AKYgwHeGw
 YU38K2XlpgEg3UTPyLME16HMLVvMfdE2xZ6pjz/uYqYsX5wzsYdocBS9LEkdcspTrsuc
 yUptlUEBqbUS7eoDBLD3wEU7kHixZBVT+JxXKNwW18Sw9E9lmBLbAf7CmDZ/uBQB8G4N
 GGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GLta0ma1QRgwgTjNye7xmCBAicIOxPPoavgPQ9dFRiA=;
 b=UlLOIvyPVw6/dJfcgix/r1b7elWcLr02uJVQmV/UKV9ynZbTKS44k0p6JZ4mnlPOSd
 mVoIJv+Vs6R55jtQBqFqVcyhkIe2F72Qq0QbQS3uSV8XpEvzl/vQKUVCjIFtCLQXJYGH
 lMxDsUc4WwwaTDsxo61DHvsGqQGOLKcRryUHv0eC+DGkn3MNFS4XzYecYoUicCjYQ8Co
 SzM7WnY+reRwLNCaNYnhvyGwX3+5sSltLKLEHZ9M0eXtqjUZu2Aguki5p+HzZFl8vUzN
 8iOozbdSjm0Phge59+Dvf5DVYubR5FcXfgAtHz/ZK7nmsJ4JlEJmPrskI76Lxfj+VtQ2
 ejkQ==
X-Gm-Message-State: AJIora9K5/Ee6hedo73fQJNA0BSmtapc+bDFrtTqqglkq35Iqh1hat1/
 S0HH9vW9pprBjwSUnhAOICo=
X-Google-Smtp-Source: AGRyM1vYFLy7UsVWG5AmNGeKBOwaDqlbaCAD8dIm+Mz2rfUp2zgT8yoJ/NMHbqJASEtpfh5AroBUyg==
X-Received: by 2002:a05:6402:3593:b0:43a:a259:2518 with SMTP id
 y19-20020a056402359300b0043aa2592518mr3303220edc.117.1657270446049; 
 Fri, 08 Jul 2022 01:54:06 -0700 (PDT)
Received: from skbuf ([188.25.231.143]) by smtp.gmail.com with ESMTPSA id
 k20-20020a1709063fd400b00722f66fb36csm19776386ejj.112.2022.07.08.01.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 01:54:05 -0700 (PDT)
Date: Fri, 8 Jul 2022 11:54:03 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20220708085403.sk7znfad3x2mnxeh@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-3-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220707152930.1789437-3-netdev@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 2/6] net: switchdev: add support
 for offloading of fdb locked flag
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

On Thu, Jul 07, 2022 at 05:29:26PM +0200, Hans Schultz wrote:
> Used for Mac-auth/MAB feature in the offloaded case.
> Send flag through switchdev to driver.
> 
> Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
> ---
>  include/net/dsa.h         | 6 ++++++
>  include/net/switchdev.h   | 1 +
>  net/bridge/br.c           | 3 ++-
>  net/bridge/br_fdb.c       | 7 +++++--
>  net/bridge/br_private.h   | 2 +-
>  net/bridge/br_switchdev.c | 1 +
>  net/dsa/dsa_priv.h        | 4 +++-
>  net/dsa/port.c            | 7 ++++++-
>  net/dsa/slave.c           | 4 +++-
>  net/dsa/switch.c          | 6 +++---
>  10 files changed, 31 insertions(+), 10 deletions(-)
> 
> diff --git a/include/net/dsa.h b/include/net/dsa.h
> index 14f07275852b..a5a843b2d67d 100644
> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -330,6 +330,12 @@ struct dsa_port {
>  	/* List of VLANs that CPU and DSA ports are members of. */
>  	struct mutex		vlans_lock;
>  	struct list_head	vlans;
> +
> +	/* List and maintenance of locked ATU entries */
> +	struct mutex		locked_entries_list_lock;
> +	struct list_head	atu_locked_entries_list;
> +	atomic_t		atu_locked_entry_cnt;
> +	struct delayed_work	atu_work;

Leftovers from an old change, please drop from the patch.

>  };
>  
>  /* TODO: ideally DSA ports would have a single dp->link_dp member,
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index aa0171d5786d..9f83c835ee62 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -245,6 +245,7 @@ struct switchdev_notifier_fdb_info {
>  	u16 vid;
>  	u8 added_by_user:1,
>  	   is_local:1,
> +	   is_locked:1,
>  	   offloaded:1;
>  };
>  
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index 96e91d69a9a8..fe0a4741fcda 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
>  	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
>  		fdb_info = ptr;
>  		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
> -						fdb_info->vid, false);
> +						fdb_info->vid, false,
> +						fdb_info->is_locked);
>  		if (err) {
>  			err = notifier_from_errno(err);
>  			break;
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index ee9064a536ae..32ebb18050b9 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -1136,7 +1136,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>  					   "FDB entry towards bridge must be permanent");
>  			return -EINVAL;
>  		}
> -		err = br_fdb_external_learn_add(br, p, addr, vid, true);
> +		err = br_fdb_external_learn_add(br, p, addr, vid, true, false);
>  	} else {
>  		spin_lock_bh(&br->hash_lock);
>  		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> @@ -1366,7 +1366,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
>  
>  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
> -			      bool swdev_notify)
> +			      bool swdev_notify, bool locked)
>  {
>  	struct net_bridge_fdb_entry *fdb;
>  	bool modified = false;
> @@ -1386,6 +1386,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  		if (!p)
>  			flags |= BIT(BR_FDB_LOCAL);
>  
> +		if (locked)
> +			flags |= BIT(BR_FDB_ENTRY_LOCKED);
> +
>  		fdb = fdb_create(br, p, addr, vid, flags);
>  		if (!fdb) {
>  			err = -ENOMEM;
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 47a3598d25c8..9082451b4d40 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -811,7 +811,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
>  void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
>  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
> -			      bool swdev_notify);
> +			      bool swdev_notify, bool locked);
>  int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
>  			      bool swdev_notify);
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 8f3d76c751dd..85e566b856e1 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -136,6 +136,7 @@ static void br_switchdev_fdb_populate(struct net_bridge *br,
>  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
>  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
> +	item->is_locked = test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags);
>  	item->info.dev = (!p || item->is_local) ? br->dev : p->dev;
>  	item->info.ctx = ctx;
>  }
> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
> index d9722e49864b..42f47a94b0f0 100644
> --- a/net/dsa/dsa_priv.h
> +++ b/net/dsa/dsa_priv.h
> @@ -65,6 +65,7 @@ struct dsa_notifier_fdb_info {
>  	const struct dsa_port *dp;
>  	const unsigned char *addr;
>  	u16 vid;
> +	bool is_locked;

drop

>  	struct dsa_db db;
>  };
>  
> @@ -131,6 +132,7 @@ struct dsa_switchdev_event_work {
>  	unsigned char addr[ETH_ALEN];
>  	u16 vid;
>  	bool host_addr;
> +	bool is_locked;

drop

>  };
>  
>  enum dsa_standalone_event {
> @@ -232,7 +234,7 @@ int dsa_port_vlan_msti(struct dsa_port *dp,
>  		       const struct switchdev_vlan_msti *msti);
>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu);
>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> -		     u16 vid);
> +		     u16 vid, bool is_locked);

drop

>  int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
>  		     u16 vid);
>  int dsa_port_standalone_host_fdb_add(struct dsa_port *dp,
> diff --git a/net/dsa/port.c b/net/dsa/port.c
> index 3738f2d40a0b..8bdac9aabe5d 100644
> --- a/net/dsa/port.c
> +++ b/net/dsa/port.c
> @@ -35,6 +35,7 @@ static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp, u16 vid)
>  	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
>  	struct switchdev_notifier_fdb_info info = {
>  		.vid = vid,
> +		.is_locked = false,

drop

>  	};
>  
>  	/* When the port becomes standalone it has already left the bridge.
> @@ -950,12 +951,13 @@ int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu)
>  }
>  
>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> -		     u16 vid)
> +		     u16 vid, bool is_locked)

drop

>  {
>  	struct dsa_notifier_fdb_info info = {
>  		.dp = dp,
>  		.addr = addr,
>  		.vid = vid,
> +		.is_locked = is_locked,

drop

>  		.db = {
>  			.type = DSA_DB_BRIDGE,
>  			.bridge = *dp->bridge,
> @@ -979,6 +981,7 @@ int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
>  		.dp = dp,
>  		.addr = addr,
>  		.vid = vid,
> +		.is_locked = false,

drop

>  		.db = {
>  			.type = DSA_DB_BRIDGE,
>  			.bridge = *dp->bridge,
> @@ -999,6 +1002,7 @@ static int dsa_port_host_fdb_add(struct dsa_port *dp,
>  		.dp = dp,
>  		.addr = addr,
>  		.vid = vid,
> +		.is_locked = false,

drop

>  		.db = db,
>  	};
>  
> @@ -1050,6 +1054,7 @@ static int dsa_port_host_fdb_del(struct dsa_port *dp,
>  		.dp = dp,
>  		.addr = addr,
>  		.vid = vid,
> +		.is_locked = false,

drop

>  		.db = db,
>  	};
>  
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index 801a5d445833..905b15e4eab9 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -2784,6 +2784,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
>  		container_of(work, struct dsa_switchdev_event_work, work);
>  	const unsigned char *addr = switchdev_work->addr;
>  	struct net_device *dev = switchdev_work->dev;
> +	bool is_locked = switchdev_work->is_locked;

drop

>  	u16 vid = switchdev_work->vid;
>  	struct dsa_switch *ds;
>  	struct dsa_port *dp;
> @@ -2799,7 +2800,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
>  		else if (dp->lag)
>  			err = dsa_port_lag_fdb_add(dp, addr, vid);
>  		else
> -			err = dsa_port_fdb_add(dp, addr, vid);
> +			err = dsa_port_fdb_add(dp, addr, vid, is_locked);

drop

>  		if (err) {
>  			dev_err(ds->dev,
>  				"port %d failed to add %pM vid %d to fdb: %d\n",
> @@ -2907,6 +2908,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>  	ether_addr_copy(switchdev_work->addr, fdb_info->addr);
>  	switchdev_work->vid = fdb_info->vid;
>  	switchdev_work->host_addr = host_addr;
> +	switchdev_work->is_locked = fdb_info->is_locked;

drop

>  
>  	dsa_schedule_work(&switchdev_work->work);
>  
> diff --git a/net/dsa/switch.c b/net/dsa/switch.c
> index 2b56218fc57c..32b1e7ac6373 100644
> --- a/net/dsa/switch.c
> +++ b/net/dsa/switch.c
> @@ -234,7 +234,7 @@ static int dsa_port_do_mdb_del(struct dsa_port *dp,
>  }
>  
>  static int dsa_port_do_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> -			       u16 vid, struct dsa_db db)
> +			       u16 vid, bool is_locked, struct dsa_db db)

drop

>  {
>  	struct dsa_switch *ds = dp->ds;
>  	struct dsa_mac_addr *a;
> @@ -398,7 +398,7 @@ static int dsa_switch_host_fdb_add(struct dsa_switch *ds,
>  	dsa_switch_for_each_port(dp, ds) {
>  		if (dsa_port_host_address_match(dp, info->dp)) {
>  			err = dsa_port_do_fdb_add(dp, info->addr, info->vid,
> -						  info->db);
> +						  false, info->db);

drop

>  			if (err)
>  				break;
>  		}
> @@ -437,7 +437,7 @@ static int dsa_switch_fdb_add(struct dsa_switch *ds,
>  	if (!ds->ops->port_fdb_add)
>  		return -EOPNOTSUPP;
>  
> -	return dsa_port_do_fdb_add(dp, info->addr, info->vid, info->db);
> +	return dsa_port_do_fdb_add(dp, info->addr, info->vid, info->is_locked, info->db);

drop

>  }
>  
>  static int dsa_switch_fdb_del(struct dsa_switch *ds,
> -- 
> 2.30.2
> 
