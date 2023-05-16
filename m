Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331517047BF
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 10:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6FD640588;
	Tue, 16 May 2023 08:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6FD640588
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=QBexmk+D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VRpOPkEZwXpA; Tue, 16 May 2023 08:27:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6DD3A4018F;
	Tue, 16 May 2023 08:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DD3A4018F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1E409C008A;
	Tue, 16 May 2023 08:27:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D2E8C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AE1683C2B
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE1683C2B
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=QBexmk+D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VaYBbVmRdR87 for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 08:27:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D1C28405C
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D1C28405C
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:27:04 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-50bcae898b2so24289945a12.0
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 01:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684225622; x=1686817622;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+Q/Wa8M+8uvC4yapXeHr/mR9kOO52paWXj/dqyPoiGY=;
 b=QBexmk+DMOo6mdKn5THtfjbOH7Fh/sar7zK4I1M/u/4HUWDtu9v8bKl/3t18wSNBro
 oE12HbynSoEYrSJoElh+Zqa6TVqFxJnUthg+jxikGz9G+0tZm9NG0TzrFjZnaBTsDE3B
 vF0ucHloTC5lpw0cIFX+5JD1aKa8uqbrHr0rXsqjaGdGLkLxFD2z1nqHiT1TrJM5FaJJ
 8U3uLmynbkNmLLlbAV5ZjSote3XXh3ybIrOzP2PTcsCTdgV5QPc7iAJW7oawAOEPBQjQ
 CP5+zR7nyHQ1HenOE+ibGvpdguNwUmSETmCeALgAl0yuFiDU8IS76OZy6cdtEHTYwB+x
 lnPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684225622; x=1686817622;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+Q/Wa8M+8uvC4yapXeHr/mR9kOO52paWXj/dqyPoiGY=;
 b=R8jtI7zQyDi3EHMbOoQr1rHEEzJXGxdi8XI6p+9d3FHMp44dlmMg8T8xT9ru8ndudf
 9nlK0t56GPWGuytT4hboumZLq0y3JmheTBAqyefW140B0xis0fY2ean+ymFKZfOWE8US
 NJgBAu6gt8EK/wyzzHjfWQ6xuwTRAoIliG22YUYF+cMirAryiHLC31gHRozC69pC6pH9
 Qx3B/2Nx6d/1G4jyPXFhfqk8ip+Bob9FaBqDstsbp3AUJFMQRbklXc+ZdkzrdfimmIQr
 9bVvi5SwFqiG9Q71zGaUkq4DFncB2N6HV1PJb9OLCFr/a+gqvUv2i/vqXu+CcHeNAvK+
 9Mxg==
X-Gm-Message-State: AC+VfDxUfPYlj+VYBMWL1JGOM6h3RRrTFPPtx26+vuZJWropzyazuz0C
 635kDbkNbHbgENEvGymLYlitzg==
X-Google-Smtp-Source: ACHHUZ6NlWOJz275z3obUYiEtP8c/TLdPOFJP2OeK1hzxpP/JQGDLY0gdxUlrMuCCjjRzG9IMUV0nA==
X-Received: by 2002:a05:6402:b03:b0:50b:c4a1:c6c0 with SMTP id
 bm3-20020a0564020b0300b0050bc4a1c6c0mr29560885edb.16.1684225622170; 
 Tue, 16 May 2023 01:27:02 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 i12-20020aa7c70c000000b0050bd7267a5csm7900857edq.58.2023.05.16.01.27.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 01:27:01 -0700 (PDT)
Message-ID: <824ad48b-c419-fd21-1889-23cd94d4b75d@blackwall.org>
Date: Tue, 16 May 2023 11:27:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <20230515085046.4457-2-jnixdorf-oss@avm.de>
 <dc8dfe0b-cf22-c4f9-8532-87643a6a9ceb@blackwall.org>
 <ZGIXB2DYA4sal9eW@u-jnixdorf.ads.avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZGIXB2DYA4sal9eW@u-jnixdorf.ads.avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 2/2] bridge: Add a sysctl to limit new
 brides FDB entries
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

On 15/05/2023 14:27, Johannes Nixdorf wrote:
> On Mon, May 15, 2023 at 12:35:47PM +0300, Nikolay Aleksandrov wrote:
>> On 15/05/2023 11:50, Johannes Nixdorf wrote:
>>> This is a convenience setting, which allows the administrator to limit
>>> the default limit of FDB entries for all created bridges, instead of
>>> having to set it for each created bridge using the netlink property.
>>>
>>> The setting is network namespace local, and defaults to 0, which means
>>> unlimited, for backwards compatibility reasons.
>>>
>>> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
>>> ---
>>>  net/bridge/br.c         | 83 +++++++++++++++++++++++++++++++++++++++++
>>>  net/bridge/br_device.c  |  4 +-
>>>  net/bridge/br_private.h |  9 +++++
>>>  3 files changed, 95 insertions(+), 1 deletion(-)
>>>
>>
>> The bridge doesn't need private sysctls. Netlink is enough.
>> Nacked-by: Nikolay Aleksandrov <razor@blackwall.org>
> 
> Fair enough.
> 
> I originally included the setting so there is a global setting an
> administrator could toggle instead of having to hunt down each process
> that might create a bridge, and teaching them to create them with an
> FDB limit.
> 
> Does any of the following alternatives sound acceptable to you?:
>  - Having the default limit (instead of the proposed default to unlimited)
>    configurable in Kbuild. This would solve our problem, as we build
>    our kernels ourselves, but I don't know whether putting a limit there
>    would be acceptable for e.g. distributions.

I don't mind, but it would be useless for everyone else. Kernels would be built
without that limit set.

>  - Hardcoding a default limit != 0. I was afraid I'd break someones
>    use-case with far too large bridged networks if I don't default to
>    unlimited, but if you maintainers have a number in mind with which
>    you don't see a problem, I'd be fine with it as well.
> 
> (Sorry for sending this mail twice, I accidentally dropped the list and
> CC on the fist try)


Right, that has been discussed before. So far there hasn't been any good
option, so I'd say for the time being (or unless you have some better idea)
we should stick with the netlink max attribute and distributions/admins
would have to set it on bridge creation. We could add a warning when creating
a bridge without fdb limit to remind people that it's advisable to set it.
That warning can be removed when we come up with a proper solution.
