Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFDB3C6875
	for <lists.bridge@lfdr.de>; Tue, 13 Jul 2021 04:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F02E440428;
	Tue, 13 Jul 2021 02:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6vgX4EQmzE5d; Tue, 13 Jul 2021 02:21:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6D3444040E;
	Tue, 13 Jul 2021 02:21:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 295C6C000E;
	Tue, 13 Jul 2021 02:21:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E7398C000E
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5DC64012C
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wqzk1-zMjJq for <bridge@lists.linux-foundation.org>;
 Tue, 13 Jul 2021 02:21:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 459AD400F6
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:00 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 d9-20020a17090ae289b0290172f971883bso481000pjz.1
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 19:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VZLJ586W2PwJd2sivbAeLi0nlzQsGfkkjBmYbr9j5wA=;
 b=Q0dC9RzGsj902Tzs5OsHXueHNW2RKcNs1HQ6Il/WazTI2aiM2ms7l3cK01aB96VdWx
 9S2TFUFphF+bSA8temDFhBxnSYpTzgBF7UCTQkniXEW4SrMZUh9MO9yfDjtvGaa+7aCp
 pa4/rl7ZG3mdkVYhTiYMxRU37sSfOiIQQDMBBpcp881Oo3/9M8yk5bQxGj+/xoMp/V28
 u+4RzGx5ydEW5vjnbsmuR83bVbMr9SfgYYMtX3nSVU/jWOaOnLcApUsp9O6gbjOFsLkH
 zWt/1FBzDMAYnMyD7CToaD6JK42cpAAVeoxpcSoZ5gM2yj2bnHhAoac/ooY4XEn+Unky
 aIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VZLJ586W2PwJd2sivbAeLi0nlzQsGfkkjBmYbr9j5wA=;
 b=CIkw1rpdjKvWJRVsTb/XizDxzncPUrTEmJrL84ksgUjk9oSNjeNT11tDTuuev3YOk9
 2tUln0/g12XlG1U28JR8khCVBXEC/zw6nC65F/px5A8c7pygpV8qPtzcNFwhJTeOJ803
 3n6Rbrw6oASVuXa1HDqL3ssbK+pce8pBpw2PUP5R/moLSkT1yvBDPdtznDk71PZKpt6Q
 8P1VP0FOq9zVAlpFF3mpqL7i2qysfAnGZM1j05sa+vDwAksAsD96ZvcE5IYd+kz9rg9p
 skPhCXHCpoEvEQZCefGIpgoIAkzX//89ksYNiVrkLiOAfqihaswEQvzhJ64W+yhj6jYK
 mvGw==
X-Gm-Message-State: AOAM532jg0eTGtR2k4w1QNQ405ZtEtp6eEI1L4isYyfBO8OZuxvywycK
 rYnSE2aXs/Wmh7DIJU2Vkos=
X-Google-Smtp-Source: ABdhPJyUgrqMFgqZNONlaVEwlZpKh/s3ChU9ACp+R/iFqYeMrs3IOD4hwEjq0vY+VuX7Q82UQMTHEg==
X-Received: by 2002:a17:902:7085:b029:114:eb3f:fe29 with SMTP id
 z5-20020a1709027085b0290114eb3ffe29mr1589101plk.40.1626142859666; 
 Mon, 12 Jul 2021 19:20:59 -0700 (PDT)
Received: from [10.230.31.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n33sm18812875pgm.55.2021.07.12.19.20.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Jul 2021 19:20:59 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210712152142.800651-1-vladimir.oltean@nxp.com>
 <20210712152142.800651-2-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <48103d5c-9d2e-2cd8-727a-658b0bbab663@gmail.com>
Date: Mon, 12 Jul 2021 19:20:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210712152142.800651-2-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [RFC PATCH v3 net-next 01/24] net: dpaa2-switch: use
 extack in dpaa2_switch_port_bridge_join
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



On 7/12/2021 8:21 AM, Vladimir Oltean wrote:
> We need to propagate the extack argument for
> dpaa2_switch_port_bridge_join to use it in a future patch, and it looks
> like there is already an error message there which is currently printed
> to the console. Move it over netlink so it is properly transmitted to
> user space.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
