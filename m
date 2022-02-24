Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F64C2ADF
	for <lists.bridge@lfdr.de>; Thu, 24 Feb 2022 12:26:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B89B82B9F;
	Thu, 24 Feb 2022 11:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GwQJm_WiNWou; Thu, 24 Feb 2022 11:26:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EF4C3831F5;
	Thu, 24 Feb 2022 11:26:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB9B6C0036;
	Thu, 24 Feb 2022 11:26:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 427CFC0011
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 11:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2280F41691
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 11:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2kQXs0vMIix for <bridge@lists.linux-foundation.org>;
 Thu, 24 Feb 2022 11:26:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5011341690
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 11:26:26 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id q17so2358710edd.4
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 03:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=0njhmFMB7YGM1lxXw8lv8Du+QtFIF36U2sCeO/sbrqc=;
 b=4cOto6GTLyrG1vHzK/XU21unLBboPvpGxq/9dOU9VzTvXqGmm7w/90Jaql6sz6XvpV
 KJhq3pSsDkQWkpQLpKwh0oz80v4yPqTpPj+IHBsTmYt/KsKOF2OHKyi2in/lFldM/e6A
 L+rLaJSSQZC2UypDSzRDo4l7ZRxXvD7ZxAGqf1Tzc7RmsiXOvJ+lR942gefInlGGgGr3
 KrilYlhlQYDxpkuFsswaJbsS0pXH1Htz4B9ASN32Xyhqlv89x1ISg6U+jjYmw39E6M6R
 1LYpioTnmWuCqGsXm6qyq8fd0VWYs9J8dSYUCah2sNarP3mhc7qQkFAMZSvzaHGr3diS
 oRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0njhmFMB7YGM1lxXw8lv8Du+QtFIF36U2sCeO/sbrqc=;
 b=LzmsajoA13jMDHu+uAHj4wnAHGDG/2k/DuNWcFrRnUl2eHVpFxExdGffnCrh6mCCXN
 NOazXh4Jg39JGnzOFeNlNNfDRNWEptddjH4z5341hVjsWOI2t+TtTQrrDtRAiyvzRVR9
 odPSzgq0ZBlfAnbh5XQlkE4VeRoybeNjM8/cAcph4LMWtZm6ve5TtnQ6mIfy4pha+7+G
 tDuRgsm8dIgqa2aku6LYpTgRSKglYV0pMjqrUqcY0xkwlH+wXo5+NzpmhesqCHVLjGy7
 VoHJdDWD2Yz6+kAQuK8sGRYJVMCTl/JCg5PdCX7iCOrA6AFtcFYgDiZMhZb+U2fXep7u
 d3WA==
X-Gm-Message-State: AOAM530TbHiSVQymWUkHA+ZvqNY7T5HoTOGKM6msqNblm7+qfUaYhVrl
 2fkxdCBIzF/FAx8tCAB6zoUDdA==
X-Google-Smtp-Source: ABdhPJzzX65huOzpn9V2Rt2En85LVpCl2fy7WzIH+sMUEgIVZllXml9NcgRj2gEARhKzt825lGWeyw==
X-Received: by 2002:a05:6402:50cb:b0:412:ab6d:c807 with SMTP id
 h11-20020a05640250cb00b00412ab6dc807mr1829651edb.382.1645701984402; 
 Thu, 24 Feb 2022 03:26:24 -0800 (PST)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id q12sm1165991edv.99.2022.02.24.03.26.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Feb 2022 03:26:23 -0800 (PST)
Message-ID: <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
Date: Thu, 24 Feb 2022 13:26:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220223172407.175865-1-troglobit@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220223172407.175865-1-troglobit@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Bridge] [PATCH 1/1 net-next] net: bridge: add support for host
 l2 mdb entries
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

On 23/02/2022 19:24, Joachim Wiberg wrote:
> This patch expands on the earlier work on layer-2 mdb entries by adding
> support for host entries.  Due to the fact that host joined entries do
> not have any flag field, we infer the permanent flag when reporting the
> entries to userspace, which otherwise would be listed as 'temp'.
> 
> Before patch:
> 
>     ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
>     Error: bridge: Flags are not allowed for host groups.
>     ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee
>     Error: bridge: Only permanent L2 entries allowed.
> 
> After patch:
> 
>     ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
>     ~# bridge mdb show
>     dev br0 port br0 grp 01:00:00:c0:ff:ee permanent vid 1
> 
> Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
> ---
>  net/bridge/br_mdb.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

It would be nice to add a selftest for L2 entries. You can send it as a follow-up.
The patch looks good to me.

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

