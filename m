Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B433D3BA814
	for <lists.bridge@lfdr.de>; Sat,  3 Jul 2021 11:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB09441B0C;
	Sat,  3 Jul 2021 09:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZhaE90bs8shf; Sat,  3 Jul 2021 09:40:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 302DC40171;
	Sat,  3 Jul 2021 09:40:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D040EC0022;
	Sat,  3 Jul 2021 09:40:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84375C000E
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jul 2021 12:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 721D84064F
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jul 2021 12:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_Z6CbD-9Nwd for <bridge@lists.linux-foundation.org>;
 Thu,  1 Jul 2021 12:56:05 +0000 (UTC)
X-Greylist: delayed 00:08:55 by SQLgrey-1.8.0
Received: from proxmox-new.maurer-it.com (proxmox-new.maurer-it.com
 [94.136.29.106])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 128C34065D
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jul 2021 12:56:04 +0000 (UTC)
Received: from proxmox-new.maurer-it.com (localhost.localdomain [127.0.0.1])
 by proxmox-new.maurer-it.com (Proxmox) with ESMTP id F35284033D;
 Thu,  1 Jul 2021 14:47:06 +0200 (CEST)
From: Wolfgang Bumiller <w.bumiller@proxmox.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Jul 2021 14:28:29 +0200
Message-Id: <20210701122830.2652-1-w.bumiller@proxmox.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 03 Jul 2021 09:40:28 +0000
Cc: Vlad Yasevich <vyasevic@redhat.com>, bridge@lists.linux-foundation.org,
 Thomas Lamprecht <t.lamprecht@proxmox.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH 0/1] Fixup unicast filter for new vlan-aware-bridge
	ports
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

With this patch I'd like to fix an issue with vlan-aware bridges with a
single auto-port and a different MAC address on the bridge than its
port.

It took me a while to dig into this, and I hope to get some feedback and
would very much like to help out with more debugging if necessary and
hope this patch is a good first start.

Here's are the details I gathered:

When using devices with IFF_UNICAST_FLT support as bridge ports, they
sometimes don't get both MAC addresses added to their MAC filter
(seemingly limited to the time they're *added* to the bridge).

Since 2796d0c648c9 ("bridge: Automatically manage port promiscuous mode."),
bridges with `vlan_filtering 1` and only 1 auto-port don't set
IFF_PROMISC for unicast-filtering-capable ports.
This causes the bridge to "fail" if it has a different MAC than its
port, as the address is not added to the unicast filter when the port is
added.

This has become apparent with systemd's switch to
`MACAddressPolicy=persistent` which causes bridges to get different mac
addresses.

This is easily reproduced in qemu with `e1000` cards or virtio with
`vhost=off`.

Normally this should happen right when creating the bridge...

    ## This should be perfectly sufficient to reproduce this:
    # ip link add br0 type bridge vlan_filtering 1
    # ip link set eno1 master br0
    ## Setup addresses on the bridge and try to ping something

unless the port had IFF_PROMISC set when it was added to the bridge. In
that case it should be sufficient to simply re-plug the port.

    # ip link set eno1 nomaster
    # ip link set eno1 master br0

In my virtio-net based reproducer, I sprinkled some debugging output
into qemu (on top of the 6.0 tag from git, if you'd like the patch for a
quick test I'd be happy to provide it, too) and got the following:
----
VIRTIO_NET_CTRL_MAC
handle mac table set
    mac_data.entries = 1
    copying 1 single macs
    in_use now 1
    first_multi=1
    mac_data.entries = 1 (multi)
    copying 1 multi macs
    now have: in_use=2 first_multi=1, uni_ovf=0 multi_ovf=0
    mac 0: 52:54:00:12:34:56
    mac 1: 01:00:5e:00:00:01
----

This shows only 1 unicast MAC (the one I assigned to the virtio NIC).
The bridge has a different MAC.

The quickest fix here is to change the mac address on the bridge while
the port is connected, this ends up re-syncing the MAC filter:

# ip link set br0 address 52:54:00:12:11:12

This created the following debug output:
----
VIRTIO_NET_CTRL_MAC
handle mac table set
    mac_data.entries = 2
    copying 2 single macs
    in_use now 2
    first_multi=2
    mac_data.entries = 1 (multi)
    copying 1 multi macs
    now have: in_use=3 first_multi=2, uni_ovf=0 multi_ovf=0
    mac 0: 52:54:00:12:34:56
    mac 1: 52:54:00:12:11:12
    mac 2: 01:00:5e:00:00:01
----

Above, both MAC addresses are visible in the mac table, and the bridge
works as expected.

Other noteworthy behaviors:

* setting `vlan_filtering 1` *after* adding a port does not cause the
  issue.
* adding another auto-port puts all of the bridge's ports in promisc
  mode and flushes the UC MAC list, networking works; removing the new
  port resyncs the UC MAC list to correctly contain both addresses and
  networking keeps working

So it seems to be limited to the time where the port is being *added* to
the bridge.

I've tested git-master, and proxmox kernels (ubuntu based) 5.11 and 5.4,
all of which experience the same behavior, patch applies cleanly to all
of them.

Wolfgang Bumiller (1):
  net: bridge: sync fdb to new unicast-filtering ports

 net/bridge/br_if.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.32.0


