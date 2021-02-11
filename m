Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7ED318442
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 05:19:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEA68874F7;
	Thu, 11 Feb 2021 04:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwWD0Mgmzf4n; Thu, 11 Feb 2021 04:19:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0ECA874C6;
	Thu, 11 Feb 2021 04:19:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 914A5C013A;
	Thu, 11 Feb 2021 04:19:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 06A72C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F3D828699C
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LvkHmWFnFbJr for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 04:19:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B15B4868DB
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:19:20 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id cv23so2636758pjb.5
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 20:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fXM+kDR6BMksJL+pl1kUFKSGzKtPwwl+jc1moEjdY04=;
 b=kRxTN6iGUtZeTLnxMAj6jnynBo6moA+GZjz+GGag4kj1YdOvKYcfzYBwCj+hTr5KHE
 EjtdOmI4LIEqPndFUKUtLqk29l5U9m//mfUu4lvGOTcch2/WqFYkY/OLztEbPKWcII5X
 IOek3ztKicfMd9S7oDpYVd/teDz+RgovyZrqrSm/HKzS9U7MawrVdMje4PZ8w0MG0oqM
 B2eU8T3XKBc6ubiwik6DAFlaf7ZW1RwmvoW2ei3HKWVb5JlaFKNNAzLeR0RF2Qyaup29
 DDKOae++8UqzX/lvAakgchIhYVfAN9qycnU5HjuaqNMhmw7RCBRESzO3GmncadjUVNqn
 T+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fXM+kDR6BMksJL+pl1kUFKSGzKtPwwl+jc1moEjdY04=;
 b=U974ehuEJfPVVFm+YIZ1rH2nD5YLt3Jr6EzfxSH1vGDKXf2csAoh+YC9EZZ/Qa2Hfx
 yqOn+fZztf+M0KxMD6Gh5vAYVe2uqtVKRAIe+VELlalfMFwGPRoQAqgn3mZPCTcQM30y
 YSrYhiWh3/tDNFFeTaTPPuFzeHTnh86RcbIBOh08XoTswOtJS9cYpvD9qWJwTKQRq5Q0
 2/+aUFsBlgaKVZYfQHFfDOznzDsuWeDuV6Tw0zcAX1AqO6dZ7uQQV68v2xKQOkc3qygl
 rK1Ggjbpz0k2HQfoNOssD2C4hNoYU589f5+akdjXG+KMHcHPab2VRiOS8juXVlEKMZbW
 6Ruw==
X-Gm-Message-State: AOAM531NkVbP6lzJrs5ds0mNeMPfUnGOenr05T+OhBU9c3Lx+J4+sMgd
 rjLJQJCI17j1Ls5jtuLQWBE=
X-Google-Smtp-Source: ABdhPJzGHOEcUhK7dZiP8TrzyMO3vJtARe+4TdMAe4r03TsiPJAZY+vfXyMaiZ7r41o1JA1a6bm+VA==
X-Received: by 2002:a17:902:bc4c:b029:e1:2c56:c743 with SMTP id
 t12-20020a170902bc4cb02900e12c56c743mr6073508plz.66.1613017160276; 
 Wed, 10 Feb 2021 20:19:20 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 123sm3772560pge.88.2021.02.10.20.19.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 20:19:19 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-10-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <62b8a59d-7856-ba7a-aac5-4b792a2a4a3b@gmail.com>
Date: Wed, 10 Feb 2021 20:19:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210210091445.741269-10-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 09/11] net: mscc: ocelot: use
 separate flooding PGID for broadcast
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



On 2/10/2021 1:14 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> In preparation of offloading the bridge port flags which have
> independent settings for unknown multicast and for broadcast, we should
> also start reserving one destination Port Group ID for the flooding of
> broadcast packets, to allow configuring it individually.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
