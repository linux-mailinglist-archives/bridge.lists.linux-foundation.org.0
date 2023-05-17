Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88E706138
	for <lists.bridge@lfdr.de>; Wed, 17 May 2023 09:33:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9F3083F1B;
	Wed, 17 May 2023 07:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F3083F1B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=VmMAPOyo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cJ8EV_l4QBj3; Wed, 17 May 2023 07:33:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7EA2883FFA;
	Wed, 17 May 2023 07:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EA2883FFA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB957C008A;
	Wed, 17 May 2023 07:33:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 51F17C002A
 for <bridge@lists.linux-foundation.org>; Wed, 17 May 2023 07:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14F9C42043
 for <bridge@lists.linux-foundation.org>; Wed, 17 May 2023 07:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14F9C42043
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=VmMAPOyo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIZBKAi5sPTt for <bridge@lists.linux-foundation.org>;
 Wed, 17 May 2023 07:33:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FD9641D8A
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FD9641D8A
 for <bridge@lists.linux-foundation.org>; Wed, 17 May 2023 07:33:07 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-510d6b939bfso343300a12.0
 for <bridge@lists.linux-foundation.org>; Wed, 17 May 2023 00:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684308785; x=1686900785;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dNSDSFrDFbpPqdYEuN89e9yeuyZne6fiLX09JZpnnaQ=;
 b=VmMAPOyosODi0Oa3kk/lczgV+F2wFxVZqk/0hszxe6QSeo3ux81DeWhkAFDUa5ku0B
 EBVL5IutHi6M7si8Vm8aAiOTcMFGFAjk2kxuqfj5x+sT5Wgsu9+Yjj6y0E0+GkB7eV/2
 FcWAUoD3eg8bs96ntWcLX2TarfzeCS74IoXx8FkajG2BQ+HIC36UoFg/oq4Yl4J/r7eB
 yxTxC+pJiMcArvLGowXWqL736Ukqmfc4j7mLQYNDCwG8QVYKAAeWyzgOZK/HILnza1fW
 erNjN9FdiNH4EGuBRrPcKURazxmzSrlDlhDlg9c1cencscueOAOfdJbO3HGQHPACDuZv
 +vgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684308785; x=1686900785;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dNSDSFrDFbpPqdYEuN89e9yeuyZne6fiLX09JZpnnaQ=;
 b=QvmOFkjgCnJ0n4GcP6w/WTsnMYK0yDciReesrgs3G9TslflGFETxS7M30Zj/H30Ccw
 fYW+5AiqJnQTUB22MM/BxEPK/0Rt565g40G43PELh5q5DbgGst7DadHCjhZymdCLldJE
 LH9GDbzj2pQ+X/K7akT2JYCJnIX9gmHhq9tc6HZbs2x0oZyjzyf0iLPV8yYMrEhEX1iE
 AhU9zMtajiGCEVGLBx743bKAGuQspHHyfN03CFy50X/4czZzy3KnN4b+5ZIpFB5WztLs
 LhdBSTeMZcd8mD15p1jKFAE1ZqVmZiry8lp5RbcYlauYiIvoP4PyLOLpN9VX2agT7SCe
 6bVQ==
X-Gm-Message-State: AC+VfDw8K/gGGEtjSuj+0nRDySU91FKJdwGfQCtmtYPMu/Y5n4JEm/FK
 SZj4cX+jD2dZZKJG7i/dW2/Iow==
X-Google-Smtp-Source: ACHHUZ4bKH6nuAL+Av8BpnIu5DQ26jMK8Rn4ZGnWU07q0yJ5uj8FsA7prleEWrWha2M97z1kBLUvMA==
X-Received: by 2002:a17:907:6d23:b0:96a:349a:6c91 with SMTP id
 sa35-20020a1709076d2300b0096a349a6c91mr23819008ejc.23.1684308785373; 
 Wed, 17 May 2023 00:33:05 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 m26-20020a17090677da00b0096ae4451c65sm5850503ejn.157.2023.05.17.00.33.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 May 2023 00:33:04 -0700 (PDT)
Message-ID: <63f12ee5-bd7d-a734-af98-e99196d84441@blackwall.org>
Date: Wed, 17 May 2023 10:33:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230516194625.549249-1-arnd@kernel.org>
 <20230516194625.549249-3-arnd@kernel.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230516194625.549249-3-arnd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH 3/4] bridge: always declare tunnel functions
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

On 16/05/2023 22:45, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When CONFIG_BRIDGE_VLAN_FILTERING is disabled, two functions are still
> defined but have no prototype or caller. This causes a W=1 warning for
> the missing prototypes:
> 
> net/bridge/br_netlink_tunnel.c:29:6: error: no previous prototype for 'vlan_tunid_inrange' [-Werror=missing-prototypes]
> net/bridge/br_netlink_tunnel.c:199:5: error: no previous prototype for 'br_vlan_tunnel_info' [-Werror=missing-prototypes]
> 
> The functions are already contitional on CONFIG_BRIDGE_VLAN_FILTERING,
> and I coulnd't easily figure out the right set of #ifdefs, so just
> move the declarations out of the #ifdef to avoid the warning,
> at a small cost in code size over a more elaborate fix.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  net/bridge/br_private_tunnel.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

This should be for -net.

Fixes: 188c67dd1906 ("net: bridge: vlan options: add support for tunnel id dumping")
Fixes: 569da0822808 ("net: bridge: vlan options: add support for tunnel mapping set/del")
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

Thanks,
 Nik



