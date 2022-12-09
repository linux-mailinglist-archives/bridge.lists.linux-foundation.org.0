Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70048647E92
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:30:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70EFA4032E;
	Fri,  9 Dec 2022 07:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70EFA4032E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=w4kjIdlf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BY5tseynvugW; Fri,  9 Dec 2022 07:30:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EF70B40273;
	Fri,  9 Dec 2022 07:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF70B40273
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B180EC007C;
	Fri,  9 Dec 2022 07:30:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD19AC002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7DDA4023F
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7DDA4023F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1StDRnbtwiu4 for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:30:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE9294014B
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE9294014B
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:48 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id o15so2577125wmr.4
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=U7fC1syZtXHLgbpou3o4m3NT/tshVkaTSTf4nVD7gqQ=;
 b=w4kjIdlfb7CW4KRPyj0jUIA9uzCSD+/hYcGIYgGZrhaYcfs53qI/OoQgTYBV8W21IE
 67YLi4aKQMjDbFs0ntZOqB0/TCbF7uPc8qoPqFaOD5oFmdUhzjtm6BMe05SH6zX4Jd+q
 ImY50nTkuE7VU/00XTlwyJ6JMt3v/QhmbdCRZ6zJ55mS+TWJ45F8vo6+acNk02vEixhJ
 fKCmtITBJ9BXp6W5L40cvhXMEV5s2UjAl1LLRbl2vbzglXPUmaq+fvzeRDfGL43z62Vn
 hGnfL7kURf82TtyFBJ2pL8fgQ5ASGkTXabJFrVSyzQjKrMDp4ikyhKNjzIoNkLh+iIRP
 2CoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U7fC1syZtXHLgbpou3o4m3NT/tshVkaTSTf4nVD7gqQ=;
 b=4+CE5fEjGJHizctYcPNruIM8VwbqGal3fBJccmGre7oSJJioMowRDk9bjFcNeFSkvH
 Q0A4SCY5z/xQ6PdHaNrLk+DrhcUOOHQqo8efpdgDPokF2gCcJzltM9AR0lkbcvicK61p
 KmC2UIpcLDBUHiklFP+Gx2sHFZhcda8dmWq4VvDtkdFteUjTdspv1SAq9LLPexFb4exy
 pCRKvPX5PwVqboN0YohUIf3zpKzTtPi4fVXnFWuXmX/ZPw8fwOyYpp7Yhf+g9MgW6TRR
 F8Y3pEU8eQHhjEDX5zrv7M/F/ohxBT0/ShWMKJsZsFaGFa2Z7uaTUdeGlK/A87J52lhw
 1xyg==
X-Gm-Message-State: ANoB5pnky+/9USDkc4rYDCs3a36Nsa1NeaI84kf1iBmX5v1rZa6+Vtbg
 NsWR6uqrMRtEpuclo/SRdK196A==
X-Google-Smtp-Source: AA0mqf73WEFddJ5mcq4p/r0oYO7qKFZmkTLG7d7G6elwVCj2zm4nAgSvodaf+Qw9S4YhD6D+AEvIMw==
X-Received: by 2002:a05:600c:1c91:b0:3d2:640:c4e5 with SMTP id
 k17-20020a05600c1c9100b003d20640c4e5mr2293910wms.8.1670571047051; 
 Thu, 08 Dec 2022 23:30:47 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 p24-20020a05600c205800b003c6b874a0dfsm1136494wmg.14.2022.12.08.23.30.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:30:46 -0800 (PST)
Message-ID: <455ce972-3b48-4ec3-92c8-3a50f7d96918@blackwall.org>
Date: Fri, 9 Dec 2022 09:30:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-6-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-6-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 05/14] bridge: mcast: Expose
 br_multicast_new_group_src()
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
> Currently, new group source entries are only created in response to
> received Membership Reports. Subsequent patches are going to allow user
> space to install (*, G) entries with a source list.
> 
> As a preparatory step, expose br_multicast_new_group_src() so that it
> could later be invoked from the MDB code (i.e., br_mdb.c) that handles
> RTM_NEWMDB messages.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_multicast.c | 2 +-
>  net/bridge/br_private.h   | 3 +++
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index db4c3900ae95..b2bc23fdcee5 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -1232,7 +1232,7 @@ br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip)
>  	return NULL;
>  }
>  
> -static struct net_bridge_group_src *
> +struct net_bridge_group_src *
>  br_multicast_new_group_src(struct net_bridge_port_group *pg, struct br_ip *src_ip)
>  {
>  	struct net_bridge_group_src *grp_src;
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 3997e16c15fc..183de6c57d72 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -974,6 +974,9 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
>  				       struct net_bridge_port_group *sg);
>  struct net_bridge_group_src *
>  br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip);
> +struct net_bridge_group_src *
> +br_multicast_new_group_src(struct net_bridge_port_group *pg,
> +			   struct br_ip *src_ip);
>  void br_multicast_del_group_src(struct net_bridge_group_src *src,
>  				bool fastleave);
>  void br_multicast_ctx_init(struct net_bridge *br,

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

