Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C0F4E522F
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 13:30:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA2B78143F;
	Wed, 23 Mar 2022 12:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZZqlzWZk_01; Wed, 23 Mar 2022 12:30:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5E687813FC;
	Wed, 23 Mar 2022 12:30:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 262EBC0073;
	Wed, 23 Mar 2022 12:30:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 658D2C000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51C2640354
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XEXXHlsfDk9J for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 12:30:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7DD940256
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:30:02 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id w7so2436533lfd.6
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 05:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Mwi/PBVi4OPxhBhWV/Tktz9iiz8/C8WzSrL6VIgHGvk=;
 b=IQSd2x3y8uw0/eXpM0aSg9biATDuOVDOwzqaV//6E3+npTpbbX5NiWYAnWjaXE5tYe
 r6tGwUuwJyuRGBkBt4/svYcLJVPh+sgTWfNnbv+YKsjuOGO/7JAVVDkoIuf4dFAsnou7
 JSiUVi+Xhgz2j0OQwgS48G+blKrsgn6wVCszn7I+XAHYRtR9Yc4W2h+ZStLA/XGvSymq
 +E+fhmQCpTvGBucE7y7eIYQf8SqnQg28Yex1gci/rU603EA+XwHPDIX9lX50rble14t5
 IkHHbmm+uAEPXmhlf8JOU8iITQT+b3SnCkrKY9goLYq/cO7DwyvLS1XFC8sQbVS8CELJ
 +72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Mwi/PBVi4OPxhBhWV/Tktz9iiz8/C8WzSrL6VIgHGvk=;
 b=q9jNsut6DCPH/Ri8xKdgsoUkeRSEkm+ydOspNK9SYLEuHlm3mXLQk6QqZgIs+DUIc5
 p2HgnrTOmlnz6EnEoHqLejZzwOfrbuo03XegPlFmEHHoAvWsAs6EjFe3hgooN3Sglgga
 ae8sZMVbWJzlrWXoXOgGR5WLWoNyRM5iXItsO8M95uP3N9SXMGQFm18021+mEk4lQY5n
 E7MLRSQGTmFZEy61Xr4+x8MTGRbL0orRpfU9a8f1AsxWLjEFc1+fP83FtDL7QSYRIvFz
 ieCZJ4qjDGFSKZy8uhEpwTDWCQrOMB352iPNGsPtqw0iVbKS5lpInK+CskYlIMhzKDLN
 CsXg==
X-Gm-Message-State: AOAM5327PKfpAjtL0t8pMn7fz18RHs8DntHMSVHKV58zXYPca137ctSl
 PMurzB96GlPXxtxokWweTFg=
X-Google-Smtp-Source: ABdhPJzGnJoIOpq+fEcjN3P5YkjdZXy7TLYFPzwBqo0OfwZaY7XcXMBK/21jxIyD8wF4vg3d40qMbA==
X-Received: by 2002:a05:6512:3d1a:b0:44a:10f5:5670 with SMTP id
 d26-20020a0565123d1a00b0044a10f55670mr16395636lfv.198.1648038600680; 
 Wed, 23 Mar 2022 05:30:00 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 b7-20020a05651c098700b00247ea2fa530sm2710621ljq.20.2022.03.23.05.29.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 05:30:00 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
Date: Wed, 23 Mar 2022 13:29:52 +0100
Message-ID: <86o81whmwv.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
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

On tor, mar 17, 2022 at 10:39, Hans Schultz <schultz.hans@gmail.com> wrote:
> Used for Mac-auth/MAB feature in the offloaded case.
>
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  include/net/switchdev.h | 3 ++-
>  net/bridge/br.c         | 3 ++-
>  net/bridge/br_fdb.c     | 7 +++++--
>  net/bridge/br_private.h | 2 +-
>  4 files changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index 3e424d40fae3..d5d923411f5e 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -229,7 +229,8 @@ struct switchdev_notifier_fdb_info {
>  	u16 vid;
>  	u8 added_by_user:1,
>  	   is_local:1,
> -	   offloaded:1;
> +	   offloaded:1,
> +	   locked:1;
>  };
>  
>  struct switchdev_notifier_port_obj_info {
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index b1dea3febeea..adcdbecbc218 100644
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
> index 57ec559a85a7..57aa1955d34d 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -987,7 +987,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>  					   "FDB entry towards bridge must be permanent");
>  			return -EINVAL;
>  		}
> -		err = br_fdb_external_learn_add(br, p, addr, vid, true);
> +		err = br_fdb_external_learn_add(br, p, addr, vid, true,
>  false);

Does someone have an idea why there at this point is no option to add a
dynamic fdb entry?

The fdb added entries here do not age out, while the ATU entries do
(after 5 min), resulting in unsynced ATU vs fdb.

>  	} else {
>  		spin_lock_bh(&br->hash_lock);
>  		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> @@ -1216,7 +1216,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
>  
>  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
> -			      bool swdev_notify)
> +			      bool swdev_notify, bool locked)
>  {
>  	struct net_bridge_fdb_entry *fdb;
>  	bool modified = false;
> @@ -1236,6 +1236,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
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
> index f5a0b68c4857..3275e33b112f 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -790,7 +790,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
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
