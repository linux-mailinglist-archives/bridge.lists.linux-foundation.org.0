Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4876E50DB90
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E36678184F;
	Mon, 25 Apr 2022 08:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ufjTjq1wgcw4; Mon, 25 Apr 2022 08:47:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8355381865;
	Mon, 25 Apr 2022 08:47:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CFD89C008D;
	Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8010AC002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 21:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58B7E81092
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 21:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uUl57WYiO4WX for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 21:09:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21AB280D44
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 21:09:10 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 ay11-20020a05600c1e0b00b0038eb92fa965so11343730wmb.4
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 14:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=pgpyFJIdj4QGuzhLLktvcNa9y17JJ3EEcug8k8x1+Sc=;
 b=Vtu8Pl1kYiohom8LvtHAZoKSRmXHm3xQC/nr7arLIFh4LgeR1cyc33Kj21s27ti4cB
 QoXl8p20uyJUPyzC7bRro2hgVPqS1XXjm7c1+DjfBUrPwjEejGazD6Y/6M7zksTCT6Qj
 A3CwcYbFgII+mYeXy1WEQ5JZRcR6Z6KJYmibgNHowtaoxBcS/sfC/kBab8E0chSRCokR
 m7kgZtTAPxvPaTwlgrIPjgFoon0g4LQV2ULeRTur0WE/P/JXkDpB3qPWbfrXVcmErj3h
 0B2U/4C7uRWTxmCHWJrc43MakhWOb6a242RhAysuniLEriERWajQ9REwsiVmmXXRp6Xu
 g4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=pgpyFJIdj4QGuzhLLktvcNa9y17JJ3EEcug8k8x1+Sc=;
 b=3ryVoi5Mxg7bkszueeJBBJBOyfnWWhFOEgXaveEfyMvulS0EFdBxabUxOKzTQ0nLUs
 u8Vy9gVWVSoGCg9RL8suvD1vMpPZdld9YtE/Q4LrqAVQKjcltjjrW5VBEoxgLvJvF/9p
 uTvMynX/z6nyYa0cW+p+5aYTj15xtq0Rr1do4GdqNaQq/XEoDvXH/iMyF9Qqe21VeEtj
 PfLB5wziB5yaNE22cPxK2TL/ns662BrsJJXPWT/KdZqnHRpXe/Gvd1ykeskn8wPZunoh
 h5tj/SmYmph72oxCt30IgsAyDMNLaP6B7iSSl6rp2zJ9Ymu7adksAp5GjVTl9XZYoXLK
 Wp5w==
X-Gm-Message-State: AOAM531CEXf9yh7KXpgDfjKmUPd9avq/zLQ93fVAKjOrM644nbqDiHQS
 mVJ6L17ZRlWDtVEO0VbOs6g=
X-Google-Smtp-Source: ABdhPJyGmAdqYpkt6+g+MgY9rC79KHhx6qfU4//OL0Ib3dN3KtQq9euKiQdHG82f7ii7MpRKF8ktug==
X-Received: by 2002:a05:600c:5c8:b0:393:eba0:8ac7 with SMTP id
 p8-20020a05600c05c800b00393eba08ac7mr2311553wmd.108.1650834548289; 
 Sun, 24 Apr 2022 14:09:08 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 o38-20020a05600c512600b00393ead99c5bsm1915828wms.26.2022.04.24.14.09.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 14:09:07 -0700 (PDT)
Message-ID: <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
Date: Sun, 24 Apr 2022 23:09:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
 <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
 <4bf69eef-7444-1238-0f4a-fb0fccda080c@blackwall.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <4bf69eef-7444-1238-0f4a-fb0fccda080c@blackwall.org>
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


On ٢٤‏/٤‏/٢٠٢٢ ٢١:٥٥, Nikolay Aleksandrov wrote:
> On 24/04/2022 22:49, Alaa Mohamed wrote:
>> On ٢٤‏/٤‏/٢٠٢٢ ٢١:٠٢, Nikolay Aleksandrov wrote:
>>> On 24/04/2022 15:09, Alaa Mohamed wrote:
>>>> Add extack support to .ndo_fdb_del in netdevice.h and
>>>> all related methods.
>>>>
>>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>>> ---
>>>> changes in V3:
>>>>           fix errors reported by checkpatch.pl
>>>> ---
>>>>    drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
>>>>    drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
>>>>    drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
>>>>    drivers/net/macvlan.c                            | 2 +-
>>>>    drivers/net/vxlan/vxlan_core.c                   | 2 +-
>>>>    include/linux/netdevice.h                        | 2 +-
>>>>    net/bridge/br_fdb.c                              | 2 +-
>>>>    net/bridge/br_private.h                          | 2 +-
>>>>    net/core/rtnetlink.c                             | 4 ++--
>>>>    9 files changed, 12 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>>>> index d768925785ca..7b55d8d94803 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>>> @@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
>>>>    static int
>>>>    ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>>>>            struct net_device *dev, const unsigned char *addr,
>>>> -        __always_unused u16 vid)
>>>> +        __always_unused u16 vid, struct netlink_ext_ack *extack)
>>>>    {
>>>>        int err;
>>>> -
>>>> +
>>> What's changed here?
>> In the previous version, I removed the blank line after "int err;" and you said I shouldn't so I added blank line.
>>
> Yeah, my question is are you fixing a dos ending or something else?
> The blank line is already there, what's wrong with it?
No, I didn't.
>
> The point is it's not nice to mix style fixes and other changes, more so
> if nothing is mentioned in the commit message.
Got it, So, what should I do to fix it?
>>>>        if (ndm->ndm_state & NUD_PERMANENT) {
>>>>            netdev_err(dev, "FDB only supports static addresses\n");
>>>>            return -EINVAL;
>>>> diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
>>>> index 247bc105bdd2..e07c64e3159c 100644
>>>> --- a/drivers/net/ethernet/mscc/ocelot_net.c
>>>> +++ b/drivers/net/ethernet/mscc/ocelot_net.c
>>>> @@ -774,14 +774,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>>>>
>>>>    static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>>>                       struct net_device *dev,
>>>> -                   const unsigned char *addr, u16 vid)
>>>> +                   const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>>>    {
>>>>        struct ocelot_port_private *priv = netdev_priv(dev);
>>>>        struct ocelot_port *ocelot_port = &priv->port;
>>>>        struct ocelot *ocelot = ocelot_port->ocelot;
>>>>        int port = priv->chip_port;
>>>>
>>>> -    return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
>>>> +    return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
>>>>    }
>>>>
>>>>    static int ocelot_port_fdb_dump(struct sk_buff *skb,
>>>> diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
>>>> index d320567b2cca..51fa23418f6a 100644
>>>> --- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
>>>> +++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
>>>> @@ -368,7 +368,7 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)
>>>>
>>>>    static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>>>                struct net_device *netdev,
>>>> -            const unsigned char *addr, u16 vid)
>>>> +            const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>>>    {
>>>>        struct qlcnic_adapter *adapter = netdev_priv(netdev);
>>>>        int err = -EOPNOTSUPP;
>>>> diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
>>>> index 069e8824c264..ffd34d9f7049 100644
>>>> --- a/drivers/net/macvlan.c
>>>> +++ b/drivers/net/macvlan.c
>>>> @@ -1017,7 +1017,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>>>>
>>>>    static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>>>                   struct net_device *dev,
>>>> -               const unsigned char *addr, u16 vid)
>>>> +               const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>>>    {
>>>>        struct macvlan_dev *vlan = netdev_priv(dev);
>>>>        int err = -EINVAL;
>>>> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
>>>> index de97ff98d36e..cf2f60037340 100644
>>>> --- a/drivers/net/vxlan/vxlan_core.c
>>>> +++ b/drivers/net/vxlan/vxlan_core.c
>>>> @@ -1280,7 +1280,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
>>>>    /* Delete entry (via netlink) */
>>>>    static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>>>                    struct net_device *dev,
>>>> -                const unsigned char *addr, u16 vid)
>>>> +                const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>>>    {
>>>>        struct vxlan_dev *vxlan = netdev_priv(dev);
>>>>        union vxlan_addr ip;
>>>> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
>>>> index 28ea4f8269d4..d0d2a8f33c73 100644
>>>> --- a/include/linux/netdevice.h
>>>> +++ b/include/linux/netdevice.h
>>>> @@ -1509,7 +1509,7 @@ struct net_device_ops {
>>>>                               struct nlattr *tb[],
>>>>                               struct net_device *dev,
>>>>                               const unsigned char *addr,
>>>> -                           u16 vid);
>>>> +                           u16 vid, struct netlink_ext_ack *extack);
>>>>        int            (*ndo_fdb_dump)(struct sk_buff *skb,
>>>>                            struct netlink_callback *cb,
>>>>                            struct net_device *dev,
>>>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>>>> index 6ccda68bd473..5bfce2e9a553 100644
>>>> --- a/net/bridge/br_fdb.c
>>>> +++ b/net/bridge/br_fdb.c
>>>> @@ -1110,7 +1110,7 @@ static int __br_fdb_delete(struct net_bridge *br,
>>>>    /* Remove neighbor entry with RTM_DELNEIGH */
>>>>    int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>>>              struct net_device *dev,
>>>> -          const unsigned char *addr, u16 vid)
>>>> +          const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
>>>>    {
>>>>        struct net_bridge_vlan_group *vg;
>>>>        struct net_bridge_port *p = NULL;
>>>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>>>> index 18ccc3d5d296..95348c1c9ce5 100644
>>>> --- a/net/bridge/br_private.h
>>>> +++ b/net/bridge/br_private.h
>>>> @@ -780,7 +780,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>>>>               const unsigned char *addr, u16 vid, unsigned long flags);
>>>>
>>>>    int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>>> -          struct net_device *dev, const unsigned char *addr, u16 vid);
>>>> +          struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);
>>> This is way too long (111 chars) and checkpatch should've complained about it.
>>> WARNING: line length of 111 exceeds 100 columns
>>> #234: FILE: net/bridge/br_private.h:782:
>>> +          struct net_device *dev, const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack);
>> I will fix it.
>>
>>>>    int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
>>>>               const unsigned char *addr, u16 vid, u16 nlh_flags,
>>>>               struct netlink_ext_ack *extack);
>>>> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
>>>> index 4041b3e2e8ec..99b30ae58a47 100644
>>>> --- a/net/core/rtnetlink.c
>>>> +++ b/net/core/rtnetlink.c
>>>> @@ -4223,7 +4223,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>>>            const struct net_device_ops *ops = br_dev->netdev_ops;
>>>>
>>>>            if (ops->ndo_fdb_del)
>>>> -            err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
>>>> +            err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
>>>>
>>>>            if (err)
>>>>                goto out;
>>>> @@ -4235,7 +4235,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>>>        if (ndm->ndm_flags & NTF_SELF) {
>>>>            if (dev->netdev_ops->ndo_fdb_del)
>>>>                err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
>>>> -                               vid);
>>>> +                               vid, extack);
>>>>            else
>>>>                err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
>>>>
>>>> -- 
>>>> 2.36.0
>>>>
