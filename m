Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4967C5A7B2E
	for <lists.bridge@lfdr.de>; Wed, 31 Aug 2022 12:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5877041874;
	Wed, 31 Aug 2022 10:17:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5877041874
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=5lfqfsxW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TpwXr9ELLnSv; Wed, 31 Aug 2022 10:17:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0D0ED41862;
	Wed, 31 Aug 2022 10:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D0ED41862
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95E39C0077;
	Wed, 31 Aug 2022 10:17:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7AE2FC002D
 for <bridge@lists.linux-foundation.org>; Wed, 31 Aug 2022 10:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39F4B61089
 for <bridge@lists.linux-foundation.org>; Wed, 31 Aug 2022 10:16:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39F4B61089
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=5lfqfsxW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iNvJc7fDjL_c for <bridge@lists.linux-foundation.org>;
 Wed, 31 Aug 2022 10:16:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E9D261083
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E9D261083
 for <bridge@lists.linux-foundation.org>; Wed, 31 Aug 2022 10:16:54 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id s11so17685448edd.13
 for <bridge@lists.linux-foundation.org>; Wed, 31 Aug 2022 03:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=gUC8jCerZTff3Za+L82ogTqRn3wXkGKPLzVOu6f3h+Y=;
 b=5lfqfsxWlKrxBBrOeLUMje2AEOCh5maRJL8P2gh9cc/IrUDAXVFUt787IWh5jCqGKi
 /UfFOoLBmPyBQmwPVMlIIyw/cNdARITkWUQsMI4ZN2bkpXvAXgfW50sOr3uscZf9qGS9
 WHZQjK9HB60IIIdavEohf8wDfDWt3p0G2UAgjAbnP8vHYuFpGTm52BaU6hJPOhik/SBH
 VF6P7ZGuqarThEEB1R4y2v0WBGgEoCV8tdwk1COKF8oeGzKzE7uIAtZQ/7iw+n7AJIKr
 b3WXLNrl5TnndFdpGox/jIXh9yz/Zu2AsgpDh/rLgfQa8Xc2iAZkun/JruLTE2887gYW
 FY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=gUC8jCerZTff3Za+L82ogTqRn3wXkGKPLzVOu6f3h+Y=;
 b=oHbW1addsEJr/Sw7FDWmrpmjq0izfQN+muB6bN4fq2Out52XqmsYrjdlPBe66PVQjm
 RtOWnkCjmiD/+c85EMBOHx8fyEQFFP7Lwas0WDa3Y/vj6jqcWAZtEo0IIuWC7q6otHPJ
 75eqnGoGPdD/xLo4DL4s/kpKGh4M5qeFPJxJEeykvf53hiyBLiasoTHNWSouRVh0knDx
 NwJKP2m4sDua/Oh/w4EW3sgfQKi3CzeDQJampRISD3oNlZ20xr8Q8GM33FIDUtbIpnXh
 9KgpEBydPq6ZjRbP0dntXguXdPlpCdBSzBMpigqW8F7L1aXZNlR1XKPb+DFLCfwD82yF
 UD1Q==
X-Gm-Message-State: ACgBeo1+l67lVscP5c6x1+q4NahUhKpkOdXbM/PkIeEbjpfFH5fDaqgN
 NFuBZBO0yz+BzKsK/WQqgkjHrA==
X-Google-Smtp-Source: AA6agR5nB2GowrqNsRHL2/qUnJtgIy4tLQ0clQlgYk3Um7UKDZamXZ2MELYaw0bUSNg+cEnuavjeVQ==
X-Received: by 2002:a05:6402:493:b0:445:b5f0:7a0f with SMTP id
 k19-20020a056402049300b00445b5f07a0fmr23919004edv.120.1661941012023; 
 Wed, 31 Aug 2022 03:16:52 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 l17-20020a056402231100b0043cf2e0ce1csm8768300eda.48.2022.08.31.03.16.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 31 Aug 2022 03:16:51 -0700 (PDT)
Message-ID: <d3c52a3c-0688-ba97-783b-aa67b7307835@blackwall.org>
Date: Wed, 31 Aug 2022 13:16:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
 <94ec6182-0804-7a0e-dcba-42655ff19884@blackwall.org>
 <CAMWRUK4Mo2KHfa-6Z4Ka+ZLx8TtmzSvq9CLmMmEwE5S7Yp7-Kw@mail.gmail.com>
 <34228958-081d-52b5-f363-d2df6ecf251d@blackwall.org>
 <CAMWRUK43+NG63J2YCiKijREjUg5zjii=_2knN6ZCL6PHMP3q8w@mail.gmail.com>
 <46deef15-a67b-91ad-bc47-1b1306d1d654@blackwall.org>
 <CAMWRUK6BQpABuutUwaX36rmQsfuJShQbDjyjSdfDawrQ=pcvaA@mail.gmail.com>
 <601ac27e-b1b1-43c0-34fd-15cdc2224d85@blackwall.org>
 <CAMWRUK4J_-siQTrObifPvfLE4CEXAYme6+6JqpR3+qsr5E0-kQ@mail.gmail.com>
 <CAMWRUK7_w+TLvLBN-tR+f7ygF=Bu9MqY=PQFABA+CsQChGTfTg@mail.gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAMWRUK7_w+TLvLBN-tR+f7ygF=Bu9MqY=PQFABA+CsQChGTfTg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/3] net: vlan: fix bridge binding
 behavior and add selftests
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

On 29/08/2022 23:22, Sevinj Aghayeva wrote:
> Hi Nik,
> 
> Please see below. 
> 
> I had to export call_netdev_notifiers_info. Also, I wanted to define the vlan-specific detail change struct in if_vlan.h and then include if_vlan.h from netdevice.h, where the netdev_notifier_change_details_info struct was defined, but I found out that I cannot include if_vlan.h in netdevice.h. After consulting with Andy I added a new file for the netdev_notifier_change_details_info. Again, I will send out a proper RFC patch once we sort out the details.
> 

Hi,
Please don't top post on netdev@. Sounds ok to me, just break it into separate logical pieces
and please finally send a complete RFC series, reviewing pieces like this is not preferrable.
A few comments below.

> diff --git a/include/linux/if_vlan.h b/include/linux/if_vlan.h
> index 2be4dd7e90a9..ad0eddf1386f 100644
> --- a/include/linux/if_vlan.h
> +++ b/include/linux/if_vlan.h
> @@ -37,6 +37,10 @@ struct vlan_hdr {
>   __be16 h_vlan_encapsulated_proto;
>  };
>  
> +struct vlan_change_details {
> + bool bridge_binding;
> +};
> +
>  /**
>   * struct vlan_ethhdr - vlan ethernet header (ethhdr + vlan_hdr)
>   * @h_dest: destination ethernet address
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 2563d30736e9..ba4746f05d7f 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -2762,6 +2762,7 @@ enum netdev_cmd {
>   NETDEV_UNREGISTER,
>   NETDEV_CHANGEMTU, /* notify after mtu change happened */
>   NETDEV_CHANGEADDR, /* notify after the address change */
> + NETDEV_CHANGE_DETAILS,
>   NETDEV_PRE_CHANGEADDR, /* notify before the address change */
>   NETDEV_GOING_DOWN,
>   NETDEV_CHANGENAME,
> @@ -2898,6 +2899,8 @@ netdev_notifier_info_to_extack(const struct netdev_notifier_info *info)
>  }
>  
>  int call_netdevice_notifiers(unsigned long val, struct net_device *dev);
> +int call_netdevice_notifiers_info(unsigned long val,
> +  struct netdev_notifier_info *info);
>  
>  
>  extern rwlock_t dev_base_lock; /* Device list lock */
> diff --git a/include/linux/notifier_info.h b/include/linux/notifier_info.h
> new file mode 100644
> index 000000000000..c103240588dc
> --- /dev/null
> +++ b/include/linux/notifier_info.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef _LINUX_NOTIFIER_INFO_H_
> +#define _LINUX_NOTIFIER_INFO_H_
> +
> +#include <linux/netdevice.h>
> +#include <linux/if_vlan.h>
> +

You can add a comment here about how the struct would be used

> +struct netdev_notifier_change_details_info {
> + struct netdev_notifier_info info; /* must be first */
> + union {
> + struct vlan_change_details vlan;
> + } details;

union can be anonymous, no need to add another name here

> +};
> +
> +#endif /* !(_LINUX_NOTIFIER_INFO_H_) */
> diff --git a/net/8021q/vlan.h b/net/8021q/vlan.h
> index 5eaf38875554..71947cdcfaaa 100644
> --- a/net/8021q/vlan.h
> +++ b/net/8021q/vlan.h
> @@ -130,7 +130,7 @@ void vlan_dev_set_ingress_priority(const struct net_device *dev,
>  int vlan_dev_set_egress_priority(const struct net_device *dev,
>   u32 skb_prio, u16 vlan_prio);
>  void vlan_dev_free_egress_priority(const struct net_device *dev);
> -int vlan_dev_change_flags(const struct net_device *dev, u32 flag, u32 mask);
> +int vlan_dev_change_flags(struct net_device *dev, u32 flag, u32 mask);
>  void vlan_dev_get_realdev_name(const struct net_device *dev, char *result,
>         size_t size);
>  
> diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
> index 839f2020b015..d737e259e295 100644
> --- a/net/8021q/vlan_dev.c
> +++ b/net/8021q/vlan_dev.c
> @@ -22,6 +22,7 @@
>  #include <linux/skbuff.h>
>  #include <linux/netdevice.h>
>  #include <linux/net_tstamp.h>
> +#include <linux/notifier_info.h>
>  #include <linux/etherdevice.h>
>  #include <linux/ethtool.h>
>  #include <linux/phy.h>
> @@ -211,8 +212,9 @@ int vlan_dev_set_egress_priority(const struct net_device *dev,
>  /* Flags are defined in the vlan_flags enum in
>   * include/uapi/linux/if_vlan.h file.
>   */
> -int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
> +int vlan_dev_change_flags(struct net_device *dev, u32 flags, u32 mask)
>  {
> + struct netdev_notifier_change_details_info info;
>   struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
>   u32 old_flags = vlan->flags;
>  
> @@ -223,19 +225,31 @@ int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
>  
>   vlan->flags = (old_flags & ~mask) | (flags & mask);
>  
> - if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
> + if (!netif_running(dev))
> + return 0;
> +
> + if ((vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
>   if (vlan->flags & VLAN_FLAG_GVRP)
>   vlan_gvrp_request_join(dev);
>   else
>   vlan_gvrp_request_leave(dev);
>   }
>  
> - if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
> + if ((vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
>   if (vlan->flags & VLAN_FLAG_MVRP)
>   vlan_mvrp_request_join(dev);
>   else
>   vlan_mvrp_request_leave(dev);
>   }
> +
> + if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&

((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING)

> +    netif_is_bridge_master(vlan->real_dev)) {
> + info.info.dev <http://info.info.dev> = dev;
> + info.details.vlan.bridge_binding =
> +    !!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING);
> + call_netdevice_notifiers_info(NETDEV_CHANGE_DETAILS, &info.info <http://info.info>);

info.info?!

> + }
> +
>   return 0;
>  }
>  
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index 96e91d69a9a8..62e939c6a3f0 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -51,6 +51,11 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
>   }
>   }
>  
> + if (is_vlan_dev(dev)) {
> + br_vlan_device_event(dev, event, ptr);
> + return NOTIFY_DONE;
> + }
> +
>   /* not a port of a bridge */
>   p = br_port_get_rtnl(dev);
>   if (!p)
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 06e5f6faa431..a9a08e49c76c 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -1470,6 +1470,8 @@ void br_vlan_get_stats(const struct net_bridge_vlan *v,
>  void br_vlan_port_event(struct net_bridge_port *p, unsigned long event);
>  int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
>   void *ptr);
> +void br_vlan_device_event(struct net_device *dev, unsigned long event,
> +  void *ptr);
>  void br_vlan_rtnl_init(void);
>  void br_vlan_rtnl_uninit(void);
>  void br_vlan_notify(const struct net_bridge *br,
> @@ -1701,6 +1703,11 @@ static inline int br_vlan_bridge_event(struct net_device *dev,
>   return 0;
>  }
>  
> +static void br_vlan_device_event(struct net_device *dev,
> + unsigned long event, void *ptr)
> +{
> +}
> +
>  static inline void br_vlan_rtnl_init(void)
>  {
>  }
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index 0f5e75ccac79..fe00efa46ce8 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <linux/kernel.h>
>  #include <linux/netdevice.h>
> +#include <linux/notifier_info.h>
>  #include <linux/rtnetlink.h>
>  #include <linux/slab.h>
>  #include <net/switchdev.h>
> @@ -1768,6 +1769,23 @@ void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
>   }
>  }
>  
> +void br_vlan_device_event(struct net_device *dev, unsigned long event, void *ptr)
> +{
> + struct netdev_notifier_change_details_info *info;
> + struct net_device *br_dev;
> +
> + switch (event) {
> + case NETDEV_CHANGE_DETAILS:
> + info = ptr;
> + if (netif_is_bridge_master(vlan_dev_priv(dev)->real_dev)) {

no need for the indentation here, just check the opposite and break if it's not

> + br_dev = vlan_dev_priv(dev)->real_dev;
> + br_vlan_upper_change(br_dev, dev,
> +    info->details.vlan.bridge_binding);
> + }
> + break;
> + }
> +}
> +
>  static bool br_vlan_stats_fill(struct sk_buff *skb,
>         const struct net_bridge_vlan *v)
>  {
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 30a1603a7225..2eed064e9529 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -160,7 +160,7 @@ struct list_head ptype_base[PTYPE_HASH_SIZE] __read_mostly;
>  struct list_head ptype_all __read_mostly; /* Taps */
>  
>  static int netif_rx_internal(struct sk_buff *skb);
> -static int call_netdevice_notifiers_info(unsigned long val,
> +int call_netdevice_notifiers_info(unsigned long val,
>   struct netdev_notifier_info *info);

you have to move this to its proper header file

>  static int call_netdevice_notifiers_extack(unsigned long val,
>     struct net_device *dev,
> @@ -1624,7 +1624,7 @@ const char *netdev_cmd_to_name(enum netdev_cmd cmd)
>   N(POST_INIT) N(RELEASE) N(NOTIFY_PEERS) N(JOIN) N(CHANGEUPPER)
>   N(RESEND_IGMP) N(PRECHANGEMTU) N(CHANGEINFODATA) N(BONDING_INFO)
>   N(PRECHANGEUPPER) N(CHANGELOWERSTATE) N(UDP_TUNNEL_PUSH_INFO)
> - N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN)
> + N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN) N(CHANGE_DETAILS)
>   N(CVLAN_FILTER_PUSH_INFO) N(CVLAN_FILTER_DROP_INFO)
>   N(SVLAN_FILTER_PUSH_INFO) N(SVLAN_FILTER_DROP_INFO)
>   N(PRE_CHANGEADDR) N(OFFLOAD_XSTATS_ENABLE) N(OFFLOAD_XSTATS_DISABLE)
> @@ -1927,7 +1927,7 @@ static void move_netdevice_notifiers_dev_net(struct net_device *dev,
>   * are as for raw_notifier_call_chain().
>   */
>  
> -static int call_netdevice_notifiers_info(unsigned long val,
> +int call_netdevice_notifiers_info(unsigned long val,
>   struct netdev_notifier_info *info)
>  {
>   struct net *net = dev_net(info->dev);
> @@ -1944,6 +1944,7 @@ static int call_netdevice_notifiers_info(unsigned long val,
>   return ret;
>   return raw_notifier_call_chain(&netdev_chain, val, info);
>  }
> +EXPORT_SYMBOL(call_netdevice_notifiers_info);

hmm, I see that call_netdevice_notifiers() is EXPORT_SYMBOL() only (not the _GPL)
I wonder if this should instead be EXPORT_SYMBOL_GPL() as it's a new export

>  
>  /**
>   * call_netdevice_notifiers_info_robust - call per-netns notifier blocks
> 
> On Mon, Aug 22, 2022 at 7:18 PM Sevinj Aghayeva <sevinj.aghayeva@gmail.com <mailto:sevinj.aghayeva@gmail.com>> wrote:
> 
> 
> 
>     On Mon, Aug 22, 2022 at 4:01 AM Nikolay Aleksandrov <razor@blackwall.org <mailto:razor@blackwall.org>> wrote:
> 
>         On 20/08/2022 14:33, Sevinj Aghayeva wrote:
>         > On Thu, Aug 18, 2022 at 8:00 AM Nikolay Aleksandrov <razor@blackwall.org <mailto:razor@blackwall.org>> wrote:
>         >>
>         >> On 18/08/2022 14:50, Sevinj Aghayeva wrote:
>         [snip]
>         >>
>         >> Hi,
>         >> Handling all vlan device-related changes in br_vlan_device_event() sounds good to me.
>         >> Please add it to br_vlan.c.
>         >
>         > Hi Nik,
>         >
>         > Can you please review this diff before I make it into a proper patchset? Thanks!
>         >
> 
>         Hi,
>         A few comments inline below, but in general when you prepare the rfc commit please
>         explain the motivation in detail why this way was chosen and a new notification type
>         is needed (e.g. why not use NETDEV_CHANGEINFODATA or extend NETDEV_CHANGE).
>         As I mentioned earlier it'd be nice to get feedback from others about adding this
>         new notification, so they should know the "why" in detail.
> 
> 
>     Sure, I will do that in the RFC patchset, but first I want to make sure I got the details right before making the RFC patchset. Thanks for the feedback. Please see inline. 
> 
> 
>         > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
>         > index 2563d30736e9..0ce3da42325e 100644
>         > --- a/include/linux/netdevice.h
>         > +++ b/include/linux/netdevice.h
>         > @@ -2762,6 +2762,7 @@ enum netdev_cmd {
>         >   NETDEV_UNREGISTER,
>         >   NETDEV_CHANGEMTU, /* notify after mtu change happened */
>         >   NETDEV_CHANGEADDR, /* notify after the address change */
>         > + NETDEV_CHANGE_DETAILS,
>         >   NETDEV_PRE_CHANGEADDR, /* notify before the address change */
>         >   NETDEV_GOING_DOWN,
>         >   NETDEV_CHANGENAME,
>         > @@ -2837,6 +2838,13 @@ struct netdev_notifier_changelowerstate_info {
>         >   void *lower_state_info; /* is lower dev state */
>         >  };
>         >
>         > +struct netdev_notifier_change_details_info {
>         > + struct netdev_notifier_info info; /* must be first */
>         > + union {
>         > + bool bridge_binding;
> 
>         this should be in a vlan-specific structure, defined in if_vlan.h
>         every other link type which wants to use the notification would define its
>         own struct type
> 
> 
>     Okay, will move it there.
>      
> 
> 
>         > + } details;
>         > +};
>         > +
>         >  struct netdev_notifier_pre_changeaddr_info {
>         >   struct netdev_notifier_info info; /* must be first */
>         >   const unsigned char *dev_addr;
>         > @@ -3836,6 +3844,8 @@ int __dev_set_mtu(struct net_device *, int);
>         >  int dev_set_mtu(struct net_device *, int);
>         >  int dev_pre_changeaddr_notify(struct net_device *dev, const char *addr,
>         >         struct netlink_ext_ack *extack);
>         > +int dev_change_details_notify(struct net_device *dev, bool bridge_binding,
>         > +       struct netlink_ext_ack *extack);
> 
>         this helper is not needed 
> 
> 
>         >  int dev_set_mac_address(struct net_device *dev, struct sockaddr *sa,
>         >   struct netlink_ext_ack *extack);
>         >  int dev_set_mac_address_user(struct net_device *dev, struct sockaddr *sa,
>         > diff --git a/net/8021q/vlan.h b/net/8021q/vlan.h
>         > index 5eaf38875554..71947cdcfaaa 100644
>         > --- a/net/8021q/vlan.h
>         > +++ b/net/8021q/vlan.h
>         > @@ -130,7 +130,7 @@ void vlan_dev_set_ingress_priority(const struct
>         > net_device *dev,
>         >  int vlan_dev_set_egress_priority(const struct net_device *dev,
>         >   u32 skb_prio, u16 vlan_prio);
>         >  void vlan_dev_free_egress_priority(const struct net_device *dev);
>         > -int vlan_dev_change_flags(const struct net_device *dev, u32 flag, u32 mask);
>         > +int vlan_dev_change_flags(struct net_device *dev, u32 flag, u32 mask);
>         >  void vlan_dev_get_realdev_name(const struct net_device *dev, char *result,
>         >          size_t size);
>         >
>         > diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
>         > index 839f2020b015..489baa8435de 100644
>         > --- a/net/8021q/vlan_dev.c
>         > +++ b/net/8021q/vlan_dev.c
>         > @@ -211,7 +211,7 @@ int vlan_dev_set_egress_priority(const struct
>         > net_device *dev,
>         >  /* Flags are defined in the vlan_flags enum in
>         >   * include/uapi/linux/if_vlan.h file.
>         >   */
>         > -int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
>         > +int vlan_dev_change_flags(struct net_device *dev, u32 flags, u32 mask)
> 
>         please don't remove the const, this function shouldn't change dev's struct
> 
> 
>     I tried not to remove const, but it seems impossible because call_netdevice_notifiers_info that we eventually call from vlan_dev_change_flags takes a non-const struct info that has a dev field being set from the const vlan_dev_change_flags. 
>      
> 
> 
>         >  {
>         >   struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
>         >   u32 old_flags = vlan->flags;
>         > @@ -223,19 +223,29 @@ int vlan_dev_change_flags(const struct
>         > net_device *dev, u32 flags, u32 mask)
>         >
>         >   vlan->flags = (old_flags & ~mask) | (flags & mask);
>         >
>         > - if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
>         > + if (!netif_running(dev))
>         > + return 0;
>         > +
>         > + if ((vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
>         >   if (vlan->flags & VLAN_FLAG_GVRP)
>         >   vlan_gvrp_request_join(dev);
>         >   else
>         >   vlan_gvrp_request_leave(dev);
>         >   }
>         >
>         > - if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
>         > + if ((vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
>         >   if (vlan->flags & VLAN_FLAG_MVRP)
>         >   vlan_mvrp_request_join(dev);
>         >   else
>         >   vlan_mvrp_request_leave(dev);
>         >   }
>         > +
>         > + if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
>         > +     netif_is_bridge_master(vlan->real_dev)) {
>         > + dev_change_details_notify(dev,
>         > +     !!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING), NULL);
> 
>         this helper is not needed, just fill in the details here and send the notification
> 
> 
>     Okay, in that case I will need to export call_netdevice_notifiers_info so that I can call it from here.
> 
>         > + }
>         > +
>         >   return 0;
>         >  }
>         >
>         > diff --git a/net/bridge/br.c b/net/bridge/br.c
>         > index 96e91d69a9a8..62e939c6a3f0 100644
>         > --- a/net/bridge/br.c
>         > +++ b/net/bridge/br.c
>         > @@ -51,6 +51,11 @@ static int br_device_event(struct notifier_block
>         > *unused, unsigned long event, v
>         >   }
>         >   }
>         >
>         > + if (is_vlan_dev(dev)) {
>         > + br_vlan_device_event(dev, event, ptr);
>         > + return NOTIFY_DONE;
>         > + }
>         > +
>         >   /* not a port of a bridge */
>         >   p = br_port_get_rtnl(dev);
>         >   if (!p)
>         > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>         > index 06e5f6faa431..a9a08e49c76c 100644
>         > --- a/net/bridge/br_private.h
>         > +++ b/net/bridge/br_private.h
>         > @@ -1470,6 +1470,8 @@ void br_vlan_get_stats(const struct net_bridge_vlan *v,
>         >  void br_vlan_port_event(struct net_bridge_port *p, unsigned long event);
>         >  int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
>         >   void *ptr);
>         > +void br_vlan_device_event(struct net_device *dev, unsigned long event,
>         > +   void *ptr);
>         >  void br_vlan_rtnl_init(void);
>         >  void br_vlan_rtnl_uninit(void);
>         >  void br_vlan_notify(const struct net_bridge *br,
>         > @@ -1701,6 +1703,11 @@ static inline int br_vlan_bridge_event(struct
>         > net_device *dev,
>         >   return 0;
>         >  }
>         >
>         > +static void br_vlan_device_event(struct net_device *dev,
>         > + unsigned long event, void *ptr)
>         > +{
>         > +}
>         > +
>         >  static inline void br_vlan_rtnl_init(void)
>         >  {
>         >  }
>         > diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
>         > index 0f5e75ccac79..70a9950df175 100644
>         > --- a/net/bridge/br_vlan.c
>         > +++ b/net/bridge/br_vlan.c
>         > @@ -1768,6 +1768,20 @@ void br_vlan_port_event(struct net_bridge_port
>         > *p, unsigned long event)
>         >   }
>         >  }
>         >
>         > +void br_vlan_device_event(struct net_device *dev, unsigned long
>         > event, void *ptr)
>         > +{
>         > + struct netdev_notifier_change_details_info *info;
>         > + struct net_device *br_dev;
>         > +
>         > + switch (event) {
>         > + case NETDEV_CHANGE_DETAILS:
>         > + info = ptr;
>         > + br_dev = vlan_dev_priv(dev)->real_dev;
> 
>         you're not guaranteed to have a bridge device as its real_dev, so you should
>         validate that the vlan's real dev is a bridge
> 
> 
>     Okay, will do.
>      
> 
> 
>         > + br_vlan_upper_change(br_dev, dev, info->details.bridge_binding);
>         > + break;
>         > + }
>         > +}
>         > +
>         >  static bool br_vlan_stats_fill(struct sk_buff *skb,
>         >          const struct net_bridge_vlan *v)
>         >  {
>         > diff --git a/net/core/dev.c b/net/core/dev.c
>         > index 30a1603a7225..dcdbc625585d 100644
>         > --- a/net/core/dev.c
>         > +++ b/net/core/dev.c
>         > @@ -1624,7 +1624,7 @@ const char *netdev_cmd_to_name(enum netdev_cmd cmd)
>         >   N(POST_INIT) N(RELEASE) N(NOTIFY_PEERS) N(JOIN) N(CHANGEUPPER)
>         >   N(RESEND_IGMP) N(PRECHANGEMTU) N(CHANGEINFODATA) N(BONDING_INFO)
>         >   N(PRECHANGEUPPER) N(CHANGELOWERSTATE) N(UDP_TUNNEL_PUSH_INFO)
>         > - N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN)
>         > + N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN) N(CHANGE_DETAILS)
>         >   N(CVLAN_FILTER_PUSH_INFO) N(CVLAN_FILTER_DROP_INFO)
>         >   N(SVLAN_FILTER_PUSH_INFO) N(SVLAN_FILTER_DROP_INFO)
>         >   N(PRE_CHANGEADDR) N(OFFLOAD_XSTATS_ENABLE) N(OFFLOAD_XSTATS_DISABLE)
>         > @@ -8767,6 +8767,27 @@ int dev_pre_changeaddr_notify(struct net_device
>         > *dev, const char *addr,
>         >  }
>         >  EXPORT_SYMBOL(dev_pre_changeaddr_notify);
>         >
>         > +/**
>         > + * dev_change_details_notify - Call NETDEV_PRE_CHANGE_DETAILS.
>         > + * @dev: device
>         > + * @bridge_binding: bridge binding setting
>         > + * @extack: netlink extended ack
>         > + */
>         > +int dev_change_details_notify(struct net_device *dev, bool bridge_binding,
>         > +       struct netlink_ext_ack *extack)
>         > +{
>         > + struct netdev_notifier_change_details_info info = {
>         > + .info.dev <http://info.dev> = dev,
>         > + .info.extack = extack,
>         > + .details.bridge_binding = bridge_binding,
>         > + };
>         > + int rc;
>         > +
>         > + rc = call_netdevice_notifiers_info(NETDEV_CHANGE_DETAILS, &info.info <http://info.info>);
>         > + return notifier_to_errno(rc);
>         > +}
>         > +EXPORT_SYMBOL(dev_change_details_notify);
>         > +
> 
>         this helper is unnecessary, just fill in the struct at the caller site and
>         send the notification directly
> 
> 
>     Okay, will remove it.
> 
>     Thanks for the review! I will send the updated patch soon. 
> 
> 
>         >  /**
>         >   * dev_set_mac_address - Change Media Access Control Address
>         >   * @dev: device
>         >
>         >
>         >>
>         >> Thanks,
>         >>  Nik
>         >>
>         >>
> 
>         Cheers,
>          Nik
> 
> 
> 
> 
>     -- 
> 
>     Sevinj.Aghayeva
> 
> 
> 
> -- 
> 
> Sevinj.Aghayeva

