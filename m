Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F57A31A435
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 19:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC6D36F8A6
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 18:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k1DSbLh4L4IB for <lists.bridge@lfdr.de>;
	Fri, 12 Feb 2021 18:07:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 556D86F7BA; Fri, 12 Feb 2021 18:07:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D3956EBEC;
	Fri, 12 Feb 2021 18:07:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 093D2C013A;
	Fri, 12 Feb 2021 18:07:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C5FCC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0212987138
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXcJDXd130bp for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 18:07:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6AD268706B
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:07:18 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id m2so169150pgq.5
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 10:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jzL26zkMdAnOD2IACVtEn2EhF+H59r0z5RTwLn52Y3M=;
 b=GGYIq9OqvYpdw/0qjHnAVD0LJTXFfZcF0KciroJWpaauQnVLdTBpp/glr+Vy5rULBz
 9VQOkY+RSQu4SXh0pD54mneZPEI8+KptrYQxXK2wDgIv7dRYwDkvBbXidHT29ddo2i9u
 QMWmiWE3Clmpx/3DFGzuaaDPXA8xVqFM8kqIKuoDLbSdppwy39dQhLw6H33A/7tjNqRf
 0rrqJegRUUHMsrSQu0qKnuVbRY376nmZlbdGeyrM4WjUol11Z91O6oXU8BJKwaOIkEeT
 IhbGpgQV/Ev8g2EZ5l6XtPPUyZU1vOrrxCilIU3WEk6hoi9TFj5Gs0+sBMLGJyD7GuOM
 9pEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jzL26zkMdAnOD2IACVtEn2EhF+H59r0z5RTwLn52Y3M=;
 b=b64aHrcxkIIKYwgXL5w3386Yxns2Xr0PRStbqF60Tthsyf2APeC8vYJjWzAtyuelun
 IACc4y0pUAQfwH5/IkllMEI2q+K/Z2KL6Yp1Nj309C4ykMYFYy5MhOlBKDsOeeMFXfee
 rYfCpraOgXvtVwGao3lJNdJzCYAw2HRA946Gbhi/EOPPdGHl48r4JxVqXVZKCLNWrNGB
 jGLTVa8J2qO3Hhywgxklt+IQwgEkURom2e6KrZcjzO50znzaymBItQZ5bMzlrcCOwqnK
 Q45eRnfJ1OM5lKnike/3esB5JgNPdClUBHphhDSlT/h036le35QuAggyW6J/eWdn6/VD
 qrmg==
X-Gm-Message-State: AOAM5302jB+pN5z4yEsw4yMdmrStCAn+gRD75G2Ihd2oGuoIppy5Ged1
 rYXr7AYibN2kLFKOH9QO8uQ=
X-Google-Smtp-Source: ABdhPJwEtkuYl4IEjrY3K94aY/JomFbslkQgXIBduPK1tbo89twwiU07e/yZ3gbwrmhbKdxwSu/FAw==
X-Received: by 2002:a63:4405:: with SMTP id r5mr4272320pga.168.1613153237967; 
 Fri, 12 Feb 2021 10:07:17 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e21sm9422315pgv.74.2021.02.12.10.07.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Feb 2021 10:07:17 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210212151600.3357121-1-olteanv@gmail.com>
 <20210212151600.3357121-4-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6097810e-9b74-df81-ccc4-3a4b47b94b67@gmail.com>
Date: Fri, 12 Feb 2021 10:07:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212151600.3357121-4-olteanv@gmail.com>
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
Subject: Re: [Bridge] [PATCH v5 net-next 03/10] net: bridge: don't print in
 br_switchdev_set_port_flag
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
> For the netlink interface, propagate errors through extack rather than
> simply printing them to the console. For the sysfs interface, we still
> print to the console, but at least that's one layer higher than in
> switchdev, which also allows us to silently ignore the offloading of
> flags if that is ever needed in the future.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

I suppose the slight "loss" of information on which port failed the
operation is okay since it was implied by either the path (sysfs) or the
bridge command.
-- 
Florian
