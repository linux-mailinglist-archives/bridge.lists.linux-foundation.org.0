Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CEB64278C
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:34:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1B1881BE3;
	Mon,  5 Dec 2022 11:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1B1881BE3
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=vF/EYPE/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNlKvBuY6qu9; Mon,  5 Dec 2022 11:34:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 15B2481C21;
	Mon,  5 Dec 2022 11:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15B2481C21
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3B46C007C;
	Mon,  5 Dec 2022 11:34:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 173B1C002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D218B60888
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D218B60888
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=vF/EYPE/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Dsx82ntbWvu for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:34:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3AA6607CA
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3AA6607CA
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:34:11 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id gu23so26986615ejb.10
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=f1KimoZD/4pavk1dyfC2nM/GPdOAWDB3KJt4OBapbgc=;
 b=vF/EYPE/s4UMEImbM1WcGc2QpHWPUutT4y0hzMF3fU1Z7SKZvXYIwqx6ykqUwVjl8u
 tE5Bx1dI3CNYT2l/Nan1Haaur+FZ6A20v0opucHaJaTBOvq/nW9oMBfdL0JyblInAEMr
 1Rs3tN1qWElrFK0mb4g57VQ9mZ8OwAKr8eQqB1S2/FJXwYnPbgcR9HUy5m0ScLYsVKMy
 rRwkalwWKEIHOQduY1vWyZEk2sG1KUioy1Es4No8994tnN+37yj+AmkjY2pMXw6yGNFH
 x/BRRpviy2neOE5kMGHQWgwdaHlkN6hMDJwkr/dKwREfStJRB2OC+7iIqTbGXJ1JsZAP
 rNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=f1KimoZD/4pavk1dyfC2nM/GPdOAWDB3KJt4OBapbgc=;
 b=7uVC7BuIwr18XQPr4FuyARP3go1tVrIEqBb4iz5lxgjRl0lUKHA1zWgtH+wIfRwRzo
 OV15Y9DRdAZ59vpiSbZcs59KA2rmi4eLDNWTPJG6ZbeaViOjMoSBwsP6YyGYuEIjTQ2w
 pQNhYheo3xc1vzRbN1HGz5eDFh6YKQtDdrJfNk09+jYek7SWScMmDcX3aSEuh0psd6xY
 2AZq9gDFlKNX+XwG+K9vf5xiL4PS9RjxMkTocA0nvG+9faaeYqcbWH2FixfrIs6Ur3XU
 yExhmRTRUXUP1L660tvsTeCTdxk2fUqYiRlYujBe5gXOZCSeZRcmnmokjYXs/wn7gtIa
 3LTw==
X-Gm-Message-State: ANoB5pkT5+pqJgnvFk+71wDOzVhEc4TQam0ZcHIFxEPd12Fjog3tsd92
 wK+rn00sSzRdQ0TyO/jZ+rSssg==
X-Google-Smtp-Source: AA0mqf7ar/XI0+WI39H1bgr9OR9Mzf2AP8OZhn5NKeiNRab+7W1BUaRN9WJX+1oNO2NYuc4y6o73Ug==
X-Received: by 2002:a17:907:3117:b0:7ae:6746:f26b with SMTP id
 wl23-20020a170907311700b007ae6746f26bmr68863115ejb.171.1670240049834; 
 Mon, 05 Dec 2022 03:34:09 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 e15-20020a170906c00f00b0078c213ad441sm6182846ejz.101.2022.12.05.03.34.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:34:09 -0800 (PST)
Message-ID: <06490c08-bf5e-1714-f56c-1a6068fb2ec9@blackwall.org>
Date: Mon, 5 Dec 2022 13:34:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/8] bridge: mcast: Centralize netlink
 attribute parsing
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

On 05/12/2022 09:42, Ido Schimmel wrote:
> Netlink attributes are currently passed deep in the MDB creation call
> chain, making it difficult to add new attributes. In addition, some
> validity checks are performed under the multicast lock although they can
> be performed before it is ever acquired.
> 
> As a first step towards solving these issues, parse the RTM_{NEW,DEL}MDB
> messages into a configuration structure, relieving other functions from
> the need to handle raw netlink attributes.
> 
> Subsequent patches will convert the MDB code to use this configuration
> structure.
> 
> This is consistent with how other rtnetlink objects are handled, such as
> routes and nexthops.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c     | 120 ++++++++++++++++++++++++++++++++++++++++
>  net/bridge/br_private.h |   7 +++
>  2 files changed, 127 insertions(+)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 321be94c445a..c53050e47a0f 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -974,6 +974,116 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
>  	return ret;
>  }
>  
> +static int br_mdb_config_attrs_init(struct nlattr *set_attrs,
> +				    struct br_mdb_config *cfg,
> +				    struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
> +	int err;
> +
> +	err = nla_parse_nested(mdb_attrs, MDBE_ATTR_MAX, set_attrs,
> +			       br_mdbe_attrs_pol, extack);
> +	if (err)
> +		return err;
> +
> +	if (mdb_attrs[MDBE_ATTR_SOURCE] &&
> +	    !is_valid_mdb_source(mdb_attrs[MDBE_ATTR_SOURCE],
> +				 cfg->entry->addr.proto, extack))
> +		return -EINVAL;
> +
> +	__mdb_entry_to_br_ip(cfg->entry, &cfg->group, mdb_attrs);
> +
> +	return 0;
> +}
> +
> +static int br_mdb_config_init(struct net *net, struct sk_buff *skb,
> +			      struct nlmsghdr *nlh, struct br_mdb_config *cfg,
> +			      struct netlink_ext_ack *extack)
> +{

I just noticed the skb argument is unused. Does it get used in a future change?
Also a minor nit - I think nlh can be a const, nlmsg_parse_deprecated already uses a const nlh.


