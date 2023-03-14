Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D702D6B9217
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 12:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B10461098;
	Tue, 14 Mar 2023 11:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B10461098
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=tytzsvmh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MZobFDKSyrn; Tue, 14 Mar 2023 11:51:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9634D61099;
	Tue, 14 Mar 2023 11:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9634D61099
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2DF1BC008A;
	Tue, 14 Mar 2023 11:51:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9BFF4C0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B8A2418BB
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B8A2418BB
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=tytzsvmh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Smu_0Xi5NVGg for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 11:51:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCFDC410C9
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DCFDC410C9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:51:15 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id p16so10082092wmq.5
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 04:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678794674;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RDVVUR+sXeSTSSTr5N1GxIRd1v5VKh3gMAujp5AXOCw=;
 b=tytzsvmhA7PbupttINkYDa2kvVAiTmURa5SS/dWCfHmzmYutlP5ay9czU9bk6VD3FD
 RfUL7nNjFhVqAu8WIvVQpwT3UZpUPZu6b0hm3G7C1dPGoL8aaY38WRLzaf75Aie8k2Ux
 DJx26v8VzoBe3EOWU1Y2M7zT2Q+E2H2nw+QRARGGPKbQzl+Ez/QoVkle7ajCtgETIzMI
 mPET47b+z1hPmQSrVc95VGksAnQi9hlXHbCdqC37Ye3+isbaqtbpv+f2DFD0Vd2bE1oc
 2CvQgIb8O8ayJyVe5oWvP45vxJkTpTxB12sAQm4/1J/lFlHZbBjQn0CyZSTBLWZ5+l61
 tErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678794674;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RDVVUR+sXeSTSSTr5N1GxIRd1v5VKh3gMAujp5AXOCw=;
 b=CP6sPY5wAU4OP7pYAd6oHC129b/uMIBcqbst0CSoU/htzStYnebq6//5GMrqOwnM/u
 bX6EHD05cnp05mi2kYc6DU9V4BB1k6Nlawxs8ZYxvgxTp6N+JRO+lsEhtz/wcMLRvKwn
 KLN75sSIxAIC+WDhM3x4QMuYk8zw/ufhrMePfJYeyi7FQxw4Q+QtFjtTeGymk+mU3C8U
 5SuHik3lKJq201dkmjKHYtWUrDUbJmE47Yt2/ZMl8EDFGFpnIXcbHLKtbi+g7ZWBrJ9V
 zJP11dIqAxxoUVWswsRd51zrJUt5YVpNPpoFYmv8PPBeNlycS3hQMGYWaZQLXeponnEh
 U+og==
X-Gm-Message-State: AO0yUKX25weIGh9prjZcJFtCRVPkBh2wSMQcq1te5Y12AuS0I/9bUO46
 HaAZj7lQhzIrFcDX1tAVS6bd0A==
X-Google-Smtp-Source: AK7set+Dmb73QxFZOvG+Cj9vuj9692XHJVHML0b6UoNMNGZ9FIouknDT3Ww1hrO8OTJQMb3OTZa9tQ==
X-Received: by 2002:a05:600c:548e:b0:3eb:2708:86ca with SMTP id
 iv14-20020a05600c548e00b003eb270886camr15415319wmb.28.1678794673763; 
 Tue, 14 Mar 2023 04:51:13 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 l17-20020a7bc351000000b003e21f959453sm2579991wmj.32.2023.03.14.04.51.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 04:51:13 -0700 (PDT)
Message-ID: <dc4b2eb0-2478-7e26-4292-b8856494fae2@blackwall.org>
Date: Tue, 14 Mar 2023 13:51:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 03/11] rtnetlink: bridge: mcast: Move
 MDB handlers out of bridge driver
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> Currently, the bridge driver registers handlers for MDB netlink
> messages, making it impossible for other drivers to implement MDB
> support.
> 
> As a preparation for VXLAN MDB support, move the MDB handlers out of the
> bridge driver to the core rtnetlink code. The rtnetlink code will call
> into individual drivers by invoking their previously added MDB net
> device operations.
> 
> Note that while the diffstat is large, the change is mechanical. It
> moves code out of the bridge driver to rtnetlink code. Also note that a
> similar change was made in 2012 with commit 77162022ab26 ("net: add
> generic PF_BRIDGE:RTM_ FDB hooks") that moved FDB handlers out of the
> bridge driver to the core rtnetlink code.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Use NL_ASSERT_DUMP_CTX_FITS().
>     * memset the entire context when moving to the next device.
>     * Reset sequence counters when moving to the next device.
>     * Use NL_SET_ERR_MSG_ATTR() in rtnl_validate_mdb_entry().
> 
>  net/bridge/br_device.c  |   6 +-
>  net/bridge/br_mdb.c     | 301 ++--------------------------------------
>  net/bridge/br_netlink.c |   3 -
>  net/bridge/br_private.h |  35 ++---
>  net/core/rtnetlink.c    | 217 +++++++++++++++++++++++++++++
>  5 files changed, 244 insertions(+), 318 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

