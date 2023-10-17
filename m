Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15F7CBF38
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1D5A4192D;
	Tue, 17 Oct 2023 09:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1D5A4192D
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=TJ0B+gg8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xO3u8Gua6g4S; Tue, 17 Oct 2023 09:28:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5C4474193A;
	Tue, 17 Oct 2023 09:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C4474193A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 038B7C0DD3;
	Tue, 17 Oct 2023 09:28:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9A4CEC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F4B760F40
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:28:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F4B760F40
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=TJ0B+gg8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y10fyt7M7OA3 for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:28:28 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6379860A5E
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6379860A5E
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-32799639a2aso4866267f8f.3
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697534906; x=1698139706;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fmR/OA6GHqXdwt3EU1KKP2U+4kY4IagR5FLSW/2Uexs=;
 b=TJ0B+gg86e6yCm9RS3xU4MfqIfd++xGFfaBZ22cwGEb9l6DQ2WGUphoH/HNGmtu98T
 7EiBFj0SouUiIyDYwCumxsB445l8Vvc/oZJauGxTiVBrYbaI+ar2vO85ZWfow+wqNh6Z
 yDUTOqFrRjn9uXlGBnF34nJ5a6Lmf2qAMWL71oAho6QD6heLfiVMrfk/WRQblgtooFeh
 DUze6KAqrBRGRinCDHlyV/090Fpn3XWvtK0V+TtmPxGMtKAOgNfPp54y8T7yseKL2uX5
 0hmUvYi7dxSBX11xNN9+kEyPnNd8uCAieV27eIp7Clw0y4XMyBpxzIvPWLv4/yF02Ru6
 ZZgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697534906; x=1698139706;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fmR/OA6GHqXdwt3EU1KKP2U+4kY4IagR5FLSW/2Uexs=;
 b=XK+YPrUjjuttiiZ4vDeAKEVGyTUMAPCtB/RemgGqDswo8fC4AGkvcy63Jet3SKW9un
 AQEy4tvZiwqct3+o7MUWQrrh64gyvGqv4WDmrnNsj5X4I93h4vPaNhXEJTo8gsmNzGmw
 SLji4leBv6fI8iiaYu4I43y1AdPM4agi++ebne+ALxFtZea60Hhzk1P+XuehUmXAVQzB
 F/eDliXQb6HFUFag6aZQfmThtOWal+T91+bKR+/THFBzPOWXyNg/kWNb5E1e6zul/1kc
 Qf1dR/gR/vTVvlTmGebK3T2VMz/KrBE9isfEq51sSRSimz+8NoVa9mmOVbdcjWh/TJyg
 5QnQ==
X-Gm-Message-State: AOJu0YxfiC3gWNoKjJ2tBEveI/9UwVkhjQoA5zYsxFOPaZ6zMay8TTlE
 gOcJT9A+M+PK9No294dFXL7/bg==
X-Google-Smtp-Source: AGHT+IF9FQ0Xmt6YdT5juEFEBBZ1FdqPulxZzSfKnYATu/qCrQwrncAlLHnu6avsdX8AHwshBGNoyw==
X-Received: by 2002:a05:6000:ca:b0:32c:af13:9084 with SMTP id
 q10-20020a05600000ca00b0032caf139084mr1535648wrx.22.1697534906264; 
 Tue, 17 Oct 2023 02:28:26 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 f1-20020a056000036100b003196b1bb528sm1268956wrf.64.2023.10.17.02.28.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:28:25 -0700 (PDT)
Message-ID: <8e25bfdc-de42-1f50-8e78-edff3d69dc49@blackwall.org>
Date: Tue, 17 Oct 2023 12:28:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-11-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-11-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 10/13] vxlan: mdb: Add MDB get support
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
> Implement support for MDB get operation by looking up a matching MDB
> entry, allocating the skb according to the entry's size and then filling
> in the response.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   drivers/net/vxlan/vxlan_core.c    |   1 +
>   drivers/net/vxlan/vxlan_mdb.c     | 150 ++++++++++++++++++++++++++++++
>   drivers/net/vxlan/vxlan_private.h |   2 +
>   3 files changed, 153 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


