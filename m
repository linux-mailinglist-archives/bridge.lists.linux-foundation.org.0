Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A63B647E9E
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F1B760B50;
	Fri,  9 Dec 2022 07:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F1B760B50
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=06BPTj6m
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zTvlTQv--qUT; Fri,  9 Dec 2022 07:32:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 08F2660B53;
	Fri,  9 Dec 2022 07:32:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08F2660B53
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4F13C007C;
	Fri,  9 Dec 2022 07:32:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60BA1C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A25760B50
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:32:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A25760B50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5G_BnhW4IkM for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:32:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 227BF60B46
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 227BF60B46
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:32:54 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 c65-20020a1c3544000000b003cfffd00fc0so5137936wma.1
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4CgxZCNJws0j636Fy5T/cCAzlRVsdGEH7eheOE17lVg=;
 b=06BPTj6mlub4bNGZ1y2nuZaPVTBeLJHSocCjSheTHZPY17Kn9HexRVW7MXile1VBLN
 EKxFcIpd7aY7zKxadBB6umGdQ6+kaWVFcJG2UUCU3RPxaZXHtz+dz1ADwAcQr9Kmpv7K
 RfTsCZlK6smY30fAhuFM8af5wZwWcXUgA/91s3q64RWI5RvOxewufDBieZCqB3i0ME3R
 eysAv4R8btVvK7EF5zClnFM3SreAj9U3nbw3gaFTq9iAq4E7hL+RmZautB5oIJBMPAn7
 v9fuSPCe2sqgm123+S9mzWeN/vS2EZg3xLlQKemlAQJz0U9YWQuLUIAHS1wEcUCsKwp7
 iPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4CgxZCNJws0j636Fy5T/cCAzlRVsdGEH7eheOE17lVg=;
 b=YmZO0xQ8ZADf3SkGpf9RlIJRYlxzZ2YXIG+cA8heYcdTTAVa4kTlbNw6Cwqdzuqeo3
 8+qIWyYd7tJ1eLAekLSkghWhNQHEP9Qeo/HmLs6r2tASLQO/u40mXOj5vimCqMYOqAQ5
 IAoUXAAUNj8Kr1jIU0jTWE6nb1LogqDOjD8M5eNRnumf2eKzJVaGzmBTYMUYtfL+7/bU
 3O0MuAURJ+jbFKuL1YPSdzvqR4o3bdwShje3buYarXsujSLwSxH/yjeRtpdHqUTK6Ury
 A0xFy5glnihLsIsPID0JhULJ1IX0/skkqqcQ2Ms5ydbN/fD7Rq4jh5vJOSDPPwphcH4Z
 p9Hw==
X-Gm-Message-State: ANoB5pkkVdcoNa5wsdntBESls1VLvnIGb/tYHuNSPSRSQy679f863KU1
 U8rgJqmJAGV6u95tXwcaWY+mPw==
X-Google-Smtp-Source: AA0mqf70l6iVwjERfcXUvrpUCnbof3YTt6IRdEgqVDRks9VmJuZwOvG+z/fS2ECrKV0wActUZ/Bf2Q==
X-Received: by 2002:a05:600c:1c81:b0:3d1:e907:17cb with SMTP id
 k1-20020a05600c1c8100b003d1e90717cbmr3744277wms.1.1670571172283; 
 Thu, 08 Dec 2022 23:32:52 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 h5-20020a05600c2ca500b003c6bbe910fdsm9054483wmc.9.2022.12.08.23.32.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:32:51 -0800 (PST)
Message-ID: <b7933945-0c30-f007-3bea-5f6e5fc448a3@blackwall.org>
Date: Fri, 9 Dec 2022 09:32:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-9-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-9-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 08/14] bridge: mcast: Avoid arming
 group timer when (S, G) corresponds to a source
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
> User space will soon be able to install a (*, G) with a source list,
> prompting the creation of a (S, G) entry for each source.
> 
> In this case, the group timer of the (S, G) entry should never be set.
> 
> Solve this by adding a new field to the MDB configuration structure that
> denotes whether the (S, G) corresponds to a source or not.
> 
> The field will be set in a subsequent patch where br_mdb_add_group_sg()
> is called in order to create a (S, G) entry for each user provided
> source.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c     | 2 +-
>  net/bridge/br_private.h | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 95780652cdbf..7cda9d1c5c93 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -814,7 +814,7 @@ static int br_mdb_add_group_sg(const struct br_mdb_config *cfg,
>  		return -ENOMEM;
>  	}
>  	rcu_assign_pointer(*pp, p);
> -	if (!(flags & MDB_PG_FLAGS_PERMANENT))
> +	if (!(flags & MDB_PG_FLAGS_PERMANENT) && !cfg->src_entry)
>  		mod_timer(&p->timer,
>  			  now + brmctx->multicast_membership_interval);
>  	br_mdb_notify(cfg->br->dev, mp, p, RTM_NEWMDB);
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 74f17b56c9eb..e98bfe3c02e1 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -98,6 +98,7 @@ struct br_mdb_config {
>  	struct net_bridge_port		*p;
>  	struct br_mdb_entry		*entry;
>  	struct br_ip			group;
> +	bool				src_entry;
>  };
>  #endif
>  

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

