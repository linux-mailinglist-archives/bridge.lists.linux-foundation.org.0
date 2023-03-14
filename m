Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F906B91E3
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 12:42:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A414D61048;
	Tue, 14 Mar 2023 11:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A414D61048
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=yZjWeLZU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KdYpZRMDgJIO; Tue, 14 Mar 2023 11:42:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 337E460BC5;
	Tue, 14 Mar 2023 11:42:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 337E460BC5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF086C008A;
	Tue, 14 Mar 2023 11:41:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 50168C0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 360BB6080A
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:41:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 360BB6080A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtAOmsCrV0m7 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 11:41:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F9D360742
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F9D360742
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:41:57 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id r29so6015540wra.13
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 04:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678794115;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rjlDp8/x86m0U9/yRYrRz5qP8F6BLrKqt+GnbXWpvvs=;
 b=yZjWeLZUuHe0uTj6f6sCkvlOZ0FPf6xndFi7lz65TugOvuKB0mpMEVEZvSdzvLFxcn
 pUIs5j9eRnh7U1sKYqKWfOZeq2P41SERtY4tC/PA3k/RZNFOoaVYMwxHx3dGCJBVmOwm
 5qeAm567+QUgx9LxWgnqdPMCQw5hduuuj8rAzRW7RXIczY6JCFA2OHQB7mWmlLhOcDgC
 o2uAVeOpvi/xHhM/nOluL2yy+3u04jaoKAz1zryGYCywXlCJLF/QQlZbA7S+MNQUI3J9
 2mNo2f67hqLD1txbdZk+VA5uhOXHIh6XYx1NjiTJbr2nhAlDq920cqxy3kDHJZT6d9XK
 8Nnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678794115;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rjlDp8/x86m0U9/yRYrRz5qP8F6BLrKqt+GnbXWpvvs=;
 b=rE1RTX0lH02SfEz2vfOILQX7Jv/+LgSkg8ARuNJb8rYHcQ+qUWNioBtp7yPic9RTWG
 RArhbKdz38loljdbSWNgy0w+M0TNyZDXGPOUYwqvVubYZcfPRraYKcftBCXNjTLXl02F
 w4vbXmLnI0fNdJkvQe9HOvedf5b0XfT41r4YZhdpmRMJcQonPneiJttYW6mHv3FIuBVp
 x/XklkQfMmHqw3Yb9RsJ3S3MlIxqhsvkSvlG+gkJDETK3HB+Tx88vtRDnePhPwK2Z710
 Nr/MrqYEEB5gOLvYggPaAonAsi/FSnmUrj2tJ3KQUdQV5kSQt5n/sBQkX75maOODmAZH
 fqMA==
X-Gm-Message-State: AO0yUKUW8jpBpkhTIRAddnGHxn3z9L0CnhvfXwnlmgOKfRo/HJoU5Y+V
 w9ZcmL2jB/FSsMc8BTfgg7iK7A==
X-Google-Smtp-Source: AK7set/CrB/fYHXc+GcYfuLjuixfX2XH7bqmyLqs+QH+LqmMfHFS4+GhNPvFFZFQ45273sRx32kw5w==
X-Received: by 2002:adf:dec8:0:b0:2c7:454:cee3 with SMTP id
 i8-20020adfdec8000000b002c70454cee3mr23852034wrn.7.1678794115116; 
 Tue, 14 Mar 2023 04:41:55 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 z17-20020a5d4d11000000b002c5a1bd527dsm1846139wrt.96.2023.03.14.04.41.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 04:41:54 -0700 (PDT)
Message-ID: <36d6a40a-8f5a-3152-a694-d15bdb3578b4@blackwall.org>
Date: Tue, 14 Mar 2023 13:41:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 01/11] net: Add MDB net device
	operations
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> Add MDB net device operations that will be invoked by rtnetlink code in
> response to received RTM_{NEW,DEL,GET}MDB messages. Subsequent patches
> will implement these operations in the bridge and VXLAN drivers.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  include/linux/netdevice.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index ee483071cf59..23b0d7eaaadd 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1307,6 +1307,17 @@ struct netdev_net_notifier {
>   *	Used to add FDB entries to dump requests. Implementers should add
>   *	entries to skb and update idx with the number of entries.
>   *
> + * int (*ndo_mdb_add)(struct net_device *dev, struct nlattr *tb[],
> + *		      u16 nlmsg_flags, struct netlink_ext_ack *extack);
> + *	Adds an MDB entry to dev.
> + * int (*ndo_mdb_del)(struct net_device *dev, struct nlattr *tb[],
> + *		      struct netlink_ext_ack *extack);
> + *	Deletes the MDB entry from dev.
> + * int (*ndo_mdb_dump)(struct net_device *dev, struct sk_buff *skb,
> + *		       struct netlink_callback *cb);
> + *	Dumps MDB entries from dev. The first argument (marker) in the netlink
> + *	callback is used by core rtnetlink code.
> + *
>   * int (*ndo_bridge_setlink)(struct net_device *dev, struct nlmsghdr *nlh,
>   *			     u16 flags, struct netlink_ext_ack *extack)
>   * int (*ndo_bridge_getlink)(struct sk_buff *skb, u32 pid, u32 seq,
> @@ -1569,6 +1580,16 @@ struct net_device_ops {
>  					       const unsigned char *addr,
>  					       u16 vid, u32 portid, u32 seq,
>  					       struct netlink_ext_ack *extack);
> +	int			(*ndo_mdb_add)(struct net_device *dev,
> +					       struct nlattr *tb[],
> +					       u16 nlmsg_flags,
> +					       struct netlink_ext_ack *extack);
> +	int			(*ndo_mdb_del)(struct net_device *dev,
> +					       struct nlattr *tb[],
> +					       struct netlink_ext_ack *extack);
> +	int			(*ndo_mdb_dump)(struct net_device *dev,
> +						struct sk_buff *skb,
> +						struct netlink_callback *cb);
>  	int			(*ndo_bridge_setlink)(struct net_device *dev,
>  						      struct nlmsghdr *nlh,
>  						      u16 flags,

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

