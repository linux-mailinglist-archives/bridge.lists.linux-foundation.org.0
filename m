Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CE31A445
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 19:10:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 301BC87446;
	Fri, 12 Feb 2021 18:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8k+iAhHhRA5Q; Fri, 12 Feb 2021 18:10:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABD218746E;
	Fri, 12 Feb 2021 18:10:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 918B2C013A;
	Fri, 12 Feb 2021 18:10:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5625C013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CF31587012
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xe3mBvU8AWDr for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 18:10:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3B5AC86FF8
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:10:41 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id w18so6287704pfu.9
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 10:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bytmtoINOEdkBtL4V2XAs15+q8GmAS7yZKBoJvhkgLk=;
 b=akE2ozj4n+Syf78UgJqCInvzuDDz+8VmFwiwu0NVDiPEtd9yuZancJkUYDsXQzYUbp
 ObndXxrSoodxkK60wJ6CouUlchzBZ3QP8k4bGVwfdMaQGNShPX5gMyLHokdta2A9EPEP
 DEApGNbbS247uAc79ayPDzMVwo1pC/QOSoxC2xFMT3tSTWuPrGkZqDtrKvfi0c+4YG1v
 kKxdMB4aFm280e4uW/KM2G4eO3f0iQkqyTYgX5pdNZKGS+IqNofZo2HkZD+KsnCZs9kZ
 RaHYXbRaeC1CMggg6p0Lw0mzj7wAvEO/tfwHENqV3oJSpWqbcOcPesH9LsuuO+2V3Sd2
 SRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bytmtoINOEdkBtL4V2XAs15+q8GmAS7yZKBoJvhkgLk=;
 b=QLz5Pn8PwxNrI9Zo7POq0GQKOLHDC2RsYAsUQp0C7VFk3wi9n/quI4c0n5ZzuXBJCk
 oOJTkYCfrP5Vh3vu2LRY0GZGNPSW+FdcxQqjtFJFshlY/EPEn8Z1ALFfri4Z9mdCQ/Wb
 DOHGX3/wxZrDdniERxA0fyZBPr4pU/5dFCA9Gz8ycs2y98lSIT0l39Vozo38STKGm9CL
 daB/spXxhYpfTWnRoiUAC0yzTq4FNPIXRKypjbLVtnahhW33IkrH1nEQoXxauZYratNo
 tDaiRBQJQ5+WpjgMRS7h2FJFWv+Vm6l/Yfdo1QNK/ayxgy6ms1Qy1hqCBtKgvjJtyrFz
 IMLA==
X-Gm-Message-State: AOAM532QasWJVpcBcr64vSVHzug9XDwGTtZpy4L5zmBmMbstQDIWZjut
 8pUWXwQ9l+9Tqfg8z4RkrA0=
X-Google-Smtp-Source: ABdhPJz/Ti9d44Rv75w/tdspUxsn1D7i/I0j1GsylUmhWNr5eKXVF+yfHYMhqeLr+UkmhJ5ihnkcTQ==
X-Received: by 2002:a63:4e09:: with SMTP id c9mr4365562pgb.107.1613153440776; 
 Fri, 12 Feb 2021 10:10:40 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e15sm11325899pgr.81.2021.02.12.10.10.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Feb 2021 10:10:40 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210212151600.3357121-1-olteanv@gmail.com>
 <20210212151600.3357121-6-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9a1efd0d-9930-cbc7-5450-ffb47a0034e4@gmail.com>
Date: Fri, 12 Feb 2021 10:10:37 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212151600.3357121-6-olteanv@gmail.com>
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
Subject: Re: [Bridge] [PATCH v5 net-next 05/10] net: switchdev: pass flags
 and mask to both {PRE_, }BRIDGE_FLAGS attributes
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
> This switchdev attribute offers a counterproductive API for a driver
> writer, because although br_switchdev_set_port_flag gets passed a
> "flags" and a "mask", those are passed piecemeal to the driver, so while
> the PRE_BRIDGE_FLAGS listener knows what changed because it has the
> "mask", the BRIDGE_FLAGS listener doesn't, because it only has the final
> value. But certain drivers can offload only certain combinations of
> settings, like for example they cannot change unicast flooding
> independently of multicast flooding - they must be both on or both off.
> The way the information is passed to switchdev makes drivers not
> expressive enough, and unable to reject this request ahead of time, in
> the PRE_BRIDGE_FLAGS notifier, so they are forced to reject it during
> the deferred BRIDGE_FLAGS attribute, where the rejection is currently
> ignored.
> 
> This patch also changes drivers to make use of the "mask" field for edge
> detection when possible.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
