Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 282D15E6D12
	for <lists.bridge@lfdr.de>; Thu, 22 Sep 2022 22:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38DFE8266C;
	Thu, 22 Sep 2022 20:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38DFE8266C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mm0YIU36914j; Thu, 22 Sep 2022 20:35:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 70999826C8;
	Thu, 22 Sep 2022 20:35:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70999826C8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10F5BC0077;
	Thu, 22 Sep 2022 20:35:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E28C0C0032
 for <bridge@lists.linux-foundation.org>; Thu, 22 Sep 2022 20:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C32D5826B0
 for <bridge@lists.linux-foundation.org>; Thu, 22 Sep 2022 20:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C32D5826B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9qTybo8J8Qp for <bridge@lists.linux-foundation.org>;
 Thu, 22 Sep 2022 20:35:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 865238266C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 865238266C
 for <bridge@lists.linux-foundation.org>; Thu, 22 Sep 2022 20:35:08 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 26825188497F;
 Thu, 22 Sep 2022 20:35:03 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 18FB6250007B;
 Thu, 22 Sep 2022 20:35:03 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id ECB6C9EC0002; Thu, 22 Sep 2022 20:35:02 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 22 Sep 2022 22:35:02 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Yyq6BnUfctLeerqE@shredder>
References: <YxNo/0+/Sbg9svid@shredder>
 <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
 <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
 <20220908112044.czjh3xkzb4r27ohq@skbuf>
 <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
 <20220911001346.qno33l47i6nvgiwy@skbuf>
 <15ee472a68beca4a151118179da5e663@kapio-technology.com>
 <Yx73FOpN5uhPQhFl@shredder>
 <086704ce7f323cc1b3cca78670b42095@kapio-technology.com>
 <Yyq6BnUfctLeerqE@shredder>
User-Agent: Gigahost Webmail
Message-ID: <d559df70d75b3f5db2815f3038be3e3a@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 6/6] selftests: forwarding: add
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

On 2022-09-21 09:15, Ido Schimmel wrote:
> On Tue, Sep 20, 2022 at 11:29:12PM +0200, netdev@kapio-technology.com 
> wrote:
>> I have made a blackhole selftest, which looks like this:
>> 
>> test_blackhole_fdb()
>> {
>>         RET=0
>> 
>>         check_blackhole_fdb_support || return 0
>> 
>>         tcpdump_start $h2
>>         $MZ $h1 -q -t udp -a $h1 -b $h2
> 
> I don't think you can give an interface name to '-a' and '-b'?
> 
>>         tcpdump_stop
>>         tcpdump_show | grep -q udp
>>         check_err $? "test_blackhole_fdb: No packet seen on initial"
>>         tcpdump_cleanup
>> 
>>         bridge fdb add `mac_get $h2` dev br0 blackhole
>>         bridge fdb show dev br0 | grep -q "blackhole"
> 
> Make this grep more specific so that we are sure it is the entry user
> space installed. Something like this:
> 
> bridge fdb get `mac_get $h2` br br0 | grep -q blackhole
> 
>>         check_err $? "test_blackhole_fdb: No blackhole FDB entry 
>> found"
>> 
>>         tcpdump_start $h2
>>         $MZ $h1 -q -t udp -a $h1 -b $h2
>>         tcpdump_stop
>>         tcpdump_show | grep -q udp
>>         check_fail $? "test_blackhole_fdb: packet seen with blackhole 
>> fdb
>> entry"
>>         tcpdump_cleanup
> 
> The tcpdump filter is not specific enough. It can catch other UDP
> packets (e.g., multicast) being received by $h2. Anyway, to be sure the
> feature works as expected we need to make sure that the packets are not
> even egressing $swp2. Checking that they are not received by $h2 is not
> enough. See this (untested) suggestion [1] that uses a tc filter on the
> egress of $swp2.
> 
>> 
>>         bridge fdb del `mac_get $h2` dev br0 blackhole
>>         bridge fdb show dev br0 | grep -q "blackhole"
>>         check_fail $? "test_blackhole_fdb: Blackhole FDB entry not 
>> deleted"
>> 
>>         tcpdump_start $h2
>>         $MZ $h1 -q -t udp -a $h1 -b $h2
>>         tcpdump_stop
>>         tcpdump_show | grep -q udp
>>         check_err $? "test_blackhole_fdb: No packet seen after 
>> removing
>> blackhole FDB entry"
>>         tcpdump_cleanup
>> 
>>         log_test "Blackhole FDB entry test"
>> }
>> 
>> the setup is simple and is the same as in bridge_sticky_fdb.sh.
>> 
>> Does the test look sound or is there obvious mistakes?
> 
> [1]
> blackhole_fdb()
> {
> 	RET=0
> 
> 	tc filter add dev $swp2 egress protocol ip pref 1 handle 1 flower \
> 		dst_ip 192.0.2.2 ip_proto udp dst_port 12345 action pass
> 
> 	$MZ $h1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
> 		-a own -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
> 
> 	tc_check_packets "dev $swp2 egress" 1 1
> 	check_err $? "Packet not seen on egress before adding blackhole entry"
> 
> 	bridge fdb add `mac_get $h2` dev br0 blackhole
> 	bridge fdb get `mac_get $h2` br br0 | grep -q blackhole
> 	check_err $? "Blackhole entry not found"
> 
> 	$MZ $h1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
> 		-a own -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
> 
> 	tc_check_packets "dev $swp2 egress" 1 1
> 	check_err $? "Packet seen on egress after adding blackhole entry"
> 
> 	# Check blackhole entries can be replaced.
> 	bridge fdb replace `mac_get $h2` dev $swp2 master static
> 	bridge fdb get `mac_get $h2` br br0 | grep -q blackhole
> 	check_fail $? "Blackhole entry found after replacement"
> 
> 	$MZ $h1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
> 		-a own -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
> 
> 	tc_check_packets "dev $swp2 egress" 1 2
> 	check_err $? "Packet not seen on egress after replacing blackhole 
> entry"
> 
> 	bridge fdb del `mac_get $h2` dev $swp2 master static
> 	tc filter del dev $swp2 egress protocol ip pref 1 handle 1 flower
> 
> 	log_test "Blackhole FDB entry"
> }

Thx, looks good.
I have tried to run the test as far as I can manually, but I don't seem 
to have 'busywait' in the system, which tc_check_packets() depends on, 
and I couldn't find any 'busywait' in Buildroot.
