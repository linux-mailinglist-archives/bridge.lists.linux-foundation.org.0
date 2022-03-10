Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282C24D4D8F
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:51:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4968340347;
	Thu, 10 Mar 2022 15:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F4jRF3MTgMkh; Thu, 10 Mar 2022 15:51:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 68AF440364;
	Thu, 10 Mar 2022 15:51:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 22F94C0073;
	Thu, 10 Mar 2022 15:51:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E99A6C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4D95418F8
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQyuJTJU_0oR for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:51:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF1D44156D
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:51:20 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id u7so8285628ljk.13
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=fqdAl6g8T5b8CCdXDXU4kRWnVjawXTgSM4gnCS0YVDA=;
 b=ZWEgd7vuurDAY2I1OnulI6eiSL8yCLgaJoxMpVzt5uZhruJGgevRtmuMUMEDF/HrhA
 JCzlSUE7nEOuEstZXK1itDK7t2VNObOx8xyy5uxT9r5FS17kwIYw3Cz0wsxWFFE0ybSb
 YvET/f3syD85/VklUOqtDB0b6zfJ17S2Y/MTUHsRfTcabLGRuStz8HvoQ7AgSTZdc1pT
 Nm3ce8YwJ94fV35BlYmiohPT04whu4tCW5+w4L4kcC7z4LX/1nm8ATMQceEk3Bm/Ea9D
 QWN0GR5dVwT5xUq055j/e4Ld2/PAoL4O/cNV6xu9daYhvQwfRzigDSX8GGgcemWmcc9s
 JaXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=fqdAl6g8T5b8CCdXDXU4kRWnVjawXTgSM4gnCS0YVDA=;
 b=7kZEAgdSAmwuJt1PpCDgKDE+t9emmqY9FrOCiarSwdhxOTpx5pR7172hrQydHASZ37
 2WBXRSdh3SdxNZnV76Fu0jy2Y8Yk5kUoeQC99gm+LI1zBXJfEdEkT8A5adH2A8f80W/S
 anJB4gqP4bkszRuDtpBzmq6vqwIXizzZM4y0ZjOzAS7dXqm0Rqx849M35nDtq/5ITT9G
 PBEgx6/ZWQ6c003cSe19kA3cakbf0aIEeHn5zdvUPHCnSnqAj5r2dTL8xSgWmM2jf9qu
 k6RDxM/m7WSI9K05Hz55Zmjb1Ztiees+ViPfHdbyRWD8wZElrA+fLKPuFXAwTIstSnou
 +DMw==
X-Gm-Message-State: AOAM531VMg4UqaVRP8O1LGKGpgTo9qUs1okkCjIxGoEY8w8tl8cTeYYI
 QfBPAuwe2PTdHs9PSRcMDKDw9w5rkp/qSQ==
X-Google-Smtp-Source: ABdhPJxA1m2GpjuOi6M2cRVlISGhS+trkh208Chi7ZhCdX+8Dd2aCE0bKm2WTunAi9Vtc2a9O1Bsjw==
X-Received: by 2002:a05:651c:543:b0:247:e3b1:9ac3 with SMTP id
 q3-20020a05651c054300b00247e3b19ac3mr3439662ljp.438.1646927478958; 
 Thu, 10 Mar 2022 07:51:18 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 bq1-20020a056512150100b004481de98e5bsm1039808lfb.305.2022.03.10.07.51.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 07:51:18 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220310150717.h7gaxamvzv47e5zc@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <865yolg8d7.fsf@gmail.com>
 <20220310150717.h7gaxamvzv47e5zc@skbuf>
Date: Thu, 10 Mar 2022 16:51:15 +0100
Message-ID: <86sfrpergs.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On tor, mar 10, 2022 at 17:07, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 10, 2022 at 04:00:52PM +0100, Hans Schultz wrote:
>> >> +	brport = dsa_port_to_bridge_port(dp);
>> >
>> > Since this is threaded interrupt context, I suppose it could race with
>> > dsa_port_bridge_leave(). So it is best to check whether "brport" is NULL
>> > or not.
>> >
>> Would something like:
>> if (dsa_is_unused_port(chip->ds, port))
>>         return -ENODATA;
>> 
>> be appropriate and sufficient for that?
>
> static inline
> struct net_device *dsa_port_to_bridge_port(const struct dsa_port *dp)
> {
> 	if (!dp->bridge)
> 		return NULL;
>
> 	if (dp->lag)
> 		return dp->lag->dev;
> 	else if (dp->hsr_dev)
> 		return dp->hsr_dev;
>
> 	return dp->slave;
> }
>
> Notice the "dp->bridge" check. The assignments are in dsa_port_bridge_create()
> and in dsa_port_bridge_destroy(). These functions assume rtnl_mutex protection.
> The question was how do you serialize with that, and why do you assume
> that dsa_port_to_bridge_port() returns non-NULL.
>
> So no, dsa_is_unused_port() would do absolutely nothing to help.

I was thinking in indirect terms (dangerous I know :-).

But wrt the nl lock, I wonder when other threads could pull the carpet
away under this, and so I might have to wait till after the last call
(mv88e6xxx_g1_atu_loadpurge) to free the nl lock?
