Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B854C36D
	for <lists.bridge@lfdr.de>; Wed, 15 Jun 2022 10:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD27983498;
	Wed, 15 Jun 2022 08:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4uLhiA6sNw08; Wed, 15 Jun 2022 08:26:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9404B8333F;
	Wed, 15 Jun 2022 08:25:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4ECA6C0081;
	Wed, 15 Jun 2022 08:25:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B072CC002D
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 08:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F75983419
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 08:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlGYHAqbwXF0 for <bridge@lists.linux-foundation.org>;
 Wed, 15 Jun 2022 08:25:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2688823CF
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 08:25:56 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id m20so21661411ejj.10
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 01:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=81G8W5HZcsZGBz+5OMYMDedtIQ5UWl4XrEoXghNc1ZE=;
 b=WSsJPme3UHq4EYU7YhodN3CicGBI3v0oOn1cW+Quch7x+MGYPc3bXuJL0PHrLzOqJL
 iMEPA+pZLwol8Nqzs5Vq0uV4k7Mm45A+2iMrgdFHLjcrnEFO4+DV9FpyPAeHyvBhMSbH
 aINNLbd5xviC6a4ZCCm5w7AdXLPhwzF83Oku913g78TOLuLKqmMet24Luyvcnl+iPaVh
 DHT37bdC+uP1inQ2H1avWvoHRVM6qhd1x5Ch8JB9SeRo6Nb1OuCkfpR36napHiJEYrSW
 YYaYAD496PxAcBW1dv0/FV4rraUJKsu+roC4Ie40IgyGwk1/dkr3LJG0s10ZVD/xJoIJ
 B3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=81G8W5HZcsZGBz+5OMYMDedtIQ5UWl4XrEoXghNc1ZE=;
 b=etUkAoubmg+bvT8ujRPz9ognanrjsNhsTMR86C5rUTSHjaQzGpYGaFG94XvYQA6lJy
 SsISpzRt+mYaa/5MZ/s0FkAWtpHGfZFdTYptPUok38AZ251R9sXtX0f+doFn58kPZT6D
 CLpVs2l6OzzDH0JCSfS+tGomqnra/TTdiOQor+OSM2uT6jbhgnd72cfaR+Q7IMKppKv0
 yGAPi/3xIF+v1jImNjOdiosfbBj+61na51yb06XBO6j5aZhQJXf4FBTpGPELLG/AbXiM
 fbaoWRHXnGsgybORyVpsNz+WPcrsIdLYUOMoJUoxQgD4/XbLhtCXRUuU4vXp0lbb+q1n
 aejg==
X-Gm-Message-State: AJIora8PdMuFRESMhjnJf+jqXOhlUIqALA1bRh2M7g8/SPZbsaj+CfQA
 D1PASC6x20qJZ+wTGrUDKWC7aQ==
X-Google-Smtp-Source: ABdhPJw/nxLUNfgfq7Tf+SWDbebDvzIN2ukH/zpWSGYnc3mjPW6Wy0LCWzPoS2Ue5sJJRfhXCzxMSA==
X-Received: by 2002:a17:906:7d47:b0:715:7ec3:e3ad with SMTP id
 l7-20020a1709067d4700b007157ec3e3admr3499566ejp.12.1655281554807; 
 Wed, 15 Jun 2022 01:25:54 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 o18-20020a17090608d200b006ff802baf5dsm5970651eje.54.2022.06.15.01.25.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jun 2022 01:25:54 -0700 (PDT)
Message-ID: <eb011e1f-c264-eca6-8526-c0660a7e7844@blackwall.org>
Date: Wed, 15 Jun 2022 11:25:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Casper Andersson <casper.casan@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20220614063223.zvtrdrh7pbkv3b4v@wse-c0155>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220614063223.zvtrdrh7pbkv3b4v@wse-c0155>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Joachim Wiberg <troglobit@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: allow add/remove
 permanent mdb entries on disabled ports
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

On 14/06/2022 09:32, Casper Andersson wrote:
> Adding mdb entries on disabled ports allows you to do setup before
> accepting any traffic, avoiding any time where the port is not in the
> multicast group.
> 
> Signed-off-by: Casper Andersson <casper.casan@gmail.com>
> ---
>  net/bridge/br_mdb.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 

Sounds and looks good to me. Ideally you should send a small selftest to
make sure this case is covered and someone won't break it in the future.

Thanks,
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



