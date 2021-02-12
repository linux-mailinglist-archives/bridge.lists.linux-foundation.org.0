Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8956931A42A
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 19:05:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BD4F87046;
	Fri, 12 Feb 2021 18:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uup-tx+BI4YJ; Fri, 12 Feb 2021 18:05:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CAD886BF2;
	Fri, 12 Feb 2021 18:05:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE542C013A;
	Fri, 12 Feb 2021 18:05:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 335FFC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:05:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 127EA87004
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-jr+6IzSeKq for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 18:05:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 118B286BF2
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:05:20 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id a24so245367plm.11
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 10:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=e7FvX3805mVbi8rUejyIm26agQLfcgUZJrMWSiLjNGs=;
 b=lNMCouqv+fTjmMB6cirFrl9lgwfiYme91mERyye0MrSQwDCWRBAA8nxOyadU0JP1GM
 2+78codzGdNu57tEuXnoFu7IobxUP2aYirkbJr28Dm7BWbmrvwUwjBcmrPiAYh+qBgtO
 2oi4c6DHF22Kn9p7hWKmzSLq3BrbDfp1snMMHl4gbxbz70OOyBegaRybHK+9kTsuJelI
 sX9n3adDZpn2lvnhNC9ZnBin4UlcBYC1LTzYqPV9XqtyKQVe7EUeGDgd/KTQlJ0iZiLp
 fwm/Zs1QqxP+LnnLT9T4qzF2MEyxwZGEGwECPkLtovPlelRmrQOiI2Cl779Kna3slRjJ
 PNBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=e7FvX3805mVbi8rUejyIm26agQLfcgUZJrMWSiLjNGs=;
 b=PCthMQWV+MKTmdg7JexeOycrVqaHdPRhV7cW9Wjo+8DR9w1FRe7MRoxbheOsN8o0VR
 7Yh+3vmRKzFto19joPHS6AtS4GoIF1oZ3zSxfIJN64yRAbOaS4zrb2JpuqbmZ7LZsTDg
 q7PJPi4ZdhlNW7cRpGG591LVHN1vUFfLFk6c6GKtoPqkjZk7pyWX3FLoORxK3bM5yCR5
 2tYjJrvCDmGvY4eWArm+COuJpVAjA+kf7W/iyWDeXwBAu9r/VQRoMS8NJm04w8V00nAk
 5O3TJ/OeLNB43gJtXvYW0kBoLtYp5oz8JF7McSEcSRcefO7xuAdzGbuoYQMER7QtePWs
 yIUw==
X-Gm-Message-State: AOAM531i2mOOkx75wz+E/abDiuUOFvlCpnBzLZNwDBnkblQr7QIzCw6m
 wnxYR1Z5VuPWh2BToFnSwnI=
X-Google-Smtp-Source: ABdhPJxbX9H47ViGLWUpCf4ZDXGVxxJ2XlKtdlv42d9ua1WR5Bsy0WUcnV+kUq8ziygwgtpEbfgKww==
X-Received: by 2002:a17:90a:ad09:: with SMTP id
 r9mr3793493pjq.51.1613153119543; 
 Fri, 12 Feb 2021 10:05:19 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r13sm10104082pfc.198.2021.02.12.10.05.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Feb 2021 10:05:19 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210212151600.3357121-1-olteanv@gmail.com>
 <20210212151600.3357121-3-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <ce3cd74e-2f58-e368-e108-fd148d69d4cb@gmail.com>
Date: Fri, 12 Feb 2021 10:05:15 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212151600.3357121-3-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vadym Kochan <vkochan@marvell.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Ido Schimmel <idosch@idosch.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 02/10] net: bridge: offload all
 port flags at once in br_setport
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



On 2/12/2021 7:15 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> If for example this command:
> 
> ip link set swp0 type bridge_slave flood off mcast_flood off learning off
> 
> succeeded at configuring BR_FLOOD and BR_MCAST_FLOOD but not at
> BR_LEARNING, there would be no attempt to revert the partial state in
> any way. Arguably, if the user changes more than one flag through the
> same netlink command, this one _should_ be all or nothing, which means
> it should be passed through switchdev as all or nothing.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
