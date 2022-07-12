Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453405719F8
	for <lists.bridge@lfdr.de>; Tue, 12 Jul 2022 14:28:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16072409ED;
	Tue, 12 Jul 2022 12:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16072409ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLE-My0Ngbuw; Tue, 12 Jul 2022 12:28:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 846E8409EC;
	Tue, 12 Jul 2022 12:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 846E8409EC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D970C0077;
	Tue, 12 Jul 2022 12:28:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 095F0C002D
 for <bridge@lists.linux-foundation.org>; Tue, 12 Jul 2022 12:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8C9D419E6
 for <bridge@lists.linux-foundation.org>; Tue, 12 Jul 2022 12:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8C9D419E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mx-TOCRoJztr for <bridge@lists.linux-foundation.org>;
 Tue, 12 Jul 2022 12:28:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989A440632
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 989A440632
 for <bridge@lists.linux-foundation.org>; Tue, 12 Jul 2022 12:28:39 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 17772188604C;
 Tue, 12 Jul 2022 12:28:36 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id DF31225032B7;
 Tue, 12 Jul 2022 12:28:35 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id D267BA1E00AD; Tue, 12 Jul 2022 12:28:35 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Tue, 12 Jul 2022 14:28:35 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Ysp/1k6uwcmJIon0@shredder>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-7-netdev@kapio-technology.com>
 <Ysp/1k6uwcmJIon0@shredder>
User-Agent: Gigahost Webmail
Message-ID: <d70b897745d12f0c9cf298a114764de0@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 6/6] selftests: forwarding: add
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

On 2022-07-10 09:29, Ido Schimmel wrote:
> On Thu, Jul 07, 2022 at 05:29:30PM +0200, Hans Schultz wrote:
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
> 
> I was under the impression that we agreed that learning does not need 
> to
> be enabled in the bridge driver
> 

Sorry, you are right. I forgot to change it here.

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
>> +	check_err $? "MAB: Ping did not work with fdb entry without locked 
>> flag"
>> +
>> +	bridge fdb del `mac_get $h1` dev $swp1 master
>> +	bridge link set dev $swp1 learning off
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
