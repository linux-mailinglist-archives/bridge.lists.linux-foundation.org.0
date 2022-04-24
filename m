Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5211650DB92
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92C5160B6C;
	Mon, 25 Apr 2022 08:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvSSp5pyABYV; Mon, 25 Apr 2022 08:47:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4645F60B78;
	Mon, 25 Apr 2022 08:47:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7772AC008C;
	Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1177AC002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DCD17410BB
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0daSypE5ErUW for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 19:49:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85EFE410B9
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:49:50 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id v12so11309363wrv.10
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 12:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=boLJh5OyVYiNVu2gAfu6+DUGFNi7Uf7BGILjixvPNTA=;
 b=WBomqeWwPu/RUbs7dkkNUzrHZNSd1u6N7+Lt/rM4qppND5iCbSPlaHKLPzQElZBNRo
 AAINaXHz8f0AU8RgSUGcYNvwJ1lkFbS30urOjuAkQuI5cOM0htwNdYCuUdGgaltzOOex
 Fwn/UKSWCZgunu0bJA3G336ITXibceNRfmiiNqYsguzoRc+UVLUUvwAbiLsbFvCJ3qP7
 /I3JuREWHvi9Ggl4J9lFv3BwNo65MUAw1jbrmAPGtz7PCFlD+QtL902Lx0bebS3/Zbqt
 GHTDf5nN1yE+4wMU9T9mrK5I58rZUgn7Ibgk+gcMzi9xnWQ4d9X4q0Uu5kf2msN1aglY
 dFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=boLJh5OyVYiNVu2gAfu6+DUGFNi7Uf7BGILjixvPNTA=;
 b=u0dQqL7Hy2bPXyZ86+qH5T0oXetNn6ilXaEDLeyeoTW0yBsmNFyr2y7t6IZod91p2u
 7XMkdMLMQxnL21zOAlYb5mE3o5JyJbsLmC2wnG8WGC2gyFLJdBKgpbw+aTTanWOUm6Qc
 MxUN8m3WTLYNNjTrezLYdZVGqzA6i1I0ZnJg7g6PxUoOvNxcPg4+qSaKlbKt+XzKb5Ch
 aTUPE9cFIKilMyzKdjX3f3Ef8giJQlcKQyMY8wUXG4ybYZO0GjKsJb0L0ZE6vEk6Iulv
 SrhinruNQCOWjJWOoWo8yo96UyoeAKCGxl/tjSSgSJqr+VVam5vAF1qztArU0A4nPV47
 NI3Q==
X-Gm-Message-State: AOAM532u0XgOOgP645GBf4T836F8+JVAFGeDP73HZ7yzz0m8/w9YXKWJ
 6J4khlcHPS5W5UD1xsBrcvI=
X-Google-Smtp-Source: ABdhPJz4AtWq9RCD+ICjQu6KNVBRmnExGuPcE3pxgqnSKr+WconiJV81IcvQP65/UrJFUbFGq0iJKg==
X-Received: by 2002:adf:d1ce:0:b0:20a:992a:3b54 with SMTP id
 b14-20020adfd1ce000000b0020a992a3b54mr11284290wrd.270.1650829788607; 
 Sun, 24 Apr 2022 12:49:48 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 g13-20020a5d64ed000000b0020a9e488976sm7670529wri.25.2022.04.24.12.49.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 12:49:48 -0700 (PDT)
Message-ID: <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
Date: Sun, 24 Apr 2022 21:49:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, anthony.l.nguyen@intel.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com, intel-wired-lan@lists.osuosl.org
Subject: Re: [Bridge] [PATCH net-next v3 1/2] rtnetlink: add extack support
 in fdb del handlers
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


On ٢٤‏/٤‏/٢٠٢٢ ٢١:٠٢, Nikolay Aleksandrov wrote:
> On 24/04/2022 15:09, Alaa Mohamed wrote:
>> Add extack support to .ndo_fdb_del in netdevice.h and
>> all related methods.
>>
>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>> ---
>> changes in V3:
>>          fix errors reported by checkpatch.pl
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
>>   drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
>>   drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
>>   drivers/net/macvlan.c                            | 2 +-
>>   drivers/net/vxlan/vxlan_core.c                   | 2 +-
>>   include/linux/netdevice.h                        | 2 +-
>>   net/bridge/br_fdb.c                              | 2 +-
>>   net/bridge/br_private.h                          | 2 +-
>>   net/core/rtnetlink.c                             | 4 ++--
>>   9 files changed, 12 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index d768925785ca..7b55d8d94803 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
>>   static int
>>   ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>>   	    struct net_device *dev, const unsigned char *addr,
>> -	    __always_unused u16 vid)
>> +	    __always_unused u16 vid, struct netlink_ext_ack *extack)
>>   {
>>   	int err;
>> -
>> +
> What's changed here?

In the previous version, I removed the blank line after "int err;" and 
you said I shouldn't so I added blank line.

>
>>   	if (ndm->ndm_state & NUD_PERMANENT) {
>>   		netdev_err(dev, "FDB only supports static addresses\n");
>>   		return -EINVAL;
>> diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
>> index 247bc105bdd2..e07c64e3159c 100644
>> --- a/drivers/net/ethernet/mscc/ocelot_net.c
>> +++ b/drivers/net/ethernet/mscc/ocelot_net.c
>> @@ -774,14 +774,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>>
>>   static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>   			       struct net_device *dev,
>> -			       const unsigned char *addr, u16 vid)
>> +			       const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>   {
>>   	struct ocelot_port_private *priv = netdev_priv(dev);
>>   	struct ocelot_port *ocelot_port = &priv->port;
>>   	struct ocelot *ocelot = ocelot_port->ocelot;
>>   	int port = priv->chip_port;
>>
>> -	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
>> +	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
>>   }
>>
>>   static int ocelot_port_fdb_dump(struct sk_buff *skb,
>> diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
>> index d320567b2cca..51fa23418f6a 100644
>> --- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
>> +++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
>> @@ -368,7 +368,7 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)
>>
>>   static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>   			struct net_device *netdev,
>> -			const unsigned char *addr, u16 vid)
>> +			const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>   {
>>   	struct qlcnic_adapter *adapter = netdev_priv(netdev);
>>   	int err = -EOPNOTSUPP;
>> diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
>> index 069e8824c264..ffd34d9f7049 100644
>> --- a/drivers/net/macvlan.c
>> +++ b/drivers/net/macvlan.c
>> @@ -1017,7 +1017,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>>
>>   static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>   			   struct net_device *dev,
>> -			   const unsigned char *addr, u16 vid)
>> +			   const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>   {
>>   	struct macvlan_dev *vlan = netdev_priv(dev);
>>   	int err = -EINVAL;
>> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
>> index de97ff98d36e..cf2f60037340 100644
>> --- a/drivers/net/vxlan/vxlan_core.c
>> +++ b/drivers/net/vxlan/vxlan_core.c
>> @@ -1280,7 +1280,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
>>   /* Delete entry (via netlink) */
>>   static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>   			    struct net_device *dev,
>> -			    const unsigned char *addr, u16 vid)
>> +			    const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>   {
>>   	struct vxlan_dev *vxlan = netdev_priv(dev);
>>   	union vxlan_addr ip;
>> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
>> index 28ea4f8269d4..d0d2a8f33c73 100644
>> --- a/include/linux/netdevice.h
>> +++ b/include/linux/netdevice.h
>> @@ -1509,7 +1509,7 @@ struct net_device_ops {
>>   					       struct nlattr *tb[],
>>   					       struct net_device *dev,
>>   					       const unsigned char *addr,
>> -					       u16 vid);
>> +					       u16 vid, struct netlink_ext_ack *extack);
>>   	int			(*ndo_fdb_dump)(struct sk_buff *skb,
>>   						struct netlink_callback *cb,
>>   						struct net_device *dev,
>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> index 6ccda68bd473..5bfce2e9a553 100644
>> --- a/net/bridge/br_fdb.c
>> +++ b/net/bridge/br_fdb.c
>> @@ -1110,7 +1110,7 @@ static int __br_fdb_delete(struct net_bridge *br,
>>   /* Remove neighbor entry with RTM_DELNEIGH */
>>   int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>   		  struct net_device *dev,
>> -		  const unsigned char *addr, u16 vid)
>> +		  const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>   {
>>   	struct net_bridge_vlan_group *vg;
>>   	struct net_bridge_port *p = NULL;
>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> index 18ccc3d5d296..95348c1c9ce5 100644
>> --- a/net/bridge/br_private.h
>> +++ b/net/bridge/br_private.h
>> @@ -780,7 +780,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>>   		   const unsigned char *addr, u16 vid, unsigned long flags);
>>
>>   int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>> -		  struct net_device *dev, const unsigned char *addr, u16 vid);
>> +		  struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);
> This is way too long (111 chars) and checkpatch should've complained about it.
> WARNING: line length of 111 exceeds 100 columns
> #234: FILE: net/bridge/br_private.h:782:
> +		  struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);

I will fix it.

>
>>   int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
>>   	       const unsigned char *addr, u16 vid, u16 nlh_flags,
>>   	       struct netlink_ext_ack *extack);
>> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
>> index 4041b3e2e8ec..99b30ae58a47 100644
>> --- a/net/core/rtnetlink.c
>> +++ b/net/core/rtnetlink.c
>> @@ -4223,7 +4223,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>   		const struct net_device_ops *ops = br_dev->netdev_ops;
>>
>>   		if (ops->ndo_fdb_del)
>> -			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
>> +			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
>>
>>   		if (err)
>>   			goto out;
>> @@ -4235,7 +4235,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>   	if (ndm->ndm_flags & NTF_SELF) {
>>   		if (dev->netdev_ops->ndo_fdb_del)
>>   			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
>> -							   vid);
>> +							   vid, extack);
>>   		else
>>   			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
>>
>> --
>> 2.36.0
>>
