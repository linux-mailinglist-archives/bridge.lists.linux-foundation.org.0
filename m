Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E69855BAF6
	for <lists.bridge@lfdr.de>; Mon, 27 Jun 2022 18:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FB994196C;
	Mon, 27 Jun 2022 16:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FB994196C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=P1KgjzNM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ub_bv_3VLf6j; Mon, 27 Jun 2022 16:06:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3489141919;
	Mon, 27 Jun 2022 16:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3489141919
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CB68CC007E;
	Mon, 27 Jun 2022 16:06:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 63280C002D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 16:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C70F415C2
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 16:06:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C70F415C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sUPS3shT2EGq for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jun 2022 16:06:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63F92415AA
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63F92415AA
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 16:06:39 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id e40so13777413eda.2
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 09:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iuUWp9TRDjV8xfxvCWucHl38XhVPl+OOiSPhV3nTBNU=;
 b=P1KgjzNMzTbU02Xdz1jhSzqkjg+/Ua9ZFGv2do6fIZsZHHbzn0SJAI7GJWkOVK7lQ6
 r6tgeY6+6cc1y5N3JSaLXF4u6vgo38QWnEK1/yC5LcyY8j+XMshtbWTOkphK6N/frYV1
 KewycUy7CV0QtMIzvflQrnNWwBEVWb17wHMeluD01ar2fPCSdM6uhQ1Dub06c358ESh5
 pfa850qzPD3mtK5431jZXZvxvnp/Lr5T1CHYH/udwJs24gfVVmGC93WeOaWnrmveTQGZ
 AoDNUdI05wizpG/NPB/VnqhtKrtouINsOD/HQUU0x1TrrIckJxO59IlWHrtnRGNOEe5E
 SKxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iuUWp9TRDjV8xfxvCWucHl38XhVPl+OOiSPhV3nTBNU=;
 b=7IiMqRevSqK1plPrAuy58Xa5T5AH15JFWjyfqO+hrBooFMM/DADosTniPh0VuCb9LG
 CAmTU9RBf7vbj/ta9RYxbS95DEqX6gY+uXSxvTsdMbhdxikq7dkIYYFfBcHMRdrE7ru0
 ua/Ymk89izRWz1KU9NZKocpZNq1Pyk0NEObNrc88y11NMwwWKmxSbYsG43GNeE81qyZz
 +FWnKTkFqmId0z/vCwmn1VePXzhkhaq38S5bIxBAVGX+wNYkqz/sNzHbDCMYJvbYha2L
 ZGAmxe8jRGRWgGB1LDv52WRg+5K9I9qaBIWVUfTHNI2MtbhCJ5+3zp9IfY7lOOxFBISb
 GCxw==
X-Gm-Message-State: AJIora/26t1w2lofTc2LSj3vFVarbyvG2xeL/H2FguAwv66QBLV31i9A
 imDDvJhr2Bhg6Wlc4ponEfk=
X-Google-Smtp-Source: AGRyM1vvn6z+JQ7FLdOGqNSyhTsbwQd6U8hADBkygQKpKeWIgtARIaam0U5/zWgvi0rwVmhQij6o+Q==
X-Received: by 2002:a05:6402:4252:b0:437:6618:1738 with SMTP id
 g18-20020a056402425200b0043766181738mr17811363edb.259.1656345997452; 
 Mon, 27 Jun 2022 09:06:37 -0700 (PDT)
Received: from skbuf ([188.25.231.135]) by smtp.gmail.com with ESMTPSA id
 d10-20020a056402400a00b004357ab9cfb1sm7789834eda.26.2022.06.27.09.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jun 2022 09:06:36 -0700 (PDT)
Date: Mon, 27 Jun 2022 19:06:34 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220627160634.wylbknsbsafvs3ij@skbuf>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-3-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220524152144.40527-3-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH V3 net-next 2/4] net: switchdev: add support
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

On Tue, May 24, 2022 at 05:21:42PM +0200, Hans Schultz wrote:
> Used for Mac-auth/MAB feature in the offloaded case.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  include/net/dsa.h       | 6 ++++++
>  include/net/switchdev.h | 3 ++-
>  net/bridge/br.c         | 3 ++-
>  net/bridge/br_fdb.c     | 7 +++++--
>  net/bridge/br_private.h | 2 +-
>  5 files changed, 16 insertions(+), 5 deletions(-)
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

DSA is not Marvell only, so please remove these from struct dsa_port and
place them somewhere like struct mv88e6xxx_port. Also, the change has
nothing to do in a patch with the "net: switchdev: " prefix.

>  };
>  
>  /* TODO: ideally DSA ports would have a single dp->link_dp member,
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index aa0171d5786d..62f4f7c9c7c2 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -245,7 +245,8 @@ struct switchdev_notifier_fdb_info {
>  	u16 vid;
>  	u8 added_by_user:1,
>  	   is_local:1,
> -	   offloaded:1;
> +	   offloaded:1,
> +	   locked:1;

As mentioned by Ido, please update br_switchdev_fdb_populate() as part
of this change, in the bridge->switchdev direction. We should add a
comment near struct switchdev_notifier_fdb_info stating just that,
so that people don't forget.

>  };
>  
>  struct switchdev_notifier_port_obj_info {
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index 96e91d69a9a8..12933388a5a4 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
>  	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
>  		fdb_info = ptr;
>  		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
> -						fdb_info->vid, false);
> +						fdb_info->vid, false,
> +						fdb_info->locked);
>  		if (err) {
>  			err = notifier_from_errno(err);
>  			break;
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6b83e2d6435d..92469547283a 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -1135,7 +1135,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>  					   "FDB entry towards bridge must be permanent");
>  			return -EINVAL;
>  		}
> -		err = br_fdb_external_learn_add(br, p, addr, vid, true);
> +		err = br_fdb_external_learn_add(br, p, addr, vid, true, false);
>  	} else {
>  		spin_lock_bh(&br->hash_lock);
>  		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> @@ -1365,7 +1365,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
>  
>  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
> -			      bool swdev_notify)
> +			      bool swdev_notify, bool locked)
>  {
>  	struct net_bridge_fdb_entry *fdb;
>  	bool modified = false;
> @@ -1385,6 +1385,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
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
> index be17c99efe65..88913e6a59e1 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -815,7 +815,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
>  void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
>  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
> -			      bool swdev_notify);
> +			      bool swdev_notify, bool locked);
>  int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
>  			      bool swdev_notify);
> -- 
> 2.30.2
> 

