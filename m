Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7EC6427BC
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:43:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86A5B600CD;
	Mon,  5 Dec 2022 11:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86A5B600CD
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=WovpQAkm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WeUsuxCmImIV; Mon,  5 Dec 2022 11:43:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 138D0607B5;
	Mon,  5 Dec 2022 11:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 138D0607B5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB87BC007C;
	Mon,  5 Dec 2022 11:43:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1019BC002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECD3E80BB3
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:43:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECD3E80BB3
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=WovpQAkm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CmmGwwoiEUm for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:43:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BB4680B90
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BB4680B90
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:43:32 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id vp12so27097217ejc.8
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8/CyNdrc1NG+SiV/WyFqFX763UJgr1kiBYK1y29Dd3Q=;
 b=WovpQAkmjcZCSOQ+lMsEsETG7brsFoL+2ZXQibGwumzD52tGEerBqsmtc1QbxA7Iui
 CeOckv807i5mMP8Jw1Um0uzfeXJxwzBMUFhtgDpkDfvNROwobmscG9jDh88WzhsYo9Pq
 HjM8jF1p8h7gLq2L1Sv0HMvWUl/d8Ary9vu83Fn7pCZ+TpzwRTp7v3XoM7XCJDdtVGRD
 RX4rMM+XxWB9kdsqlEG7XROAHyoXnAn8s+WW6PGZza8LqBFjy7xlosvx9coy8JovqQGf
 l7OSGUUj631c1RX43qlmuvkh8VPxKVn+w1bz5It+tLJumScqW1f7DnPs/uQZuhx5d/Jc
 moZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8/CyNdrc1NG+SiV/WyFqFX763UJgr1kiBYK1y29Dd3Q=;
 b=FyHo9s+je8n76dzqb3WKwUchOpAFqZz54jtqdPKXF2BaBaRFms9BxVXu4vm6TD6mIX
 ZDyeCpUFUt9Bi+54PBLCAVP2NKTCIn2+CYcITOSD+NFtzE7ylVxXSfu3fDgUW3lQrRBu
 k6o7+nmnTF92JJqAXI4H6mXk57qiBaYm6Mn7NhqJQFEUrHYn5CJO//5azpGKLBW1qGu9
 en5zkI2AzCYUFD6dnW9QHwvVA9WZeOR01IjkPf+qqRgn+qd7e5CAclYCVm+XKzCHtR+M
 p/H6JNCChqBMl3cNSX190CDYnAv1OgJ8sZ1X8wKecWXrN/dw9wY3z6nwHwh8X7TQln7O
 ntFw==
X-Gm-Message-State: ANoB5pn20U+VjICJMARXsjfGZIe3naF7mH9LYFppC0xCxUAkX7goTyaU
 icomEzA//2DIKLbh0RV2oHGSPA==
X-Google-Smtp-Source: AA0mqf6Va2Rd1Wd7OSjGasJzLU4rpjntrRZQeRosD83Kii8kA3L2nkBwViB9YMYlUgiqieUDZ+sRdA==
X-Received: by 2002:a17:906:8296:b0:7ba:29a1:543c with SMTP id
 h22-20020a170906829600b007ba29a1543cmr20134056ejx.297.1670240610444; 
 Mon, 05 Dec 2022 03:43:30 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 r9-20020a1709061ba900b007aec1b39478sm6152538ejg.188.2022.12.05.03.43.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:43:30 -0800 (PST)
Message-ID: <3d7da3fd-53ca-c321-0b00-b79948b85993@blackwall.org>
Date: Mon, 5 Dec 2022 13:43:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-8-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-8-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 7/8] bridge: mcast: Move checks out of
 critical section
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

On 05/12/2022 09:42, Ido Schimmel wrote:
> The checks only require information parsed from the RTM_NEWMDB netlink
> message and do not rely on any state stored in the bridge driver.
> Therefore, there is no need to perform the checks in the critical
> section under the multicast lock.
> 
> Move the checks out of the critical section.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 36 ++++++++++++++++++------------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


