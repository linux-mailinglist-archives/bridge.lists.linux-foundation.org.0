Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BB53CCC6E
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:54:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B25A882EC7;
	Mon, 19 Jul 2021 02:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhCk07W7i-8i; Mon, 19 Jul 2021 02:54:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5515782F19;
	Mon, 19 Jul 2021 02:54:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D2CEC0022;
	Mon, 19 Jul 2021 02:54:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7019EC000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CE7160723
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3PBidY4UuuHN for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:54:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7936606D0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:54:13 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id
 n187-20020a4a40c40000b029025e72bdf5d6so4109481ooa.0
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aoEErOZcjbmHWVyzLSCzQUjB6elXDaTEJvEABHsrA1M=;
 b=bzvxh2eiwKELuviYlOC1eGgVdhFqWCsqPbiUXmpkLc0D1ZacxIwLvPrxY8Fp7R5m5N
 ttgFG+u4izjrVKW92j7JDSkyzhUS88RHmNMS5mSCDWaiDcIaZMlrgNaO90mxBxBWEe58
 YjI56tfnQwEjPpweuWe1b1228SZXkGJPkCEqX1VD3P1H7b0Dtxy4rSNq6qdyEVfVuM9I
 bqlyGVb+S/8bVlXftiLUAbT1agg7toIjPSz70zEZFndGxumwEDS4gceMXXdiDWGY6MXD
 MX3fDo+LcPHlh+Q0Tt3tkJVIsq80h+umUkUg/If5lGkQM+e1iStBT8DTQMS564KoW5+6
 3v2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aoEErOZcjbmHWVyzLSCzQUjB6elXDaTEJvEABHsrA1M=;
 b=dpBStyA64WT4T65NoK24biyNxI3RdVjvpk66JZCQx8Qk/o0mU8NOOROjo30pnDkGU8
 tDRevtMOm5Y7bKK2ZsFXzGvlPwb15fpeuNHzL/2YNCbsVKFC/LG/xi6TAkSMbgyCzKNT
 VZGVRP01zpvzxo+HLIqjViTbGwIkQlPwVzss1/K7xB7fcfQWnz+vbg25ZAKwUaEkz/x3
 1HaAPf2jQJ/pLsHwsGRbK0N5WpMnhI6NH2bXO/+odINlRoOPdRnyiT8xdQReEr4ENqjT
 N6xCHF19Tze4HzIU5DDt+VZDx3s5A9jUCP8L7YgwIq1sLrKBM1gYvSm8q1l4JQ3F6H9i
 KLCQ==
X-Gm-Message-State: AOAM531IS94dPb+mjc5jOlbHuC9Mpreo5TdyEb7UZblqJKidgvBOlJGu
 kiSOI6p60PjFCJNyEDI1RU8=
X-Google-Smtp-Source: ABdhPJwgvui7h/jXyqlyejb8ID/mJ4ZU1zrO0ee9y2jIjkyueouM+NIB6UK+0y9vdrV/QSKEWIQfRQ==
X-Received: by 2002:a4a:5dc6:: with SMTP id w189mr16122485ooa.1.1626663252697; 
 Sun, 18 Jul 2021 19:54:12 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id c64sm3650155oif.30.2021.07.18.19.54.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:54:12 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-13-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <42519a8c-65e8-34c6-6513-21e115b08005@gmail.com>
Date: Sun, 18 Jul 2021 19:54:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-13-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 12/15] net: dsa: track the number
 of switches in a tree
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
> In preparation of supporting data plane forwarding on behalf of a
> software bridge, some drivers might need to view bridges as virtual
> switches behind the CPU port in a cross-chip topology.
> 
> Give them some help and let them know how many physical switches there
> are in the tree, so that they can count the virtual switches starting
> from that number on.
> 
> Note that the first dsa_switch_ops method where this information is
> reliably available is .setup(). This is because of how DSA works:
> in a tree with 3 switches, each calling dsa_register_switch(), the first
> 2 will advance until dsa_tree_setup() -> dsa_tree_setup_routing_table()
> and exit with error code 0 because the topology is not complete. Since
> probing is parallel at this point, one switch does not know about the
> existence of the other. Then the third switch comes, and for it,
> dsa_tree_setup_routing_table() returns complete = true. This switch goes
> ahead and calls dsa_tree_setup_switches() for everybody else, calling
> their .setup() methods too. This acts as the synchronization point.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
