Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A7D4FB002
	for <lists.bridge@lfdr.de>; Sun, 10 Apr 2022 22:07:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5285A40106;
	Sun, 10 Apr 2022 20:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CBXIOV3c66_Z; Sun, 10 Apr 2022 20:07:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E6A7E401D6;
	Sun, 10 Apr 2022 20:07:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8DC45C0088;
	Sun, 10 Apr 2022 20:07:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7B8CCC002C
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 20:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BF1384085
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 20:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCbNgSbJGuH6 for <bridge@lists.linux-foundation.org>;
 Sun, 10 Apr 2022 20:07:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2B5E84007
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 20:07:01 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id bv19so4015086ejb.6
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 13:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=c7ppvSGFMjXTyAACKzFwqYFiWmXivSzgvL4BwU7SqKc=;
 b=QCrfuyYV9QtWOFIfcgtA1QjB4ZlZXyDB6yb27ilwN40G9t99u9DV7E4YEcS3iDf1D0
 gPu1ja+uAVRP7g21Exws4PuS4fj1pcxNI50VHKPZb2Z2mHEIgIJ0OroTwI2EKT0Jiylq
 Ak303v1ThmTUdWqUhbe5oCVI9WT4PbxF4zRVX6sKNsMV2TKwOxaIBIa5S+J4Mna6/v9s
 gyKPYSH12bfPTStTQn11Vx8CtQihilapqxB4tJbPJIrQ7ZAcQQu7rkfujT38uf4SPJr7
 rodkAP1za+7grryh4416obMSb0Szv7MeOGiLOaqJ06o1m9LL0e4+GX20R28tHNDWJmrn
 SDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=c7ppvSGFMjXTyAACKzFwqYFiWmXivSzgvL4BwU7SqKc=;
 b=Zikbf2EU0ghWm9JAvEI+XiNfkecn/k45MGgNDgZKKuagDeC78t5a6rNDHlYBW3fRst
 MZuO9/MaEhHLKx5Xi2bVKh8rNODXhEi22UCRlFR2uz4USSIpS5KBmiV8isoJnX22tXVS
 aP4lhgQvxKJq6crVAaT4qmie6C4a2LMU2JC0C+d5Lf/flPnHsgx4iQFTCDgd/trC6jDn
 L8YuKJu0ukkh3Y6GF2//h61XHuTFlp5bnSFRPrV7XXXaERMWF5KcnHgjfHlKxK1xIZ1u
 Ly5SI4y26uJcqIs2DipsaeN2eXTHJ/+6mLKjYvm+vr7tGUghlXp8y0Hs40edcoacl4Z3
 AWWg==
X-Gm-Message-State: AOAM532XcjmuBTjKbRbsmfVCMKHIHP5DoVz2MsABZy6cqI5Asgd5W7Eu
 cloNTKRrZSacqQ7+2KI1yX0=
X-Google-Smtp-Source: ABdhPJyxHbErd5pOT77ULDChG7+6rv5MlbAqGZ9qz+pS92PjEbqN2+fKwAQlyX2i/N1Jyt0OCuFDkg==
X-Received: by 2002:a17:907:3f03:b0:6df:b04b:8712 with SMTP id
 hq3-20020a1709073f0300b006dfb04b8712mr27535756ejc.290.1649621219711; 
 Sun, 10 Apr 2022 13:06:59 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 q15-20020a1709060e4f00b006cdf4535cf2sm11073022eji.67.2022.04.10.13.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Apr 2022 13:06:59 -0700 (PDT)
Date: Sun, 10 Apr 2022 23:06:57 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Message-ID: <20220410200657.cwx7xy3t6jycqqrn@skbuf>
References: <20220410134227.18810-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220410134227.18810-1-arinc.unal@arinc9.com>
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: offload BR_HAIRPIN_MODE,
 BR_ISOLATED, BR_MULTICAST_TO_UNICAST
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

On Sun, Apr 10, 2022 at 04:42:27PM +0300, Arınç ÜNAL wrote:
> Add BR_HAIRPIN_MODE, BR_ISOLATED and BR_MULTICAST_TO_UNICAST port flags to
> BR_PORT_FLAGS_HW_OFFLOAD so that switchdev drivers which have an offloaded
> data plane have a chance to reject these bridge port flags if they don't
> support them yet.
> 
> It makes the code path go through the
> SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
> -EINVAL for everything they don't recognize.
> 
> For drivers that don't catch SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS at
> all, switchdev will return -EOPNOTSUPP for those which is then ignored, but
> those are in the minority.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

> Let me know if this is netdev/net material instead.

The thing with targeting this against "net" is that we've seen the
introduction of BR_PORT_LOCKED fairly recently which has tainted the
BR_PORT_FLAGS_HW_OFFLOAD macro. So backporting would conflict very
quickly down the path. Sure that isn't a decisive problem, but I don't
think it's worth the extra trouble of preparing special patches for the
"stable" trees, and having those diverge from the current master.

> 
> Commit log is heavily quoted from Vladimir Oltean <olteanv@gmail.com>.
> 
> Arınç
> ---
>  net/bridge/br_switchdev.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 8cc44c367231..81400e0b26ac 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -72,7 +72,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
>  
>  /* Flags that can be offloaded to hardware */
>  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
> +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED | \
> +				  BR_HAIRPIN_MODE | BR_ISOLATED | BR_MULTICAST_TO_UNICAST)
>  
>  int br_switchdev_set_port_flag(struct net_bridge_port *p,
>  			       unsigned long flags,
> -- 
> 2.25.1
> 
