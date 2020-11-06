Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E702A99A4
	for <lists.bridge@lfdr.de>; Fri,  6 Nov 2020 17:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBFB885BEE;
	Fri,  6 Nov 2020 16:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mUPCEFuWpmp; Fri,  6 Nov 2020 16:40:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53F9186962;
	Fri,  6 Nov 2020 16:40:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31262C0889;
	Fri,  6 Nov 2020 16:40:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 57E4BC0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 16:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADD6E85BEE
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 16:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2BG4ZeWjoJxq for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 16:40:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EE4D85239
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 16:40:17 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id o11so2084629ioo.11
 for <bridge@lists.linux-foundation.org>; Fri, 06 Nov 2020 08:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wFLtKUwT5ZvmDcv5zrEJNSopht3kHGBwLH6MG+aoAb8=;
 b=Vg5nKxDZu895ttIHrDM477LtUq2tTMuNvYBCp/tR8Xl2m2lIeak6kqji6iOpxtSjmb
 KU+29HSyzpytGLDR2uJVWBSnhoeLDlYTUaoiNnRn5xm2PN0uP6DqN0ixhKt2vtzFjyeE
 8XW7IDHpaKvXbEt701jGTvOdmPV9XPpkcXO9Mf8rqKlDB9/mVgff8oK17QXddT80Zm0Z
 PAqj8LqYsRNzh+iJ1Go36LS+ou5dbAtAqEx+jwIwA+QvuEtVpXL5Yo5uv/99RUZ/Skgd
 vo+s9Jk8zg+VJOEToB4bUnjRjt9v2kedXGY0n8hSQnHegamgwRMZY4O5FgzvN6TqatV0
 8tkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wFLtKUwT5ZvmDcv5zrEJNSopht3kHGBwLH6MG+aoAb8=;
 b=i4G90LydDPYFL/R8xff2U07GdjcfQUNElg7mI5IwneF0qv8n1Sdhp1PTj9vcWoRXTB
 fXD15J+m11Z54LZp/23nPzI6+QrHNGcLtKshbHhj3CCzmGq6FmnF9oeAA0LrBFHLN+sg
 UwFnTEvXg8BjnDNuMOwjuTBWirl9SEBp5mK6RqpCJ6/D04RKS6RpbtkbQGSe15zkq2JZ
 1H7YieQHWcoMgrHjsOn/0Bx0WMDkLiXHzosz1S2FM+uQUlc51sqac9GL4I45MA0iUqw+
 oT9yb4KQ4YcOt2OgLBJYB+z+aum15Am5vItFhdFVVjHg83UoMJl/0l5DV43O1J4dcoVC
 uoHA==
X-Gm-Message-State: AOAM531xlJJU+2Iw+wPwgcW172fof52c1tbKkxx00MEwnpQ4nF4Ur5//
 xgqaBbuv19s/+8GyF5iYD3g=
X-Google-Smtp-Source: ABdhPJzkJbtdTj466ZCI8mKcmOme9VuesNIVUd10qMJjwA15AHpdZtiCSDPM0/9n2ZtbofRm8ZnBng==
X-Received: by 2002:a6b:3e83:: with SMTP id l125mr2071092ioa.151.1604680816504; 
 Fri, 06 Nov 2020 08:40:16 -0800 (PST)
Received: from Davids-MacBook-Pro.local
 ([2601:282:803:7700:59f:e9df:76ab:8876])
 by smtp.googlemail.com with ESMTPSA id n15sm1376010ilt.58.2020.11.06.08.40.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 08:40:15 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20201029222828.2149980-1-olteanv@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <2f127ed7-a816-bb13-0be2-68b19eef78fb@gmail.com>
Date: Fri, 6 Nov 2020 09:40:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201029222828.2149980-1-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: andrew@lunn.ch, f.fainelli@gmail.com, idosch@idosch.org, jiri@mellanox.com,
 vivien.didelot@gmail.com
Subject: Re: [Bridge] [PATCH v2 iproute2-next] bridge: add support for L2
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

On 10/29/20 4:28 PM, Vladimir Oltean wrote:
> @@ -168,9 +176,14 @@ static void print_mdb_entry(FILE *f, int ifindex, const struct br_mdb_entry *e,
>  	print_string(PRINT_ANY, "port", " port %s",
>  		     ll_index_to_name(e->ifindex));
>  
> +	if (af == AF_INET || af == AF_INET6)
> +		addr = inet_ntop(af, grp, abuf, sizeof(abuf));
> +	else
> +		addr = ll_addr_n2a(grp, ETH_ALEN, 0, abuf, sizeof(abuf));
> +

The above can be replaced with a single call to rt_addr_n2a_r.

>  	print_color_string(PRINT_ANY, ifa_family_color(af),
> -			    "grp", " grp %s",
> -			    inet_ntop(af, grp, abuf, sizeof(abuf)));
> +			    "grp", " grp %s", addr);
> +
>  	if (tb && tb[MDBA_MDB_EATTR_SOURCE]) {
>  		src = (const void *)RTA_DATA(tb[MDBA_MDB_EATTR_SOURCE]);
>  		print_color_string(PRINT_ANY, ifa_family_color(af),

I think the rest is ok.
