Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6833A4C0DEC
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 08:59:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C7C18242D;
	Wed, 23 Feb 2022 07:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a7gvy2jPqOyL; Wed, 23 Feb 2022 07:59:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7878781426;
	Wed, 23 Feb 2022 07:59:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 241D7C0073;
	Wed, 23 Feb 2022 07:59:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B3F2C0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 07:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19C99813B5
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 07:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TFLPYDq3N6yV for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 07:59:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F9E68139F
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 07:59:42 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id o6so23409166ljp.3
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 23:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Ubrw+ZDagpKqchc9nEqG4/IhR0XOEwvwWfaGS8w0bPI=;
 b=NsUjsj9C9+wZTdQqvrfMMvSP9T3mo7HyPzUPj7Pc14q7FQi0XIR49ZZAkRFHroK/c8
 SkbI3OuUO95RJMaffYEbNdAEZQ1c01WHvidP+7cAomt8PYshgHzZTRnrjxHSBHlff9wu
 LLl0z1uV42OD0u9cRA2u5usRnnZ6cx/JYSFRjqIxIsW8RddRJchhf6bLg4dKyI8bofFI
 CNoEpz+XllQ1Od5nbo82jD0Q38WF3aWCjpEpjly2tw3jcMQkATztiZbn3lx5yRGvt6L2
 i8J+RQpxcU/8YjfYRvWcMjmmiYWr+ePYD7Xu1zwi9JZk7F8+yiLaCOVDA5kNujb4I9p+
 THnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Ubrw+ZDagpKqchc9nEqG4/IhR0XOEwvwWfaGS8w0bPI=;
 b=HGgcz/odYzHpq5wUTKn1T3JJ8vvy+lGzl48MDS4JtdJ03/ehH4Fy15sX04Fel9EJXf
 ZRNk5gxuR/WgjdtFC0GTsQPdqWt+tefXAbFWYedB4H1FjRRnPD6CCAOB79vFGI7+JDCi
 NsgViqLCjQbRGAkdAhpL5XF/nRhssHDeQFkBfF7jrgUDoZblK+FONGwj2sJnifecNMgT
 kJk0i8GJ/1xzaNUeWjrlIkxd9NBKVtWkq4yyXOYd+valsGcTIWt7UoSj7tw0ZfQmnVey
 MP023dL1tMYg3T9MnSWuHCTxGzI2MifEjguZKj6lscKs1Ir8ydyGLi7+HNeUb+iqibhz
 3EAw==
X-Gm-Message-State: AOAM532o6MEtEAqOZSioat2MGoO6T3Fk8NorBzYeoKXnrIoMbyDhGDFX
 bEGVwy+UuU3bBPDe9UKETyA=
X-Google-Smtp-Source: ABdhPJyXRP4VOqNt80QMu1PrIa8l/0eknyoXn+CWjrbe3izSD4hCTEurZbgz2rhVvmwQvgYfP8Igaw==
X-Received: by 2002:a2e:8955:0:b0:246:133b:673c with SMTP id
 b21-20020a2e8955000000b00246133b673cmr20040110ljk.380.1645603180752; 
 Tue, 22 Feb 2022 23:59:40 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k21sm2015561ljc.129.2022.02.22.23.59.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 23:59:40 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YhUWvhkhRVY+/Osd@shredder>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
 <20220222132818.1180786-6-schultz.hans+netdev@gmail.com>
 <YhUWvhkhRVY+/Osd@shredder>
Date: Wed, 23 Feb 2022 08:59:37 +0100
Message-ID: <861qzuxbbq.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Stephen Suryaputra <ssuryaextr@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 5/5] selftests: forwarding: tests
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

On tis, feb 22, 2022 at 19:00, Ido Schimmel <idosch@idosch.org> wrote:
> On Tue, Feb 22, 2022 at 02:28:18PM +0100, Hans Schultz wrote:
>> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> new file mode 100755
>> index 000000000000..a8800e531d07
>> --- /dev/null
>> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> @@ -0,0 +1,180 @@
>> +#!/bin/bash
>> +# SPDX-License-Identifier: GPL-2.0
>> +
>> +ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
>> +NUM_NETIFS=4
>> +CHECK_TC="no"
>> +source lib.sh
>> +
>> +h1_create()
>> +{
>> +	simple_if_init $h1 192.0.2.1/24 2001:db8:1::1/64
>> +	vrf_create "vrf-vlan-h1"
>> +	ip link set dev vrf-vlan-h1 up
>> +	vlan_create $h1 100 vrf-vlan-h1 198.51.100.1/24 ::ffff:c633:6401/64
>
> Hi,
>
> Why did you change it from 2001:db8:3::1/64 to ::ffff:c633:6401/64? It
> was actually OK the first time...

I used an online converter (https://iplocation.io/ipv4-to-ipv6) to
convert 198.51.100.1 into an 'equivalent' ipv6 address even though I
know they are of different spaces.

>
> Anyway, looking at locked_port_vlan() I see that you are only testing
> IPv4 so you can just drop this address:
>
> vlan_create $h1 100 vrf-vlan-h1 198.51.100.1/24
>
> Same for $h2
>
> LGTM otherwise. Feel free to add my tag to the next version
>
>
>> +}
