Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7139318447
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 05:20:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 406CE6F601
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 04:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rihY9hpMjzG8 for <lists.bridge@lfdr.de>;
	Thu, 11 Feb 2021 04:20:34 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id DFD386F532; Thu, 11 Feb 2021 04:20:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E8B96F49E;
	Thu, 11 Feb 2021 04:20:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4A7FC013A;
	Thu, 11 Feb 2021 04:20:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 797B6C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 656098701A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJBC2bAkLRGK for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 04:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C439786F90
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:20:25 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id a16so2622787plh.8
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 20:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ofWIvbul8lUQjDjEqyhG2qv/DpTdeTq9suCAukT4VnE=;
 b=cJkf+VIciLaXv1lixjdR8iXxDvJD4ZVrqUo9pLZZOczna0nt6lXw+gvOZNbOiFr9Ax
 xXLtvTJtKB5ICTmJeynxBdn39We/Qj+tzybWJLI+YpQpya8NbF7CEqhU7uDvPD9/+aOb
 X0MP9xdLMPmQZ1cdXlY2M8wEiztJgbsc+o3R1enU36K44psdbuPcp0FECGfnmjGLvkEl
 pbmJ/ca9FeGs5zLyGfHWDyiQ2R41jRN6favzNvY7kfjbXs7nx57QxGt5Mgrp1a/IBocm
 NkcfcU38GSec03drey6h7xPphlkEwIMZIn88AfGtDhxqRP3qliCqabex9N/PNUJs9bvl
 9l8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ofWIvbul8lUQjDjEqyhG2qv/DpTdeTq9suCAukT4VnE=;
 b=IG07xByFQN/1/1kVaHrUbm0Nq5twsCLsF61xutd2FADR9kfh0LLgcFsan7BX8PiOfV
 YUnmLHOKGLX+Tgst8LpruYh3vLpMFAV0rWCYn97lZUoLUebJUziSuqjz18CxMsB/1JIz
 URMNjT8eiOdbXRZQ0/D6jKPGOKWKw52UmNsPgTPuXvB3CFAm+c2+NX5dWRPVYiugbSMT
 uTwBx+AYQeuHHhZws5vyCjFqfm0lP/tXE/qT9aL9zW2KjhOrA1o7Yr70G09ZJm92HFjW
 cNPjZVkHK3XjLVV816UVEWG6DV9mt6VqZIGetdmWLYWNUOOo6iqqL8sV9W/5FLm9njZ8
 8KBg==
X-Gm-Message-State: AOAM533zI+DloTmMMdH8ShdrHETYETPOlgaXk7aI3ygYgw3slc8wh+Pv
 EFvwm7X0zP+76kGCY6X+4bE=
X-Google-Smtp-Source: ABdhPJxywamPXOiUFuBiMJGeS5MBf6KcEI2wQhgt6ksWCRY9UWhZ7BoITqmymMwz37b/iZ4sU43/7g==
X-Received: by 2002:a17:902:7847:b029:df:d889:252c with SMTP id
 e7-20020a1709027847b02900dfd889252cmr5985974pln.76.1613017225380; 
 Wed, 10 Feb 2021 20:20:25 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 68sm3644935pfe.33.2021.02.10.20.20.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 20:20:24 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-11-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a5a4e1e8-8370-954f-ab4e-20a52f54d468@gmail.com>
Date: Wed, 10 Feb 2021 20:20:21 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210210091445.741269-11-olteanv@gmail.com>
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
Subject: Re: [Bridge] [PATCH v3 net-next 10/11] net: mscc: ocelot: offload
 bridge port flags to device
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
> We should not be unconditionally enabling address learning, since doing
> that is actively detrimential when a port is standalone and not offloading
> a bridge. Namely, if a port in the switch is standalone and others are
> offloading the bridge, then we could enter a situation where we learn an
> address towards the standalone port, but the bridged ports could not
> forward the packet there, because the CPU is the only path between the
> standalone and the bridged ports. The solution of course is to not
> enable address learning unless the bridge asks for it.
> 
> We need to set up the initial port flags for no learning and flooding
> everything, then the bridge takes over. The flood configuration was
> already configured ok in ocelot_init, we just need to disable learning
> in ocelot_init_port.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
