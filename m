Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434BA7A9469
	for <lists.bridge@lfdr.de>; Thu, 21 Sep 2023 14:51:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A7C840A48;
	Thu, 21 Sep 2023 12:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A7C840A48
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=PKtHqhoX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rGSL68rGdneB; Thu, 21 Sep 2023 12:51:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E31F440A14;
	Thu, 21 Sep 2023 12:51:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E31F440A14
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8FD84C0DD3;
	Thu, 21 Sep 2023 12:51:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94279C0032
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 12:51:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6137E409BD
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 12:51:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6137E409BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-ecwj1FR4Kg for <bridge@lists.linux-foundation.org>;
 Thu, 21 Sep 2023 12:51:49 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B99C4002B
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 12:51:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B99C4002B
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-9a9f139cd94so117762966b.2
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 05:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695300707; x=1695905507;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pywDHr26aMIdNlh92ssNp5yeq0EGO9N0Av0l9CJtRTM=;
 b=PKtHqhoXGn9nIQ9VkDzdQ9ZYuibtPM+5sBfvPjfnHGuxcNFLqg8UHQEasNJ2Udm4oA
 mOA5Byvsylgm0UIyUK8RyHfX9GZ3BwMsO0w3t7jCVP6pnbsFey0EGsdrR0nQd4jumJ6c
 g2iBMc7eP+UupKkd2OHyVLPMPjD2P0JKlRZNbPlba3LkGK/QS3LgQTdFYrV+zA5aySaK
 c87ekdu9FT12YrB0ZHJpxmgWv9FBDyn+NHxJL/5JJiQZnvDmoBcg4snlK+qeXnXlxiTV
 O09WYDdPDjj1u1MXAgxEuJ2xT2bdAlssLKaX+bNxpY+4ZNBHFGClvRRa80Gg60+Cg/bo
 Nwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695300707; x=1695905507;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pywDHr26aMIdNlh92ssNp5yeq0EGO9N0Av0l9CJtRTM=;
 b=gKFqu4A1wfaXbjgH87dOQCOHo3AOAPyFA3vmWYflX+h3zQ3zr7X8mtLtZVER8TT5kJ
 ScV2rGhazwyV+DjCISVC8gk35cOelAs1BtEORJzIrnf0lhyvODqfR5CIOAc6enRBBLKp
 vYoyZHy1R9WLH2A+alZwTsqdGGUGbdn3fKn8QMGwAU8do3omwqGFiM9r8H56O5UVBMgF
 AckQaBmkSdJgFz+FHjMwZv9Kn+y67RxCUirIVev6WVorFwXiEGla0fsYzdGhxJ9APRH2
 xA6gO1w7mdMZo/6YOvzmiWmfFHXvCdDCIu92td0PnNBiEqyEDi2CTv5uGATcvsd2+Q7t
 9MTg==
X-Gm-Message-State: AOJu0Yz7nPVqAxsc4QKV2ZSEnUK9t2+CmkDAMbClXsvAZhrdpVpeEF49
 w23yy1pJwIjQtPsTWiIiGpD3Gg==
X-Google-Smtp-Source: AGHT+IFUh8Z6+6dwNLbxx67rrWJIEXMVs5stNBlOW661Y3biNTu5BIifVeQlIvAWerbPmTitQNmJ2g==
X-Received: by 2002:a17:906:2088:b0:9ae:3d8e:b635 with SMTP id
 8-20020a170906208800b009ae3d8eb635mr4348407ejq.24.1695300707453; 
 Thu, 21 Sep 2023 05:51:47 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 h9-20020a17090619c900b009ae54eba5casm998745ejd.102.2023.09.21.05.51.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Sep 2023 05:51:47 -0700 (PDT)
Message-ID: <6d06e629-3d6b-98dc-fecc-c5336c434d81@blackwall.org>
Date: Thu, 21 Sep 2023 15:51:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 Shuah Khan <shuah@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-4-39f0293807b8@avm.de>
 <0ae67e4d-0d51-5290-1255-1fe1b699ca14@blackwall.org>
In-Reply-To: <0ae67e4d-0d51-5290-1255-1fe1b699ca14@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 4/6] net: bridge: Add netlink knobs
 for number / max learned FDB entries
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

On 9/21/23 15:41, Nikolay Aleksandrov wrote:
> On 9/19/23 11:12, Johannes Nixdorf wrote:
>> The previous patch added accounting and a limit for the number of
>> dynamically learned FDB entries per bridge. However it did not provide
>> means to actually configure those bounds or read back the count. This
>> patch does that.
>>
>> Two new netlink attributes are added for the accounting and limit of
>> dynamically learned FDB entries:
>>   - IFLA_BR_FDB_N_LEARNED (RO) for the number of entries accounted for
>>     a single bridge.
>>   - IFLA_BR_FDB_MAX_LEARNED (RW) for the configured limit of entries for
>>     the bridge.
>>
>> The new attributes are used like this:
>>
>>   # ip link add name br up type bridge fdb_max_learned 256
>>   # ip link add name v1 up master br type veth peer v2
>>   # ip link set up dev v2
>>   # mausezahn -a rand -c 1024 v2
>>   0.01 seconds (90877 packets per second
>>   # bridge fdb | grep -v permanent | wc -l
>>   256
>>   # ip -d link show dev br
>>   13: br: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 [...]
>>       [...] fdb_n_learned 256 fdb_max_learned 256
>>
>> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
>> ---
>>   include/uapi/linux/if_link.h |  2 ++
>>   net/bridge/br_netlink.c      | 15 ++++++++++++++-
>>   2 files changed, 16 insertions(+), 1 deletion(-)
[snip]
>> @@ -1670,7 +1680,10 @@ static int br_fill_info(struct sk_buff *skb, 
>> const struct net_device *brdev)
>>           nla_put_u8(skb, IFLA_BR_TOPOLOGY_CHANGE_DETECTED,
>>                  br->topology_change_detected) ||
>>           nla_put(skb, IFLA_BR_GROUP_ADDR, ETH_ALEN, br->group_addr) ||
>> -        nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm))
>> +        nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm) ||
>> +        nla_put_u32(skb, IFLA_BR_FDB_N_LEARNED,
>> +            atomic_read(&br->fdb_n_learned)) ||
>> +        nla_put_u32(skb, IFLA_BR_FDB_MAX_LEARNED, br->fdb_max_learned))
>>           return -EMSGSIZE;
>>   #ifdef CONFIG_BRIDGE_VLAN_FILTERING
>>
> 
> Actually you're using atomic for counting, but using a u32 for the 
> limit, you should cap it because the count can overflow. Or you should
> use atomic64 for the counting.
> 

Scratch all that, I'm speaking nonsense. Need to refresh my mind. :)
EVerything's alright. Sorry for the noise.

