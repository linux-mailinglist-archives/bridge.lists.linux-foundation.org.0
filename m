Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F7968EFCD
	for <lists.bridge@lfdr.de>; Wed,  8 Feb 2023 14:31:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E465610F2;
	Wed,  8 Feb 2023 13:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E465610F2
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=gH0VzWqw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pPCb1dlq4tss; Wed,  8 Feb 2023 13:31:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7D272610EC;
	Wed,  8 Feb 2023 13:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D272610EC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D122C007C;
	Wed,  8 Feb 2023 13:31:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 555BAC007C
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 13:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70ABD40BE3
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 13:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70ABD40BE3
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=gH0VzWqw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jy-ABc5cuVwg for <bridge@lists.linux-foundation.org>;
 Wed,  8 Feb 2023 13:31:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5139340BE2
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5139340BE2
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 13:31:42 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id qw12so51248460ejc.2
 for <bridge@lists.linux-foundation.org>; Wed, 08 Feb 2023 05:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+Rx7S8/paqMgxnm4kF6q5iAl3Vj6zs20TVGfjzUx8/E=;
 b=gH0VzWqwU2ciD0VxkelSv1zh10sO+YmyLMlpkxr8a/YSCygNEhMzJRSllXhGDQ83Fx
 cp+TU1zG3vAHs+3I7Y7WTsAHgVMnKjp5wcBCUEn6AqJFervPA9mBwav69DYLp+bFHyG+
 d+7KlJ4HHsEjgNGh6pLgzqbioGwjwy5ZUweM8dcPrWLBdATNK4hTrZ6qAdH/RVr+Q0tL
 cGt+X18LJFOetDJEvLQFmode+hTeDNILZrIuidQN4tSiHKUjhWshxZAQjJd43JZV2uXx
 Rui2WGB5GVFCy9shinbo7jweXA9wcQ8AwJ+hzDicpi8mpWCCnuNVxZQ+NduUi9Z39+6h
 C6JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+Rx7S8/paqMgxnm4kF6q5iAl3Vj6zs20TVGfjzUx8/E=;
 b=mCyb7aOf4Y7NrNzxeazg13tzRIKw7lMFFamvYO3vH+GEFd0XN67mif+jnj7iY8cPl8
 PnhdNFO/8bo4E8YZ0J6d7+D2CnmgDEa8xPAjBXdADOPiPOscZaOul3VoDNd/1dyVXALX
 rjUg1+7mgLDvd6LkUOge/2Z/uAHzSxFCrnh4qHujQjXeyJZIq8w+q2byN5r1GRLxRZpy
 1ZZiDK3SDtAP5UjYM9yjD+YARw3BlrowhQepZP4XQp4epui9LEgtc6BDqsL81GsEyeL2
 5D4hQ0EsBVk/bLWSUcY8JOrpcFI0PVkptAFqueZfx42fcwXGLeNb72BQuiq5MdQ7vioz
 K1tA==
X-Gm-Message-State: AO0yUKV+mxBF6OrjmPZ4nuySPK08rZw+5cyHiZsLhyg1AI51Y72E5Qmf
 m+5fC9PXLYKejty5TraEnPoDhQ==
X-Google-Smtp-Source: AK7set9uaUW7hPWy2l0WGLbFt9xIMpLfBchg6B9ZENnzRjHiMr9GrUljkz442D2cn4jLVoGSwkRBmw==
X-Received: by 2002:a17:907:c23:b0:8aa:b526:36b3 with SMTP id
 ga35-20020a1709070c2300b008aab52636b3mr7584661ejc.14.1675863100407; 
 Wed, 08 Feb 2023 05:31:40 -0800 (PST)
Received: from [192.168.3.225] ([81.6.34.132])
 by smtp.gmail.com with ESMTPSA id
 q19-20020a17090622d300b0088a2397cb2csm8382641eja.143.2023.02.08.05.31.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Feb 2023 05:31:40 -0800 (PST)
Message-ID: <4e9705d5-c6f7-0b08-6e45-b19bae1d248d@blackwall.org>
Date: Wed, 8 Feb 2023 14:31:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Simon Horman <simon.horman@corigine.com>,
 Yang Li <yang.lee@linux.alibaba.com>
References: <20230208005626.56847-1-yang.lee@linux.alibaba.com>
 <Y+OdyiQpz7lIBfh3@corigine.com>
 <1a71f6f8-09f6-9208-7368-6b2e3bb4af87@blackwall.org>
In-Reply-To: <1a71f6f8-09f6-9208-7368-6b2e3bb4af87@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH -next] net: bridge: clean up one inconsistent
	indenting
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

On 2/8/23 15:30, Nikolay Aleksandrov wrote:
> On 2/8/23 15:04, Simon Horman wrote:
>> On Wed, Feb 08, 2023 at 08:56:26AM +0800, Yang Li wrote:
>>> ./net/bridge/br_netlink_tunnel.c:317:4-27: code aligned with 
>>> following code on line 318
>>>
>>> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
>>> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3977
>>> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
>>
>> As you may need to respin this:
>>
>> Assuming this is targeting net-next, which seems likely to me,
>> the subject should denote that. Something like this:
>>
>> [PATCH net-next] net: bridge: clean up one inconsistent indenting
>>
>>> ---
>>>   net/bridge/br_netlink_tunnel.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/net/bridge/br_netlink_tunnel.c 
>>> b/net/bridge/br_netlink_tunnel.c
>>> index 17abf092f7ca..eff949bfdd83 100644
>>> --- a/net/bridge/br_netlink_tunnel.c
>>> +++ b/net/bridge/br_netlink_tunnel.c
>>> @@ -315,7 +315,7 @@ int br_process_vlan_tunnel_info(const struct 
>>> net_bridge *br,
>>>               if (curr_change)
>>>                   *changed = curr_change;
>>> -             __vlan_tunnel_handle_range(p, &v_start, &v_end, v,
>>> +            __vlan_tunnel_handle_range(p, &v_start, &v_end, v,
>>>                               curr_change);
>>
>> I think you also need to adjust the line immediately above.
> 
> You meant below, right? :) i.e. "curr_change)", that seems to get
> misaligned after the change and needs to be adjusted as well.
> 

Oh I need coffee, I somehow was thinking about the line being changed
instead of literally the line above your statement. :))

Anyway, ack.

>>
>>>           }
>>>           if (v_start && v_end)
>>> -- 
>>> 2.20.1.7.g153144c
>>>
> 

