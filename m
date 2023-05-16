Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CDB7047D5
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 10:31:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C59461117;
	Tue, 16 May 2023 08:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C59461117
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=mIHFwFj4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulYH1_ATQo8N; Tue, 16 May 2023 08:31:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 174E560FB2;
	Tue, 16 May 2023 08:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 174E560FB2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA291C008A;
	Tue, 16 May 2023 08:30:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 47541C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20D5E83C4D
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20D5E83C4D
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=mIHFwFj4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dacNTcPnc042 for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 08:30:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50E0583C4C
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50E0583C4C
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:30:57 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-965ac4dd11bso2759418866b.2
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 01:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684225855; x=1686817855;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=M34/aMKN7ljoeujRQEvpnGsETt4x3AV3rvDr+t0qo4I=;
 b=mIHFwFj4/b/BrjiM1IfcwgiHg2Z25LopZs63qB+UIFWa1KKJvsXiITrff343N6CSOk
 T4DXsjUXNmlWSk07koYZJbuqxQDRRWeYeTTlN+8T3F4lkIwddDNQBI+9gbT/QV8SzONo
 QeYwAHE76QLQevJaR0UsAxCZ6kbtoyIPROFGT+bphLahpBfs0LZrPIYE4BxvjDB2bVNW
 lJJOKhNoVxxcEpOwfWqQvzBDCAPQGuCcVIePNflw9bUYSiimpnRER3doCWo6l4K0R5TE
 95Imleo5fUwejVkWafhskPgwwZIPQMP/lx2Jv/2m3jI6KjBW9Fy/0qtLC7LGzaCAiFR4
 f0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684225855; x=1686817855;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=M34/aMKN7ljoeujRQEvpnGsETt4x3AV3rvDr+t0qo4I=;
 b=mDoEVEBSGhMZeQWzxkwA5p2boF8creun5BEWk2dhQs0UiVtI9iGKvIGip6lNXtZjsH
 dapuVGN84/bzkEt2yStjo4Iux3Z3YmczDbh6Lp/aI0M26rDuJNzIUNcjgEzCab/wU4Af
 N+RKoAzHGaxIexamEDXyM/8hyY1lWR0i75B2wr5RzrxfTf8Qsc5Z0aO9Hl2dMkVjdR+5
 x1nlbNkNYmiCMqOBQdrZSOu3qEODqG5hbUskU6SYxqfHqsNmuY2WNhKuCLo7oCX+7aFb
 LWZLKZYMNpKeDE2O9c5zUblTRj9v9TqBD7culjhE269VhxK4uF8vgwfU1Desx7gnbYYH
 IAlw==
X-Gm-Message-State: AC+VfDwlIqZ0ibVgoFi8sDhc/Z0mON6Na/RxREzv4SXiVvFyNh7fbmQk
 3Z4akInL1RDsSh6drQMuYy9fHQ==
X-Google-Smtp-Source: ACHHUZ7iU4fIk9gvLuIZGyu/Ww4Eq91ifhd18J31LOAEojj0tM05/0+W1TCrkhqlZO7NzvJFV32aHg==
X-Received: by 2002:a17:906:db08:b0:94f:1c90:cb70 with SMTP id
 xj8-20020a170906db0800b0094f1c90cb70mr33953282ejb.66.1684225855192; 
 Tue, 16 May 2023 01:30:55 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 l9-20020a170906078900b0094ed0370f8fsm10748836ejc.147.2023.05.16.01.30.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 01:30:54 -0700 (PDT)
Message-ID: <c4602c0f-76b1-c9a4-f7f1-1f5a02a56564@blackwall.org>
Date: Tue, 16 May 2023 11:30:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <e8d98be6-d540-59c6-79eb-353715625ea5@blackwall.org>
 <ZGM64ODoVwK8J4u2@u-jnixdorf.ads.avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZGM64ODoVwK8J4u2@u-jnixdorf.ads.avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

On 16/05/2023 11:12, Johannes Nixdorf wrote:
[snip]
>>>  		return -EMSGSIZE;
>>>  
>>>  #ifdef CONFIG_BRIDGE_VLAN_FILTERING
>>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>>> index 2119729ded2b..64fb359c6e3e 100644
>>> --- a/net/bridge/br_private.h
>>> +++ b/net/bridge/br_private.h
>>> @@ -494,6 +494,8 @@ struct net_bridge {
>>>  #endif
>>>  
>>>  	struct rhashtable		fdb_hash_tbl;
>>> +	u32				fdb_n_entries;
>>> +	u32				fdb_max_entries;
>>
>> These are not critical, so I'd use 4 byte holes in net_bridge and pack it better
>> instead of making it larger.
> 
> For a v2 I now moved it into (conditional) holes now in front of
> CONFIG_BRIDGE_VLAN_FILTERING (only a hole if it is enabled) and
> CONFIG_SWITCHDEV (only a hole if it is disabled). I could not find any
> other holes, but please tell me if you had any others in mind.
> 

Just please don't add them in the first 64 bytes (first cache line) as we use that
in the hot path and keep it for variables used there. I'd say use any of the other
4 byte holes and just add both, so another 4 byte hole would be left after the second one.

>>>  	struct list_head		port_list;
>>>  #if IS_ENABLED(CONFIG_BRIDGE_NETFILTER)
>>>  	union {
>>
> 
> Thanks for your detailed feedback.

