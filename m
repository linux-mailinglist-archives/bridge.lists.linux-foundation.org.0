Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8827652C4
	for <lists.bridge@lfdr.de>; Thu, 27 Jul 2023 13:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0401E80EA4;
	Thu, 27 Jul 2023 11:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0401E80EA4
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=Bbak6hOs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhkOjqctVxgL; Thu, 27 Jul 2023 11:44:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A00FE83AFC;
	Thu, 27 Jul 2023 11:44:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A00FE83AFC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 454C0C008D;
	Thu, 27 Jul 2023 11:44:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90716C0032
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 11:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 743B9403AC
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 11:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 743B9403AC
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=Bbak6hOs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTgFhs0snhyK for <bridge@lists.linux-foundation.org>;
 Thu, 27 Jul 2023 11:44:07 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADD4E400D0
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 11:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADD4E400D0
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-51e619bcbf9so1057586a12.3
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 04:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1690458245; x=1691063045;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0Pd52QAOVtNNbgDqHYQEjCrAzdyOOjihPSFq0M5Ik4Y=;
 b=Bbak6hOsd1TyATRGYe05W+0/rKMMCiOckHsDdv6SyfQ0uqHMfd3rafUSrblXXzZoyK
 FHmSWmyL7uuFub/fafa5s6Gam61mZI3IzRKmsHFU0ZiMqKVeVGtqm5DR7DqF7JXKTXUF
 aH+mx/OTorlYbaLSNJgaozLQQOD+gkVjFPJryET2EKavzdFF74BjnpzS0aMo5Q7aO3++
 DfWTnOH1fDDHf/iOk1+Vek4v6aZDcu8EJJ/ZEiXBsQtUnj/6LXvYIGvW1+7cYa3iH/aX
 NNhAbdaKjxHA33v71NGTz73iWZdfrmjAVdhuUqBoLHqsSK82OhCjmn5onGqGbvwAQWUf
 PGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690458245; x=1691063045;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0Pd52QAOVtNNbgDqHYQEjCrAzdyOOjihPSFq0M5Ik4Y=;
 b=Y20goqpUYXjIGXH5KNuRFO70BF5GiXNa0H8AXN/fgT/SPVHB57KbXlmHUBSNFORLYG
 svpdsSHxRJI28Ea9iyCFUqvcFNKmEmYjJzxBU6gnkY+TQqFLNGaXa3RkW6cDZY0hrtHW
 SBVD1Ie1Yq0VeMIL+rgjTMotvnA2xl2FxdbMdO7zxgMT+EVbObQC7jFKXCCjvNB1kcgv
 Iv1kyK1OJDU2uReHj4kYAobRjcil2W54uHdmv2I+5PgOF48L/Jn5AF/79vRAnvVROnSI
 oFjkzQZu//RaWdRqy8FM54s/zV0m4jxRR7pePAMDc6yRRTPCzgzc7ZE03vZd4PvNMqnY
 vMdQ==
X-Gm-Message-State: ABy/qLaSV/cTM1CEj5FDHNiiYZlLizAMr8D9peNP8gzRcOoWl41DDRbI
 JaYn7uv+Bl+RFQjkhbZApHfjRg==
X-Google-Smtp-Source: APBJJlHxaXVKfTJi3HvDwrCK+UddDlp4jZfELrpULv5ukfq77Dm+KA3G/1qp1PoAPSnHwBXlpw+QCA==
X-Received: by 2002:aa7:d65a:0:b0:518:6a99:cac3 with SMTP id
 v26-20020aa7d65a000000b005186a99cac3mr1394418edr.31.1690458244681; 
 Thu, 27 Jul 2023 04:44:04 -0700 (PDT)
Received: from [192.168.1.2] (handbookness.lineup.volia.net. [93.73.104.44])
 by smtp.gmail.com with ESMTPSA id
 d7-20020a056402078700b005221ce96801sm565226edy.35.2023.07.27.04.44.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jul 2023 04:44:04 -0700 (PDT)
Message-ID: <bd9e39da-088c-976e-982e-f5e2d4f4528b@blackwall.org>
Date: Thu, 27 Jul 2023 14:44:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: YueHaibing <yuehaibing@huawei.com>, roopa@nvidia.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, idosch@nvidia.com
References: <20230726143141.11704-1-yuehaibing@huawei.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230726143141.11704-1-yuehaibing@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next] bridge: Remove unused declaration
 br_multicast_set_hash_max()
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

On 7/26/23 17:31, YueHaibing wrote:
> Since commit 19e3a9c90c53 ("net: bridge: convert multicast to generic rhashtable")
> this is not used, so can remove it.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   net/bridge/br_private.h | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 51e4ca54b537..a1f4acfa6994 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -974,7 +974,6 @@ int br_multicast_set_vlan_router(struct net_bridge_vlan *v, u8 mcast_router);
>   int br_multicast_toggle(struct net_bridge *br, unsigned long val,
>   			struct netlink_ext_ack *extack);
>   int br_multicast_set_querier(struct net_bridge_mcast *brmctx, unsigned long val);
> -int br_multicast_set_hash_max(struct net_bridge *br, unsigned long val);
>   int br_multicast_set_igmp_version(struct net_bridge_mcast *brmctx,
>   				  unsigned long val);
>   #if IS_ENABLED(CONFIG_IPV6)

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

