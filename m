Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 574272D8B27
	for <lists.bridge@lfdr.de>; Sun, 13 Dec 2020 04:29:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CBF62E119;
	Sun, 13 Dec 2020 03:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zn2g7efLJ8Lr; Sun, 13 Dec 2020 03:29:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id BE79B203E9;
	Sun, 13 Dec 2020 03:29:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93D94C013B;
	Sun, 13 Dec 2020 03:29:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94262C013B
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 828DE203D7
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zKupPE2CDlyW for <bridge@lists.linux-foundation.org>;
 Sun, 13 Dec 2020 03:29:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 838EB20198
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:29:38 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id w3so12318898otp.13
 for <bridge@lists.linux-foundation.org>; Sat, 12 Dec 2020 19:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5A8LBG/0winkhIB+qQknveTCUeenAgAerHH1NCQ2T74=;
 b=WqOZJMT5w2wzqQecct+baorFdZNCF95QdWg2USqadi60RgTMKQKmqz9oa827zluMxC
 dFROYainZKQ1g9Frxqi9Y3CU6kv687nGJ8H2v2/u7lZoGO/7Ve4FqordX6MU34srPqwJ
 UpWGnOJp/UopqTiIWaikBsozE1KTBAbNRPPffEAnfMPfFYWy+w5HjKUOHW/NGIiAnXsS
 4jbmSIf5SJg7bYOWos4A/FpkgfGzuNhy8SzoIyruJ6/ReMlKVI9Y89mFqYLpDAJPu85g
 Juhn02DKmGW1GewGDujDulfjEqR3Ijze5uXMth1bi6t5CPxee7RX7n2Br3wWA8+Uko8r
 gZvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5A8LBG/0winkhIB+qQknveTCUeenAgAerHH1NCQ2T74=;
 b=a4t5P9nLshDch7R9f2DPjSNVLkMDB+8UhwKoMQ2qLx6XUvNP4JWL2I6XAvAEbix7l5
 Gop0c8QBoL1P1O/3/bMubDRNReLnYsWl67I8wCOR6p0Kn2Th8w1sl9Q2dLTn4HySq0q0
 6VgYnBOETJMzBIiWxvvxxx8tqO2XM/WhZkoTUlBwBj6kF09WwlIeBnnFm3jPtU7fgjI1
 8eofz/6ZqEOyg3L2Hf6tHt7h7j0J9lZw8l/WQG8l6jgwahWeGmCNA/Yn3HDQwkx194Jt
 PeMCPMfd0AHeowUcKYPJpJn9/lD9nrM4JtWVPSb+mSNmxLNWisaGStYIxt/YTo0ukgXz
 Z6Tw==
X-Gm-Message-State: AOAM531IT1Ow6UffC4/AM+UmX9dnQDOXndvjtvYBRbX94lbPw5Iahy3R
 h6QvELMgcVe8uHOPiuPuD8A=
X-Google-Smtp-Source: ABdhPJzpuqRAa5HPy60eIDvyda21+S66FjuZ3hCtTRg5D7kSMBRO1bIHm9LamVpLyzNqO0ALKYPrTg==
X-Received: by 2002:a05:6830:4036:: with SMTP id
 i22mr14956285ots.127.1607830177810; 
 Sat, 12 Dec 2020 19:29:37 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:5c21:b591:3efd:575e?
 ([2600:1700:dfe0:49f0:5c21:b591:3efd:575e])
 by smtp.gmail.com with ESMTPSA id f18sm3140580otf.55.2020.12.12.19.29.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Dec 2020 19:29:37 -0800 (PST)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20201213024018.772586-1-vladimir.oltean@nxp.com>
 <20201213024018.772586-5-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <972b7427-0efe-118b-5e11-88ea10c2d217@gmail.com>
Date: Sat, 12 Dec 2020 19:29:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201213024018.772586-5-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v2 net-next 4/6] net: dsa: exit early in
 dsa_slave_switchdev_event if we can't program the FDB
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
> Right now, the following would happen for a switch driver that does not
> implement .port_fdb_add or .port_fdb_del.
> 
> dsa_slave_switchdev_event returns NOTIFY_OK and schedules:
> -> dsa_slave_switchdev_event_work
>    -> dsa_port_fdb_add
>       -> dsa_port_notify(DSA_NOTIFIER_FDB_ADD)
>          -> dsa_switch_fdb_add
>             -> if (!ds->ops->port_fdb_add) return -EOPNOTSUPP;
>    -> an error is printed with dev_dbg, and
>       dsa_fdb_offload_notify(switchdev_work) is not called.
> 
> We can avoid scheduling the worker for nothing and say NOTIFY_OK.

Not sure if this comment is intended to describe what is being added,
only if you have to respin, should this be NOTIFY_DONE?

> Because we don't call dsa_fdb_offload_notify, the static FDB entry will
> remain just in the software bridge.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
