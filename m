Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8325591EE4
	for <lists.bridge@lfdr.de>; Sun, 14 Aug 2022 09:38:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AFB560093;
	Sun, 14 Aug 2022 07:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AFB560093
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=pvbxI6kb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a4VfJxUlybkY; Sun, 14 Aug 2022 07:38:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2BBE561196;
	Sun, 14 Aug 2022 07:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BBE561196
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF189C007B;
	Sun, 14 Aug 2022 07:38:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5431C002D
 for <bridge@lists.linux-foundation.org>; Sun, 14 Aug 2022 07:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DF3340866
 for <bridge@lists.linux-foundation.org>; Sun, 14 Aug 2022 07:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DF3340866
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=pvbxI6kb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DyIC1XNjTVUS for <bridge@lists.linux-foundation.org>;
 Sun, 14 Aug 2022 07:38:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97029403C5
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97029403C5
 for <bridge@lists.linux-foundation.org>; Sun, 14 Aug 2022 07:38:12 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id z20so6092783edb.9
 for <bridge@lists.linux-foundation.org>; Sun, 14 Aug 2022 00:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=jgwCjSUazOczYXnvPhV/4jsgZnpwHDyElQhyBWvpUg0=;
 b=pvbxI6kbJpA3f4OhtDpudJMcls+h6nJc7tj0RA7uFg7EjsOakn578kIxoE+mLrQboH
 d690GKN6yG6pCR4OXHv801YdqEQBUDiQ1UrZrAf/mKO0TUZQ7N97YiP5+aOpS0pmXkJC
 RPvVYsJQf9vT5wNSVbICpRQOJoAyXBBRB4p1x6UIh6EFVWrgL6B/PD6QJIPk8gHNG06i
 jhJ2S4KaTFW6SQDYSptW+Ka8doH4sBXS9/paJQh51mVydKLSJSH50G0KpUJVk1Dod2D6
 YRotX2qLc5jswFKbk9mfihFDgX9m4nr3TRH0/OeG7e6AqAHLDFqIbYLQVBd7JQuT6Fyy
 IjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=jgwCjSUazOczYXnvPhV/4jsgZnpwHDyElQhyBWvpUg0=;
 b=J/LuiJZwMr8Ae4aiCcyrj8+PvmgzwvqAIrC+u1svs50HKj2UUnAAGxi/mh9LFqIIPg
 VyGNAtxn7Y2q5eR/Qs8jXKMdjkuJkr+rFjXUB4f9eQ6CKyGp7hCzj2NofwczdeW4bQBr
 wijYrtBQ/zyMjy7PlRBdrQqHn/4fgDSo0Cw1ps3QrBJoQm5By7n3O9TX2nJO0OHI82LT
 iEHasvd8GMwZOkLSuAdb64XSmyp3gFylTJrDISz7cIJnh33HvyV9kIQ/6uaRepKGb0oQ
 sAADM4N5JaA+3MMyFPRwCVe2AbEnkoYG5U5wpT5SIB1HkftPgHK6avnxAJEaxXePN1O2
 ebXA==
X-Gm-Message-State: ACgBeo0lWy3iacxqVTtQ65iShQfvWtZSnNujYWR+7ILcCysLv60VOKDK
 k94XKzDbj3SXl0/lBtqLAbqZag==
X-Google-Smtp-Source: AA6agR74WHaLG5Sc8zp/rZ8S4dfIYUwaL9OWwp94l2ANFxLkKJ7hNEncQtZmqnxZqiuotnp/dL0TeQ==
X-Received: by 2002:a05:6402:42d3:b0:435:2c49:313d with SMTP id
 i19-20020a05640242d300b004352c49313dmr9826265edc.86.1660462690400; 
 Sun, 14 Aug 2022 00:38:10 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 cs1-20020a0564020c4100b0043e35ae2610sm4257090edb.27.2022.08.14.00.38.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Aug 2022 00:38:09 -0700 (PDT)
Message-ID: <34228958-081d-52b5-f363-d2df6ecf251d@blackwall.org>
Date: Sun, 14 Aug 2022 10:38:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
 <94ec6182-0804-7a0e-dcba-42655ff19884@blackwall.org>
 <CAMWRUK4Mo2KHfa-6Z4Ka+ZLx8TtmzSvq9CLmMmEwE5S7Yp7-Kw@mail.gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAMWRUK4Mo2KHfa-6Z4Ka+ZLx8TtmzSvq9CLmMmEwE5S7Yp7-Kw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 12/08/2022 18:30, Sevinj Aghayeva wrote:
> On Wed, Aug 10, 2022 at 4:54 AM Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>
>> On 10/08/2022 06:11, Sevinj Aghayeva wrote:
>>> When bridge binding is enabled for a vlan interface, it is expected
>>> that the link state of the vlan interface will track the subset of the
>>> ports that are also members of the corresponding vlan, rather than
>>> that of all ports.
>>>
>>> Currently, this feature works as expected when a vlan interface is
>>> created with bridge binding enabled:
>>>
>>>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>>>         bridge_binding on
>>>
>>> However, the feature does not work when a vlan interface is created
>>> with bridge binding disabled, and then enabled later:
>>>
>>>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>>>         bridge_binding off
>>>   ip link set vlan10 type vlan bridge_binding on
>>>
>>> After these two commands, the link state of the vlan interface
>>> continues to track that of all ports, which is inconsistent and
>>> confusing to users. This series fixes this bug and introduces two
>>> tests for the valid behavior.
>>>
>>> Sevinj Aghayeva (3):
>>>   net: core: export call_netdevice_notifiers_info
>>>   net: 8021q: fix bridge binding behavior for vlan interfaces
>>>   selftests: net: tests for bridge binding behavior
>>>
>>>  include/linux/netdevice.h                     |   2 +
>>>  net/8021q/vlan.h                              |   2 +-
>>>  net/8021q/vlan_dev.c                          |  25 ++-
>>>  net/core/dev.c                                |   7 +-
>>>  tools/testing/selftests/net/Makefile          |   1 +
>>>  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>>>  6 files changed, 172 insertions(+), 8 deletions(-)
>>>  create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
>>>
>>
>> Hi,
>> NETDEV_CHANGE event is already propagated when the vlan changes flags,
>> NETDEV_CHANGEUPPER is used when the devices' relationship changes not their flags.
>> The only problem you have to figure out is that the flag has changed. The fix itself
>> must be done within the bridge, not 8021q. You can figure it out based on current bridge
>> loose binding state and the vlan's changed state, again in the bridge's NETDEV_CHANGE
>> handler. Unfortunately the proper fix is much more involved and will need new
>> infra, you'll have to track the loose binding vlans in the bridge. To do that you should
>> add logic that reflects the current vlans' loose binding state *only* for vlans that also
>> exist in the bridge, the rest which are upper should be carrier off if they have the loose
>> binding flag set.
>>
>> Alternatively you can add a new NETDEV_ notifier (using something similar to struct netdev_notifier_pre_changeaddr_info)
>> and add link type-specific space (e.g. union of link type-specific structs) in the struct which will contain
>> what changed for 8021q and will be properly interpreted by the bridge. The downside is that we'll generate
>> 2 notifications when changing the loose binding flag, but on the bright side won't have to track anything
>> in the bridge, just handle the new notifier type. This might be the easiest path, the fix is still in
>> the bridge though, the 8021q module just needs to fill in the new struct and emit the notification on
>> any loose binding changes, the bridge must decide if it should process it (i.e. based on upper/lower
>> relationship). Such notifier can be also re-used by other link types to propagate link-type specific
>> changes.

Hi,

> 
> Hi Nik,
> 
> Can you please clarify the following?
> 
> 1) should the new NETDEV_ notifier be about the vlan device and not
> the bridge? That is, should I handle it in br_device_event?

Yes, it should be about the vlan device (i.e. the target device that changes its state).

> 2) is it still okay to export call_netdevice_notifiers_info or should
> i write a new function for this?
> 

If you need it, export it. But if you do it similar to netdev_notifier_pre_changeaddr_info
then you don't have to, more below.

> The answers to the above wasn't clear to me, but I came up with the
> following patch anyway, so perhaps you can also comment on it. I'm
> pasting it inline; this is against 5.19.
> 

A few comments inline below,

> Thanks!
> 
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 2563d30736e9..c63205eb1f72 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -2762,6 +2762,7 @@ enum netdev_cmd {
>   NETDEV_UNREGISTER,
>   NETDEV_CHANGEMTU, /* notify after mtu change happened */
>   NETDEV_CHANGEADDR, /* notify after the address change */
> + NETDEV_CHANGEUPPERFLAGS,

Please don't use CHANGEUPPER, that is about a device changing its
upper device. Also make it more generic, NETDEV_CHANGEFLAGS is too
specific. For example today we have NETDEV_CHANGEINFODATA which TBH
sounds good, but is tied to bonding in a few places, e.g.:
        case NETDEV_CHANGEINFODATA:
                rtnl_event_type = IFLA_EVENT_BONDING_OPTIONS;

which is very unfortunate. We really need a generic notifier that can pass
link-type specific information alongside the device. As I mentioned please
see how netdev_notifier_pre_changeaddr_info is handled, we need something
generic that extends netdev_notifier_info and the various link types can add
their own structures in a union which is to be interpreted based on the link
type. For example if the new notifier is called NETDEV_CHANGE_DETAILS then
in the bridge we'll check if the target device is a vlan and interpret the
structure's union as the vlan change information. It'd be nice to get more
feedback about this from others as well.

Also note that this notifier is for internal use for the time being so it's not necessary
to export these notifications to user-space yet.

I would've opted for extending NETDEV_CHANGE itself, but that would be quite the
adventure. :)

>   NETDEV_PRE_CHANGEADDR, /* notify before the address change */
>   NETDEV_GOING_DOWN,
>   NETDEV_CHANGENAME,
> @@ -2837,6 +2838,12 @@ struct netdev_notifier_changelowerstate_info {
>   void *lower_state_info; /* is lower dev state */
>  };
> 
> +struct netdev_notifier_changeupperflags_info {
> + struct netdev_notifier_info info; /* must be first */
> + struct net_device *upper_dev;

just dev, not upper
we should be able to use this construct for any link type and actually
we don't need the device here, we already have it in info.dev

> + bool vlan_bridge_binding;

add this into a vlan-specific structure that should be in a union here so
other link types can add their own later

> +};
> +
>  struct netdev_notifier_pre_changeaddr_info {
>   struct netdev_notifier_info info; /* must be first */
>   const unsigned char *dev_addr;
> @@ -2898,6 +2905,8 @@ netdev_notifier_info_to_extack(const struct
> netdev_notifier_info *info)
>  }
> 
>  int call_netdevice_notifiers(unsigned long val, struct net_device *dev);
> +int call_netdevice_notifiers_info(unsigned long val,
> +  struct netdev_notifier_info *info);

No need for this if you handle notifications similar to dev_pre_changeaddr_notify()
with netdev_notifier_pre_changeaddr_info

> 
> 
>  extern rwlock_t dev_base_lock; /* Device list lock */
> diff --git a/net/8021q/vlan.h b/net/8021q/vlan.h
> index 5eaf38875554..71947cdcfaaa 100644
> --- a/net/8021q/vlan.h
> +++ b/net/8021q/vlan.h
> @@ -130,7 +130,7 @@ void vlan_dev_set_ingress_priority(const struct
> net_device *dev,
>  int vlan_dev_set_egress_priority(const struct net_device *dev,
>   u32 skb_prio, u16 vlan_prio);
>  void vlan_dev_free_egress_priority(const struct net_device *dev);
> -int vlan_dev_change_flags(const struct net_device *dev, u32 flag, u32 mask);
> +int vlan_dev_change_flags(struct net_device *dev, u32 flag, u32 mask);
>  void vlan_dev_get_realdev_name(const struct net_device *dev, char *result,
>         size_t size);
> 
> diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
> index 839f2020b015..68da3901dfb0 100644
> --- a/net/8021q/vlan_dev.c
> +++ b/net/8021q/vlan_dev.c
> @@ -208,11 +208,18 @@ int vlan_dev_set_egress_priority(const struct
> net_device *dev,
>   return 0;
>  }
> 
> +static inline bool netif_is_bridge(const struct net_device *dev)

no inline in .c files, let the compiler decide

> +{
> + return dev->rtnl_link_ops &&
> +    !strcmp(dev->rtnl_link_ops->kind, "bridge");
> +}
> +

there is already netif_is_bridge_master()

>  /* Flags are defined in the vlan_flags enum in
>   * include/uapi/linux/if_vlan.h file.
>   */
> -int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
> +int vlan_dev_change_flags(struct net_device *dev, u32 flags, u32 mask)
>  {
> + struct netdev_notifier_changeupperflags_info info;
>   struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
>   u32 old_flags = vlan->flags;
> 
> @@ -223,19 +230,33 @@ int vlan_dev_change_flags(const struct
> net_device *dev, u32 flags, u32 mask)
> 
>   vlan->flags = (old_flags & ~mask) | (flags & mask);
> 
> - if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
> + if (!netif_running(dev))
> + return 0;
> +
> + if ((vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
>   if (vlan->flags & VLAN_FLAG_GVRP)
>   vlan_gvrp_request_join(dev);
>   else
>   vlan_gvrp_request_leave(dev);
>   }
> 
> - if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
> + if ((vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
>   if (vlan->flags & VLAN_FLAG_MVRP)
>   vlan_mvrp_request_join(dev);
>   else
>   vlan_mvrp_request_leave(dev);
>   }
> +
> + if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
> +    netif_is_bridge(vlan->real_dev)) {
> + info.info.dev = vlan->real_dev;
> + info.upper_dev = dev;
> + info.vlan_bridge_binding =
> +    !!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING);
> + call_netdevice_notifiers_info(NETDEV_CHANGEUPPERFLAGS,
> +    &info.info);
> + }
> +
>   return 0;
>  }
> 
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index 0f5e75ccac79..cbcb0877d4a4 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -1718,6 +1718,7 @@ static void nbp_vlan_set_vlan_dev_state(struct
> net_bridge_port *p, u16 vid)
>  /* Must be protected by RTNL. */
>  int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
> void *ptr)
>  {
> + struct netdev_notifier_changeupperflags_info *flags_info;
>   struct netdev_notifier_changeupper_info *info;
>   struct net_bridge *br = netdev_priv(dev);
>   int vlcmd = 0, ret = 0;
> @@ -1739,7 +1740,11 @@ int br_vlan_bridge_event(struct net_device
> *dev, unsigned long event, void *ptr)
>   info = ptr;
>   br_vlan_upper_change(dev, info->upper_dev, info->linking);
>   break;
> -
> + case NETDEV_CHANGEUPPERFLAGS:
> + flags_info = ptr;
> + br_vlan_upper_change(dev, flags_info->upper_dev,
> +    flags_info->vlan_bridge_binding);
> + break;
>   case NETDEV_CHANGE:
>   case NETDEV_UP:
>   if (!br_opt_get(br, BROPT_VLAN_BRIDGE_BINDING))
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 30a1603a7225..bc8640d77d83 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -160,8 +160,6 @@ struct list_head ptype_base[PTYPE_HASH_SIZE] __read_mostly;
>  struct list_head ptype_all __read_mostly; /* Taps */
> 
>  static int netif_rx_internal(struct sk_buff *skb);
> -static int call_netdevice_notifiers_info(unsigned long val,
> - struct netdev_notifier_info *info);
>  static int call_netdevice_notifiers_extack(unsigned long val,
>     struct net_device *dev,
>     struct netlink_ext_ack *extack);
> @@ -1624,7 +1622,7 @@ const char *netdev_cmd_to_name(enum netdev_cmd cmd)
>   N(POST_INIT) N(RELEASE) N(NOTIFY_PEERS) N(JOIN) N(CHANGEUPPER)
>   N(RESEND_IGMP) N(PRECHANGEMTU) N(CHANGEINFODATA) N(BONDING_INFO)
>   N(PRECHANGEUPPER) N(CHANGELOWERSTATE) N(UDP_TUNNEL_PUSH_INFO)
> - N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN)
> + N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN) N(CHANGEUPPERFLAGS)
>   N(CVLAN_FILTER_PUSH_INFO) N(CVLAN_FILTER_DROP_INFO)
>   N(SVLAN_FILTER_PUSH_INFO) N(SVLAN_FILTER_DROP_INFO)
>   N(PRE_CHANGEADDR) N(OFFLOAD_XSTATS_ENABLE) N(OFFLOAD_XSTATS_DISABLE)
> @@ -1927,8 +1925,8 @@ static void
> move_netdevice_notifiers_dev_net(struct net_device *dev,
>   * are as for raw_notifier_call_chain().
>   */
> 
> -static int call_netdevice_notifiers_info(unsigned long val,
> - struct netdev_notifier_info *info)
> +int call_netdevice_notifiers_info(unsigned long val,
> +  struct netdev_notifier_info *info)
>  {
>   struct net *net = dev_net(info->dev);
>   int ret;
> @@ -1944,6 +1942,7 @@ static int
> call_netdevice_notifiers_info(unsigned long val,
>   return ret;
>   return raw_notifier_call_chain(&netdev_chain, val, info);
>  }
> +EXPORT_SYMBOL(call_netdevice_notifiers_info);
> 
>  /**
>   * call_netdevice_notifiers_info_robust - call per-netns notifier blocks
> 
> 
>>
>> Both of these avoid any direct dependencies between the bridge and 8021q. Any other suggestions that
>> are simpler, avoid direct dependencies and solve the issue in a generic way would be appreciated.
>>
>> Just be careful about introducing too much unnecessary processing because we
>> can have lots of vlan devices in a system.
>>
>> Cheers,
>>  Nik
> 
> 
> 

