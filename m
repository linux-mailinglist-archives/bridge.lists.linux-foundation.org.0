Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55177D7CD4
	for <lists.bridge@lfdr.de>; Thu, 26 Oct 2023 08:23:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D094400C6;
	Thu, 26 Oct 2023 06:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D094400C6
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=q1aUtHCP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bNEkBuIMxP19; Thu, 26 Oct 2023 06:23:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9D8874157A;
	Thu, 26 Oct 2023 06:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D8874157A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E5A1C008C;
	Thu, 26 Oct 2023 06:23:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4AEAC0032
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 06:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B213641F30
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 06:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B213641F30
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=q1aUtHCP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pyy7nb3Hpn8v for <bridge@lists.linux-foundation.org>;
 Thu, 26 Oct 2023 06:23:20 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAD9341F2F
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 06:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAD9341F2F
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-32caaa1c493so344113f8f.3
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 23:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1698301398; x=1698906198;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9KQrkDY9cLbzOIPZ1XItMMko64XHXu+1s55t9JoUn1k=;
 b=q1aUtHCPePfr+DdQPc/ErYdQGX1Sak8YNCObVBLIzDzrEWOE0rcHV2GhpkQi2wNXcV
 o/lPvTVs/bA0/sj6W3kXB3iRLMiF9HMgRypnliBm4Wzc4zVG6AL4mnU95URWhyuOTmAn
 A3/D2F1dzySPxEbFtaGybjqJ7lAonDtU35UFOibnWj0XDHD0fY8qXe0HoJV7ij6TKjTf
 7J/J/a1kY3oaJ3blKxTQlsIASwfBkjoQ7P1XCUJnSV/f9zrb95ACVSzUgitqEQqoTiDs
 q+XfVS2Cyvfmruf/RxAYXsBfzC/tGEOP2zNhOLrBGwF1KRIo+nXe5JDO7/oAwNcLiR1O
 0NJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698301398; x=1698906198;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9KQrkDY9cLbzOIPZ1XItMMko64XHXu+1s55t9JoUn1k=;
 b=K/7EFHpA3CqEnwEn0kmEMVZPOfY/f0fMWzawy76wXI5sPLy85OPb8ClB20zROfaYoI
 /A9lmbbPP/+IcxA2ouJGbuXAQZhf/iytBjCFbc0qD7vaDj7lJcJ0EvM9erd0QeofeLVD
 ZzVg4trwa5XSyHD1FDYpnAP0sgrTk1LfmXf/sjJHQzLKpzfJQ7M7MFIj0b6jeCIK3BDo
 B03tlLk15s4uKZWEK5Gq9kd1fhxN040twq9lDhPsLGOA4WJ+t8s8GMw1wSmYhc9Oya8d
 0f9lE8x4v5uaoLy0rrngCJuydOjYUq8AWEbdsztoqf0xcmPR3aIF8d33bCKapq9DAKX4
 OJbQ==
X-Gm-Message-State: AOJu0Yxp6c56og8I1EodchRDIwaGU074+KDBXUQa/IiB69iBT6gnB25Z
 my4WyaUNB/hHBDq3NNbIHR8eEQ==
X-Google-Smtp-Source: AGHT+IHdrHpWvVQCdxYemGSjNSjyWYmDsnI559K7jDJdX/aJNOGGpwulCQYSGADg4rJqcW4ZVX8i5A==
X-Received: by 2002:a5d:638d:0:b0:317:6513:da7e with SMTP id
 p13-20020a5d638d000000b003176513da7emr11165496wru.36.1698301397977; 
 Wed, 25 Oct 2023 23:23:17 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 g3-20020a5d6983000000b00326b8a0e817sm13586805wru.84.2023.10.25.23.23.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Oct 2023 23:23:17 -0700 (PDT)
Message-ID: <dbd33fe5-7b27-5454-6808-c975638c8321@blackwall.org>
Date: Thu, 26 Oct 2023 09:23:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231025123020.788710-1-idosch@nvidia.com>
 <20231025123020.788710-10-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231025123020.788710-10-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 09/13] bridge: mcast: Add MDB get
	support
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

On 10/25/23 15:30, Ido Schimmel wrote:
> Implement support for MDB get operation by looking up a matching MDB
> entry, allocating the skb according to the entry's size and then filling
> in the response. The operation is performed under the bridge multicast
> lock to ensure that the entry does not change between the time the reply
> size is determined and when the reply is filled in.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>      v2:
>      * Add a comment above spin_lock_bh().
> 
>   net/bridge/br_device.c  |   1 +
>   net/bridge/br_mdb.c     | 158 ++++++++++++++++++++++++++++++++++++++++
>   net/bridge/br_private.h |   9 +++
>   3 files changed, 168 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


