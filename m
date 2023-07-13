Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF12751D30
	for <lists.bridge@lfdr.de>; Thu, 13 Jul 2023 11:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A43F416E8;
	Thu, 13 Jul 2023 09:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A43F416E8
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=fo/F5nS1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4_8xIOnNeWN; Thu, 13 Jul 2023 09:30:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0DEBC416E0;
	Thu, 13 Jul 2023 09:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DEBC416E0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B58FAC0DD4;
	Thu, 13 Jul 2023 09:30:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0CCA0C0032
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E930260B33
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E930260B33
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=fo/F5nS1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oBODxEuDZYQz for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 09:30:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1186160A8A
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1186160A8A
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:30:11 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-4fbcbf4375dso603977e87.0
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 02:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689240610; x=1691832610;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Bi1FlV5GLd9b5M5p2mDsMBKOhHCbBoFwfbfjXIV037U=;
 b=fo/F5nS1tzrOazQWrA2k5bOZneI6jl2csoF40VKZqI9mpoLUVMslv2zRzN8nXpp+OG
 9wjZ01YPQ1TvxaO2rr09Sp3Dp38/3ZjREQPDskpSdbISny68o8CZatSNOSjhHIxwkrMi
 KhfyiNQX+5s3DjsZauAK6n+EgTUq3P9eof/NcSvTHqKGGiqEiQBE+5kXE0gcQ23fUJTj
 +fLJ6543CrgO2xV3aVTyCkI9bbEm94htRqKy24ROYNF/qBVgsgcR39uCQT/zglRPHQcH
 UnIMALJ41yeQce8rJ35temr7dV4AaJLbtLPITqg7zY9XcXjiZOWLZVSSMMh47UgGQyDi
 5Rxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689240610; x=1691832610;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Bi1FlV5GLd9b5M5p2mDsMBKOhHCbBoFwfbfjXIV037U=;
 b=LYDJFeKc/Vp1zf51BBcr+pQeuSKBgK+365rG4uJ5ZER1QZvmlIBTifdvkGX9NUBItE
 9R1jrzP60ZvSIrlY0YYMnBiMIj3XdYz7zxDSN+eZcA2otjVINgD7YP4X+2J6mBQToluM
 F4woyha4+K1fqdbriq27Axfds/bIKJo48BF4qiAo4ZxsciVTYn0XlmtGTPskKclL9BDZ
 XkY9ZiEsZmMWB7aaBJEuiyfOJ71V0SMtEB2uwxuxB4WzPlwWQfuMGeO6scUNf+RW4LnK
 2u6GYY+MI5NjOgK58zdE11Rv/y7YcHEOnLh5YImpxaqy/D3Zw3oLskmhtkUT4LkWr6aT
 RnCQ==
X-Gm-Message-State: ABy/qLb8yLoQ1VV64ujvTzazvbHlMOuZbxJUgh5WE69Rir5Q7yBy7bT4
 elDGLei3qNKEJxDKCrzZzxH0Mg==
X-Google-Smtp-Source: APBJJlFR2XZ/G/iXZOxiDRpm0SXn+3u0Dcw26op0+Kd3dfBjGRYwGm5i7utYx9PqX/wDeW2GuOwyPw==
X-Received: by 2002:a05:6512:2315:b0:4f6:3ef3:13e8 with SMTP id
 o21-20020a056512231500b004f63ef313e8mr1653915lfu.0.1689240609563; 
 Thu, 13 Jul 2023 02:30:09 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id
 h4-20020ac25d64000000b004fb6c61e79bsm1046916lft.117.2023.07.13.02.30.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Jul 2023 02:30:09 -0700 (PDT)
Message-ID: <1bd20ab6-4792-7689-932a-a7b9ccf72402@blackwall.org>
Date: Thu, 13 Jul 2023 12:30:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230713070925.3955850-1-idosch@nvidia.com>
 <20230713070925.3955850-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230713070925.3955850-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, taspelund@nvidia.com, roopa@nvidia.com,
 edumazet@google.com, dsahern@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 2/4] vxlan: Add support for
 nexthop ID metadata
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

On 13/07/2023 10:09, Ido Schimmel wrote:
> VXLAN FDB entries can point to FDB nexthop objects. Each such object
> includes the IP address(es) of remote VTEP(s) via which the target host
> is accessible. Example:
> 
>   # ip nexthop add id 1 via 192.0.2.1 fdb
>   # ip nexthop add id 2 via 192.0.2.17 fdb
>   # ip nexthop add id 1000 group 1/2 fdb
>   # bridge fdb add 00:11:22:33:44:55 dev vx0 self static nhid 1000 src_vni 10020
> 
> This is useful for EVPN multihoming where a single host can be connected
> to multiple VTEPs. The source VTEP will calculate the flow hash of the
> skb and forward it towards the IP address of one of the VTEPs member in
> the nexthop group.
> 
> There are cases where an external entity (e.g., the bridge driver) can
> provide not only the tunnel ID (i.e., VNI) of the skb, but also the ID
> of the nexthop object via which the skb should be forwarded.
> 
> Therefore, in order to support such cases, when the VXLAN device is in
> external / collect metadata mode and the tunnel info attached to the skb
> is of bridge type, extract the nexthop ID from the tunnel info. If the
> ID is valid (i.e., non-zero), forward the skb via the nexthop object
> associated with the ID, as if the skb hit an FDB entry associated with
> this ID.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   drivers/net/vxlan/vxlan_core.c | 44 ++++++++++++++++++++++++++++++++++
>   1 file changed, 44 insertions(+)
> 

LGTM
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

