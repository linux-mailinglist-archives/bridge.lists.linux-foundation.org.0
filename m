Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEFF6B93AE
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 13:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58DA281E2F;
	Tue, 14 Mar 2023 12:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58DA281E2F
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=OViau/4t
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bzs_fHAwKXNq; Tue, 14 Mar 2023 12:24:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 038AF81E2E;
	Tue, 14 Mar 2023 12:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 038AF81E2E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AE31BC008A;
	Tue, 14 Mar 2023 12:24:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BB0BC0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18F1381E2F
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F1381E2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dNoVX1PeSaeJ for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 12:24:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5576B81E0E
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5576B81E0E
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:24:43 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id r18so14179080wrx.1
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 05:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678796681;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=UwbHt6idtZCCtjCrFRLotwokcc91x7BzRsfspk4D+Bs=;
 b=OViau/4tkuET8wV7RbEr1O4VwMsMJLlFKZQ6nZzuv2/WxY6VPlvYsIRw8TL8MIFtAM
 EdpPM471ZMa5w0fI8st+88q5NBg150pKY2en4UOtsWRhdNSJsUVfJlPRw6AgVK3kBdL6
 J26H+2HS5DrgKNi+oTeHyC8A1mJXqXJ998yuAjaHMktb1FuPY4jfNSv6iJafA/wVXZTO
 js7NbZJiCYIwtolYKKNARhMRGHFSrLxR8bPQ+YRwpYCbGEhV8AhjYerLQL1qEZXeRobO
 mpRe+zMyfxeKTNYRo2o9PFgoaCaYQn4C0CS98qL+SBA7hq0CdD5afnmdBtIlYFrCEnVf
 K+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678796681;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UwbHt6idtZCCtjCrFRLotwokcc91x7BzRsfspk4D+Bs=;
 b=kblOJOLrkVpwgg681fGnckZmQvioP5zFOQvcZjCgmpNc1VedVXr77TrftF2Ku1XA7u
 boEs+TGn4p7b4GuMqIBgQT8wmLO4kA0EL3Gyyik3Kw6v7wt3L480+EjwYOopmCI3LJnb
 AAxDIepLTmKHFWJ85dvGe376GPLTtCUU/29LpTkpOQyrIktxGWz63FrayVQk4CXjzkKo
 aM74cT/YldzwwtdtYA4aO6R8iwnbAaYqL+Ajwm0z+RCOAyxO1rdTjupAepgJ1iZ2ytqc
 6ROV5vm2bF4C1IpvA1EM9ecLiJXnzOyUhTSIzq4nXYEZMM5rR4HOk0y0wBMwwX78M3xx
 ERbw==
X-Gm-Message-State: AO0yUKXZYXsipO5wnSx7726EtlL5Mty2dYZ8eH4lPf7LKdjR0NvYlw3L
 ueZ7yFL88GySWWAnhVkiCcCkBQ==
X-Google-Smtp-Source: AK7set8UPY0A4K25Q5NYBDSxflcJENisQU+pV8MviFIRckaA8XIQFIGKFJ+xIHUYV0D63gCX84wWZg==
X-Received: by 2002:a5d:4c46:0:b0:2c5:9ef9:9bab with SMTP id
 n6-20020a5d4c46000000b002c59ef99babmr25370010wrt.43.1678796681518; 
 Tue, 14 Mar 2023 05:24:41 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 m1-20020adffa01000000b002c5526234d2sm2071470wrr.8.2023.03.14.05.24.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 05:24:41 -0700 (PDT)
Message-ID: <b4f379a4-b883-d903-148b-a6270aedce20@blackwall.org>
Date: Tue, 14 Mar 2023 14:24:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-9-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-9-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 08/11] vxlan: mdb: Add an internal
 flag to indicate MDB usage
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
> Add an internal flag to indicate whether MDB entries are configured or
> not. Set the flag after installing the first MDB entry and clear it
> before deleting the last one.
> 
> The flag will be consulted by the data path which will only perform an
> MDB lookup if the flag is set, thereby keeping the MDB overhead to a
> minimum when the MDB is not used.
> 
> Another option would have been to use a static key, but it is global and
> not per-device, unlike the current approach.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  drivers/net/vxlan/vxlan_mdb.c | 7 +++++++
>  include/net/vxlan.h           | 1 +
>  2 files changed, 8 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


