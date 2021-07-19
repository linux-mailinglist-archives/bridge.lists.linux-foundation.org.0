Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494953CCC62
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69ABF400D8;
	Mon, 19 Jul 2021 02:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u9BoMNrWjymc; Mon, 19 Jul 2021 02:47:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 00FFD401D8;
	Mon, 19 Jul 2021 02:47:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1D26C0022;
	Mon, 19 Jul 2021 02:47:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 443FEC000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 188D881BD6
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id US5m08yEk5nI for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:47:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7E4C833CD
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:47:24 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 f12-20020a056830204cb029048bcf4c6bd9so16757951otp.8
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jNyhd+T/9d9anCSoGKOeiOQZUa2KbCVT/Y/R829odA0=;
 b=kd/pME7pXs/YdCnqRxrbKWW2Gqhh4kDLHBsOyRE8A6RrQ4YCNnLEY8zQpEReVUMEL6
 32d7JKq2Ik57CpKb5yj4J4ir46O6OlRuw9a6txjY/gXQebtX/JQ2Z/eK/AbTzyixQH46
 9QD+WkAvH6nzjE6vnvHWZly7cMi1PYLIL5Cg7ulFOQ/R1DmyQ7nljIXBOP7c9nz+YJNT
 jtgmuguBRRu1PVkqPcaxNOUFMxrYm2T1yTZfFxQhsCvdrgoriH6lC2XZSuB3mHqSmAu1
 QnzJHTH5fYBIaafDUTK60wUDyyHCWKcE94NDgNHr7mCrA7D3dMTAhbbDIrFeKX+W1AAO
 jLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jNyhd+T/9d9anCSoGKOeiOQZUa2KbCVT/Y/R829odA0=;
 b=mid+i6GwlXOQHjhHn3FTuz+ncn6cl6Sa3VToT42J3ms7aUVj25xaVilr4IMaGwlKJ7
 s+2rxuXIw8mrqVXhFb3pg14RVbnQb2pqa29FNgk1qnTevTZhNKjJepFiTYmUAbp5gVgo
 TH5htmJmc5oHa0FLWZgwpkvRPeSXUAwa5lPq+8MkGD4UsHj3OQXEynyuzIOfYUedQ0dC
 NH9jpKuSkDF3ABdQfdJekiR0EpYiqhKHkj/K0lfwJp3uWRIX9KTurB7W9UwPjDQjV+12
 R6KoAbj82zTFkqvMWeAxWKKA8ujQ/EcVKeE50Y/0UI1u8HEswFoyPLEB4Ea0EHY+N0nA
 doqw==
X-Gm-Message-State: AOAM531QInYKi5ttN02mFHfxzCPbx8UKMHZEFV2awwXUzuA/ZWjomnLn
 tWdjSNt9+fiTqCbUFbw5rP8=
X-Google-Smtp-Source: ABdhPJxZjIgSUOEIBImnKslPHGflgNXmVhhyARyOtRSwH9zyUg9eUuJLvfGeybKJI8uvKkCf+X5PvA==
X-Received: by 2002:a9d:7e3:: with SMTP id 90mr16597425oto.40.1626662843696;
 Sun, 18 Jul 2021 19:47:23 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id l11sm892411otf.1.2021.07.18.19.47.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:47:23 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-16-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7c2b81e8-db72-4665-fe81-7254cba1e797@gmail.com>
Date: Sun, 18 Jul 2021 19:47:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-16-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 15/15] net: dsa: tag_dsa: offload
 the bridge forwarding process
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



On 7/18/2021 2:44 PM, Vladimir Oltean wrote:
> From: Tobias Waldekranz <tobias@waldekranz.com>
> 
> Allow the DSA tagger to generate FORWARD frames for offloaded skbs
> sent from a bridge that we offload, allowing the switch to handle any
> frame replication that may be required. This also means that source
> address learning takes place on packets sent from the CPU, meaning
> that return traffic no longer needs to be flooded as unknown unicast.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

This looks pretty complicated to but if this is how it has to work, it 
has to. For tag_brcm.c we can simply indicate that the frame to be 
transmitted should have a specific bitmask of egress ports.
-- 
Florian
