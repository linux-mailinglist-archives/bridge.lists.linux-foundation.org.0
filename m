Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFB97DCE4
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:55:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E7DDA15E4;
	Thu,  1 Aug 2019 13:55:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F47623F5
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 08:58:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FA3E5E4
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 08:58:35 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 207so56352118wma.1
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 01:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Te2pMk8TSNWFzz71U4QMt5lRCNayXZcJS1v3r4ymmPY=;
	b=cqEBgfaZxzBDd1Xvx+4Cfg89O+z3vfUvIkw9zg9LcyYxRII5fVW7VL2ktfL4xhPO7y
	R3tG6VIHTvUrfQrUQNlLP4HmcHQO5WfQKv6AWboks9cJ0Akmb4nV2KLGgY3pWDA2EHAv
	yoKYZoDsi6vFNVr6CFPXHbw4OBsLjN2iC8Ssc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Te2pMk8TSNWFzz71U4QMt5lRCNayXZcJS1v3r4ymmPY=;
	b=L9HxCIQGrY0hV9fjDuKx98ea8xErS3K0SXV7pUSLduqEx/B8GJ2Ff/+3dPANG/dQyo
	wRySOteeg03S9Xwpt3ugakKCga08qTuaKK4Oyq5RRvYFKwGIrj1ixALGuDl0fb1TuBAY
	LJyQbjaJSmKj8UsTQySZnkXgKHCH1dDrUKjWr9BmtYTG4KSj6k1adMk9s6fQ//m3tR4K
	+SG7VzCA16ub/wNpbvFwXQhTlZlar+RDp/05sypcPBtVeGpt0PYSBKW4FGMv9wi4sTxD
	75mC+kwP2OrUfsAY+9iPk/H1mwrcYdI7Ko9BC2RSYnakaVrfN5TN2gcO3v5MklrvKBfi
	VzMA==
X-Gm-Message-State: APjAAAVpg3BWEUF88edBSOK4Ta84DvunbjrgqnmM+8pOzeFDSkixs4ki
	A0Q5cR+CTj6MMrd4ICHYlDKHbg==
X-Google-Smtp-Source: APXvYqw4v9xSEyYUryB2pHMDrXmwG/5ObRMbYbrYOqpu/Ul9zDvG7pzZJ0qaSJhOCu/myBkWy0UTyg==
X-Received: by 2002:a1c:99ca:: with SMTP id
	b193mr101311855wme.31.1564477113536; 
	Tue, 30 Jul 2019 01:58:33 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	j189sm72501798wmb.48.2019.07.30.01.58.32
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 01:58:32 -0700 (PDT)
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>,
	Ido Schimmel <idosch@idosch.org>
References: <20190729121409.wa47uelw5f6l4vs4@lx-anielsen.microsemi.net>
	<95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
	<20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
	<3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
	<20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
	<e4cd0db9-695a-82a7-7dc0-623ded66a4e5@cumulusnetworks.com>
	<20190729143508.tcyebbvleppa242d@lx-anielsen.microsemi.net>
	<20190729175136.GA28572@splinter>
	<20190730062721.p4vrxo5sxbtulkrx@lx-anielsen.microsemi.net>
	<20190730070626.GA508@splinter>
	<20190730083027.biuzy7h5dbq7pik3@lx-anielsen.microsemi.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <13f66ebe-4173-82d7-604b-08e9d33d9aff@cumulusnetworks.com>
Date: Tue, 30 Jul 2019 11:58:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190730083027.biuzy7h5dbq7pik3@lx-anielsen.microsemi.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	davem@davemloft.net, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 30/07/2019 11:30, Allan W. Nielsen wrote:
> The 07/30/2019 10:06, Ido Schimmel wrote:
>> On Tue, Jul 30, 2019 at 08:27:22AM +0200, Allan W. Nielsen wrote:
>>> The 07/29/2019 20:51, Ido Schimmel wrote:
>>>> Can you please clarify what you're trying to achieve? I just read the
>>>> thread again and my impression is that you're trying to locally receive
>>>> packets with a certain link layer multicast address.
>>> Yes. The thread is also a bit confusing because we half way through realized
>>> that we misunderstood how the multicast packets should be handled (sorry about
>>> that). To begin with we had a driver where multicast packets was only copied to
>>> the CPU if someone needed it. Andrew and Nikolay made us aware that this is not
>>> how other drivers are doing it, so we changed the driver to include the CPU in
>>> the default multicast flood-mask.
>> OK, so what prevents you from removing all other ports from the
>> flood-mask and letting the CPU handle the flooding? Then you can install
>> software tc filters to limit the flooding.
> I do not have the bandwidth to forward the multicast traffic in the CPU.
> 
> It will also cause enormous latency on the forwarding of L2 multicast packets.
> 
>>> This changes the objective a bit. To begin with we needed to get more packets to
>>> the CPU (which could have been done using tc ingress rules and a trap action).
>>>
>>> Now after we changed the driver, we realized that we need something to limit the
>>> flooding of certain L2 multicast packets. This is the new problem we are trying
>>> to solve!
>>>
>>> Example: Say we have a bridge with 4 slave interfaces, then we want to install a
>>> forwarding rule saying that packets to a given L2-multicast MAC address, should
>>> only be flooded to 2 of the 4 ports.
>>>
>>> (instead of adding rules to get certain packets to the CPU, we are now adding
>>> other rules to prevent other packets from going to the CPU and other ports where
>>> they are not needed/wanted).
>>>
>>> This is exactly the same thing as IGMP snooping does dynamically, but only for
>>> IP multicast.
>>>
>>> The "bridge mdb" allow users to manually/static add/del a port to a multicast
>>> group, but still it operates on IP multicast address (not L2 multicast
>>> addresses).
>>>
>>>> Nik suggested SIOCADDMULTI.
>>> It is not clear to me how this should be used to limit the flooding, maybe we
>>> can make some hacks, but as far as I understand the intend of this is maintain
>>> the list of addresses an interface should receive. I'm not sure this should
>>> influence how for forwarding decisions are being made.
>>>
>>>> and I suggested a tc filter to get the packet to the CPU.
>>> The TC solution is a good solution to the original problem where wanted to copy
>>> more frames to the CPU. But we were convinced that this is not the right
>>> approach, and that the CPU by default should receive all multicast packets, and
>>> we should instead try to find a way to limit the flooding of certain frames as
>>> an optimization.
>>
>> This can still work. In Linux, ingress tc filters are executed before the
>> bridge's Rx handler. The same happens in every sane HW. Ingress ACL is
>> performed before L2 forwarding. Assuming you have eth0-eth3 bridged and
>> you want to prevent packets with DMAC 01:21:6C:00:00:01 from egressing
>> eth2:
>>
>> # tc filter add dev eth0 ingress pref 1 flower skip_sw \
>> 	dst_mac 01:21:6C:00:00:01 action trap
>> # tc filter add dev eth2 egress pref 1 flower skip_hw \
>> 	dst_mac 01:21:6C:00:00:01 action drop
>>
>> The first filter is only present in HW ('skip_sw') and should result in
>> your HW passing you the sole copy of the packet.
> Agree.
> 
>> The second filter is only present in SW ('skip_hw', not using HW egress
>> ACL that you don't have) and drops the packet after it was flooded by
>> the SW bridge.
> Agree.
> 
>> As I mentioned earlier, you can install the filter once in your HW and
>> share it between different ports using a shared block. This means you
>> only consume one TCAM entry.
>>
>> Note that this allows you to keep flooding all other multicast packets
>> in HW.
> Yes, but the frames we want to limit the flood-mask on are the exact frames
> which occurs at a very high rate, and where latency is important.
> 
> I really do not consider it as an option to forward this in SW, when it is
> something that can easily be offloaded in HW.
> 
>>>> If you now want to limit the ports to which this packet is flooded, then
>>>> you can use tc filters in *software*:
>>>>
>>>> # tc qdisc add dev eth2 clsact
>>>> # tc filter add dev eth2 egress pref 1 flower skip_hw \
>>>> 	dst_mac 01:21:6C:00:00:01 action drop
>>> Yes. This can work in the SW bridge.
>>>
>>>> If you want to forward the packet in hardware and locally receive it,
>>>> you can chain several mirred action and then a trap action.
>>> I'm not I fully understand how this should be done, but it does sound like it
>>> becomes quite complicated. Also, as far as I understand it will mean that we
>>> will be using TCAM/ACL resources to do something that could have been done with
>>> a simple MAC entry.
>>>
>>>> Both options avoid HW egress ACLs which your design does not support.
>>> True, but what is wrong with expanding the functionality of the normal
>>> forwarding/MAC operations to allow multiple destinations?
>>>
>>> It is not an uncommon feature (I just browsed the manual of some common L2
>>> switches and they all has this feature).
>>>
>>> It seems to fit nicely into the existing user-interface:
>>>
>>> bridge fdb add    01:21:6C:00:00:01 port eth0
>>> bridge fdb append 01:21:6C:00:00:01 port eth1
>>
>> Wouldn't it be better to instead extend the MDB entries so that they are
>> either keyed by IP or MAC? I believe FDB should remain as unicast-only.
> 
> You might be right, it was not clear to me which of the two would fit the
> purpose best.
> 
> From a user-space iproute2 perspective I prefer using the "bridge fdb" command
> as it already supports the needed syntax, and I do not think it will be too
> pretty if we squeeze this into the "bridge mdb" command syntax.
> 

MDB is a much better fit as Ido already suggested. FDB should remain unicast
and mixing them is not a good idea, we already have a good ucast/mcast separation
and we'd like to keep it that way.

> But that does not mean that it need to go into the FDB database in the
> implementation.
> 
> Last evening when I looked at it again, I was considering keeping the
> net_bridge_fdb_entry structure as is, and add a new hashtable with the
> following:
> 
> struct net_bridge_fdbmc_entry {
> 	struct rhash_head		rhnode;
> 	struct net_bridge_fdbmc_ports   *dst;
> 
> 	struct net_bridge_fdb_key	key;
> 	struct hlist_node		fdb_node;
> 	unsigned char			offloaded:1;
> 
> 	struct rcu_head			rcu;
> };
> 

What would the notification for this look like ?

> If we go with this approach then we can look at the MAC address and see if it is
> a unicast which will cause a lookup in the fdb, l3-multicast (33:33:* or
> 01:00:5e:*) which will cause a lookup in the mdb, or finally a fdbmc which will
> need to do a lookup in this new hashtable.

That sounds wrong, you will change the current default behaviour of flooding these
packets. This will have to be well hidden behind a new option and enabled only on user
request.

> 
> Alternative it would be like this:
> 
> struct net_bridge_fdb_entry {
> 	struct rhash_head		rhnode;
> 	union net_bridge_port_or_list	*dst;
> 
> 	struct net_bridge_fdb_key	key;
> 	struct hlist_node		fdb_node;
> 	unsigned char			is_local:1,
> 					is_static:1,
> 					is_sticky:1,
> 					added_by_user:1,
> 					added_by_external_learn:1,
> 					offloaded:1;
> 					multi_dst:1;
> 
> 	/* write-heavy members should not affect lookups */
> 	unsigned long			updated ____cacheline_aligned_in_smp;
> 	unsigned long			used;
> 
> 	struct rcu_head			rcu;
> };
> 
> Both solutions should require fairly few changes, and should not cause any
> measurable performance hit.
> 

You'll have to convert these bits to use the proper atomic bitops if you go with
the second solution. That has to be done even today, but the second case would
make it a must.

> Making it fit into the net_bridge_mdb_entry seems to be harder.
> 

But it is the correct abstraction from bridge POV, so please stop trying to change
the FDB code and try to keep to the multicast code.

>> As a bonus, existing drivers could benefit from it, as MDB entries are already
>> notified by MAC.
> Not sure I follow. When FDB entries are added, it also generates notification
> events.
> 

Could you please show fdb event with multiple ports ?

>>> It seems that it can be added to the existing implementation with out adding
>>> significant complexity.
>>>
>>> It will be easy to offload in HW.
>>>
>>> I do not believe that it will be a performance issue, if this is a concern then
>>> we may have to do a bit of benchmarking, or we can make it a configuration
>>> option.
>>>
>>> Long story short, we (Horatiu and I) learned a lot from the discussion here, and
>>> I think we should try do a new patch with the learning we got. Then it is easier
>>> to see what it actually means to the exiting code, complexity, exiting drivers,
>>> performance, default behavioral, backwards compatibly, and other valid concerns.
>>>
>>> If the patch is no good, and cannot be fixed, then we will go back and look
>>> further into alternative solutions.
>> Overall, I tend to agree with Nik. I think your use case is too specific
>> to justify the amount of changes you want to make in the bridge driver.
>> We also provided other alternatives. That being said, you're more than
>> welcome to send the patches and we can continue the discussion then.
> Okay, good to know. I'm not sure I agree that the alternative solutions really
> solves the issue this is trying to solve, nor do I agree that this is specific
> to our needs.
> 
> But lets take a look at a new patch, and see what is the amount of changes we
> are talking about. Without having the patch it is really hard to know for sure.
> 

Please keep in mind that this case is the exception, not the norm, thus it should
not under any circumstance affect the standard deployments.
