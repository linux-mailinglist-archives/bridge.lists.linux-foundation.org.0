Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A055456179B
	for <lists.bridge@lfdr.de>; Thu, 30 Jun 2022 12:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3412040141;
	Thu, 30 Jun 2022 10:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3412040141
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=GSP8LRnE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wxUS1PxcqOw; Thu, 30 Jun 2022 10:22:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 67EBA40232;
	Thu, 30 Jun 2022 10:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67EBA40232
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E6E0FC0036;
	Thu, 30 Jun 2022 10:22:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 259A0C0011
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 10:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D615A60AD0
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 10:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D615A60AD0
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=GSP8LRnE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j9-vBwOxqhQf for <bridge@lists.linux-foundation.org>;
 Thu, 30 Jun 2022 10:22:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C61C3605A6
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C61C3605A6
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 10:22:41 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id ej4so25915208edb.7
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 03:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=y5UsByWLMWEYobec0CN6KDFyOSWUvAwaZ8r1U9iYpCA=;
 b=GSP8LRnEUC3YB9em437uwIQRy41VuAuO8g4G5+rvlN9pk2hRaUTIC7RPWtP+4/iLfX
 NbsuWSaMTClElRWXyedG58ZqOOrY3YChazC5x54rw4O8k7egy1jc2YTFgWJa0c+1ttes
 WDniBrpGY8CGEvQSfn1HIIBiabI/klkG7e0t/6oshc86Mmf1IwxQVWtQIdNQz47n2Wxq
 Ue14QtxdR3M9VfCM5ucJ5Mlfr4QiWIiaFaUzmo4H9QDF7WWHx7EXyIYXWUM/c6ey2xDY
 JLckjeXOeuKccRqfKBHHRBOHdgNiEomFXjbyXjpOSC/DPYhETa51oG8U7CQViQueT1hO
 iA+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=y5UsByWLMWEYobec0CN6KDFyOSWUvAwaZ8r1U9iYpCA=;
 b=RpDsXnwY+U8k5vo8udG3S+7OJCFMMAyfYEaV/E2lus/fZScSBdgYKQQgNo3x4FA3lI
 ks/uuUBaOvd5pm0wi9dLlYDyyZvuL4PZtabXoBZe+Uin7JDJYlI/UwOY+WoyKuFMZK24
 xIpM2zViyJGGOxBRz27dChuXU12TSdcO8CU36uKLeEAti3apyYKzC93JlsUNxh4EaZFb
 OoeSuQdbr1OTIeVstjrgXJAha/sK9tg7juWJWKiF0kqCjZXy5xSdJ+7cBGyRNOYLUqR+
 J2PbqAdlpJOefy+fiiWxJdE4iUJQL9eSIT0z3vsN46kvvLteduwNlUag6BCwolE2ucGy
 fqqQ==
X-Gm-Message-State: AJIora+Y3KADxpYl8LL2LpET5cjoofvJBN2bCENOYJoAX279ipjBXPH7
 hX0ADNF/C8qhWDq+wfloyuuCuw==
X-Google-Smtp-Source: AGRyM1v/sMpb6LQCI0Xbq3TfjZJdpaj0M12tlJRfujf5QX2IMx+u6M1wnBeddEncbkc3uKPAx1y/Nw==
X-Received: by 2002:aa7:d484:0:b0:435:65b0:e2d8 with SMTP id
 b4-20020aa7d484000000b0043565b0e2d8mr10622588edr.373.1656584559605; 
 Thu, 30 Jun 2022 03:22:39 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u17-20020a056402111100b0042deea0e961sm13022756edv.67.2022.06.30.03.22.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jun 2022 03:22:39 -0700 (PDT)
Message-ID: <47d8d747-54ef-df52-3b9c-acb9a77fa14a@blackwall.org>
Date: Thu, 30 Jun 2022 13:22:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Hans Schultz <hans@kapio-technology.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220630100512.604364-1-hans@kapio-technology.com>
 <20220630100512.604364-2-hans@kapio-technology.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220630100512.604364-2-hans@kapio-technology.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 multicast packets cannot unlock a locked port
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

On 30/06/2022 13:05, Hans Schultz wrote:
> This makes it possible to use the locked port feature with learning
> turned on which is needed for various driver features.
> 
> Signed-off-by: Hans Schultz <hans@kapio-technology.com>
> ---
>  net/bridge/br_input.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 68b3e850bcb9..a3ce0a151817 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -215,6 +215,7 @@ static void __br_handle_local_finish(struct sk_buff *skb)
>  	if ((p->flags & BR_LEARNING) &&
>  	    nbp_state_should_learn(p) &&
>  	    !br_opt_get(p->br, BROPT_NO_LL_LEARN) &&
> +	    !(p->flags & BR_PORT_LOCKED) &&
>  	    br_should_learn(p, skb, &vid))
>  		br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, 0);
>  }

hmm this is called for link-local traffic (01:80:c2), the title is misleading
please include the real traffic type because it doesn't concern mcast

Also please include the long explanation from the 0 patch in this one
and drop the cover letter, it's good to have the info.

Thanks,
 Nik




