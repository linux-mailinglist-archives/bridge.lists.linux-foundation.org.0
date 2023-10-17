Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328927CBE74
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:06:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B381440438;
	Tue, 17 Oct 2023 09:06:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B381440438
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=b3JQlD56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f3-GOXDJVwe2; Tue, 17 Oct 2023 09:06:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id ABAEF40A17;
	Tue, 17 Oct 2023 09:06:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABAEF40A17
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6EA64C0DD3;
	Tue, 17 Oct 2023 09:06:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D425BC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2DBF60E7B
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:06:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2DBF60E7B
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=b3JQlD56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yCbiZIu0rcgV for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:06:38 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3B0360C1A
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3B0360C1A
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4054496bde3so52876625e9.1
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533596; x=1698138396;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sWV3SWcCMqz8NeHwgmjx+5Uh5vS0Y0jqzWLdMkGI8SI=;
 b=b3JQlD5650cFzE3WcJUVBmOrzNMjQWYCpy0pNKczzz3lOaJQseypHv4V+ex+YfM4Hx
 018NZsppCa9cX6pkLxJTr0MQbzi+2lOerhcYzQzlNNOHXNpbwXlsGCNHY79b794FqbIv
 pxsmeCLbXOzqB2KSdmWrvFzTQzPmFw1ghZCc609pmz/aFeIqJaCFb7diXbTB9i92B3+j
 QGUbI/GaJ+30FEvM2K8X/rQ7hLdopgDzTWRP+7yrZ/pS9PenE9tA2nx+NX1HbQ1OhQgt
 LWKhG0pwkV8qKx/OTGo20t+Lnu7g5XewxMAFKx4MKgozgnHq+DR8NhEe0ITG6RHmS3+h
 rtXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533596; x=1698138396;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sWV3SWcCMqz8NeHwgmjx+5Uh5vS0Y0jqzWLdMkGI8SI=;
 b=ECuDy6KoFCfSaORBmAsxkgGmU3Anb9yPpAKIfam0r0aSZlaQbKhgcZGI2LNijn9zaR
 8C2C3weP2vYAZtH39m5WSKzx2N76sUNJPBdIyUzQyDnL4vG+tt3RITGLcYboDQwcaMLp
 uMp+MMfk09VK26llkbg27fYh995EvntSe7ykmSs88s7Q39i/np3ebSqE4Jt7KK1RIT4y
 QwYQ+pBZ1N0e+/cWk7w1p9vB02t0KFxXazBEoamKlhuxYuVIhBzD2oBYWVpbx+ZaPiSP
 oK36HjfJPC5Towb7+/5WrSvj7ZXXwNq6fDcXKZJnRvtP0V9X2BGLGC+srmmn0WkRsG+l
 1NRg==
X-Gm-Message-State: AOJu0YzgXN/N+aCiSIikDgu8oIW1y55N2cWIqk7/hQoudZJD7BftnCP4
 riGl254eD0xS5ssALkM9vs70jA==
X-Google-Smtp-Source: AGHT+IEcc02lzjoAuUXNxLswoGGq9H0UfDrTQUK8UqjBifsYS1wClZ3SEpcSD1oDYzOOawMf9pFPDQ==
X-Received: by 2002:a05:600c:4686:b0:401:be5a:989 with SMTP id
 p6-20020a05600c468600b00401be5a0989mr1201587wmo.23.1697533591034; 
 Tue, 17 Oct 2023 02:06:31 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 p23-20020a05600c1d9700b00402ff8d6086sm1330215wms.18.2023.10.17.02.06.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:06:30 -0700 (PDT)
Message-ID: <c3d6c123-229c-ede6-d859-d9b66be5e392@blackwall.org>
Date: Tue, 17 Oct 2023 12:06:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-6-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-6-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 05/13] vxlan: mdb: Adjust function
	arguments
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

On 10/16/23 16:12, Ido Schimmel wrote:
> Adjust the function's arguments and rename it to allow it to be reused
> by future call sites that only have access to 'struct
> vxlan_mdb_entry_key', but not to 'struct vxlan_mdb_config'.
> 
> No functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   drivers/net/vxlan/vxlan_mdb.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


