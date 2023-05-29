Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9866714A1D
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 15:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D475082C1E;
	Mon, 29 May 2023 13:18:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D475082C1E
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=g4QHDjpT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHQPzsUB_yWx; Mon, 29 May 2023 13:18:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7EFD7835A9;
	Mon, 29 May 2023 13:18:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EFD7835A9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B57BC0089;
	Mon, 29 May 2023 13:18:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8C84C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95696611BD
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95696611BD
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=g4QHDjpT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qs8eQmE1JOS for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 13:18:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3C41611B9
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3C41611B9
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:18:15 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-96fbe7fbdd4so612566766b.3
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 06:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685366294; x=1687958294;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ekH/XPPL11xeKHaj9D6lSLg3OZVj5G8ttFan0W5KnI8=;
 b=g4QHDjpT4S77avoZxAHq41BxBNa4BuJgDXddpg8aHMfKgTdpn9YReZo+21hMlaD6D6
 iItVduypcbFD1PjRrNqqS5/QWJOL91v1aEFHpy+Piv/tQOnuZ/8900d3KLD+6yDZhpm8
 X6wsiZd+yTlVGwf81XT+iF86AUW8ST3rrYJH3d9m6JgVUaln+cfboCE/t06YMe26S0es
 c2sU8/+VTR6vh/mJBoSD0FtL5ey707nXvJBnNTOplj/IuWYkb+eGAvC4KaabeIcV/qqn
 cAFSzamLycnVQmnzCf3uNEYn2E5MOitp6ku2o3dUjWvxoSHLSoFR2oKaiFJPjyWHirkb
 N+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685366294; x=1687958294;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ekH/XPPL11xeKHaj9D6lSLg3OZVj5G8ttFan0W5KnI8=;
 b=X1iWIXl6u5xDA9A2Kt2ru0M0LW500i1ft+9C4rwev2KsKxRDNTVdy8F4PzLnhgnxT0
 /vM5dVzC9hcR2b7XfLz7m4xx/pRUE39XKyQl+2HNKKHcwHHJ+i9PNe0mCuylZ9B8DyxM
 cWM33ncRyjwMG5LafO/doubZzMnZeDqR+MnXQpyKApXTzNcGlXOk5i/O/oOj9kWeLrFp
 75Ce2A2OoovVhLDA0SsHvocCxSbK+PmRmlGvQn+98AxuXHmjsS8z5/oNQzito1f6POO+
 n6FVvfQqque08aZFD7J/WVVaqq+8JO2BB2U5KOqtKgbenvHUpREkV9mv5wAU8WlZbAIm
 o8/g==
X-Gm-Message-State: AC+VfDw0D29mz5ZUvXM3X4KbhNFmJ49DYHDg10204YBUcbtW/Cgo8NJc
 lRLf7Kl1w7GWU2Ff7rYQ6Sc4ag==
X-Google-Smtp-Source: ACHHUZ6zbhEgQPjq7oOZNBX+tPtndmda+yq2VADwzviivMW15bGWEM9qWHvOIfGuhVga4zwWuziKxw==
X-Received: by 2002:a17:906:ee83:b0:94f:2a13:4e01 with SMTP id
 wt3-20020a170906ee8300b0094f2a134e01mr9124363ejb.74.1685366293633; 
 Mon, 29 May 2023 06:18:13 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 e18-20020a170906249200b0096f503ae4b0sm5912249ejb.26.2023.05.29.06.18.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 06:18:13 -0700 (PDT)
Message-ID: <cddf6ca0-3c9f-3ee2-1145-f68b3da73fab@blackwall.org>
Date: Mon, 29 May 2023 16:18:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 2/8] flow_dissector: Dissect layer
 2 miss from tc skb extension
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

On 29/05/2023 14:48, Ido Schimmel wrote:
> Extend the 'FLOW_DISSECTOR_KEY_META' key with a new 'l2_miss' field and
> populate it from a field with the same name in the tc skb extension.
> This field is set by the bridge driver for packets that incur an FDB or
> MDB miss.
> 
> The next patch will extend the flower classifier to be able to match on
> layer 2 misses.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Split from flower patch.
>     * Use tc skb extension instead of 'skb->l2_miss'.
> 
>  include/net/flow_dissector.h |  2 ++
>  net/core/flow_dissector.c    | 10 ++++++++++
>  2 files changed, 12 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


