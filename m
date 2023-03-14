Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EBC6B9223
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 12:52:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6883340919;
	Tue, 14 Mar 2023 11:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6883340919
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=vvT+5Ude
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xQviR3RPS5pu; Tue, 14 Mar 2023 11:52:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 12ABB40A80;
	Tue, 14 Mar 2023 11:52:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12ABB40A80
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C01E0C008A;
	Tue, 14 Mar 2023 11:52:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DDB2BC0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6D0A410E0
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6D0A410E0
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=vvT+5Ude
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mueepO-HAg0k for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 11:52:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D43294067F
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D43294067F
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:52:33 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id bi20so182820wmb.2
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 04:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678794752;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Aedh/JywdEDddUhtE7uVGsi7gtYL/10VJ/CukUBA1H8=;
 b=vvT+5UdeB8eGOFM81g4n+k4wQ9SVBSS11dhgcVOho/2SIHAyUa6SAVGc36AQmewtqr
 ArHxEVjkZaVN2wVJgFRRnqptlu06+4lUeR9djPAcFSaeUQShiB5TM91waN7zIk0/G1JL
 k+NuPV2LOt+uCiaFDzbsRzBlHmwIHUWB3aKbrASxbtXw62tPCe6JT5sTXTffDlw9Bb6w
 GK+SKKefR7hNspP0KiFAIyKZb5FNTUvrM55zmajbOBbJjIAXJxGlLVPBaj4fYGsXx004
 fE78b1lLSyX0BeqBvP2slTilJw+vOPJffC0UwFyBSQ/SEL2EeVaRAHL7La7CGkyZqlO4
 /mHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678794752;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Aedh/JywdEDddUhtE7uVGsi7gtYL/10VJ/CukUBA1H8=;
 b=NKQmk0nPzqy/nMgj44NMO5AACo0dFuTzjgbAvNgUMJGzftgJTxmO2hpcwKV6X9Eq9G
 xejcqNuFGKRwz7jhPUCGZhC0GcTohHoj0Jk0aPqnCf6gE6WruCcDBXWgKqO/pXzoHxee
 46ay9h4aZLvY6VYWpw8wZ6SaRhMkjFjl0Vk0EPEvXN/aqfaMbmLFOB3mFNnzaWQDhefV
 IjbQ4UlPvsk9/B7/NbUioDVJ6mHhcvx5Bb1qrl2JJzxmjr7Pk8firC5ue/rCC8S1vIvZ
 qeH12LyzmMHeNAJWv2A9ikl2NmmXdwCOKmQKgIrJX1iHauTcaePigR+SRaI1wQK14PRE
 jVWw==
X-Gm-Message-State: AO0yUKVW9DsYEIdp9wtRRU5ffdBnuw72oqRf90R1fszrbXZi6+7PG809
 P8ShzEh+HLpzCwvqiTd11i80hQ==
X-Google-Smtp-Source: AK7set+cNk8lszF+XqJrXfffx6akHX/q+EmpmlPIAUuC7Vc/3+4C3af5qQXQkWFpem/k4kz2J1iCqQ==
X-Received: by 2002:a05:600c:190a:b0:3e0:6c4:6a38 with SMTP id
 j10-20020a05600c190a00b003e006c46a38mr13658284wmq.33.1678794751960; 
 Tue, 14 Mar 2023 04:52:31 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 q24-20020a1cf318000000b003dc522dd25esm2514742wmq.30.2023.03.14.04.52.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 04:52:31 -0700 (PDT)
Message-ID: <2097d3df-050e-ad7a-66dd-93019365b19d@blackwall.org>
Date: Tue, 14 Mar 2023 13:52:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-7-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-7-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 06/11] vxlan: Expose vxlan_xmit_one()
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
> Given a packet and a remote destination, the function will take care of
> encapsulating the packet and transmitting it to the destination.
> 
> Expose it so that it could be used in subsequent patches by the MDB code
> to transmit a packet to the remote destination(s) stored in the MDB
> entry.
> 
> It will allow us to keep the MDB code self-contained, not exposing its
> data structures to the rest of the VXLAN driver.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  drivers/net/vxlan/vxlan_core.c    | 5 ++---
>  drivers/net/vxlan/vxlan_private.h | 2 ++
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


