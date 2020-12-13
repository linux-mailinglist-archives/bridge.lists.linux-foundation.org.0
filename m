Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34272D8B2E
	for <lists.bridge@lfdr.de>; Sun, 13 Dec 2020 04:43:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA9D7870A6;
	Sun, 13 Dec 2020 03:43:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rq6AB5JKZHEr; Sun, 13 Dec 2020 03:43:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 975D087336;
	Sun, 13 Dec 2020 03:43:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72CB9C013B;
	Sun, 13 Dec 2020 03:43:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BB51C013B
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:43:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 15671872A5
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sN6UTtToRLLm for <bridge@lists.linux-foundation.org>;
 Sun, 13 Dec 2020 03:43:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D210870A6
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:43:15 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id p126so15093804oif.7
 for <bridge@lists.linux-foundation.org>; Sat, 12 Dec 2020 19:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aLMv7bv//grEdHcZE3Ga0rjuWlHjH5Gf0eUa19zRJrQ=;
 b=sA271PWlMNitfIcgRi1Rvcy+v+0cABEo3Du/WflzKU/dTtae3WDiwSk0qaSwmCPEvb
 qbLHCzQtRY4zP+A34qnL+yyxD6dwK0mT/7EHOOvyCrsvGu2GzMageMe68FA+r7qfkGG3
 FZqX24Gh5FRbda9BOPJpSUExXPURHVEY2PZwy+RUn7na7BgKA+RcKf10S6+FtqnI2inX
 +079tFPY5xaemXlaY89MVgkBaJ1A5ma2afSgCOwH61a2E6CKe1FbYc96GeGWWeIvdofM
 4T8dpVJqXwd6snwzb9L2ScFaljBRicUt6yQRFAPWUIzAlLZ/5gjvr1tH09TyALZAn2yp
 Zrcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aLMv7bv//grEdHcZE3Ga0rjuWlHjH5Gf0eUa19zRJrQ=;
 b=opCSTmOvqj0d00+EayLK1vfZBh7NxnZfxDCv4bSxs7Q86axK61dZRjmzJiKYur9b48
 LslWqHbXfIoqe47N0IxdBeW6O2354WPebNS4gCpPP+fBbvCobn4zGHmJZIdzdBWdtSe8
 y327Bk+QAedsDWFGD7/GzsIecZaQpg5wLhR4vUkvdHAbQxfuRsssU6PxA64DLPZV/zdY
 JHvryqKmU+JrKUtCbHxyUZhBFt4K6qPmsi0HgbPoE+MfMOuEOPvHyQc9oPZkmwYGSM+Y
 5+Fw05M3mu76AtYNmTQJh3q+3rdUS5JyxDkIC4BR/KUk9OIm6XDmM5ZFxKbDLB0rGYsj
 m8qw==
X-Gm-Message-State: AOAM533jLPPVgjUR+NVNAqwCP4r5cMdEbD7GDbcEmr/utGl+P7SUSsxw
 35QOCWiSlWMx2uh92+CgEgY=
X-Google-Smtp-Source: ABdhPJzRk7A3ZZeJR9uQqVQYmJbfWlQv2jn+usTzLnZEDAMsEvcuvH4F5/5UWeqTrxm6J8HqOOndHA==
X-Received: by 2002:aca:2418:: with SMTP id n24mr13792346oic.62.1607830994270; 
 Sat, 12 Dec 2020 19:43:14 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:5c21:b591:3efd:575e?
 ([2600:1700:dfe0:49f0:5c21:b591:3efd:575e])
 by smtp.gmail.com with ESMTPSA id s26sm3160664otd.8.2020.12.12.19.43.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Dec 2020 19:43:13 -0800 (PST)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20201213024018.772586-1-vladimir.oltean@nxp.com>
 <20201213024018.772586-3-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6ee91a90-9c27-9001-66af-9bf16081f3b5@gmail.com>
Date: Sat, 12 Dec 2020 19:43:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201213024018.772586-3-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: don't use
 switchdev_notifier_fdb_info in dsa_switchdev_event_work
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



On 12/12/2020 6:40 PM, Vladimir Oltean wrote:
> Currently DSA doesn't add FDB entries on the CPU port, because it only
> does so through switchdev, which is associated with a net_device, and
> there are none of those for the CPU port.
> 
> But actually FDB addresses on the CPU port have some use cases of their
> own, if the switchdev operations are initiated from within the DSA
> layer. There is just one problem with the existing code: it passes a
> structure in dsa_switchdev_event_work which was retrieved directly from
> switchdev, so it contains a net_device. We need to generalize the
> contents to something that covers the CPU port as well: the "ds, port"
> tuple is fine for that.
> 
> Note that the new procedure for notifying the successful FDB offload is
> inspired from the rocker model.
> 
> Also, nothing was being done if added_by_user was false. Let's check for
> that a lot earlier, and don't actually bother to schedule the worker
> for nothing.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
