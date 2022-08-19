Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E990F59990E
	for <lists.bridge@lfdr.de>; Fri, 19 Aug 2022 11:56:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2370884266;
	Fri, 19 Aug 2022 09:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2370884266
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=vuKJeSl9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SxNfIb49Os2M; Fri, 19 Aug 2022 09:56:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 83EE083F5E;
	Fri, 19 Aug 2022 09:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83EE083F5E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D698C0078;
	Fri, 19 Aug 2022 09:56:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8BE20C002D
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 09:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72D0784266
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 09:56:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72D0784266
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jwq-vEn5r-V6 for <bridge@lists.linux-foundation.org>;
 Fri, 19 Aug 2022 09:56:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5794183F5E
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5794183F5E
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 09:56:00 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id w3so5031775edc.2
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 02:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=t6W9x+WyR9aEmeKvb5RR9lUuSahG1sgA3A2JFCHzAnw=;
 b=vuKJeSl9JaPfAzsNJQ1aTpwqs71OASgH95FDetNyeGm+4UteAQukVux8PoDlviDBfZ
 VdNlqmv0Ig9/AzO7NQ9JTXNjaJ5wNtodagQ6jqj+iZrG3J8KwJf3YEWUh/wmjW1OUgjw
 yDlPsaLdE2KlVIpXAEamJcfjtdaO6HpVU7fEB0qdak/lOSLAwlO82fE7Tj6+3PqcxdeX
 Np1aoXVZCw8WUm/FSdOuhwKo6PGAv6Zf9y3yLFvAqW3XOuOLVxNu661oxgKLn0Q3QpLn
 DkOmldvHiNoUrcT4oDB+5QX1Vqwlje2G8LZBPR5O5VGQ46dC2YnD7ynFglYda+aRJFcb
 4+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=t6W9x+WyR9aEmeKvb5RR9lUuSahG1sgA3A2JFCHzAnw=;
 b=n/TsasoVhai6HKUCoD/xmkpxiHOaET6ILgD6mHW6SORxCWXpoEaXfTQdMiiOVuWzAb
 j2pcqCpjRmrXnGJxr9IGy5KYIkRFJMzx9CWsMBopt6ME7JZrjSj1YpM8e99JKmT87aPo
 iCqwnX93h0vay82LAG2cfpRNen5Wj1EuPQL1+H2GvxSyR+uoegKgTCozytOdVJTQP1Fq
 MTCJzeuvI+4vlTl5RYJFgRsddElvrO5c3CIIbM4J3Htlj7URHKc/ig8ir/mKbz9AMoJB
 tkUJ9Aj60UtdRIXZJX2VTjXyD+Mrqed7PHX/L+vglFoOjWhkb8w++0FL/yb/YdxEWFwY
 MtTg==
X-Gm-Message-State: ACgBeo1+A2W3nCUopFqJWMJjIZeSWrJ0UbKb1n8VJkciemtBuoRxz4q6
 BOwt7JgqQRCpbvM/LFkTCZcbMg==
X-Google-Smtp-Source: AA6agR7wtKqyRGfnjcuvxsrl/dlt1fADSTrCDXQsKf/bE0fFyZzXgvCiscSIepGAJJArj7TFfEl6HA==
X-Received: by 2002:a05:6402:369:b0:445:d379:d233 with SMTP id
 s9-20020a056402036900b00445d379d233mr5469265edw.395.1660902958421; 
 Fri, 19 Aug 2022 02:55:58 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 ss2-20020a170907c00200b007309f007d3asm2022802ejc.128.2022.08.19.02.55.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Aug 2022 02:55:57 -0700 (PDT)
Message-ID: <4a6120dc-6a7a-a718-86a4-6fd8bd9a8ed4@blackwall.org>
Date: Fri, 19 Aug 2022 12:55:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-kernel@vger.kernel.org
References: <20220818210212.8347-1-wsa+renesas@sang-engineering.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220818210212.8347-1-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, Jozsef Kadlecsik <kadlec@netfilter.org>,
 Eric Dumazet <edumazet@google.com>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH] bridge: move from strlcpy with unused retval
	to strscpy
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

On 19/08/2022 00:02, Wolfram Sang wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  net/bridge/br_device.c          | 8 ++++----
>  net/bridge/br_sysfs_if.c        | 4 ++--
>  net/bridge/netfilter/ebtables.c | 2 +-
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 

Looks good, but should be targeted at net-next.
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

