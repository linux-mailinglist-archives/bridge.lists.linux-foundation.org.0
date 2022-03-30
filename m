Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FF34EBE9E
	for <lists.bridge@lfdr.de>; Wed, 30 Mar 2022 12:23:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A44C1842F9;
	Wed, 30 Mar 2022 10:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GB6bV_SbxFXG; Wed, 30 Mar 2022 10:23:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8560D84204;
	Wed, 30 Mar 2022 10:23:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3AA4EC0082;
	Wed, 30 Mar 2022 10:23:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A839EC0012
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 10:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85D6741A53
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 10:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8ryLaKwDIkf for <bridge@lists.linux-foundation.org>;
 Wed, 30 Mar 2022 10:23:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06DBD41A4F
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 10:23:40 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id bq8so26585245ejb.10
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 03:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=KcemAQXGKS/bu1WPq66TUYrATVLlvsGVeMOPMU20wnE=;
 b=hcm4UeLCkZcBWsN+sqAaYrQ3UM6jSe/BWrZylHfI9zj1/b/B+Q2o3QKiHKheyLAkxb
 TTTsO73YQralOmuppkB2+AsMeaXa797UpzBV3SO2JiqC/haM2g5W/HHssc5l03WSzMnk
 wn9F0GM2KrEypygyS4rpwITD73NFnaaSzOZjURKKMUMgGUUN+5AGyKGyGqfFpoPPlZik
 7bauupYqlkr94v0NX7QgoLE/sPZKeL/LywTTXsDjCU6w3gcCcsnd+yvav04cGF5UCLHw
 PeZog8tVx2Ix8HE4SHEhnPXCXxqnXGAzNPi+HT5P7b2NoKmCWQXOLX7uyfG4A1L1fcPf
 la4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=KcemAQXGKS/bu1WPq66TUYrATVLlvsGVeMOPMU20wnE=;
 b=ht12ebXo/gRfemwEJfATJqE/ZD2J899tv9ewd3A5x+kxV42sKeBPMJD41Du91nEZaL
 u4FkeQdiFWN2E7p6xXY47SfXXRqRviAFzEL5dV4tsrzZ16KNezT7ZkHv+0p202y2n1/U
 tngfd+lWa3PTSyrRj8b/1U/SVceN4KI3PAmdF6IL16ECtO2Bjg1qRlHIv2WF5PcnNFKN
 pHud7emvv0itRPUhFrjFNQ3vsE2WsZCfWQBYYFJLHBo/cQJmo075JQ+G4wwR4N8uLZJe
 4Tg9+G22wjO4c8XS50eNUCuLT1BZrrX2zmbrqc8uxqUzoMhKUHNzpHHjsu5ym3UtWWKV
 TYMw==
X-Gm-Message-State: AOAM531DdsY2MzYrW5/1kr402La9qEOJbiJYUdPM7mviRwPLlTjmkqYJ
 Qhxs35BWY7bx9L04FokrDRFG6Q==
X-Google-Smtp-Source: ABdhPJwTgdnDKzDbzvdVTmiTIQ1Q2zMWj4qcPywFywtUZ2N7KTD7V6QRoheYFt356FxSjfWCf/dRmA==
X-Received: by 2002:a17:907:3d01:b0:6e0:c63b:1992 with SMTP id
 gm1-20020a1709073d0100b006e0c63b1992mr26541074ejc.422.1648635818836; 
 Wed, 30 Mar 2022 03:23:38 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 hs12-20020a1709073e8c00b006dfdfdac005sm8141217ejc.174.2022.03.30.03.23.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 03:23:38 -0700 (PDT)
Message-ID: <d2e45c4a-ed34-10d3-58cd-01b1c19bd004@blackwall.org>
Date: Wed, 30 Mar 2022 13:23:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Alexandra Winter <wintera@linux.ibm.com>
References: <20220329114052.237572-1-wintera@linux.ibm.com>
 <20220329175421.4a6325d9@kernel.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220329175421.4a6325d9@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: linux-s390@vger.kernel.org, netdev@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Hangbin Liu <liuhangbin@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Jiri Pirko <jiri@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2] veth: Support bonding events
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

On 30/03/2022 03:54, Jakub Kicinski wrote:
> Dropping the BPF people from CC and adding Hangbin, bridge and
> bond/team. Please exercise some judgment when sending patches.
> 
> On Tue, 29 Mar 2022 13:40:52 +0200 Alexandra Winter wrote:
>> Bonding drivers generate specific events during failover that trigger
>> switch updates.  When a veth device is attached to a bridge with a
>> bond interface, we want external switches to learn about the veth
>> devices as well.
>>
>> Example:
>>
>> 	| veth_a2   |  veth_b2  |  veth_c2 |
>> 	------o-----------o----------o------
>> 	       \	  |	    /
>> 		o	  o	   o
>> 	      veth_a1  veth_b1  veth_c1
>> 	      -------------------------
>> 	      |        bridge         |
>> 	      -------------------------
>> 			bond0
>> 			/  \
>> 		     eth0  eth1
>>
>> In case of failover from eth0 to eth1, the netdev_notifier needs to be
>> propagated, so e.g. veth_a2 can re-announce its MAC address to the
>> external hardware attached to eth1.
>>
>> Without this patch we have seen cases where recovery after bond failover
>> took an unacceptable amount of time (depending on timeout settings in the
>> network).
>>
>> Due to the symmetric nature of veth special care is required to avoid
>> endless notification loops. Therefore we only notify from a veth
>> bridgeport to a peer that is not a bridgeport.
>>
>> References:
>> Same handling as for macvlan:
>> commit 4c9912556867 ("macvlan: Support bonding events")
>> and vlan:
>> commit 4aa5dee4d999 ("net: convert resend IGMP to notifier event")
>>
>> Alternatives:
>> Propagate notifier events to all ports of a bridge. IIUC, this was
>> rejected in https://www.spinics.net/lists/netdev/msg717292.html
> 
> My (likely flawed) reading of Nik's argument was that (1) he was
> concerned about GARP storms; (2) he didn't want the GARP to be
> broadcast to all ports, just the bond that originated the request.
> 

Yes, that would be ideal. Trying to avoid unnecessary bcasts, that is
especially important for large setups with lots of devices.

> I'm not sure I follow (1), as Hangbin said the event is rare, plus 
> GARP only comes from interfaces that have an IP addr, which IIUC
> most bridge ports will not have.
> 

Indeed, such setups are not the most common ones.

> This patch in no way addresses (2). But then, again, if we put 
> a macvlan on top of a bridge master it will shotgun its GARPS all 
> the same. So it's not like veth would be special in that regard.
> 
> Nik, what am I missing?
> 

If we're talking about macvlan -> bridge -> bond then the bond flap's
notify peers shouldn't reach the macvlan. Generally broadcast traffic
is quite expensive for the bridge, I have patches that improve on the
technical side (consider ports only for the same bcast domain), but you also
wouldn't want unnecessary bcast packets being sent around. :)
There are setups with tens of bond devices and propagating that to all would be
very expensive, but most of all unnecessary. It would also hurt setups with
a lot of vlan devices on the bridge. There are setups with hundreds of vlans
and hundreds of macvlans on top, propagating it up would send it to all of
them and that wouldn't scale at all, these mostly have IP addresses too.

Perhaps we can enable propagation on a per-port or per-bridge basis, then we
can avoid these walks. That is, make it opt-in.

>> It also seems difficult to avoid re-bouncing the notifier.
> 
> syzbot will make short work of this patch, I think the potential
> for infinite loops has to be addressed somehow. IIUC this is the 
> first instance of forwarding those notifiers to a peer rather
> than within a upper <> lower device hierarchy which is a DAG.
> 
>> Signed-off-by: Alexandra Winter <wintera@linux.ibm.com>
>> ---
>>  drivers/net/veth.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 53 insertions(+)
>>
>> diff --git a/drivers/net/veth.c b/drivers/net/veth.c
>> index d29fb9759cc9..74b074453197 100644
>> --- a/drivers/net/veth.c
>> +++ b/drivers/net/veth.c
>> @@ -1579,6 +1579,57 @@ static void veth_setup(struct net_device *dev)
>>  	dev->mpls_features = NETIF_F_HW_CSUM | NETIF_F_GSO_SOFTWARE;
>>  }
>>  
>> +static bool netif_is_veth(const struct net_device *dev)
>> +{
>> +	return (dev->netdev_ops == &veth_netdev_ops);
> 
> brackets unnecessary 
> 
>> +}
>> +
>> +static void veth_notify_peer(unsigned long event, const struct net_device *dev)
>> +{
>> +	struct net_device *peer;
>> +	struct veth_priv *priv;
>> +
>> +	priv = netdev_priv(dev);
>> +	peer = rtnl_dereference(priv->peer);
>> +	/* avoid re-bounce between 2 bridges */
>> +	if (!netif_is_bridge_port(peer))
>> +		call_netdevice_notifiers(event, peer);
>> +}
>> +
>> +/* Called under rtnl_lock */
>> +static int veth_device_event(struct notifier_block *unused,
>> +			     unsigned long event, void *ptr)
>> +{
>> +	struct net_device *dev, *lower;
>> +	struct list_head *iter;
>> +
>> +	dev = netdev_notifier_info_to_dev(ptr);
>> +
>> +	switch (event) {
>> +	case NETDEV_NOTIFY_PEERS:
>> +	case NETDEV_BONDING_FAILOVER:
>> +	case NETDEV_RESEND_IGMP:
>> +		/* propagate to peer of a bridge attached veth */
>> +		if (netif_is_bridge_master(dev)) {
> 
> Having veth sift thru bridge ports seems strange.
> In fact it could be beneficial to filter the event based on
> port state (whether it's forwarding, vlan etc). But looking
> at details of port state outside the bridge would be even stranger.
> 
>> +			iter = &dev->adj_list.lower;
>> +			lower = netdev_next_lower_dev_rcu(dev, &iter);
>> +			while (lower) {
>> +				if (netif_is_veth(lower))
>> +					veth_notify_peer(event, lower);
>> +				lower = netdev_next_lower_dev_rcu(dev, &iter);
> 
> let's add netdev_for_each_lower_dev_rcu() rather than open-coding
> 
>> +			}
>> +		}
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +	return NOTIFY_DONE;
>> +}
>> +
>> +static struct notifier_block veth_notifier_block __read_mostly = {
>> +		.notifier_call  = veth_device_event,
> 
> extra tab here
> 
>> +};
>> +
>>  /*
>>   * netlink interface
>>   */
>> @@ -1824,12 +1875,14 @@ static struct rtnl_link_ops veth_link_ops = {
>>  
>>  static __init int veth_init(void)
>>  {
>> +	register_netdevice_notifier(&veth_notifier_block);
> 
> this can fail
> 
>>  	return rtnl_link_register(&veth_link_ops);
>>  }
>>  
>>  static __exit void veth_exit(void)
>>  {
>>  	rtnl_link_unregister(&veth_link_ops);
>> +	unregister_netdevice_notifier(&veth_notifier_block);
>>  }
>>  
>>  module_init(veth_init);
> 

