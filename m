Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ACD7CBE6C
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:05:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C93B281799;
	Tue, 17 Oct 2023 09:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C93B281799
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=bBPDx/fW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gj6c7_oksXyr; Tue, 17 Oct 2023 09:05:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4817D81211;
	Tue, 17 Oct 2023 09:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4817D81211
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0018AC0DD3;
	Tue, 17 Oct 2023 09:05:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7F41AC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59C5181000
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59C5181000
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EpsUTZ51HiOG for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:05:41 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DFAF811F9
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:05:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DFAF811F9
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-5079f3f3d7aso4986254e87.1
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533539; x=1698138339;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iZa4jSa9DeYf42hNR0hEqm7HskiNNDncoqwV74WZCOY=;
 b=bBPDx/fWNdYMtSFNXybNiKEErtbZzwa6s39jRZ3R1W39XwNSbIa7SrLDjO8ZjmnvIM
 9jj/4JAhpg9vzLuCk3JJJY7GgoBWAH1z6mI0AqshFtFCFcCBs1oonoLl3wiuDGfdwxUL
 vtoCMuCaaXJdvyiYJ5e1yKFNkqvX8JzXWgQikcP71ImnQRcN2EvvNi3C7Hl4k7Qj9Ddf
 gVtne4e+d488Tw9rmAqt4vaNrDlk2Y4MtEK2XB4+/SafjngERz6V/kr7TrgTpRh18XZE
 27ey1rV4XzuBrhUcWUkOGoRjAtRAW4+xoQoqGcC7MwEocm72CTjVfnyMa75KjWa5xw/P
 G6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533539; x=1698138339;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iZa4jSa9DeYf42hNR0hEqm7HskiNNDncoqwV74WZCOY=;
 b=fFlemT0VbaXdDKeV8GgHDlUSSgw4zXTvSD00Wr5x7nUmIQqBjNFnDNVtW6Salqmqd9
 AAE9s+LNP/rlJomUxzvcgVJTcjx4mTpbnZ1+4FUmN1J3UJAG6LtyZKWm9uuWKscr+JXX
 Sj3ZG93KVOMrD9ik3uCJOmsUnjzqpz+D3Tp8eZRz352aroba6cjgLwNw5YbCncw7CfgI
 vwDsi2/tNe/Ab1QfdIAz5b5DCbMIcxTzpR+KU7c/b0evoBHmQqZA2BJKtqJwObEpQnL8
 alQxQ7eKdWJKd1X9ADPh2g1y4sGgUzr2G8UiuAmY4vfhCmhOtGI5PCvNMPZR3RzA0HsM
 fq8g==
X-Gm-Message-State: AOJu0YyTIJxqihBQLIAYbV727PIP4L5GAFSihro+BnuXCkHMSk/ZVyBf
 LZB327VLOfxl95aa3MHphSHbDg==
X-Google-Smtp-Source: AGHT+IE8dxfJKfC4+jZzTbx5iphUVdczDo3vmj167ld5bxxc1ryi87YlDVraI6DOFRC+EbBkS1qEfA==
X-Received: by 2002:ac2:4893:0:b0:504:7e12:4846 with SMTP id
 x19-20020ac24893000000b005047e124846mr1291198lfc.30.1697533539195; 
 Tue, 17 Oct 2023 02:05:39 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 w11-20020a5d608b000000b0031f3ad17b2csm1198396wrt.52.2023.10.17.02.05.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:05:38 -0700 (PDT)
Message-ID: <2ba8e4fd-7dd1-0a6d-fc83-be8595cf7bef@blackwall.org>
Date: Tue, 17 Oct 2023 12:05:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 03/13] bridge: mcast: Factor out a
 helper for PG entry size calculation
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

On 10/16/23 16:12, Ido Schimmel wrote:
> Currently, netlink notifications are sent for individual port group
> entries and not for the entire MDB entry itself.
> 
> Subsequent patches are going to add MDB get support which will require
> the bridge driver to reply with an entire MDB entry.
> 
> Therefore, as a preparation, factor out an helper to calculate the size
> of an individual port group entry. When determining the size of the
> reply this helper will be invoked for each port group entry in the MDB
> entry.
> 
> No functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_mdb.c | 20 +++++++++++++-------
>   1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 08de94bffc12..42983f6a0abd 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -450,18 +450,13 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
>   	return -EMSGSIZE;
>   }
>   
> -static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
> +static size_t rtnl_mdb_nlmsg_pg_size(const struct net_bridge_port_group *pg)
>   {
>   	struct net_bridge_group_src *ent;
>   	size_t nlmsg_size, addr_size = 0;
>   
> -	nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
> -		     /* MDBA_MDB */
> -		     nla_total_size(0) +
> -		     /* MDBA_MDB_ENTRY */
> -		     nla_total_size(0) +
>   		     /* MDBA_MDB_ENTRY_INFO */
> -		     nla_total_size(sizeof(struct br_mdb_entry)) +
> +	nlmsg_size = nla_total_size(sizeof(struct br_mdb_entry)) +
>   		     /* MDBA_MDB_EATTR_TIMER */
>   		     nla_total_size(sizeof(u32));
>   
> @@ -511,6 +506,17 @@ static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
>   	return nlmsg_size;
>   }
>   
> +static size_t rtnl_mdb_nlmsg_size(const struct net_bridge_port_group *pg)
> +{
> +	return NLMSG_ALIGN(sizeof(struct br_port_msg)) +
> +	       /* MDBA_MDB */
> +	       nla_total_size(0) +
> +	       /* MDBA_MDB_ENTRY */
> +	       nla_total_size(0) +
> +	       /* Port group entry */
> +	       rtnl_mdb_nlmsg_pg_size(pg);
> +}
> +
>   void br_mdb_notify(struct net_device *dev,
>   		   struct net_bridge_mdb_entry *mp,
>   		   struct net_bridge_port_group *pg,

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

