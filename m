Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD906DD4BA
	for <lists.bridge@lfdr.de>; Tue, 11 Apr 2023 10:04:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F44760F28;
	Tue, 11 Apr 2023 08:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F44760F28
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=UVDFhFMc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjMFA0VK0Y90; Tue, 11 Apr 2023 08:04:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 08C1860F2C;
	Tue, 11 Apr 2023 08:04:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08C1860F2C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 984A7C008C;
	Tue, 11 Apr 2023 08:04:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70AE7C002A
 for <bridge@lists.linux-foundation.org>; Tue, 11 Apr 2023 08:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E51B81E1E
 for <bridge@lists.linux-foundation.org>; Tue, 11 Apr 2023 08:04:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E51B81E1E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=UVDFhFMc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p18H6LxD1lkz for <bridge@lists.linux-foundation.org>;
 Tue, 11 Apr 2023 08:04:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A17C281E1B
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A17C281E1B
 for <bridge@lists.linux-foundation.org>; Tue, 11 Apr 2023 08:03:59 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id j17so8484023ejs.5
 for <bridge@lists.linux-foundation.org>; Tue, 11 Apr 2023 01:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1681200238; x=1683792238;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=k3Azqi0PzzANZ2Rni8AADHxyvhPXgRP3KYAVzLP4PpE=;
 b=UVDFhFMczoGb5yiDNS1TI66Sb20eqDUD+eJbsyOVBoYGQeTQV4wdBK+bMKV/onsr/8
 B+mAWm96B8bw4aZ5GP6ZT0KUBR8u1zeSHLGelX3CwrW8yPTz3ZPAO9kfGzAP31k2syfD
 wsPSLc2nYR3deHV0XBZMGVLOFvcz5uZRZhxR/P+98GBO3UzSK/4PsQD+vKkAUFxi3Eve
 pjB/nVFEQO0UN+1G6awcdyAMOz3d1RZpU9Lo0LRclae9nXgF7Ratg/l0z0kDL/v1nJSX
 U1Icua1Dhjnjrswa1x5KIok6g5L32KSZLUljk65OT4ZH9Ww4pMkMsRaptMXhkqM40HyR
 Irqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681200238; x=1683792238;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=k3Azqi0PzzANZ2Rni8AADHxyvhPXgRP3KYAVzLP4PpE=;
 b=C+EQ63O5a9d9vXFp5JCsx/L5Q2BD+yGkEHuaaKtqzmlt1s2YGnyVuf4S30Gi5HU7aB
 HbyPWBSJs9pHhQQOFjWdkl9SjFvJKWo3CZcBQWJHJQLnIk5O+B3IkVLqPTyO0P+K1uOg
 w80vkzLDwz0Nk9cLsWGxBcQ7f6utjopVF0Lr1LzFvgW6mH/ogQUxMmIGtgaArr9C1g6p
 U/LLhVL9wljLrRnEtycQZgElaEPWhVrQ5tSUOCMSkSZM5cl9h8bGuRoKrL9X1CAD7lll
 eFr7Hh4razbkKJDmpvUseYUF03lnqCcbtJ6f95dXYZ5ix9md0lUv736QhVrJlu+1jBB0
 FF7g==
X-Gm-Message-State: AAQBX9f17J+y4EDwkSgFyxcB0BPUa857GcBG52KPBgHLc6j3TRzdQzb4
 /rJJspMZHn3svO5fu3vfhlpcLg==
X-Google-Smtp-Source: AKy350bl5w/PbRVFk4NpsgpRWwUcUWZERdrRniZxsq9xv12GADdShhdRCVLeLu/fF+uZBvRDF6WzIA==
X-Received: by 2002:a17:907:674e:b0:94b:466b:a492 with SMTP id
 qm14-20020a170907674e00b0094b466ba492mr4511085ejc.19.1681200237539; 
 Tue, 11 Apr 2023 01:03:57 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 wg11-20020a17090705cb00b0093a0e5977e2sm5861263ejb.225.2023.04.11.01.03.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Apr 2023 01:03:56 -0700 (PDT)
Message-ID: <87e5f12f-ec66-817a-9937-2db0e067d171@blackwall.org>
Date: Tue, 11 Apr 2023 11:03:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: yang.yang29@zte.com.cn, davem@davemloft.net
References: <202304061930349843930@zte.com.cn>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <202304061930349843930@zte.com.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, zhang.yunkai@zte.com.cn,
 jiang.xuexin@zte.com.cn, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com
Subject: Re: [Bridge] [PATCH net-next] net/bridge: add drop reasons for
 bridge forwarding
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

On 06/04/2023 14:30, yang.yang29@zte.com.cn wrote:
> From: xu xin <xu.xin16@zte.com.cn>
> 
> This creates six drop reasons as follows, which will help users know the
> specific reason why bridge drops the packets when forwarding.
> 
> 1) SKB_DROP_REASON_BRIDGE_FWD_NO_BACKUP_PORT: failed to get a backup
>    port link when the destination port is down.
> 
> 2) SKB_DROP_REASON_BRIDGE_FWD_SAME_PORT: destination port is the same
>    with originating port when forwarding by a bridge.
> 
> 3) SKB_DROP_REASON_BRIDGE_NON_FORWARDING_STATE: the bridge's state is
>    not forwarding.
> 
> 4) SKB_DROP_REASON_BRIDGE_NOT_ALLOWED_EGRESS: the packet is not allowed
>    to go out through the port due to vlan filtering.
> 
> 5) SKB_DROP_REASON_BRIDGE_SWDEV_NOT_ALLOWED_EGRESS: the packet is not
>    allowed to go out through the port which is offloaded by a hardware
>    switchdev, checked by nbp_switchdev_allowed_egress().
> 
> 6) SKB_DROP_REASON_BRIDGE_BOTH_PORT_ISOLATED: both source port and dest
>    port are in BR_ISOLATED state when bridge forwarding.
> 
> Signed-off-by: xu xin <xu.xin16@zte.com.cn>
> Reviewed-by: Zhang Yunkai <zhang.yunkai@zte.com.cn>
> Reviewed-by: Yang Yang <yang.yang19@zte.com.cn>
> Cc: Xuexin Jiang <jiang.xuexin@zte.com.cn>
> ---
>  include/net/dropreason.h | 33 ++++++++++++++++++++++++++++++++
>  net/bridge/br_forward.c  | 49 +++++++++++++++++++++++++++++++++++++-----------
>  2 files changed, 71 insertions(+), 11 deletions(-)
> 

In addition to Jakub's comments, next time please CC bridge maintainers.
I just noticed this patch now.

Thanks,
 Nik


