Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0376604714
	for <lists.bridge@lfdr.de>; Wed, 19 Oct 2022 15:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB89F40C96;
	Wed, 19 Oct 2022 13:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB89F40C96
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=xfsh2Cq9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T1MaB5tJNJ0w; Wed, 19 Oct 2022 13:28:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1C81840C9B;
	Wed, 19 Oct 2022 13:28:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C81840C9B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBEC2C007C;
	Wed, 19 Oct 2022 13:28:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 07784C002D
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6B9741B70
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6B9741B70
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=xfsh2Cq9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SMLorMuouDlE for <bridge@lists.linux-foundation.org>;
 Wed, 19 Oct 2022 13:28:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AD5741C7B
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AD5741C7B
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:28:26 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id b2so39980281eja.6
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 06:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=C952zmI6PdlVJ+QxO/AKrIdSU78DLUHufUqVOtyAUsc=;
 b=xfsh2Cq9cMDB/+IeA9ycufGOdUFDSZfHgdoAYTWQNiwhGKNLeI84rbaKmZpFuLikcA
 WdPubJcGx2eu04zk7B4hSUn0rBD0MP/Vfmn7oxQ9CwBotMyUXcAuqomMLlAl6/Es7UQY
 UE2BL67oxUtQezytGi2zQeq9cv0RhlrnceP3wVFr+IUyiKtJq08d/yjQA6NUmdE+aenW
 T5HpU1uXEbEjntRmGMfd4SnayoNBLvZclXXCZBikYOWh90TnqUCGMDYEOGGPWbEcN1z4
 S7V0DA06+K1rXf5XdPkxIIUpR2zl9HIoNzKYpWk+L7cWigvSrXXLr13u/6PIGsnIyGLU
 0uFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=C952zmI6PdlVJ+QxO/AKrIdSU78DLUHufUqVOtyAUsc=;
 b=ojjpe+wfxG+P496InycQr6PNGWKSKgBEQa92OiuK4s92hLK1WIZEPi407VEoJX8Bim
 u00y0qIi1GYM1DKGWo4KOXdmLatGR7FjZbc5zhw4jo9qnYr507SwUpDfzPpOFSFguYp1
 kCfAIPpRqJbbFIc2opNeR0nbKP44c0BVTTYxl89o1zjIktrpTiF7mCWRdKhZWdaFdRTa
 FgIs2sUcoNE6iMQDFQG5upwQ6YKVVFxGbrixgJo142bW6G7tMu7Stfyhv3Qj3OUa+yOn
 FgLsMmryqJWGK25kyuMy10VMQh/N36PVdvPZshmnvpcMjrj5CNBjzFafPYCxOSnmiGFt
 e0ow==
X-Gm-Message-State: ACrzQf1NbgTRQo5VgIPKvHHDP2qteu89KQaXETendOM4IF5Y0qlu7TJi
 A0QOQKczBY8BlsN/19SSzzr5iw==
X-Google-Smtp-Source: AMsMyM57UVNEVPXxfxOoztiViQkhuT9VYSxnz/358j5PZW4T3AbBfIU8dLGMuEbhEo1cKWKaZnGyTQ==
X-Received: by 2002:a17:906:f43:b0:78b:fd32:b32b with SMTP id
 h3-20020a1709060f4300b0078bfd32b32bmr6763606ejj.461.1666186104361; 
 Wed, 19 Oct 2022 06:28:24 -0700 (PDT)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 t29-20020a056402241d00b0045ce419ecffsm10614623eda.58.2022.10.19.06.28.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Oct 2022 06:28:24 -0700 (PDT)
Message-ID: <e3a74c46-0542-4f21-4975-5bd22bb62ab9@blackwall.org>
Date: Wed, 19 Oct 2022 16:28:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221018120420.561846-1-idosch@nvidia.com>
 <20221018120420.561846-18-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221018120420.561846-18-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 17/19] bridge: mcast: Allow user
 space to add (*, G) with a source list and filter mode
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

On 18/10/2022 15:04, Ido Schimmel wrote:
> Add new netlink attributes to the RTM_NEWMDB request that allow user
> space to add (*, G) with a source list and filter mode.
> 
> The RTM_NEWMDB message can already dump such entries (created by the
> kernel) so there is no need to add dump support. However, the message
> contains a different set of attributes depending if it is a request or a
> response. The naming and structure of the new attributes try to follow
> the existing ones used in the response.
> 
> Request:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_SET_ENTRY ]
> 	struct br_mdb_entry
> [ MDBA_SET_ENTRY_ATTRS ]
> 	[ MDBE_ATTR_SOURCE ]
> 		struct in_addr / struct in6_addr
> 	[ MDBE_ATTR_SRC_LIST ]		// new
> 		[ MDBE_SRC_LIST_ENTRY ]
> 			[ MDBE_SRCATTR_ADDRESS ]
> 				struct in_addr / struct in6_addr
> 		[ ...]
> 	[ MDBE_ATTR_GROUP_MODE ]	// new
> 		u8
> 
> Response:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_MDB ]
> 	[ MDBA_MDB_ENTRY ]
> 		[ MDBA_MDB_ENTRY_INFO ]
> 			struct br_mdb_entry
> 		[ MDBA_MDB_EATTR_TIMER ]
> 			u32
> 		[ MDBA_MDB_EATTR_SOURCE ]
> 			struct in_addr / struct in6_addr
> 		[ MDBA_MDB_EATTR_RTPROT ]
> 			u8
> 		[ MDBA_MDB_EATTR_SRC_LIST ]
> 			[ MDBA_MDB_SRCLIST_ENTRY ]
> 				[ MDBA_MDB_SRCATTR_ADDRESS ]
> 					struct in_addr / struct in6_addr
> 				[ MDBA_MDB_SRCATTR_TIMER ]
> 					u8
> 			[...]
> 		[ MDBA_MDB_EATTR_GROUP_MODE ]
> 			u8
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  include/uapi/linux/if_bridge.h |  20 +++++
>  net/bridge/br_mdb.c            | 132 +++++++++++++++++++++++++++++++++
>  2 files changed, 152 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index a86a7e7b811f..0d9fe73fc48c 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -723,10 +723,30 @@ enum {
>  enum {
>  	MDBE_ATTR_UNSPEC,
>  	MDBE_ATTR_SOURCE,
> +	MDBE_ATTR_SRC_LIST,
> +	MDBE_ATTR_GROUP_MODE,
>  	__MDBE_ATTR_MAX,
>  };
>  #define MDBE_ATTR_MAX (__MDBE_ATTR_MAX - 1)
>  
> +/* per mdb entry source */
> +enum {
> +	MDBE_SRC_LIST_UNSPEC,
> +	MDBE_SRC_LIST_ENTRY,
> +	__MDBE_SRC_LIST_MAX,
> +};
> +#define MDBE_SRC_LIST_MAX (__MDBE_SRC_LIST_MAX - 1)
> +
> +/* per mdb entry per source attributes
> + * these are embedded in MDBE_SRC_LIST_ENTRY
> + */
> +enum {
> +	MDBE_SRCATTR_UNSPEC,
> +	MDBE_SRCATTR_ADDRESS,
> +	__MDBE_SRCATTR_MAX,
> +};
> +#define MDBE_SRCATTR_MAX (__MDBE_SRCATTR_MAX - 1)
> +
>  /* Embedded inside LINK_XSTATS_TYPE_BRIDGE */
>  enum {
>  	BRIDGE_XSTATS_UNSPEC,
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 8fc8816a76bf..909b0fb49a0c 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -663,10 +663,25 @@ void br_rtr_notify(struct net_device *dev, struct net_bridge_mcast_port *pmctx,
>  	rtnl_set_sk_err(net, RTNLGRP_MDB, err);
>  }
>  
> +static const struct nla_policy
> +br_mdbe_src_list_entry_pol[MDBE_SRCATTR_MAX + 1] = {
> +	[MDBE_SRCATTR_ADDRESS] = NLA_POLICY_RANGE(NLA_BINARY,
> +						  sizeof(struct in_addr),
> +						  sizeof(struct in6_addr)),
> +};
> +
> +static const struct nla_policy
> +br_mdbe_src_list_pol[MDBE_SRC_LIST_MAX + 1] = {
> +	[MDBE_SRC_LIST_ENTRY] = NLA_POLICY_NESTED(br_mdbe_src_list_entry_pol),
> +};
> +
>  static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
>  	[MDBE_ATTR_SOURCE] = NLA_POLICY_RANGE(NLA_BINARY,
>  					      sizeof(struct in_addr),
>  					      sizeof(struct in6_addr)),
> +	[MDBE_ATTR_GROUP_MODE] = NLA_POLICY_RANGE(NLA_U8, MCAST_EXCLUDE,
> +						  MCAST_INCLUDE),
> +	[MDBE_ATTR_SRC_LIST] = NLA_POLICY_NESTED(br_mdbe_src_list_pol),
>  };
>  
>  static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
> @@ -1052,6 +1067,73 @@ static int __br_mdb_add(struct br_mdb_config *cfg,
>  	return ret;
>  }
>  
> +static int br_mdb_config_src_entry_init(struct nlattr *src_entry,
> +					struct br_mdb_config *cfg,
> +					struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[MDBE_SRCATTR_MAX + 1];
> +	struct br_mdb_src_entry *src;
> +	int err;
> +
> +	err = nla_parse_nested(tb, MDBE_SRCATTR_MAX, src_entry,
> +			       br_mdbe_src_list_entry_pol, extack);
> +	if (err)
> +		return err;
> +
> +	if (NL_REQ_ATTR_CHECK(extack, src_entry, tb, MDBE_SRCATTR_ADDRESS))
> +		return -EINVAL;
> +
> +	if (!is_valid_mdb_source(tb[MDBE_SRCATTR_ADDRESS],
> +				 cfg->entry->addr.proto, extack))
> +		return -EINVAL;
> +
> +	src = kzalloc(sizeof(*src), GFP_KERNEL);
> +	if (!src)
> +		return -ENOMEM;
> +	src->addr.proto = cfg->entry->addr.proto;
> +	nla_memcpy(&src->addr.src, tb[MDBE_SRCATTR_ADDRESS],
> +		   nla_len(tb[MDBE_SRCATTR_ADDRESS]));
> +	list_add_tail(&src->list, &cfg->src_list);
> +
> +	return 0;
> +}
> +
> +static void br_mdb_config_src_entry_fini(struct br_mdb_src_entry *src)
> +{
> +	list_del(&src->list);
> +	kfree(src);
> +}
> +
> +static int br_mdb_config_src_list_init(struct nlattr *src_list,
> +				       struct br_mdb_config *cfg,
> +				       struct netlink_ext_ack *extack)
> +{
> +	struct br_mdb_src_entry *src, *tmp;
> +	struct nlattr *src_entry;
> +	int rem, err;
> +
> +	nla_for_each_nested(src_entry, src_list, rem) {
> +		err = br_mdb_config_src_entry_init(src_entry, cfg, extack);

Hmm, since we know the exact number of these (due to attr embedding) can't we allocate
all at once and drop the list? They should not be more than 32 (PG_SRC_ENT_LIMIT) IIRC,
which makes it at most 1152 bytes. Might simplify the code a bit and reduce allocations.

> +		if (err)
> +			goto err_src_entry_init;
> +	}
> +
> +	return 0;
> +
> +err_src_entry_init:
> +	list_for_each_entry_safe(src, tmp, &cfg->src_list, list)
> +		br_mdb_config_src_entry_fini(src);
> +	return err;
> +}
> +
> +static void br_mdb_config_src_list_fini(struct br_mdb_config *cfg)
> +{
> +	struct br_mdb_src_entry *src, *tmp;
> +
> +	list_for_each_entry_safe(src, tmp, &cfg->src_list, list)
> +		br_mdb_config_src_entry_fini(src);
> +}
> +
>  static int br_mdb_config_attrs_init(struct nlattr *set_attrs,
>  				    struct br_mdb_config *cfg,
>  				    struct netlink_ext_ack *extack)
> @@ -1071,9 +1153,52 @@ static int br_mdb_config_attrs_init(struct nlattr *set_attrs,
>  
>  	__mdb_entry_to_br_ip(cfg->entry, &cfg->group, mdb_attrs);
>  
> +	if (mdb_attrs[MDBE_ATTR_GROUP_MODE]) {
> +		if (!cfg->p) {
> +			NL_SET_ERR_MSG_MOD(extack, "Filter mode cannot be set for host groups");
> +			return -EINVAL;
> +		}
> +		if (!br_multicast_is_star_g(&cfg->group)) {
> +			NL_SET_ERR_MSG_MOD(extack, "Filter mode can only be set for (*, G) entries");
> +			return -EINVAL;
> +		}
> +		cfg->filter_mode = nla_get_u8(mdb_attrs[MDBE_ATTR_GROUP_MODE]);
> +	} else {
> +		cfg->filter_mode = MCAST_EXCLUDE;
> +	}
> +
> +	if (mdb_attrs[MDBE_ATTR_SRC_LIST]) {
> +		if (!cfg->p) {
> +			NL_SET_ERR_MSG_MOD(extack, "Source list cannot be set for host groups");
> +			return -EINVAL;
> +		}
> +		if (!br_multicast_is_star_g(&cfg->group)) {
> +			NL_SET_ERR_MSG_MOD(extack, "Source list can only be set for (*, G) entries");
> +			return -EINVAL;
> +		}
> +		if (!mdb_attrs[MDBE_ATTR_GROUP_MODE]) {
> +			NL_SET_ERR_MSG_MOD(extack, "Source list cannot be set without filter mode");
> +			return -EINVAL;
> +		}
> +		err = br_mdb_config_src_list_init(mdb_attrs[MDBE_ATTR_SRC_LIST],
> +						  cfg, extack);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (list_empty(&cfg->src_list) && cfg->filter_mode == MCAST_INCLUDE) {
> +		NL_SET_ERR_MSG_MOD(extack, "Cannot add (*, G) INCLUDE with an empty source list");
> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
>  
> +static void br_mdb_config_attrs_fini(struct br_mdb_config *cfg)
> +{
> +	br_mdb_config_src_list_fini(cfg);
> +}
> +
>  static int br_mdb_config_init(struct net *net, struct sk_buff *skb,
>  			      struct nlmsghdr *nlh, struct br_mdb_config *cfg,
>  			      struct netlink_ext_ack *extack)
> @@ -1164,6 +1289,11 @@ static int br_mdb_config_init(struct net *net, struct sk_buff *skb,
>  	return 0;
>  }
>  
> +static void br_mdb_config_fini(struct br_mdb_config *cfg)
> +{
> +	br_mdb_config_attrs_fini(cfg);
> +}
> +

Is there more coming to these two _fini helpers? If not, I think one would be enough, i.e.
just call br_mdb_config_src_list_fini() from br_mdb_config_fini()

>  static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
>  		      struct netlink_ext_ack *extack)
>  {
> @@ -1222,6 +1352,7 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
>  	}
>  
>  out:
> +	br_mdb_config_fini(&cfg);
>  	return err;
>  }
>  
> @@ -1297,6 +1428,7 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>  		err = __br_mdb_del(&cfg);
>  	}
>  
> +	br_mdb_config_fini(&cfg);
>  	return err;
>  }
>  

