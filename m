Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5701D4C0E41
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 09:30:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FDCF81D4F;
	Wed, 23 Feb 2022 08:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZL_OTy0H5xbK; Wed, 23 Feb 2022 08:30:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2E91A823C6;
	Wed, 23 Feb 2022 08:30:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2F8FC0073;
	Wed, 23 Feb 2022 08:30:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 51084C000B
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 21:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2828B40114
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 21:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MT4zAXGlmZ3 for <bridge@lists.linux-foundation.org>;
 Fri, 18 Feb 2022 21:02:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04536400AF
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 21:02:51 +0000 (UTC)
Received: by mail-io1-xd31.google.com with SMTP id q8so9073921iod.2
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 13:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TIOIhGACo4yRcpICfvsrQ9RUZoszNIPIS4XTNvXi2Qw=;
 b=MZB986Q5OSMTg2q6+FUc1U94/pExFm35n39q13oWTNYdQROdXMFcoR99fsh8mRRgjF
 NPE7EENmDHROij227U77hwGmuLHZIZn+6OnB3gCcog4VeC1F3yAJrZC+lUeX3GlZGpMo
 SZPkWb9QoKj+nf3PyOEkJMnyHVAGE3Vr0NL3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TIOIhGACo4yRcpICfvsrQ9RUZoszNIPIS4XTNvXi2Qw=;
 b=ddqDlInQXgSB/fqiO0dcIUPe5skW/Lu7eZk8bxS13hPFyHKJyQ5PnG7niTbM2BV056
 A7mpiPrzvHGKMV752V7tPSiMEtmTdVPGiru9Daof8Q4yyBKUq13ytQpZlzxFYb1CMGDH
 Chdibm/8WKcPZArUFgCQlji+u/6uFyUAw51hqXlAxTFokT7cwE8hdsCJhPSiE/yBhF86
 EEOjouzQVaMDin8lqjpaBMSCVLt6u/y72GARP4xobjuAlz9xL5785JkMcyZ7ghW1k5Qz
 9dkQE+IjdFDJEVk5fDlaAVwbZ/EGwGUAa8xZmjpEwFtBv1glUX3mEO7pvpQEM9dk1Yz8
 EqXw==
X-Gm-Message-State: AOAM530AUT0cA/0Fh9OQEWNiDgeQ4Kt3PzN7SwRHF/Z8qvC5i01+Vznl
 GhHbhjmkJTRrAX+fha0C+WccjNWL
X-Google-Smtp-Source: ABdhPJyo3ZOGYVP9/XlaofaMHbR2s2snoXoa1AN7h3bGWaqLBI5qvvTPK0qLjHDTttG5v3huKWsaCw==
X-Received: by 2002:a02:a411:0:b0:314:b51c:3b74 with SMTP id
 c17-20020a02a411000000b00314b51c3b74mr2485006jal.69.1645218170847; 
 Fri, 18 Feb 2022 13:02:50 -0800 (PST)
Received: from [192.168.1.128] ([71.205.29.0])
 by smtp.gmail.com with ESMTPSA id l1sm4536557iln.29.2022.02.18.13.02.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Feb 2022 13:02:50 -0800 (PST)
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <0afb9bb6-e8fd-71ce-7626-1d8bf90dd1e4@linuxfoundation.org>
Date: Fri, 18 Feb 2022 14:02:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 23 Feb 2022 08:30:18 +0000
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v3 5/5] selftests: forwarding: tests
 of locked port feature
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

On 2/18/22 8:51 AM, Hans Schultz wrote:
> These tests check that the basic locked port feature works, so that no 'host'
> can communicate (ping) through a locked port unless the MAC address of the
> 'host' interface is in the forwarding database of the bridge.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>   .../testing/selftests/net/forwarding/Makefile |   1 +
>   .../net/forwarding/bridge_locked_port.sh      | 174 ++++++++++++++++++
>   tools/testing/selftests/net/forwarding/lib.sh |  16 ++
>   3 files changed, 191 insertions(+)
>   create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> 
> diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
> index 72ee644d47bf..8fa97ae9af9e 100644
> --- a/tools/testing/selftests/net/forwarding/Makefile
> +++ b/tools/testing/selftests/net/forwarding/Makefile
> @@ -1,6 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0+ OR MIT
>   
>   TEST_PROGS = bridge_igmp.sh \
> +	bridge_locked_port.sh \
>   	bridge_port_isolation.sh \
>   	bridge_sticky_fdb.sh \
>   	bridge_vlan_aware.sh \

Looks good to me. Looks like TEST_PROGS # is getting close to 60.
Cool.

Reviewed-by: Shuah Khan <skhan@linuxfoundation.org>

thanks,
-- Shuah
