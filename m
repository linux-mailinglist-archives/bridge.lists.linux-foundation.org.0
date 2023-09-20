Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F237A79AD
	for <lists.bridge@lfdr.de>; Wed, 20 Sep 2023 12:49:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5EFE612F5;
	Wed, 20 Sep 2023 10:49:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5EFE612F5
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=RpL1sBO5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1T6jFXAtEyJG; Wed, 20 Sep 2023 10:49:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 22CE161650;
	Wed, 20 Sep 2023 10:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22CE161650
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3151C008C;
	Wed, 20 Sep 2023 10:49:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AA5F8C0032
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7193540162
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7193540162
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=RpL1sBO5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ip9wxbBWLYCk for <bridge@lists.linux-foundation.org>;
 Wed, 20 Sep 2023 10:49:05 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D1B140127
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D1B140127
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-99c3d3c3db9so919911566b.3
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 03:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695206943; x=1695811743;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WfoVQLFTyBMz6qdJ4HQf6iMKbD5VVKNiCRlsodiIXlQ=;
 b=RpL1sBO5GMAbIbzRp/S2PGZZOLYIUbQQN5iOEMe4aq6VDghac/i+3BW7mACQqnyPPB
 JIvlQ0+8SQJCfpqr+iACjSgxaiLDIGDIKJcbnp8WVDfwLyVRMyt8H/7Zd4x198c6g4/g
 WA5jCRqbql/lYH1yk41aMmXEwNFSkRim1OUFYnPgvNN+X+7lDYGEBxZ5lmn9RgE50cSX
 I14zsS5rc07XJwsz2KugUCYIDZL54ocHbUFf6iKLakPI6WcgXoy/KuOcYenu5e5Ok/s6
 4by8Qro/baR1ADbC5FxpavYJZXRHlBZvQPd/LXIYJ1NWYdCWTbnElmlKMS9g0GoUe3qs
 45WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695206943; x=1695811743;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WfoVQLFTyBMz6qdJ4HQf6iMKbD5VVKNiCRlsodiIXlQ=;
 b=IrpXQ7nNb/cNdIxeRGOCJ96VlB30/i4fCZ57KYl0fxhTzUo0gOdK3tH4dV2KRQ+p4S
 +N8WdmV8LXel5p8pXZCvKDxS6hJ2RH9Bqgt39JPe2AW9fn7MxOHHIYAVCHkE39T4hUHM
 w4EYLPWPsvJwAnq38sEUGGHgvHMRBBQTMY21Sbm5LvOxv45eAmBqkOBmUX8IjVWruJpX
 8e/K049uD18VkviEFe05R9l+hPK7IWYA55xnWunuEMIp5jSmEkp9zBpzIsCRLbfSadCk
 1QenquEk//raDbIOYDBhRCERNPUG/YVMalOA/4nrfUQ/Jde80HWiGri9tbG5PpYlQWKw
 WEXw==
X-Gm-Message-State: AOJu0YylBop8SRi8cTx6l2KKPWZ8Mrq4Z9HF3C9pr7MxCkxbPL7C9XTH
 xR5+Tr+2qwSNTHbBm55ky0mNYg==
X-Google-Smtp-Source: AGHT+IGslN7faGmGQ7juByj4DUF+MXgyDiNwHsBIRgLgzDq+FEqRLW5HdrbYvzX5gsw4DZWdgtvfyw==
X-Received: by 2002:a17:906:3d21:b0:9a2:1e14:86bd with SMTP id
 l1-20020a1709063d2100b009a21e1486bdmr1622513ejf.65.1695206943489; 
 Wed, 20 Sep 2023 03:49:03 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 qb18-20020a1709077e9200b009adc5802d08sm8191805ejc.190.2023.09.20.03.49.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 03:49:03 -0700 (PDT)
Message-ID: <5146e687-f5b8-86b2-e4e3-29871fe4fa5c@blackwall.org>
Date: Wed, 20 Sep 2023 13:49:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 Shuah Khan <shuah@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-3-39f0293807b8@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230919-fdb_limit-v4-3-39f0293807b8@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 3/6] net: bridge: Track and limit
 dynamically learned FDB entries
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

On 9/19/23 11:12, Johannes Nixdorf wrote:
> A malicious actor behind one bridge port may spam the kernel with packets
> with a random source MAC address, each of which will create an FDB entry,
> each of which is a dynamic allocation in the kernel.
> 
> There are roughly 2^48 different MAC addresses, further limited by the
> rhashtable they are stored in to 2^31. Each entry is of the type struct
> net_bridge_fdb_entry, which is currently 128 bytes big. This means the
> maximum amount of memory allocated for FDB entries is 2^31 * 128B =
> 256GiB, which is too much for most computers.
> 
> Mitigate this by maintaining a per bridge count of those automatically
> generated entries in fdb_n_learned, and a limit in fdb_max_learned. If
> the limit is hit new entries are not learned anymore.
> 
> For backwards compatibility the default setting of 0 disables the limit.
> 
> User-added entries by netlink or from bridge or bridge port addresses
> are never blocked and do not count towards that limit.
> 
> Introduce a new fdb entry flag BR_FDB_DYNAMIC_LEARNED to keep track of
> whether an FDB entry is included in the count. The flag is enabled for
> dynamically learned entries, and disabled for all other entries. This
> should be equivalent to BR_FDB_ADDED_BY_USER and BR_FDB_LOCAL being unset,
> but contrary to the two flags it can be toggled atomically.
> 
> Atomicity is required here, as there are multiple callers that modify the
> flags, but are not under a common lock (br_fdb_update is the exception
> for br->hash_lock, br_fdb_external_learn_add for RTNL).
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   net/bridge/br_fdb.c     | 35 +++++++++++++++++++++++++++++++++--
>   net/bridge/br_private.h |  4 ++++
>   2 files changed, 37 insertions(+), 2 deletions(-)
> 

I think this is a good counting start. :) It'd be nice to get
more eyes on this one.
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


