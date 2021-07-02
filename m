Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D63BA81A
	for <lists.bridge@lfdr.de>; Sat,  3 Jul 2021 11:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 837E441E5C;
	Sat,  3 Jul 2021 09:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fr7z6TAFnkg; Sat,  3 Jul 2021 09:40:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9C31040144;
	Sat,  3 Jul 2021 09:40:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 938FEC002B;
	Sat,  3 Jul 2021 09:40:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 25EE7C000E
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 07:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0884B83AC9
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 07:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MohLGhaLKMRE for <bridge@lists.linux-foundation.org>;
 Fri,  2 Jul 2021 07:34:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from proxmox-new.maurer-it.com (proxmox-new.maurer-it.com
 [94.136.29.106])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C92F83AC1
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 07:34:52 +0000 (UTC)
Received: from proxmox-new.maurer-it.com (localhost.localdomain [127.0.0.1])
 by proxmox-new.maurer-it.com (Proxmox) with ESMTP id 841DF404AD;
 Fri,  2 Jul 2021 09:34:49 +0200 (CEST)
Date: Fri, 2 Jul 2021 09:34:46 +0200
From: Wolfgang Bumiller <w.bumiller@proxmox.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210702073446.xvq3xphk3rkcjdrh@wobu-vie.proxmox.com>
References: <20210701122830.2652-1-w.bumiller@proxmox.com>
 <20210701122830.2652-2-w.bumiller@proxmox.com>
 <39385134-e499-2444-aa0d-48b0315e1002@nvidia.com>
 <131fc6eb-7da2-ccac-2da0-b82c19dfef84@proxmox.com>
 <5a470258-a06b-64d0-fca0-f4eafe7e23e2@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5a470258-a06b-64d0-fca0-f4eafe7e23e2@nvidia.com>
X-Mailman-Approved-At: Sat, 03 Jul 2021 09:40:28 +0000
Cc: Vlad Yasevich <vyasevic@redhat.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Thomas Lamprecht <t.lamprecht@proxmox.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 1/1] net: bridge: sync fdb to new
	unicast-filtering ports
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

On Thu, Jul 01, 2021 at 06:33:20PM +0300, Nikolay Aleksandrov wrote:
> On 01/07/2021 17:51, Thomas Lamprecht wrote:
> > On 01.07.21 15:49, Nikolay Aleksandrov wrote:
> >> On 01/07/2021 15:28, Wolfgang Bumiller wrote:
> >>> Since commit 2796d0c648c9 ("bridge: Automatically manage
> >>> port promiscuous mode.")
> >>> bridges with `vlan_filtering 1` and only 1 auto-port don't
> >>> set IFF_PROMISC for unicast-filtering-capable ports.
> >>>
> >>> Normally on port changes `br_manage_promisc` is called to
> >>> update the promisc flags and unicast filters if necessary,
> >>> but it cannot distinguish between *new* ports and ones
> >>> losing their promisc flag, and new ports end up not
> >>> receiving the MAC address list.
> >>>
> >>> Fix this by calling `br_fdb_sync_static` in `br_add_if`
> >>> after the port promisc flags are updated and the unicast
> >>> filter was supposed to have been filled.
> >>>
> >>> Signed-off-by: Wolfgang Bumiller <w.bumiller@proxmox.com>
> >>> ---
> >>>  net/bridge/br_if.c | 12 ++++++++++++
> >>>  1 file changed, 12 insertions(+)
> >>>
> >>> diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> >>> index f7d2f472ae24..183e72e7b65e 100644
> >>> --- a/net/bridge/br_if.c
> >>> +++ b/net/bridge/br_if.c
> >>> @@ -652,6 +652,18 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
> >>>  	list_add_rcu(&p->list, &br->port_list);
> >>>  
> >>>  	nbp_update_port_count(br);
> >>> +	if (!br_promisc_port(p) && (p->dev->priv_flags & IFF_UNICAST_FLT)) {
> >>> +		/* When updating the port count we also update all ports'
> >>> +		 * promiscuous mode.
> >>> +		 * A port leaving promiscuous mode normally gets the bridge's
> >>> +		 * fdb synced to the unicast filter (if supported), however,
> >>> +		 * `br_port_clear_promisc` does not distinguish between
> >>> +		 * non-promiscuous ports and *new* ports, so we need to
> >>> +		 * sync explicitly here.
> >>> +		 */
> >>> +		if (br_fdb_sync_static(br, p))
> >>> +			netdev_err(dev, "failed to sync bridge addresses to this port\n");
> >>> +	}
> >>>  
> >>>  	netdev_update_features(br->dev);
> >>>  
> >>>
> >>
> >> Hi,
> > 
> > Hi, commenting as was peripherally involved into this.
> > 
> >> The patch is wrong because br_add_if() can fail after you sync these entries and
> >> then nothing will unsync them. Out of curiousity what's the use case of a bridge with a
> >> single port only ? Because, as you've also noted, this will be an issue only if there is
> >> a single port and sounds like a corner case, maybe there's a better way to handle it.
> > 
> > In practice you're right, it is not often useful, but that does not means that it
> > won't happen. For example, in Proxmox VE, a hypervisor/clustering debian-based distro,
> > we recommend users that they need to migrate all (QEMU) VMs to another cluster-node when
> > doing a (major) upgrade as with that way they get no downtime for the VMs.
> > 
> > Now, if the user had a bridge with a single port this was not an issue as long as VMs
> > where running the TAP device we use for them where bridge ports too.
> > 
> > But on reboot, with all VMs and thus ports still gone, the system comes up with that
> > bridge having a single port.
> > 
> > That itself was seen as a problem until recently because the system set the MAC of the
> > bridge to one of the bridge ports.
> > 
> > But with the next Debian Version (Bullseye) we're pulling in a systemd version which
> > now defaults to MACAddressPolicy=persistent[0] also for virtual devices like bridges,
> > so with that update done and rebooted the bridge has another MAC address, not matching
> > the one of a bridge port anymore, which means the host may, depending on some other
> > side effects like vlan-awareness on (as without that promisc would be enabled anyway),
> > not be ping'able and other issue anymore.
> > Due to some specialty handling of learning/filtering in specific drivers this is not
> > reproducible on every NIC model (IIRC, it was in igb and e1000e ones but not in some
> > realtek ones).
> > 
> > Hope that was not written to confusingly.
> > 
> > [0]: https://www.freedesktop.org/software/systemd/man/systemd.link.html#MACAddressPolicy=
> > 
> 
> I see, thank you for the details. Just to clarify I'm not against fixing it or against this patch,
> the question was out of curiousity only, as for the patch it needs to be fixed so unsync will be
> handled in the error paths after the sync and also I'd suggest changing the error message to contain

Ah sorry, somehow I thought there was already an unsync reachable in
that code path, but I was wrong. Looks like I can just add the unsync
before the list_del in err7 since list_add happens pretty much right
before the sync.
I'll test with a knob to force a failure, I still have my patched qemu
to observe what happens to the mac list on the NIC :-)

> what exactly couldn't be synced:
> "failed to sync bridge static fdb addresses to this port"

Yeah that sounds better! Will change it in v2.

> or something in those lines. Since this fixes actual bug please also add a Fixes: tag with the
> appropriate commit id where it was introduced.

I was a bit hesitant at first about adding this, since I hadn't done any
before/after testing with the particular commit introducing the change,
though I'm fairly confident about that by now (maybe more so since the
`auto_cnt` condition was wrong (fixed up in e0a47d1f7816 ("bridge: Fix
incorrect judgment of promisc"))).

