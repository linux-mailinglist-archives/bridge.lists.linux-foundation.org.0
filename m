Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A5C535C40
	for <lists.bridge@lfdr.de>; Fri, 27 May 2022 11:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F149B4130A;
	Fri, 27 May 2022 09:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UM8wFcpJ0eB; Fri, 27 May 2022 09:07:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 756CF4130F;
	Fri, 27 May 2022 09:07:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24991C007E;
	Fri, 27 May 2022 09:07:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 19D17C002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 09:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDBFB60B5B
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 09:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHdr2g0ae5vT for <bridge@lists.linux-foundation.org>;
 Fri, 27 May 2022 09:07:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CB8760B53
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 09:07:55 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id g12so4216762lja.3
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 02:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=QhJy8vAsWRk7rBxT10iDy/5PmoVr3qcRU2Dxdwypg2w=;
 b=BFYKpQ+8HJ031Pci0GGoXTHAK52LstG0U+QTzwaDWYuNKuqt6XQOmyKDhqE4LpIweq
 ddrtnQYze5cmPDF816qSS+xaUlDY24jUhRklTLRJHNb2kludEKx1hdd5wHhWDvb08gKa
 LevUQgwVi8mn9T5XFFOnNVtGY5dWJcNmqREqpjXCUPLR2x7Th55wEZ7xPmUQy6fu7u+S
 Z9eoeDMEgDTOLUUV3N+I0yEY9OH9OxbB4lxErfv89muikeeaq6/+/ETll0ovphhOM4S1
 p1BK0EiffcXwJjrp0h/wVqqXZkykAy0GzEo9y6Ws9EoOijhpHwJauuKDRNeNQL0lCu1j
 qYhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=QhJy8vAsWRk7rBxT10iDy/5PmoVr3qcRU2Dxdwypg2w=;
 b=Ias6416cQY9pzY1z+byh9Oo8vLVvaZSbVMhwx00SrJsrVdmfyxSz7nZmUp5nZGAdQ2
 3FZusbYgz1+xjFOtEG5hszZtzjr0oSxwXZ/Io4TLit06M0Wxzz5K/R+FVI2bBdkCTBqU
 ywUHKj+VqB4IaVIdJ4RMjLfBAjV0KRkhzJ3iXLPolEV8mKzPMAvS9mbu/wlX8yzCTIT4
 6Q1tPs3o4PwqKg+p6yCnl4wj2FoilvyjJsDl/A2lZocRXjU/vIqTR0lmtNAKB1V/A3zi
 3AYCaUXLEoQ9Y+7wex2qpj0xiJOHdNyuoutqxHZThdw1S9rvQX6VWjqPgkKdjYe+4osD
 1pmQ==
X-Gm-Message-State: AOAM5330qXyjZiYpnq1KKeo0abvnFF+PYo7ACSf2JW+RmTSgLsH3J5Dv
 AuwNKYs+R4fPMHJMht9YXGM=
X-Google-Smtp-Source: ABdhPJz3dOSfuDx2uiYcak6q55G0/yRusHjmQ01zeaTTpiKKJVdkc3yPqv08H48DT8wHs1EdQCIjOg==
X-Received: by 2002:a05:651c:160b:b0:255:3884:7940 with SMTP id
 f11-20020a05651c160b00b0025538847940mr1469961ljq.379.1653642473217; 
 Fri, 27 May 2022 02:07:53 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 b9-20020a056512070900b0047862287498sm783205lfs.208.2022.05.27.02.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 May 2022 02:07:52 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <Yo+OYN/rjdB7wfQu@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-5-schultz.hans+netdev@gmail.com>
 <Yo+OYN/rjdB7wfQu@shredder>
Date: Fri, 27 May 2022 11:07:50 +0200
Message-ID: <86pmjz2vix.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 4/4] selftests: forwarding: add
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

On tor, maj 26, 2022 at 17:27, Ido Schimmel <idosch@idosch.org> wrote:
> On Tue, May 24, 2022 at 05:21:44PM +0200, Hans Schultz wrote:
>> Verify that the MAC-Auth mechanism works by adding a FDB entry with the
>> locked flag set. denying access until the FDB entry is replaced with a
>> FDB entry without the locked flag set.
>> 
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>>  .../net/forwarding/bridge_locked_port.sh      | 42 ++++++++++++++++---
>>  1 file changed, 36 insertions(+), 6 deletions(-)
>> 
>> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> index 5b02b6b60ce7..50b9048d044a 100755
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
>> @@ -94,13 +94,13 @@ locked_port_ipv4()
>>  	ping_do $h1 192.0.2.2
>>  	check_fail $? "Ping worked after locking port, but before adding FDB entry"
>>  
>> -	bridge fdb add `mac_get $h1` dev $swp1 master static
>> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
>>  
>>  	ping_do $h1 192.0.2.2
>>  	check_err $? "Ping did not work after locking port and adding FDB entry"
>>  
>>  	bridge link set dev $swp1 locked off
>> -	bridge fdb del `mac_get $h1` dev $swp1 master static
>> +	bridge fdb del `mac_get $h1` dev $swp1 master
>>  
>>  	ping_do $h1 192.0.2.2
>>  	check_err $? "Ping did not work after unlocking port and removing FDB entry."
>> @@ -124,13 +124,13 @@ locked_port_vlan()
>>  	ping_do $h1.100 198.51.100.2
>>  	check_fail $? "Ping through vlan worked after locking port, but before adding FDB entry"
>>  
>> -	bridge fdb add `mac_get $h1` dev $swp1 vlan 100 master static
>> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
>>  
>>  	ping_do $h1.100 198.51.100.2
>>  	check_err $? "Ping through vlan did not work after locking port and adding FDB entry"
>>  
>>  	bridge link set dev $swp1 locked off
>> -	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master static
>> +	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master
>>  
>>  	ping_do $h1.100 198.51.100.2
>>  	check_err $? "Ping through vlan did not work after unlocking port and removing FDB entry"
>> @@ -153,7 +153,8 @@ locked_port_ipv6()
>>  	ping6_do $h1 2001:db8:1::2
>>  	check_fail $? "Ping6 worked after locking port, but before adding FDB entry"
>>  
>> -	bridge fdb add `mac_get $h1` dev $swp1 master static
>> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
>> +
>>  	ping6_do $h1 2001:db8:1::2
>>  	check_err $? "Ping6 did not work after locking port and adding FDB entry"
>>  
>> @@ -166,6 +167,35 @@ locked_port_ipv6()
>>  	log_test "Locked port ipv6"
>>  }
>
> Why did you change s/add/replace/? Also, from the subject and commit
> message I understand the patch is about adding a new test, not changing
> existing ones.
>

Sorry, I might have lost a bit track of the kernel selftests, as for
internal reasons there has been a pause in the work. I will remove the
changes to the previous tests, and I hope it will be fine.

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
>> +	bridge fdb del `mac_get $h1` dev $swp1 master
>
> Why the delete is needed? Aren't you getting errors on trying to delete
> a non-existing entry? In previous test cases learning is disabled and it
> seems the FDB entry is cleaned up.
>

I guess you are right.

>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_fail $? "MAB: Ping worked on locked port without FDB entry"
>> +
>> +	bridge fdb show | grep `mac_get $h1` | grep -q "locked"
>> +	check_err $? "MAB: No locked fdb entry after ping on locked port"
>> +
>> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
>> +
>> +	bridge fdb del `mac_get $h1` dev $swp1 master
>
> bridge link set dev $swp1 learning off
>

noted.

>> +	bridge link set dev $swp1 locked off
>> +
>> +	log_test "Locked port MAB"
>> +}
>>  trap cleanup EXIT
>>  
>>  setup_prepare
>> -- 
>> 2.30.2
>> 
