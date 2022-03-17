Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A614DC200
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 09:56:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A54F612AD;
	Thu, 17 Mar 2022 08:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KuOXZzAbPCTL; Thu, 17 Mar 2022 08:56:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 31A30612B0;
	Thu, 17 Mar 2022 08:56:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E9B35C0073;
	Thu, 17 Mar 2022 08:56:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB4A9C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7B37400B9
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyb2ZRkLCYQI for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 08:56:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C56E4000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:56:21 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id t1so5698224edc.3
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 01:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=4ZlWGxIpVMVSY4V9SoW9sLygWbw7lhRyEfpNfhcyNy0=;
 b=WZo0NpgYpZQKUgwmEdn2MTli/3WmlFymvJyM+baA8S8m5W0189q68tTkoAVejAc4ah
 OBa4dH/8SCDYAgZj5ldxQN8dJOFsr/d/PJHDDJcehCod9DI920z16UHkDFV+dXdZa0+N
 uJjGZpAsvxLZwXFZ4LxUHEKM7Z9x9R1kMXSnhC5t9WCL89OfPbwNTxAW79YOXnRS8xLt
 oha28QETzSbjcQ1HcSpPF2X4YHbs7vVg/KDYh2nnMSKfz65hmNfaq22eF0pKPilRccaE
 CexkcWcZ6Q3B11iTQxj4Cbips/qWNoSDGwCl3wzuAoitX6JULlgPxsCW5l8t3Qzs/L60
 vmNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=4ZlWGxIpVMVSY4V9SoW9sLygWbw7lhRyEfpNfhcyNy0=;
 b=HGrHf+JyyoCXYzFbm94y7JWKhxzpIhSSazeqP8fy1+rGMdNHinDRaKoSCS6namdzp1
 O0eBQtLUHCSwibXoNCpeFIc4sQFLG1m34gW4K5fFlRN4djwNAcPrg6jz0v22a1yWVapZ
 4fwVodV1MElCua/B6oU1U1iwl37o2zSogt4LIf39J6puzThZDasiJiLPozSr5ZnQAOB4
 +3XwzoTgX3Vd2zqwZF7Ahucy4dqSXbsvJXELwZ1pr2Ny/ctBEDRxPDuATLAxikM2tzWQ
 xAt91Pm+6QNjLsNWtO2egyNSbofyyxX/mWeGkPvmDUcs4Pu09Q3yrIUUPCs47kypCj/C
 eQ7g==
X-Gm-Message-State: AOAM533h4aHr3e4pVtRR8iG1f5QOpj9FAeoyy5U02uhxI1SEBhqUP/H/
 64abY/CSPZj+4fE1gvh2AMxDGg==
X-Google-Smtp-Source: ABdhPJwRTGcM39a1h4gUfTFT37DfgLVGXP4Rfrr+6E+0QeEcQgcx8xgDHPI3U0VHYnqvRv6eufaWVg==
X-Received: by 2002:a05:6402:17dc:b0:418:efa5:f445 with SMTP id
 s28-20020a05640217dc00b00418efa5f445mr3223853edy.125.1647507380134; 
 Thu, 17 Mar 2022 01:56:20 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 e22-20020a170906505600b006da7d71f25csm2066032ejk.41.2022.03.17.01.56.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 01:56:19 -0700 (PDT)
Message-ID: <b515e6de-fd84-8ed2-70f1-7c4eae851d94@blackwall.org>
Date: Thu, 17 Mar 2022 10:56:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-5-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-5-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 04/15] net: bridge: mst: Notify
 switchdev drivers of MST mode changes
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> Trigger a switchdev event whenever the bridge's MST mode is
> enabled/disabled. This allows constituent ports to either perform any
> required hardware config, or refuse the change if it not supported.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/switchdev.h |  2 ++
>  net/bridge/br_mst.c     | 11 +++++++++++
>  2 files changed, 13 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

