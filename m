Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38FA3AC5C5
	for <lists.bridge@lfdr.de>; Fri, 18 Jun 2021 10:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7046E400D8;
	Fri, 18 Jun 2021 08:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pC8S648JhaMb; Fri, 18 Jun 2021 08:09:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8ED1D400B9;
	Fri, 18 Jun 2021 08:09:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 395F8C0022;
	Fri, 18 Jun 2021 08:09:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D7CF8C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Jun 2021 16:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B802C82505
 for <bridge@lists.linux-foundation.org>; Mon, 14 Jun 2021 16:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpS_UvGy__Az for <bridge@lists.linux-foundation.org>;
 Mon, 14 Jun 2021 16:42:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from smtpfb1-g21.free.fr (smtpfb1-g21.free.fr [212.27.42.9])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B28882435
 for <bridge@lists.linux-foundation.org>; Mon, 14 Jun 2021 16:42:41 +0000 (UTC)
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by smtpfb1-g21.free.fr (Postfix) with ESMTP id 0457EDF8A06
 for <bridge@lists.linux-foundation.org>; Mon, 14 Jun 2021 18:42:39 +0200 (CEST)
Received: from [IPv6:2a01:e34:ec0c:ae81:8560:2752:6655:6213] (unknown
 [IPv6:2a01:e34:ec0c:ae81:8560:2752:6655:6213])
 by smtp2-g21.free.fr (Postfix) with ESMTPS id E6A8C2003E8;
 Mon, 14 Jun 2021 18:42:26 +0200 (CEST)
From: Adel Belhouane <bugs.a.b@free.fr>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <cf3001de-4ee2-45f2-83d3-3c878b85d628@free.fr>
Date: Mon, 14 Jun 2021 18:42:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 18 Jun 2021 08:09:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org
Subject: [Bridge] [bridge]: STP: no port in blocking state despite a loop
 when in a network namespace
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

Hello,

I would like to simulate redundant bridge links in network namespaces
and protect against loops by using STP. I need the behavior to stay
consistent between the initial network namespace and a new network
namespace. This doesn't appear to be the case below.

I'm creating the simplest experiment possible: a loop between two
bridges with STP enabled, both linked directly with two pairs of
veth links.

In the first case, when run from initial network namespace, one bridge
port is put in blocking state to avoid the loop, as expected.

In the second case, when running the same experiment inside a new
network namespace, no port is put in blocking state. So every port goes
from listening -> learning -> forwarding. As I didn't disable for
example IPv6 auto-configuration, there's traffic starting to loop
between the two bridges. To be sure whatever happens there won't be too
much traffic and CPU use, I added a netem qdisc on all veth links.


Unique script loopbridgestp.sh below:

----

#!/bin/sh


cleanup () {
	for dev in lbr0 lbr1 lbr0p1 lbr0p2; do
		ip link del dev "$dev" 2>/dev/null || :
	done
}

cleanup

ip link add name lbr0 type bridge stp_state 1
ip link add name lbr1 type bridge stp_state 1
ip link add name lbr0p1 up master lbr0 type veth peer name lbr1p1
ip link set dev lbr1p1 up master lbr1
ip link add name lbr0p2 up master lbr0 type veth peer name lbr1p2
ip link set dev lbr1p2 up master lbr1

#optional, to protect host
tc qdisc add dev lbr0p1 root handle 1: netem rate 1gbit
tc qdisc add dev lbr0p2 root handle 1: netem rate 1gbit
tc qdisc add dev lbr1p1 root handle 1: netem rate 1gbit
tc qdisc add dev lbr1p2 root handle 1: netem rate 1gbit


ip link set lbr0 up
ip link set lbr1 up


----

First case (directly in initial network namespace in a VM):

    ./loopbridgestp.sh

First case results, waiting a bit for states to change, showing as
expected a port in blocking state:

    root@debian10:~# bridge link
    5: lbr1p1@lbr0p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state listening priority 32 cost 2 
    6: lbr0p1@lbr1p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state listening priority 32 cost 2 
    7: lbr1p2@lbr0p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state listening priority 32 cost 2 
    8: lbr0p2@lbr1p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state blocking priority 32 cost 2 
    root@debian10:~# bridge link
    5: lbr1p1@lbr0p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state learning priority 32 cost 2 
    6: lbr0p1@lbr1p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state learning priority 32 cost 2 
    7: lbr1p2@lbr0p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state learning priority 32 cost 2 
    8: lbr0p2@lbr1p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state blocking priority 32 cost 2 
    root@debian10:~# bridge link
    5: lbr1p1@lbr0p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state forwarding priority 32 cost 2 
    6: lbr0p1@lbr1p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state forwarding priority 32 cost 2 
    7: lbr1p2@lbr0p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state forwarding priority 32 cost 2 
    8: lbr0p2@lbr1p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state blocking priority 32 cost 2 


Second case, within a new network namespace:

    ip netns add experiment
    ip netns exec experiment bash

then:

    ./loopbridgestp.sh


Second case results in allowing bridge forwarding loops to happen
despite STP:

    root@debian10:~# bridge link
    4: lbr1p1@lbr0p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state listening priority 32 cost 2 
    5: lbr0p1@lbr1p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state listening priority 32 cost 2 
    6: lbr1p2@lbr0p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state listening priority 32 cost 2 
    7: lbr0p2@lbr1p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state listening priority 32 cost 2 
    root@debian10:~# bridge link
    4: lbr1p1@lbr0p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state learning priority 32 cost 2 
    5: lbr0p1@lbr1p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state learning priority 32 cost 2 
    6: lbr1p2@lbr0p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state learning priority 32 cost 2 
    7: lbr0p2@lbr1p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state learning priority 32 cost 2 
    root@debian10:~# bridge link
    4: lbr1p1@lbr0p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state forwarding priority 32 cost 2 
    5: lbr0p1@lbr1p1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state forwarding priority 32 cost 2 
    6: lbr1p2@lbr0p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr1 state forwarding priority 32 cost 2 
    7: lbr0p2@lbr1p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master lbr0 state forwarding priority 32 cost 2 

Tested with same results on:

* Debian kernel 4.19.0-16-amd64
* Linux vanilla kernel 5.10.43
* Linux vanilla kernel 5.12.10

and this behavior might date back from much earlier from what I can
remember.

tcpdump shows there is still STP traffic on the veth interfaces.

No firewall was in use: no ebtables/iptables/nftables kernel module
was loaded.

Relevant kernel configuration: 

CONFIG_BRIDGE=m
CONFIG_BRIDGE_IGMP_SNOOPING=y
CONFIG_BRIDGE_VLAN_FILTERING=y
# CONFIG_BRIDGE_MRP is not set
# CONFIG_BRIDGE_CFM is not set
CONFIG_STP=m
CONFIG_GARP=m
CONFIG_MRP=m

root@debian10:~# uname -a
Linux debian10 5.12.10 #1 SMP Sat Jun 12 18:22:17 UTC 2021 x86_64 GNU/Linux
root@debian10:~# lsmod | egrep 'br|stp|garp|mrp'
bridge                266240  0
stp                    16384  1 bridge
llc                    16384  2 bridge,stp

Is there something I missed in order to have STP select a bridge port to
be in blocking state in a new network namespace as is the case in the
initial network namespace?

Or is that a bug?

Regards,
Adel Belhouane.
