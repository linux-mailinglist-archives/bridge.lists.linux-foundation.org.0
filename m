Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB2C485806
	for <lists.bridge@lfdr.de>; Wed,  5 Jan 2022 19:14:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 913A06FB8F;
	Wed,  5 Jan 2022 18:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUjWgYW-HAKP; Wed,  5 Jan 2022 18:14:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D529260E29;
	Wed,  5 Jan 2022 18:14:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8C21EC0070;
	Wed,  5 Jan 2022 18:14:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E3CAEC001E
 for <bridge@lists.linux-foundation.org>; Wed,  5 Jan 2022 18:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4581428D4
 for <bridge@lists.linux-foundation.org>; Wed,  5 Jan 2022 18:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AuRT24JNX9X9 for <bridge@lists.linux-foundation.org>;
 Wed,  5 Jan 2022 18:14:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4EB66428CE
 for <bridge@lists.linux-foundation.org>; Wed,  5 Jan 2022 18:14:42 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id e5so84756286wrc.5
 for <bridge@lists.linux-foundation.org>; Wed, 05 Jan 2022 10:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=8IjMW6kyewB7HLmt/uQqvKqK5mbucpa6D6MSyk1fHdQ=;
 b=gKE4UomKBFwRpUshG0snXgWNC/rxvjVyQ8jVCfO9j82EJZwmb/UcMTRrrQbgXq0hrF
 rTfFlCyhgANb2v7sdxl4Jin7ut5WN1WO44htt/gQJIupRLBZO+PTL6+bHiVoMePRGHBR
 EX228Bum6EoQAPa+1wnEjBJou/GyrQ5EDD/eROUQYiw/DryE685vocVXA3xysDiXy5kT
 fZrXKsqOc+QtW22/Ua86OONpG/tzAIjreZFDL2At7gvmadwou/RD1D1P8eexwGOOW3De
 cktCBuVV8ceC2SnmqXZFU8xKAnIq2ojSpgN2/qoRaBa0pIaf+f9d5x9eEUk9BTmrOqBy
 wVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=8IjMW6kyewB7HLmt/uQqvKqK5mbucpa6D6MSyk1fHdQ=;
 b=pVmunBcQYLUr1AZFNnznk3U4Gva+4iHZHJ8vqhVxnOAucKhjLmJNJm9PTnPuRuvCF+
 OYxTLrRKMzfKdRNCOG1RDE0V9SshlSmeMTYopG8MzSdfNSkDmxq9EXU7uvEFWyfGU2bH
 6yaU/EI4P7UQDzmVhlCjRkseCSRfBkjJS6wOaA8Z3xpNn8vNik7SuHJG1QFclZGgVaVG
 wRsu09XUEyIGtigRX+dgnbK5cbItK/Bx5t8fKoXqYe/ZLt2R6OTXFx2ocKbmKEvctUXx
 vpUKU+zxch23Akf0rskSxWdMjmABN/z7YADgLNZ/5460bREq8yBhQDJG4Sca+gLqHq9x
 kIbg==
X-Gm-Message-State: AOAM530gWJLSXy/GAvoZrGyY1JtG+CRnww+piNgtbTFgiBKyIagPthbn
 911ooZtd32nDwijNEotptLk=
X-Google-Smtp-Source: ABdhPJwV50tlWG5s4pF6cVKwOxhOo8WttB1QjSKihGp4jw4Pg8cviW/0sYraxqiJi76XO6Ft7KaHpg==
X-Received: by 2002:a5d:64aa:: with SMTP id m10mr49230327wrp.500.1641406480629; 
 Wed, 05 Jan 2022 10:14:40 -0800 (PST)
Received: from [10.0.0.5] ([37.166.219.18])
 by smtp.gmail.com with ESMTPSA id 9sm53334440wrz.90.2022.01.05.10.14.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Jan 2022 10:14:40 -0800 (PST)
Message-ID: <425e92d0-4321-8f9d-fc75-bba29f172550@gmail.com>
Date: Wed, 5 Jan 2022 10:14:37 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Nikolay Aleksandrov <nikolay@nvidia.com>, netdev@vger.kernel.org
References: <20211227172116.320768-1-nikolay@nvidia.com>
 <20211227172116.320768-2-nikolay@nvidia.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
In-Reply-To: <20211227172116.320768-2-nikolay@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: herbert@gondor.apana.org.au, eric.dumazet@gmail.com,
 bridge@lists.linux-foundation.org, stable@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 1/2] net: bridge: mcast: add and enforce
 query interval minimum
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


On 12/27/21 09:21, Nikolay Aleksandrov wrote:
> As reported[1] if query interval is set too low and we have multiple
> bridges or even a single bridge with multiple querier vlans configured
> we can crash the machine. Add a 1 second minimum which must be enforced
> by overwriting the value if set lower (i.e. without returning an error) to
> avoid breaking user-space. If that happens a log message is emitted to let
> the administrator know that the interval has been set to the minimum.
> The issue has been present since these intervals could be user-controlled.
>
> [1] https://lore.kernel.org/netdev/e8b9ce41-57b9-b6e2-a46a-ff9c791cf0ba@gmail.com/
>
> Fixes: d902eee43f19 ("bridge: Add multicast count/interval sysfs entries")
> Reported-by: Eric Dumazet <eric.dumazet@gmail.com>
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---


Reviewed-by: Eric Dumazet <edumazet@google.com>

Thanks !


