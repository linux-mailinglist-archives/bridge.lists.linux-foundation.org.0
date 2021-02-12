Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2E831A44F
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 19:12:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDB426F8A0
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 18:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YEDxxZEju4bq for <lists.bridge@lfdr.de>;
	Fri, 12 Feb 2021 18:12:52 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id CBD7F6F7A9; Fri, 12 Feb 2021 18:12:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24C406F5F2;
	Fri, 12 Feb 2021 18:12:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 002D2C013A;
	Fri, 12 Feb 2021 18:12:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 06D86C013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E463F8764D
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cABaCzjGpN0Y for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 18:12:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53C9287645
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:12:40 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id z21so184816pgj.4
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 10:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DYSCyXslW7JpprNOrHc5FjADncBRkdDqs3PWphAwNEU=;
 b=rSedlesAGjgO7MengPEN38iUKrRFhSnQ9IDS57b7dEzmhPwvLXpm4PNrLLqaLDDWGS
 t/bek5mE5JocEFy2hDyqKsNBZ2HCm7vdjEUWKHIkuEsfjaug3X2zFKE1z1uQX7BgqDh9
 TSyV16NxdPZkBIWcjgFH5a5pqLm/LVbULSIs3cD9oaqMfL0gLc3nh/2+2SkAcg7N4tdW
 3vh3jyeQaCtNfInJMcufkK6qZ7z9DHhAYOU60lj9P30xtEjbMkwnQrvpm/CC/LvpzAKW
 IrOHNxRFtakhbjWHauelHwN6T50yg5AWQ8CaK2dr7uBQQRjCJ5qLIF9QvzigTgkd0QlS
 o6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DYSCyXslW7JpprNOrHc5FjADncBRkdDqs3PWphAwNEU=;
 b=mjeChRBdf8/a//vluD9X/dVIuRA5ya925e3O5xhl+jNwlImE0fvbCw3NvJTLKev84Z
 IJA5RBSptJzgFpMvG7ObXK4jI9SlBsZu9gJ8GpGKuonMHGRIFhZCO5gcKtBWDmpVzEhk
 Z4w5YSE7YWtjYrsJPs886xHdxICO3au1xRWSwqP8dv6fIhKYNynP1PpXEWC/swKrZIBr
 9FHWNHpmlnaN/NVgCASJO4EdUsXNO1+MXy9ykjLrU5uunZHmhrJxEWvBBhhtYUUL2wYb
 hxu0YvRUQhH0Aevp7af6/flX8sS6cKzHpdf85t8JnL/0JSxUeC7givB2CiFhE4RH5cXt
 UcFw==
X-Gm-Message-State: AOAM533ghilPevg21E6a8PMC4pRMlfSeio11aJEcq0uHaElMd4Vt9TBN
 ZmIenXXm0dz7nj+57Hi2BXA=
X-Google-Smtp-Source: ABdhPJwoYsp4Sp8t8amuimKE7kIoREpqi1nx3kEihL4zIPUsG3WNrKMB+WDhg+WkOwjCceHdCPg41w==
X-Received: by 2002:a63:4084:: with SMTP id n126mr4349051pga.80.1613153559952; 
 Fri, 12 Feb 2021 10:12:39 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e185sm10042337pfe.117.2021.02.12.10.12.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Feb 2021 10:12:39 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210212151600.3357121-1-olteanv@gmail.com>
 <20210212151600.3357121-8-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <05a93c4b-2180-afea-d077-3b1c91312b41@gmail.com>
Date: Fri, 12 Feb 2021 10:12:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212151600.3357121-8-olteanv@gmail.com>
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
Subject: Re: [Bridge] [PATCH v5 net-next 07/10] net: dsa: felix: restore
 multicast flood to CPU when NPI tagger reinitializes
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
> ocelot_init sets up PGID_MC to include the CPU port module, and that is
> fine, but the ocelot-8021q tagger removes the CPU port module from the
> unknown multicast replicator. So after a transition from the default
> ocelot tagger towards ocelot-8021q and then again towards ocelot,
> multicast flooding towards the CPU port module will be disabled.
> 
> Fixes: e21268efbe26 ("net: dsa: felix: perform switch setup for tag_8021q")
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
