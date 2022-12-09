Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290EE647EFA
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 09:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB6774023F;
	Fri,  9 Dec 2022 08:08:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB6774023F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=C0/uDINp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wmfXh2i7XMbN; Fri,  9 Dec 2022 08:08:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 55C58403AC;
	Fri,  9 Dec 2022 08:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55C58403AC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 009BAC007C;
	Fri,  9 Dec 2022 08:08:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37981C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 103AA414A2
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 103AA414A2
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=C0/uDINp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e-SO3dSFNFFA for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 08:08:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0903F410D6
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0903F410D6
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:08:51 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 c65-20020a1c3544000000b003cfffd00fc0so5190832wma.1
 for <bridge@lists.linux-foundation.org>; Fri, 09 Dec 2022 00:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sInxKAvWLrMiI4fj8yMPqsC6tYHDJ+LuR9I4DU3L8N4=;
 b=C0/uDINpzs13oxx0s5AE72rKVpMHz0zuD3NZ9ti5IZ6TL4EumMAJ+YO8DWegNoILKJ
 pEfV8UwZ59XNbeHBrG//Eo7m1KM9+Y5aUj3rUj81RDYaDbsetkUD6TSMskO7ZkPtzebn
 PUxHKoT3owEDE/O35e8vt+82aGJNm70nUwL4P4/t4prX1Qg6pP1C2c9V9ZkMPpdpD8ud
 FPo6pE0WVbRlaF3nyAnzh2IpQu8XmkA6te8nzGCuPTSU2S0a5xSNhY3/ln5WKotzwzn5
 yWKWqz5T6qUNKZwF9K/S9nVnBsppwDBE+WinzzXSaVJxAtd7edX8S2EFNbAov24AXhrU
 fpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sInxKAvWLrMiI4fj8yMPqsC6tYHDJ+LuR9I4DU3L8N4=;
 b=Lxh4QKA/J+mQ+l+uBDD2Y3msAxTOWbtHMDSvma2/S1w2BRAVEbM/Nx0cVpz2XwE0vI
 brCA5FwgJ134dHR/gd0iWBx5t27m4u/InPNbllUmaO+HHLY4svUZtejmUsSKF7cE/tnU
 aQq0z1F6QJlsAdUdMK1HSb0hqla+Sqx9nvUUt4b8hgOXYrC9TvNggTr0bryKhRPutg/m
 j5oh8Pb+78GeSX3IlzBFFybLTHapnpL4WHocaRObI4JSqxH9fHRKxFF84MsHtaZf7wtx
 pYw7WPDgU68KediDpq2SJv1wMZRh10zNGRsP+yEwpZSmRkn+xa0gB0hmETcixSbr+1T2
 VwPw==
X-Gm-Message-State: ANoB5pmp5v9d/B3aJNq3J+wqyuF59l7rDG6S/D/yszvcc7tDXzolxb+9
 vuxCKREtn38QW96hOFrIgsSd/g==
X-Google-Smtp-Source: AA0mqf7t3oeNURel+lWMdzu3MPG7iMqZFhl65PnQWInUfiEQAcn3d7W6cN+DOrn0TXkeDRRGvxTSrw==
X-Received: by 2002:a05:600c:1c87:b0:3cf:ae53:9193 with SMTP id
 k7-20020a05600c1c8700b003cfae539193mr4291964wms.39.1670573330140; 
 Fri, 09 Dec 2022 00:08:50 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 fc18-20020a05600c525200b003d04e4ed873sm8263495wmb.22.2022.12.09.00.08.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Dec 2022 00:08:49 -0800 (PST)
Message-ID: <38bcf2b8-83eb-1df7-b836-d2de4db851a0@blackwall.org>
Date: Fri, 9 Dec 2022 10:08:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-13-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-13-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 12/14] bridge: mcast: Support
 replacement of MDB port group entries
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> Now that user space can specify additional attributes of port group
> entries such as filter mode and source list, it makes sense to allow
> user space to atomically modify these attributes by replacing entries
> instead of forcing user space to delete the entries and add them back.
> 
> Replace MDB port group entries when the 'NLM_F_REPLACE' flag is
> specified in the netlink message header.
> 
> When a (*, G) entry is replaced, update the following attributes: Source
> list, state, filter mode, protocol and flags. If the entry is temporary
> and in EXCLUDE mode, reset the group timer to the group membership
> interval. If the entry is temporary and in INCLUDE mode, reset the
> source timers of associated sources to the group membership interval.
> 
> Examples:
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 permanent source_list 192.0.2.1,192.0.2.2 filter_mode include
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.2 permanent filter_mode include proto static     0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent filter_mode include proto static     0.00
>  dev br0 port dummy10 grp 239.1.1.1 permanent filter_mode include source_list 192.0.2.2/0.00,192.0.2.1/0.00 proto static     0.00
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 permanent source_list 192.0.2.1,192.0.2.3 filter_mode exclude proto zebra
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.3 permanent filter_mode include proto zebra  blocked    0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent filter_mode include proto zebra  blocked    0.00
>  dev br0 port dummy10 grp 239.1.1.1 permanent filter_mode exclude source_list 192.0.2.3/0.00,192.0.2.1/0.00 proto zebra     0.00
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 temp source_list 192.0.2.4,192.0.2.3 filter_mode include proto bgp
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.4 temp filter_mode include proto bgp     0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.3 temp filter_mode include proto bgp     0.00
>  dev br0 port dummy10 grp 239.1.1.1 temp filter_mode include source_list 192.0.2.4/259.44,192.0.2.3/259.44 proto bgp     0.00
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c     | 103 ++++++++++++++++++++++++++++++++++++++--
>  net/bridge/br_private.h |   1 +
>  2 files changed, 99 insertions(+), 5 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 72d4e53193e5..98d899427c03 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -802,6 +802,28 @@ __br_mdb_choose_context(struct net_bridge *br,
>  	return brmctx;
>  }
>  
> +static int br_mdb_replace_group_sg(const struct br_mdb_config *cfg,
> +				   struct net_bridge_mdb_entry *mp,
> +				   struct net_bridge_port_group *pg,
> +				   struct net_bridge_mcast *brmctx,
> +				   unsigned char flags,
> +				   struct netlink_ext_ack *extack)

extack seems unused here

> +{
> +	unsigned long now = jiffies;
> +
> +	pg->flags = flags;
> +	pg->rt_protocol = cfg->rt_protocol;
> +	if (!(flags & MDB_PG_FLAGS_PERMANENT) && !cfg->src_entry)
> +		mod_timer(&pg->timer,
> +			  now + brmctx->multicast_membership_interval);
> +	else
> +		del_timer(&pg->timer);
> +
> +	br_mdb_notify(cfg->br->dev, mp, pg, RTM_NEWMDB);
> +
> +	return 0;
> +}
> +
>  static int br_mdb_add_group_sg(const struct br_mdb_config *cfg,
>  			       struct net_bridge_mdb_entry *mp,
>  			       struct net_bridge_mcast *brmctx,
[snip]
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index cdc9e040f1f6..2473add41e16 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -107,6 +107,7 @@ struct br_mdb_config {
>  	struct br_mdb_src_entry		*src_entries;
>  	int				num_src_entries;
>  	u8				rt_protocol;
> +	u32				nlflags;

nlmsg_flags is u16 (__u16), also I'd add it before rt_protocol

>  };
>  #endif
>  

