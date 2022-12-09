Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B96647E90
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A1E5419B4;
	Fri,  9 Dec 2022 07:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A1E5419B4
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=DNXFEOJl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gl6KYlBePqi; Fri,  9 Dec 2022 07:30:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 81EC04188F;
	Fri,  9 Dec 2022 07:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81EC04188F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BEC2C007C;
	Fri,  9 Dec 2022 07:30:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29117C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 025F440273
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 025F440273
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=DNXFEOJl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vs7KoNyL2uTo for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:30:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2067C4014A
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2067C4014A
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:10 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 ja4-20020a05600c556400b003cf6e77f89cso5413143wmb.0
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6QRPL8jVNR4wcNXjj50aKPMrExKMvKLBoy4ZEO7obgQ=;
 b=DNXFEOJlNom33o3zlOv9nXCjJgm33+jGxiYg6uBYl+0oAIYPq+1z0VwLfipryb4Xg0
 wbH6hAaEGvszxQ7sgqkz0QikMqIzFc+ZK6cE+tQZgUi2H6o05P6k/lORAuD6pwAZtEUH
 jRCdQ10Kw9mxTUIMLbqCVaCUf8Kh1wIvcQzScIWFLZNq8WGK0xix2RTT0tSo+GGNXATC
 5XEhG9ePUTbh5+RJKxW/mA/RfrGZLw0l75kXnhyBH3BYZbiNWClDRy2GWFQ5E+xjqMNR
 ga4Kkfhwtqr/FGS6pyzVYarvhBxM3W7m+LVqUDdvRGdlJADH7f3GRlmqwjoF4/bA7sJi
 E4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6QRPL8jVNR4wcNXjj50aKPMrExKMvKLBoy4ZEO7obgQ=;
 b=qDoIKxnhwoshu6Vsj+IIDqKDRx3sqyJTm2TFKakQXOkqmmJ66FpZgF8xwcc+Eh8DMC
 sY7hzHaRXHI4EzrzOcfiBkdy7oTmFTrAtUi2sT9NcZeRlBZQSHGcaWJr7vv1yhxDjs9R
 BrUP0Q95RvQ9gLfUGU73mqvN/OZPyKBZqJb5KNV8FiVUsw01VgTKa48S6YJeN2c77uLa
 yE6pKFt7A66k8WTzurSGSLdUKi6uilEQ4OMzOPvD9WLR8NldjMHQIDSyklpPwbvv8X1b
 DM6rRUXpbI03E/op4SByuxRM5Nk56jH+umpEInSs+k8E9CuuRywpzH0KpdjB+H2bCWqp
 X7cA==
X-Gm-Message-State: ANoB5pnowwLFVeX4kOjXSES7vMpg+MDaiVYsfVnkPEZEwcngg1VfSOd7
 Pasdnxesjij0g6boMAwREvNqbA==
X-Google-Smtp-Source: AA0mqf4e1/rzPWyF8ZiSD3w4NQxFz7fGOHj2Y7bchdta2xqFlz1j23WOP+7cIGslIAoUfApcFDVy+g==
X-Received: by 2002:a05:600c:4f52:b0:3cf:6e78:e3ad with SMTP id
 m18-20020a05600c4f5200b003cf6e78e3admr3913857wmq.6.1670571009039; 
 Thu, 08 Dec 2022 23:30:09 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 p6-20020a1c5446000000b003c6cd82596esm7187235wmi.43.2022.12.08.23.30.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:30:08 -0800 (PST)
Message-ID: <127afe2b-9bbb-57e3-6374-c1df0505ebfb@blackwall.org>
Date: Fri, 9 Dec 2022 09:30:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 03/14] bridge: mcast: Place netlink
 policy before validation functions
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
> Subsequent patches are going to add additional validation functions and
> netlink policies. Some of these functions will need to perform parsing
> using nla_parse_nested() and the new policies.
> 
> In order to keep all the policies next to each other, move the current
> policy to before the validation functions.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index e3bd2122d559..fcdd464cf997 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -663,6 +663,12 @@ void br_rtr_notify(struct net_device *dev, struct net_bridge_mcast_port *pmctx,
>  	rtnl_set_sk_err(net, RTNLGRP_MDB, err);
>  }
>  
> +static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
> +	[MDBE_ATTR_SOURCE] = NLA_POLICY_RANGE(NLA_BINARY,
> +					      sizeof(struct in_addr),
> +					      sizeof(struct in6_addr)),
> +};
> +
>  static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
>  			       struct netlink_ext_ack *extack)
>  {
> @@ -748,12 +754,6 @@ static bool is_valid_mdb_source(struct nlattr *attr, __be16 proto,
>  	return true;
>  }
>  
> -static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
> -	[MDBE_ATTR_SOURCE] = NLA_POLICY_RANGE(NLA_BINARY,
> -					      sizeof(struct in_addr),
> -					      sizeof(struct in6_addr)),
> -};
> -
>  static struct net_bridge_mcast *
>  __br_mdb_choose_context(struct net_bridge *br,
>  			const struct br_mdb_entry *entry,

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
