Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46333296586
	for <lists.bridge@lfdr.de>; Thu, 22 Oct 2020 21:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97D16203CC;
	Thu, 22 Oct 2020 19:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNdTyVHSXOmd; Thu, 22 Oct 2020 19:52:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3D91B20399;
	Thu, 22 Oct 2020 19:52:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20206C0051;
	Thu, 22 Oct 2020 19:52:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E619AC0051
 for <bridge@lists.linux-foundation.org>; Thu, 22 Oct 2020 19:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6D9D20399
 for <bridge@lists.linux-foundation.org>; Thu, 22 Oct 2020 19:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W9sYIG5jZf7L for <bridge@lists.linux-foundation.org>;
 Thu, 22 Oct 2020 19:52:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B16A20384
 for <bridge@lists.linux-foundation.org>; Thu, 22 Oct 2020 19:52:29 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id o9so1516098plx.10
 for <bridge@lists.linux-foundation.org>; Thu, 22 Oct 2020 12:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3dm/6UU7gzYtewq70pBYmJhrFBt9p+uK9v/LY5XBQe8=;
 b=WdHQm9X1Ao2rROrM/DL9Ob5ETV5dcmcxbbi05C5ioxMtbjEFPu3amCoERC6BHS5ppC
 jUCpJ54iUYioZDSSbRWoRxCclHJU2JtZBbuzhQKlaoGfRi2P3C3aoYELYkdM3Ek82NIg
 /ql2TOC/FiXWF3ne/NQAZ463k3oht0RbEiVAsKFptqY+29o7VcNwnZHW3zobc8msa2X1
 zO5gOJQMcdg6oEVFJShVA7kglwRFhbHPbFKzO/ozeQPE39n/MLVVx9kgdzBxWcAPTbDC
 +1ZEfeuMQ8ZS2WXFxUtATlwTjKv7PedQHfi0mdzi0cs+G6RgmmJ67hNItyrWmZIM4FVf
 /Txw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3dm/6UU7gzYtewq70pBYmJhrFBt9p+uK9v/LY5XBQe8=;
 b=f2hT5SEATB5JZasJeU4CjQ+PXbUBPkgfbvJn+67YXYH0Y2ITfYMOBRZLrpPmO7QPnX
 SrEhK8wvajupJQK8UFH2DSRQ65pzncnsuue1ga8gkqLKZJSmmzef8lIOk5tAUhVKvHDd
 eIICfsW+5v1eChd97pWm3WPKRz2m0Q1lZcgtHquW8NC/dcdjdKcTN3vY1La/RPHlBC9H
 EYa17loZ6nNivfzoh1Ij/nE/i6GVrSOBdknNcazsArD3q2ISm7MwoEOUE7ZDAqdEiT9/
 ZvaWALOdQSV6Bt7/yMIUexNEkEQtu/PRI9D/JxRSkFRrWjhUjCDAFBy0HMEQ/0o7dlPy
 WQdQ==
X-Gm-Message-State: AOAM530DlAVji1E5zSUUCmMn2Zt4pG4E2lVTcLGwA2MeThhj08v6sSn+
 nUu4J+fNG84bMjrc7WXhdgTMFg==
X-Google-Smtp-Source: ABdhPJzjyClw+3ELYGBsJotUZeOWmDVypimCCUAzTRMpJKmazRpYQ3aDqmDvNYm9l9y12zeiB5Whew==
X-Received: by 2002:a17:902:d697:b029:d6:48f:2974 with SMTP id
 v23-20020a170902d697b02900d6048f2974mr3724561ply.30.1603396349196; 
 Thu, 22 Oct 2020 12:52:29 -0700 (PDT)
Received: from hermes.local (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id b6sm2981568pjq.42.2020.10.22.12.52.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 12:52:28 -0700 (PDT)
Date: Thu, 22 Oct 2020 12:52:20 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20201022125220.45c24b30@hermes.local>
In-Reply-To: <20201017184526.2333840-1-vladimir.oltean@nxp.com>
References: <20201017184526.2333840-1-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: andrew@lunn.ch, David Ahern <dsahern@gmail.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 vivien.didelot@gmail.com, idosch@idosch.org, jiri@mellanox.com,
 f.fainelli@gmail.com, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH iproute2] bridge: add support for L2
 multicast groups
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

On Sat, 17 Oct 2020 21:45:26 +0300
Vladimir Oltean <vladimir.oltean@nxp.com> wrote:

> Extend the 'bridge mdb' command for the following syntax:
> bridge mdb add dev br0 port swp0 grp 01:02:03:04:05:06 permanent
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  bridge/mdb.c                   | 54 ++++++++++++++++++++++++++--------
>  include/uapi/linux/if_bridge.h |  2 ++
>  2 files changed, 43 insertions(+), 13 deletions(-)
> 
> diff --git a/bridge/mdb.c b/bridge/mdb.c
> index 4cd7ca762b78..af160250928e 100644
> --- a/bridge/mdb.c
> +++ b/bridge/mdb.c
> @@ -149,6 +149,7 @@ static void print_mdb_entry(FILE *f, int ifindex, const struct br_mdb_entry *e,
>  			    struct nlmsghdr *n, struct rtattr **tb)
>  {
>  	const void *grp, *src;
> +	const char *addr;
>  	SPRINT_BUF(abuf);
>  	const char *dev;
>  	int af;
> @@ -156,9 +157,16 @@ static void print_mdb_entry(FILE *f, int ifindex, const struct br_mdb_entry *e,
>  	if (filter_vlan && e->vid != filter_vlan)
>  		return;
>  
> -	af = e->addr.proto == htons(ETH_P_IP) ? AF_INET : AF_INET6;
> -	grp = af == AF_INET ? (const void *)&e->addr.u.ip4 :
> -			      (const void *)&e->addr.u.ip6;
> +	if (!e->addr.proto) {
> +		af = AF_PACKET;
> +		grp = (const void *)&e->addr.u.mac_addr;
> +	} else if (e->addr.proto == htons(ETH_P_IP)) {
> +		af = AF_INET;
> +		grp = (const void *)&e->addr.u.ip4;
> +	} else {
> +		af = AF_INET6;
> +		grp = (const void *)&e->addr.u.ip6;
> +	}
>  	dev = ll_index_to_name(ifindex);
>  

In C casts of pointer to void are not necessary.
