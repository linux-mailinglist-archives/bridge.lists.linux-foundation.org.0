Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B04DDD37
	for <lists.bridge@lfdr.de>; Fri, 18 Mar 2022 16:45:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 266A560A7B;
	Fri, 18 Mar 2022 15:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6nRSVf5Oj0-n; Fri, 18 Mar 2022 15:45:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B901B60A4F;
	Fri, 18 Mar 2022 15:45:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 83924C0082;
	Fri, 18 Mar 2022 15:45:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 700E3C0012
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 15:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B91140121
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 15:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 25ENl522zSHu for <bridge@lists.linux-foundation.org>;
 Fri, 18 Mar 2022 15:45:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3135D400C4
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 15:45:29 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id m3so2735296lfj.11
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 08:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=w9yc5QCXnoNRlnxAIpP6dQxCkCMVrsMOMCyEys6TQis=;
 b=T2qHWC580J0XVLFbwGxYKtYvqDl7Fg+++QEHEAJ08FnAgvnWRvbH9tCpVG3QOVmLk/
 yFwG/XGkPnhcxMaWLjTEA7ICqKHju9w1x216TK4uT0H2Zpc1+UAB6COEozAQXivxEcxW
 Qx26zGBeD0BWVZEBFDjQLntzuP0Tjjapln8HbiI6GQU9dAzYuQFfJu8dpZsUpXrke9KA
 lvX9Rt4KwKGT7dklcPUwVMztOoljO/CQUhdsTPgevwTyVYYk1K9843AujWQBFlfTo7jq
 g+X3Kg8zWYBkd8uAub/wUAy6WTeQk7NNUC6FsdmCXyCKLLSJVgVT93v3RMe20R1Mcsla
 IEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=w9yc5QCXnoNRlnxAIpP6dQxCkCMVrsMOMCyEys6TQis=;
 b=FkNOeTg3dZjHbzm1uSRklek60KAAJC85OUS4yvlbif+9KPTzWH90tZGGjwQsf5TaMR
 /EE2apcnC3GOX9r6ZKslqHDOyPyXgzI+Y/tqraSAx5InwSQUzFcYe3EWnd9LYJRWnD51
 WxZjWteddvvacUsNO2oTYQxk+KoFesfZnboP1QBITK47QfSK026jndU1MEdNFQ+iBk/x
 L7f6AN31KqNsVdW/v9Of5TblsFoHszXeJvbG1edz5m0dcyoebaQwqRJm8NzdNZZFCpqW
 nPkn38ghRwDVkS9PSLedyA7zT+iBgM2xvb8mpJ9O2YZ3yNndimuzg0sO3QFXxlOYDsVB
 TC8Q==
X-Gm-Message-State: AOAM533oYP+vD4LSXdiH89M6S243mnV0mzprkiTri7HjvEVQJ5k+73Qv
 ozpuRQbYg+LSm7/FbnyU3rA=
X-Google-Smtp-Source: ABdhPJxF2o8DhY6wJ2+kUMh9mDmviFUNVcIg4BQrGQ/w5QcqsP4a5IOaIfUpvUKf1rVSyZoGXmXrFA==
X-Received: by 2002:a05:6512:b03:b0:448:1e7c:8859 with SMTP id
 w3-20020a0565120b0300b004481e7c8859mr6505378lfu.110.1647618327540; 
 Fri, 18 Mar 2022 08:45:27 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 u2-20020a2e9f02000000b00244c5e20ee9sm1028484ljk.23.2022.03.18.08.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 08:45:27 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YjNMS6aFG+93ejj5@shredder>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-5-schultz.hans+netdev@gmail.com>
 <YjNMS6aFG+93ejj5@shredder>
Date: Fri, 18 Mar 2022 16:45:24 +0100
Message-ID: <86mthnw9gr.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 4/4] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On tor, mar 17, 2022 at 16:57, Ido Schimmel <idosch@idosch.org> wrote:
> On Thu, Mar 17, 2022 at 10:39:02AM +0100, Hans Schultz wrote:
>> Verify that the MAC-Auth mechanism works by adding a FDB entry with the
>> locked flag set. denying access until the FDB entry is replaced with a
>> FDB entry without the locked flag set.
>> 
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>>  .../net/forwarding/bridge_locked_port.sh      | 29 ++++++++++++++++++-
>>  1 file changed, 28 insertions(+), 1 deletion(-)
>> 
>> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> index 6e98efa6d371..2f9519e814b6 100755
>> --- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> @@ -1,7 +1,7 @@
>>  #!/bin/bash
>>  # SPDX-License-Identifier: GPL-2.0
>>  
>> -ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
>> +ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan locked_port_mab"
>>  NUM_NETIFS=4
>>  CHECK_TC="no"
>>  source lib.sh
>> @@ -170,6 +170,33 @@ locked_port_ipv6()
>>  	log_test "Locked port ipv6"
>>  }
>>  
>> +locked_port_mab()
>> +{
>> +	RET=0
>> +	check_locked_port_support || return 0
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_err $? "MAB: Ping did not work before locking port"
>> +
>> +	bridge link set dev $swp1 locked on
>> +	bridge link set dev $swp1 learning on
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_fail $? "MAB: Ping worked on port just locked"
>> +
>> +	if ! bridge fdb show | grep `mac_get $h1` | grep -q "locked"; then
>> +		RET=1
>> +		retmsg="MAB: No locked fdb entry after ping on locked port"
>> +	fi
>
> bridge fdb show | grep `mac_get $h1 | grep -q "locked"
> check_err $? "MAB: No locked fdb entry after ping on locked port"
>
>> +
>> +	bridge fdb del `mac_get $h1` dev $swp1 master
>> +	bridge fdb add `mac_get $h1` dev $swp1 master static
>
> bridge fdb replace `mac_get $h1` dev $swp1 master static
>
Unfortunately for some reason 'replace' does not work in several of the
tests, while when replaced with 'del+add', they work.

>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
>> +
>> +	log_test "Locked port MAB"
>
> Clean up after the test to revert to initial state:
>
> bridge fdb del `mac_get $h1` dev $swp1 master
> bridge link set dev $swp1 locked off
>
>
>> +}
>>  trap cleanup EXIT
>>  
>>  setup_prepare
>> -- 
>> 2.30.2
>> 
