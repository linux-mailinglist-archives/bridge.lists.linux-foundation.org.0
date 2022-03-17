Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE8F4DC20B
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 09:58:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F79284756;
	Thu, 17 Mar 2022 08:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IsoxBdL4mxM8; Thu, 17 Mar 2022 08:58:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C6E4D8475F;
	Thu, 17 Mar 2022 08:58:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8DFBAC0073;
	Thu, 17 Mar 2022 08:58:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6E187C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B3B2400B9
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FcFHO43SLGrM for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 08:57:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 250434000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:57:59 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id a8so9220993ejc.8
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 01:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ToAuSw9noF4PMelZcjz5Ho1d/K/t8qdLlfiN+Gz3OL8=;
 b=x0Cy2WjKJUWqxiiIHewCcWsmwWtT91gESaE6raQXk0ObQUNUgGnl0H5BmNYfRCSGEP
 FlM3MY5srYU1AhhYONSQmQtEFRCb+GS/o0ctE1/4aiYnh6Zb4k0ZdC00KVw2lPquQ2in
 YEQwenvqU2eCpO2N1+B6wvVxDJ2F12Z5S5G5dS9w8i2pOzH6giS3GVzaiM9cMH/5LwrT
 AoaPjM00dt/yGzCK01Fmo8QhKRvL9MFL9AvnYTerZvCBZFjh9VqvT4WhAnpOKDXgS29C
 +v+jSffdrztf19PA6TLAhFnriMdlZU6zMMJ4p5z0vtmRuVh3yvjuewscorTSK1J3zgiC
 V1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ToAuSw9noF4PMelZcjz5Ho1d/K/t8qdLlfiN+Gz3OL8=;
 b=SAU9atlwW/cefa3pRfUSWV+fRnmyouq5yii34yd1P9H8peI27tyfk9QKsuhU5GZcM/
 RchAEy67c3f9eUtti2akKgXM5MA8lnnKgVV9sy0E8GssAr0drknljVZIS1KOTNBwYZKU
 Sw+E4m5L+/93VEccf23fZcKWnRa0LIlIgBSHZbu1AhP88BzcvnFIM3OqJU5f1Us7eULt
 lQBL3kSO9rq8CFCWUJzP/89F3bi1ayMV1mXNqIRNVm2TbsOWI6gTrxUViXznClsLz9F7
 4ZK49Pj4hs23yitRjomwlOnm+s4//u3I8tO6rnSRNLyAvSWRC17it97TreovndQzOdjf
 eTnA==
X-Gm-Message-State: AOAM532ruYpZyL5SOCJ0qF17dy0Wp8SsB/YKa/taBOshwrQHXlLoymaP
 WhDT/7DhA6rErQbHwStSQYVTmQ==
X-Google-Smtp-Source: ABdhPJx3JJ470xOltzzfCnSTC8MjjZymtB1Z5FMnjRdR235tvx7INP15PJOVniEvlLBWs9HCYIxijQ==
X-Received: by 2002:a17:907:3f13:b0:6db:cf49:8871 with SMTP id
 hq19-20020a1709073f1300b006dbcf498871mr3270614ejc.766.1647507477224; 
 Thu, 17 Mar 2022 01:57:57 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 l2-20020a1709066b8200b006bbea7e566esm2066426ejr.55.2022.03.17.01.57.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 01:57:56 -0700 (PDT)
Message-ID: <9c821989-cbba-f2ea-c5fc-6fc6bbd34e7e@blackwall.org>
Date: Thu, 17 Mar 2022 10:57:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-7-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-7-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 06/15] net: bridge: mst: Notify
 switchdev drivers of MST state changes
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> Generate a switchdev notification whenever an MST state changes. This
> notification is keyed by the VLANs MSTI rather than the VID, since
> multiple VLANs may share the same MST instance.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/switchdev.h |  7 +++++++
>  net/bridge/br_mst.c     | 18 ++++++++++++++++++
>  2 files changed, 25 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

