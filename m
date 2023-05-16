Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59575704800
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 10:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C18560C28;
	Tue, 16 May 2023 08:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C18560C28
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=x+AYYlvm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVdWKZGnr-A5; Tue, 16 May 2023 08:38:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0EA0560ED1;
	Tue, 16 May 2023 08:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EA0560ED1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1C62C008A;
	Tue, 16 May 2023 08:38:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 63C2DC002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 303A660C28
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 303A660C28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7l6HDAqtLvU for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 08:38:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39FB960D71
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39FB960D71
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:38:14 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-965d2749e2eso2098302166b.1
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 01:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684226293; x=1686818293;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qoPnstjPrS2tzxEaPLFxVKxPj2WD+daPAFjbj9WTzeA=;
 b=x+AYYlvmcvoPE6XEGFZ+zXR1dy97/Gjk9/JFLJgq598TT4S2KgCmm7js1PYCuIu2aa
 BgK6e/PbU25N55S47oUFbt8DQ4RJSpuOYyYOf1QTi3BuRFdSSSrcJnkgzDDzV3lX7Uo4
 ZuCRK7bEeBkio/9mz3kpnivYgynTlowWBwmnd6Z0jR2frjS+euEznXRhH7wr1/TJ6QLq
 VDdyZKJttmdjpHvDAzqdFAroThW0zhwWEcLH4NRdbcEGY1FbzjnHSzc8Rm9Lp/A+flMK
 2enzAg2BLSXp1asCYWGYxX6zQ2eupJXgV0c/Xooa8maBNLaUOO0FajLMXLjLcnXgTGpl
 o7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684226293; x=1686818293;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qoPnstjPrS2tzxEaPLFxVKxPj2WD+daPAFjbj9WTzeA=;
 b=gXB1kOOl0PKS47KLtzYDw6sJ7yF3M8BxkR9de3k+2VOjnYm/6o7Yat8VaOl4Z7/m9M
 JSh5HHBDmtlWVxEou4t0KUzbGoAsJsi7l/an/mfNSh7o3DK/suBH4vBHqbExCmHgednq
 6HbGvOW+p/fHLpZ4n24ppqPCSFddgs7fvDflwOTQ0nhqQy5EFf9B6nv/N2qcL3VGZ7cH
 GzQexSOIN+spOm4CXad0Wbn6iVORlY2tk7CT/fcXMuZTTqLhjcZYw3eaZa/OiQsHq8QB
 pV4bmIosI49l60guQoVJdwHRcj7MjGnQewu7rHCnq50h7wU8L1pXuJaNg6eUuwZB3f2n
 RfAg==
X-Gm-Message-State: AC+VfDy/vCfsm4t6eJofaN6u4QLsJVWbwZiNElfqgjdn3HjWRpMdzzYV
 sHPNfVhwrC3AbyfP+lH6F5rwww==
X-Google-Smtp-Source: ACHHUZ6Q+QdDd2QgHb7UBFSvM9CUZLslb7mOVHq9gxwNwTBL5U4Ajwc98dA6zarZLWptkeY381IbrA==
X-Received: by 2002:a17:907:168d:b0:969:f677:11b9 with SMTP id
 hc13-20020a170907168d00b00969f67711b9mr27436435ejc.54.1684226293002; 
 Tue, 16 May 2023 01:38:13 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 tk13-20020a170907c28d00b0094f185d82dcsm10506975ejc.21.2023.05.16.01.38.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 01:38:12 -0700 (PDT)
Message-ID: <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
Date: Tue, 16 May 2023 11:38:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230515085046.4457-1-jnixdorf-oss@avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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

On 15/05/2023 11:50, Johannes Nixdorf wrote:
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
> Mitigate this by adding a bridge netlink setting IFLA_BR_FDB_MAX_ENTRIES,
> which, if nonzero, limits the amount of entries to a user specified
> maximum.
> 
> For backwards compatibility the default setting of 0 disables the limit.
> 
> All changes to fdb_n_entries are under br->hash_lock, which means we do
> not need additional locking. The call paths are (✓ denotes that
> br->hash_lock is taken around the next call):
> 
>  - fdb_delete <-+- fdb_delete_local <-+- br_fdb_changeaddr ✓
>                 |                     +- br_fdb_change_mac_address ✓
>                 |                     +- br_fdb_delete_by_port ✓
>                 +- br_fdb_find_delete_local ✓
>                 +- fdb_add_local <-+- br_fdb_changeaddr ✓
>                 |                  +- br_fdb_change_mac_address ✓
>                 |                  +- br_fdb_add_local ✓
>                 +- br_fdb_cleanup ✓
>                 +- br_fdb_flush ✓
>                 +- br_fdb_delete_by_port ✓
>                 +- fdb_delete_by_addr_and_port <--- __br_fdb_delete ✓
>                 +- br_fdb_external_learn_del ✓
>  - fdb_create <-+- fdb_add_local <-+- br_fdb_changeaddr ✓
>                 |                  +- br_fdb_change_mac_address ✓
>                 |                  +- br_fdb_add_local ✓
>                 +- br_fdb_update ✓
>                 +- fdb_add_entry <--- __br_fdb_add ✓
>                 +- br_fdb_external_learn_add ✓
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>  include/uapi/linux/if_link.h | 1 +
>  net/bridge/br_device.c       | 2 ++
>  net/bridge/br_fdb.c          | 6 ++++++
>  net/bridge/br_netlink.c      | 9 ++++++++-
>  net/bridge/br_private.h      | 2 ++
>  5 files changed, 19 insertions(+), 1 deletion(-)
> 

I completely missed the fact that you don't deal with the situation where you already have fdbs created
and a limit is set later, then it would be useless because it will start counting from 0 even though
there are already entries. Also another issue that came to mind is that you don't deal with fdb_create()
for "special" entries, i.e. when adding a port. Currently it will print an error, but you should revisit
all callers and see where it might be a problem.



