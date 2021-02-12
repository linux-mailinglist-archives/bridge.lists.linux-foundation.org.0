Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 418BD3198AB
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 04:20:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8A0286DEE;
	Fri, 12 Feb 2021 03:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fh32I5ngkSN7; Fri, 12 Feb 2021 03:20:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93B1086DE5;
	Fri, 12 Feb 2021 03:20:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 765E4C013A;
	Fri, 12 Feb 2021 03:20:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0710AC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 03:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0234087382
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 03:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Lh0iH6y7dFb for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 03:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F27D87359
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 03:20:37 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id r2so1986429plr.10
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 19:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KX9BczQ7HP081Zb6fQayQzqKfWFTa3oP2nKnpxD0UUU=;
 b=dobcntpA4hP7ES4I7J3tbO+Dq/F2O2WJKrVGbRVjnR+nJkpwvHXlG5hFMOfyDKoLj6
 bQ51oQqQRYgJW+y00/jFsqUqSc+dYvdqM2Al1jDQxxYhv7mxHDb/OOaHiVpie75VlH/j
 giYQvWVZx9vsnBCC0g8f96MRmsPPJ+X4JIUCxvbg0RkTR/7CGjsSdU4U4ChmzspeFt3t
 BbebdtgH31J6iTgcWIzke6pj4RT3+x57OPpJxCLi3NDZ3LEEHJ3m5YN7FFK8aull5xiW
 ugo241axW1+tn5MHnPbI4ti49BIoNxgCa9c36t3P0naug02hrgeyS0sKSWiav0rAYfTR
 qFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KX9BczQ7HP081Zb6fQayQzqKfWFTa3oP2nKnpxD0UUU=;
 b=B3gnsGVf8rZA5YqefY2zIXQ8co47zCl81oqOPWkvdI5HD2SDTLEBjjm1QiXliAUd61
 iRuBNA+O4Hv20f59VcXKprXNkO6blxfeM9jAVKrGKdDEbV8QviWG63p7nDXJrnfHG46o
 uwKOCJ0NRKghHyNXf51/dwMEjFtD7ko1MOrvk+bA9Oa+wGeGNiOflnlVVylMimKuBQN7
 nz4e7SZMg2VlF5wlksoz0Mj6SKRcE1tzNHqs49AFzHR2ZQQm6hWjAvsTue30XWLc/ADd
 IkdMnnyUlUHFA4PkWlDV6tImAPB2k3yMGziFfIRaIDJVqs3De3B1O0Pmrw+gH0j2i2O0
 GHiw==
X-Gm-Message-State: AOAM532+VhEMb0chPZdr9QXGthXnvFvsPbzTOuhRRVkGsyT3lhpJznMd
 6NxY551kWGh1RDaOmBuLszQ=
X-Google-Smtp-Source: ABdhPJzNneNORHrgdUQm8rKm5aRrrnkJf1b/jkUvfdeWboyI7AvVfit3Z4uc9I9P3zJ8TNUQY+bymQ==
X-Received: by 2002:a17:90a:da01:: with SMTP id e1mr910471pjv.22.1613100036860; 
 Thu, 11 Feb 2021 19:20:36 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u20sm6701624pjy.36.2021.02.11.19.20.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 19:20:36 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210212010531.2722925-1-olteanv@gmail.com>
 <20210212010531.2722925-2-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c559a6fc-b436-fc6f-7226-76490033d94c@gmail.com>
Date: Thu, 11 Feb 2021 19:20:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212010531.2722925-2-olteanv@gmail.com>
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
Subject: Re: [Bridge] [PATCH v4 net-next 1/9] net: switchdev: propagate
 extack to port attributes
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



On 2/11/2021 5:05 PM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> When a struct switchdev_attr is notified through switchdev, there is no
> way to report informational messages, unlike for struct switchdev_obj.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
