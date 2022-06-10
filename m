Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B04545F50
	for <lists.bridge@lfdr.de>; Fri, 10 Jun 2022 10:36:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2441D842B5;
	Fri, 10 Jun 2022 08:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-SXv-Z93Hyl; Fri, 10 Jun 2022 08:36:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 648F2842A7;
	Fri, 10 Jun 2022 08:36:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35E58C0081;
	Fri, 10 Jun 2022 08:36:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28942C002D
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jun 2022 08:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18889842B5
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jun 2022 08:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4lhKyz9qeyf5 for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jun 2022 08:36:36 +0000 (UTC)
X-Greylist: delayed 00:09:57 by SQLgrey-1.8.0
Received: from smtpout5.r2.mail-out.ovh.net (smtpout5.r2.mail-out.ovh.net
 [54.36.141.5])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B422A842A7
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jun 2022 08:36:35 +0000 (UTC)
Received: from ex.mail.ovh.net (unknown [10.109.156.141])
 by mo511.mail-out.ovh.net (Postfix) with SMTP id 3695825542
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jun 2022 08:19:14 +0000 (UTC)
Message-ID: <2b737d18-1ad5-32ec-812f-c639b62ad0c0@lodpp.net>
Date: Fri, 10 Jun 2022 10:19:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: <bridge@lists.linux-foundation.org>
References: <00be2217-40f4-c15b-409b-8b412ac411c8@lodpp.net>
From: Nicolas Piatto <nico@lodpp.net>
In-Reply-To: <00be2217-40f4-c15b-409b-8b412ac411c8@lodpp.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [217.70.181.1]
X-ClientProxiedBy: CAS13.indiv.local (172.16.1.13) To DAG19EX1.indiv.local
 (172.16.2.37)
X-Ovh-Tracer-Id: 18339220633565975938
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudduuddgtdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefkffggfgfvfhfhufgjtgfgihesthejredttdefjeenucfhrhhomheppfhitgholhgrshcurfhirghtthhouceonhhitghosehlohguphhprdhnvghtqeenucggtffrrghtthgvrhhnpeehieektdevveejtdejfeekgeeffeellefgueegieevvdefgfeiieevudeiuefhudenucffohhmrghinhepfihikhhiphgvughirgdrohhrghenucfkpheptddrtddrtddrtddpvddujedrjedtrddukedurddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopegvgidrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehnihgtoheslhhoughpphdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegsrhhiughgvgeslhhishhtshdrlhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdfovfetjfhoshhtpehmohehuddu
Subject: Re: [Bridge] bridge issue with ARP and FDB update between 4.9.142
 and 4.9.315
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

Hello again,

To followup on this, it seems that the problem statement was wrong (
well ... )

We did another lab with the production environment setup and even in
4.9.x, the kernel never actually insert the MAC from the ARP payload to
the FDB. Only the ethernet header is processed, which makes sense.

I assume that in the first production tshoot, extra steps must have been
done that created this assumption...

Anyway, the problem is not related to the linux bridge.

We do use NFT to avoid both IP and MAC spoofing. In the 4.9 setup, the
unkown unicast flood is filtered, while on 5.10/15 the unkown unicast
passes the NFT rules.
We are digging that lead. (as well as looking to BR_FLOOD flag)

I won't bother the list with this issue anymore.

Regards,
Nicolas




On 6/3/22 17:50, Nicolas Piatto wrote:
> Hello,
> 
> 
> We have a strange behavior of the linux bridge regarding ARP and FDB update.
> 
> We could see the change first between 4.9.142 and 5.15.11.
> Then we were able to replicate with 4.9.315 which is reducing the search
> field to a single kernel line (still huge work of digging)
> 
> We have seen a huge amount of `unknown unicast flood` on nodes running
> the newer kernel version.
> 
> So far we didn't found from which commit(s) is(are) responsible, that's
> why we try to get help here.
> 
> Let me explain the context and network design first:
> 
> We use 2 routers, SVIs and GLBP [1] as first-hop redundancy protocol on
> them. Those routers provide connectivity to VMs running on Linux nodes.
> 
> The networking is fairly simple, the Linux node act as a simple bridge
> (actually one bridge per vlan) between the router and VMs.
> 
> |--- Cisco hw devices --------|--- linux node -------------|
> 
>                               +--------------------------+
> +----+                        |   +--------+   +-----+   |
> | R1 |------------------------|---| bridge |---| VMx |   |
> +----+                        |   |        |             |
> +----+                        |   |        |   +-----+   |
> | R2 |------------------------|---|        |---| VMy |   |
> +----+                        |   +--------+   +-----+   |
>                               |                          |
>                               +--------------------------+
> 
> Assuming this:
> - The subnet configured on SVI is a /24
> - MAC addresses provided are for explanation only.
> - GLBP AVG: Active Virtual Gateway, one of the router is elected to
> reply to ARP
>   requests
> - GLBP AVF: Active Virtual Forwarder, each router is assigned a virtual
> MAC and is
>   responsible to forward/route traffic for that MAC.
> 
> GLBP Virtual IP: .254 (default-gateway for VMs)
> 
> R1 is AVG
> R1 SVI ip: .252
> R1 SVI mac: 00:00:00:00:11:11
> R1 AVF mac: 11:11:11:11:11:11
> 
> R2 SVI ip: .253
> R2 SVI mac: 00:00:00:00:22:22
> R2 AVF mac: 22:22:22:22:22:22
> 
> 
> GLBP as a particular way of working with ARP (but it's in the
> protocol...). When the Active Virtual Gateway (AVG) replies to an ARP
> request from a VM, it does so by sourcing the ARP reply packet from the
> router's SVI MAC address, while it puts the AVF as Source inside the ARP
> packet payload.
> 
> GLBP never sends packet nor it sends gratuitous ARP sourced from an AVF MAC.
> 
> On 4.9.142, when a VM perform an ARP request for the GW, the AVG replies
> and the bridge updates the FDB with the
> AVF MAC (11:11:11:11:11:11 or 22:22:22:22:22:22) <-> interface.
> The VM gets also the ARP reply and updates its ARP cache based on the
> ARP payload (AVF MAC).
> 
> -> Now when the VM can send traffic toward the GW MAC address, the
> bridge does the FDB lookup and forward accordingly.
> 
> On 4.9.345, when a VM perform an ARP request for the GW, the AVG replies
> and the bridge updates the FDB with the
> SVI MAC (00:00:00:00:11:11) <-> interface (not the AVF MAC).
> The VM gets also the ARP reply and updates its ARP cache based on the
> ARP Payload (AVF MAC).
> 
> Now the VM sends traffic toward the GW MAC address, the bridge does the
> FDB lookup for the AVF MAC - which fails - and flood the traffic everywhere.
> 
> As a side note, the behavior on 4.9.12 is also what we see with HW
> switch, aka the CAM is updated as well with the AVF MAC <-> interface.
> 
> To workaround this, we have moved from GLBP to HSRP.
> 
> As we are not very familiar with C and the netdev codebase is huge, we
> could not find the packet path for unicast packet (ARP replies are
> unicast) within a pure L2 bridge to find a lead...
> 
> Here is a capture of search ARP reply packet in our lab to reproduce
> (vms + l2vpn setup between them):
> Forged packet with scapi
> ```
> sendp(Ether(dst='9a:d0:e7:09:8c:9e', src='22:8e:b6:cd:54:34') /
> ARP(op='is-at', hwsrc='00:07:b4:00:29:02', psrc='198.18.0.20',
> hwdst='9a:d0:e7:09:8c:9e', pdst=ipv4d), iface='l2tpeth0')
> ```
> and the capture
> ```
> 15:37:21.567196 22:8e:b6:cd:54:34 (oui Unknown) > 9a:d0:e7:09:8c:9e (oui
> Unknown), ethertype ARP (0x0806), length 42: Reply 198.18.0.2 is-at
> 00:07:b4:00:29:02 (oui Unknown), length 28
> ```
> 
> With 4.9.315, we can see that 00:07:b4:00:29:02 is not found in FDB, but
> 22:8e:b6:cd:54:34 is.
> 
> Any help is welcome and appreciated on how to work on this !
> 
> Thanks and best regards,
> Nicolas
> 
> [1] https://en.wikipedia.org/wiki/Gateway_Load_Balancing_Protocol
