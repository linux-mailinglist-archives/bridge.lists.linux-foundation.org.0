Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C28567FE12
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:11:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA4044015A;
	Sun, 29 Jan 2023 10:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA4044015A
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=CY12R16J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nZ024J-IL2an; Sun, 29 Jan 2023 10:11:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9FF904032E;
	Sun, 29 Jan 2023 10:10:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FF904032E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48F5DC007C;
	Sun, 29 Jan 2023 10:10:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C979BC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96B5E60D68
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:10:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96B5E60D68
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=CY12R16J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mH09xCW3OSvB for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:10:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E33360C1F
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E33360C1F
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:10:56 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id n6so5730582edo.9
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YyZWoCWCuhaAegyJlnJA2n0EhH8BXV78ivTv80i7qUw=;
 b=CY12R16J+6I+jZG/tz3yrqkXZ/R0wQIgZOY+pFvr3txbAGDFftuli6eu0AA8cqi3Sz
 ThrDY7xLGZOu2qCTIQ60FCT/cyzC9IQHBUymuGI/OClE9xMNzwP1tIu4vMcqT3S8zzNb
 cU9+E/Bb8a0SouB9ndb6NQnvJjNWttkPNvH3LrUmzz05tOEkruSVlxauCOQp+3Wa/yTb
 TJ0usyImkssNaezwq4+KBi64Z5nC1r5VG0gPpc5YO51jMq24SdFVs9TG80sDb13JlFW5
 gDWgaLxVfF/XgO0Y9qZqMaTi6XepKRNB05OjU46vZgzLJ6/ekzm+V0czxVWOkyXPA4Ve
 w5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YyZWoCWCuhaAegyJlnJA2n0EhH8BXV78ivTv80i7qUw=;
 b=sioNRKUMSpdvRa2yYVRPcZSk6oDBZuBdrtmf3wJNWqJHnddiQ4uQlBy7FczH53BXVM
 Fd5NhxpC4T2P8leyVss4hesWX3mZRRtR8yavVezyO5jOa+1+aZ8C8c1AVX3Ia6DgE0QA
 fhxpszQ8eauaIkwRFezT/q/s6h9UACW4U4pxoDa7ojp+fVUwNoFwRB3PYvp41w8AcGS9
 H/9Pdh3yObk5UsgWubTTd9BzJ5G5iUvD6W5kryAlPrRWbDekF/ia8OSoHkchN/iYdtOH
 prO6Msf+JGLXFX/CZL6+ketk2npfLt30dUpgR7DyVfCgzcyAhnVBFdRw+Cbkn7Pj9vMV
 DmGg==
X-Gm-Message-State: AO0yUKXIz0KsGz6gQ6tpOTXxteb2s0P7iid+ZK3surB3NSMvQTWcNm6g
 s2pNSslV37X8uVgNGGetSSlv+ydmsV9Ncm0gqsY=
X-Google-Smtp-Source: AK7set+eZIMlh6EIwMlLVBYg1AWUuNLxXBcupM8m5xfZQmwVw30fcD/tds5xPBx0dtBE/e7+6LFB+w==
X-Received: by 2002:a05:6402:510d:b0:4a0:b601:4a74 with SMTP id
 m13-20020a056402510d00b004a0b6014a74mr20609475edd.28.1674987054288; 
 Sun, 29 Jan 2023 02:10:54 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 g5-20020a056402320500b0048a31c1743asm5041607eda.25.2023.01.29.02.10.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:10:54 -0800 (PST)
Message-ID: <c937fe7a-7b63-9b09-7714-3a3536899007@blackwall.org>
Date: Sun, 29 Jan 2023 12:10:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <a2a17da9f91c3648fbcbc2890c961c9a9b70d61d.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <a2a17da9f91c3648fbcbc2890c961c9a9b70d61d.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 13/16] selftests: forwarding: lib:
 Parameterize IGMPv3/MLDv2 generation
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

On 26/01/2023 19:01, Petr Machata wrote:
> In order to generate IGMPv3 and MLDv2 packets on the fly, the
> functions that generate these packets need to be able to generate
> packets for different groups and different sources. Generating MLDv2
> packets further needs the source address of the packet for purposes of
> checksum calculation. Add the necessary parameters, and generate the
> payload accordingly by dispatching to helpers added in the previous
> patches.
> 
> Adjust the sole client, bridge_mdb.sh, as well.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
>  .../selftests/net/forwarding/bridge_mdb.sh    |  9 ++---
>  tools/testing/selftests/net/forwarding/lib.sh | 36 +++++++++++++------
>  2 files changed, 31 insertions(+), 14 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


