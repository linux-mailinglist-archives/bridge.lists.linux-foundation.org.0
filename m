Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BE861954F
	for <lists.bridge@lfdr.de>; Fri,  4 Nov 2022 12:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E80FF40C0A;
	Fri,  4 Nov 2022 11:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E80FF40C0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PbOVr0Dd81c9; Fri,  4 Nov 2022 11:23:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0BA2440BDB;
	Fri,  4 Nov 2022 11:23:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BA2440BDB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A242EC0077;
	Fri,  4 Nov 2022 11:23:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 997D7C002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 11:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6663D4036F
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 11:23:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6663D4036F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjyWR-kYf1ON for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 11:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 007084028D
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 007084028D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 11:23:11 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id A06FA1883880;
 Fri,  4 Nov 2022 11:23:07 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 681AF25002E1;
 Fri,  4 Nov 2022 11:23:07 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 4E2B691201E4; Fri,  4 Nov 2022 11:23:07 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 04 Nov 2022 12:23:07 +0100
From: netdev@kapio-technology.com
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20221103231838.fp5nh5g3kv7cz2d2@skbuf>
References: <20221101193922.2125323-1-idosch@nvidia.com>
 <20221101193922.2125323-1-idosch@nvidia.com>
 <20221101193922.2125323-2-idosch@nvidia.com>
 <20221101193922.2125323-2-idosch@nvidia.com>
 <20221103231838.fp5nh5g3kv7cz2d2@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <ce9f4095b216187c1dd5c14cdf4ae9cc@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, razor@blackwall.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, edumazet@google.com,
 mlxsw@nvidia.com, netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add MAC Authentication
 Bypass (MAB) support
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

On 2022-11-04 00:18, Vladimir Oltean wrote:
> On Tue, Nov 01, 2022 at 09:39:21PM +0200, Ido Schimmel wrote:
>> From: "Hans J. Schultz" <netdev@kapio-technology.com>
>> 
>> Hosts that support 802.1X authentication are able to authenticate
>> themselves by exchanging EAPOL frames with an authenticator (Ethernet
>> bridge, in this case) and an authentication server. Access to the
>> network is only granted by the authenticator to successfully
>> authenticated hosts.
>> 
>> The above is implemented in the bridge using the "locked" bridge port
>> option. When enabled, link-local frames (e.g., EAPOL) can be locally
>> received by the bridge, but all other frames are dropped unless the 
>> host
>> is authenticated. That is, unless the user space control plane 
>> installed
>> an FDB entry according to which the source address of the frame is
>> located behind the locked ingress port. The entry can be dynamic, in
>> which case learning needs to be enabled so that the entry will be
>> refreshed by incoming traffic.
>> 
>> There are deployments in which not all the devices connected to the
>> authenticator (the bridge) support 802.1X. Such devices can include
>> printers and cameras. One option to support such deployments is to
>> unlock the bridge ports connecting these devices, but a slightly more
>> secure option is to use MAB. When MAB is enabled, the MAC address of 
>> the
>> connected device is used as the user name and password for the
>> authentication.
>> 
>> For MAB to work, the user space control plane needs to be notified 
>> about
>> MAC addresses that are trying to gain access so that they will be
>> compared against an allow list. This can be implemented via the 
>> regular
>> learning process with the sole difference that learned FDB entries are
>> installed with a new "locked" flag indicating that the entry cannot be
>> used to authenticate the device. The flag cannot be set by user space,
>> but user space can clear the flag by replacing the entry, thereby
>> authenticating the device.
>> 
>> Locked FDB entries implement the following semantics with regards to
>> roaming, aging and forwarding:
>> 
>> 1. Roaming: Locked FDB entries can roam to unlocked (authorized) 
>> ports,
>>    in which case the "locked" flag is cleared. FDB entries cannot roam
>>    to locked ports regardless of MAB being enabled or not. Therefore,
>>    locked FDB entries are only created if an FDB entry with the given 
>> {MAC,
>>    VID} does not already exist. This behavior prevents unauthenticated
>>    devices from disrupting traffic destined to already authenticated
>>    devices.
>> 
>> 2. Aging: Locked FDB entries age and refresh by incoming traffic like
>>    regular entries.
>> 
>> 3. Forwarding: Locked FDB entries forward traffic like regular 
>> entries.
>>    If user space detects an unauthorized MAC behind a locked port and
>>    wishes to prevent traffic with this MAC DA from reaching the host, 
>> it
>>    can do so using tc or a different mechanism.
> 
> In other words, a user space MAB daemon has a lot of extra work to do.
> I'm willing to bet it's going to cut 90% of those corners ;) anyway...
> 

I would like to know your (Vladimir) take on the approach of the
implementation for the mv88e6xxx that I have made and which will also be
the basis for how the WesterMo hostapd fork will be afaik...

Is it in general a good idea to use TC filters for specific MACs instead
of having the driver installing blocking entries, which I know the 
Marvell
XCat switchcore will also have (switchcore installed blockig entries)?


>> 
>> Enable the above behavior using a new bridge port option called "mab".
>> It can only be enabled on a bridge port that is both locked and has
>> learning enabled. Locked FDB entries are flushed from the port once 
>> MAB
>> is disabled. A new option is added because there are pure 802.1X
>> deployments that are not interested in notifications about locked FDB
>> entries.
>> 
>> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
>> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
>> ---
> 
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
