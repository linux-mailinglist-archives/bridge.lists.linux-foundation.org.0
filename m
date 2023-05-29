Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C41EE714C5B
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 16:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F79461139;
	Mon, 29 May 2023 14:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F79461139
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=FAGhU7jW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G_nh19h2oJfT; Mon, 29 May 2023 14:49:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B03D36111B;
	Mon, 29 May 2023 14:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B03D36111B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71401C0089;
	Mon, 29 May 2023 14:49:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6A1E3C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37ABB820F8
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37ABB820F8
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=FAGhU7jW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6O7wXcmzMNZ for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 14:49:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77174820E0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77174820E0
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:49:23 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-51492ae66a4so2907210a12.1
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 07:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685371761; x=1687963761;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7Rzi88jwPmtFMmjNwM6+2TYx8VpaCHshCTn+VpfHMLE=;
 b=FAGhU7jW7A9tLI0VpW7atmg+20AaVVf4TyuPD/Y58xMx3EQzLKftc9ni7z1NaGkvju
 OrHyWynmv15DprInEjxybJkyRmVr5KeTP7voRFevHss47G0WbdBmYD1+c5W0lT7e5xtm
 AguMydpgy0f3C/X77K0c+raUC5DlZuUh93iSSaY6aSsvwUYv++TwqAwKCdUe2eoRL7gJ
 4oHnIY8HZdAANenhIgFkNl689NdEwJCxC0IslhM/lxl49E7V3srrCMIDbvNYjuDbaEFB
 nWIWq4utExJM4Eq8J7IGTwYNnhUcmX6s4NPKiqUwsooQZtSgSxboaTN0737Em+FNkKNi
 lEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685371761; x=1687963761;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7Rzi88jwPmtFMmjNwM6+2TYx8VpaCHshCTn+VpfHMLE=;
 b=hxXoHJvoiAJSnk4OldnSbJgMr7jvCzM7Dgqhbs0MiZpuqxCNjwAuswg7Kzm/QcnCy9
 sK0q5EVQMqEM2/IpdbMXLBcEX33A0mCVUdNnFK7l2BYB6yLYy0gUSA7a0+mEnDWPEpja
 2zINo1IrLlfitBoiuA5rSMFkEn64Vx6JD76p81N9eW/Di2Ggo1cbQbchSaR4WI4tVrPj
 Gq/hKuNfn0SOj5L5n/Rcm9bgICozv+sKxYiAjv21uWPCqDbnSUTO7Qr6K5VXnvYlXJWY
 roAMa5Ix1JSiZtS+E6llEmsXeBQ0byhQsExGAC93XLlQiONK7erchljFSEEyXOl5poTb
 1Kuw==
X-Gm-Message-State: AC+VfDz4qu8Lj9NDp5c8hITcMoeNjxCFDig3+OEIRrb2GY3RKVwq6RXn
 4lnnaOU7A8QoKINtngkba3aKpQ==
X-Google-Smtp-Source: ACHHUZ7wMTakfY9XPMXoaoGJ9cw9LAiBHMBIdZCjoBKVZxRkq8jQ9GDJoDkTRXFwlHDqD8uTfKvDuA==
X-Received: by 2002:a05:6402:794:b0:50c:4b9:1483 with SMTP id
 d20-20020a056402079400b0050c04b91483mr8826301edy.37.1685371761531; 
 Mon, 29 May 2023 07:49:21 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 t22-20020a05640203d600b004bd6e3ed196sm3148172edw.86.2023.05.29.07.49.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 07:49:21 -0700 (PDT)
Message-ID: <3582538e-944e-3de6-6415-5384c399e0f5@blackwall.org>
Date: Mon, 29 May 2023 17:49:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-6-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-6-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 5/8] mlxsw: spectrum_flower: Split
 iif parsing to a separate function
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
> Currently, mlxsw only supports the 'ingress_ifindex' field in the
> 'FLOW_DISSECTOR_KEY_META' key, but subsequent patches are going to add
> support for the 'l2_miss' field as well. Split the parsing of the
> 'ingress_ifindex' field to a separate function to avoid nesting. No
> functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * New patch.
> 
>  .../ethernet/mellanox/mlxsw/spectrum_flower.c | 54 +++++++++++--------
>  1 file changed, 33 insertions(+), 21 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


