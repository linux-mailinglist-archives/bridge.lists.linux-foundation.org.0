Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 502164B3AC4
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78ABD60C0D;
	Sun, 13 Feb 2022 10:14:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IluQWFEW0ZSQ; Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 92F7F60BF3;
	Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D956C0083;
	Sun, 13 Feb 2022 10:14:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 514DEC000B
 for <bridge@lists.linux-foundation.org>; Tue,  8 Feb 2022 10:26:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4DE17408F4
 for <bridge@lists.linux-foundation.org>; Tue,  8 Feb 2022 10:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Jq8yVSEakxE for <bridge@lists.linux-foundation.org>;
 Tue,  8 Feb 2022 10:26:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5407D408D6
 for <bridge@lists.linux-foundation.org>; Tue,  8 Feb 2022 10:26:28 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id f17so29851505wrx.1
 for <bridge@lists.linux-foundation.org>; Tue, 08 Feb 2022 02:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=IKRDa23hbXU9zh7lvaHhdJ8fhl6aua5us85s76CYpJw=;
 b=WBqg4U5x6lGVvxw+ZA24unq6NKmqUfAFFhe4tJj+tlICv1Yyk+1azA30VrmCisiTa/
 6jBn4b9hEocjtiPOfUyqiePBLEQkdkjxdITJcDtRkutLcrBnt4RskhG5NPCLkveDSsb5
 hVWEFvdgLFA/923UvNWFfg8AwdJOAXzAM309M2C/PUMGdfL265AtMYbDxq+8z833/Fk3
 VYB0W5aCwz+HHqB0O1hnEkjL3LQRQKK0Tnsfm6LYpnR2u34OlUkL5i3oYg5GZUiUxke/
 oVkSahXtVWaQINSqif+KbG5d21gtKcacpi8CDZHDb145U/DIzPmennjq76I9hDuhxfMV
 B37g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=IKRDa23hbXU9zh7lvaHhdJ8fhl6aua5us85s76CYpJw=;
 b=JSGmyqteiRUdHGIqlt1VT0AW05Dp7USrzMZi2NoPk/BjNf9bXE+RrcRGXjmCY1SQGY
 AxAbb+pNWVviB8ylkc7rtArxBXVzGbsZT96r1dUiG0XBcm9N+lMldc1rN2NzI+YPKWz1
 W6CP+wKUppAOSlgUDVzHBOU9fkOFnutESBMh4uswFdBI4d7bkkKXvW4+M3+11Yd5Og++
 7KZ1MahIdFyuGpbMt3qNzVltjtxKfe5Vl2b2X0HzB0X2nwIzDi/+VZ7Ly/Xz7jkh7deC
 hOJVPZmutOpJU+oUnxj/eL5OCpYUsMPygQrYOjFQ05pcBEw95y759Kfr+Zw/hbO9AX50
 4Jbg==
X-Gm-Message-State: AOAM531G4YXQmlxiods6R3mOsv8SK1kbFNNtbUOsr9xyCOOxyBSQiQ4D
 1BXCOrA2v6BhFOEIi2qUQH5TOz3fhAEC9hl7N6g=
X-Google-Smtp-Source: ABdhPJynt22O9VKUuw6r5L9HgAsu0xA3hGr5V9PCyNonHMhaPhzf0uIv2HCsX0RRTvkPRc9WvlGJZw==
X-Received: by 2002:a5d:564a:: with SMTP id j10mr2804318wrw.473.1644315986239; 
 Tue, 08 Feb 2022 02:26:26 -0800 (PST)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id ay38sm1909979wmb.3.2022.02.08.02.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 02:26:25 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YgD5MglBy/UbN0uX@shredder>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
 <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
 <YgD5MglBy/UbN0uX@shredder>
Date: Tue, 08 Feb 2022 11:26:24 +0100
Message-ID: <8635ktvelr.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: Add support for
 bridge port in locked mode
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

On m=C3=A5n, feb 07, 2022 at 12:49, Ido Schimmel <idosch@idosch.org> wrote:
> On Mon, Feb 07, 2022 at 11:07:39AM +0100, Hans Schultz wrote:
>> In a 802.1X scenario, clients connected to a bridge port shall not
>> be allowed to have traffic forwarded until fully authenticated.
>> A static fdb entry of the clients MAC address for the bridge port
>> unlocks the client and allows bidirectional communication.
>>=20
>> This scenario is facilitated with setting the bridge port in locked
>> mode, which is also supported by various switchcore chipsets.
>>=20
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>>  include/linux/if_bridge.h    |  1 +
>>  include/uapi/linux/if_link.h |  1 +
>>  net/bridge/br_input.c        | 10 +++++++++-
>>  net/bridge/br_netlink.c      |  6 +++++-
>>  4 files changed, 16 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
>> index 509e18c7e740..3aae023a9353 100644
>> --- a/include/linux/if_bridge.h
>> +++ b/include/linux/if_bridge.h
>> @@ -58,6 +58,7 @@ struct br_ip_list {
>>  #define BR_MRP_LOST_CONT	BIT(18)
>>  #define BR_MRP_LOST_IN_CONT	BIT(19)
>>  #define BR_TX_FWD_OFFLOAD	BIT(20)
>> +#define BR_PORT_LOCKED		BIT(21)
>>=20=20
>>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>>=20=20
>> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
>> index 6218f93f5c1a..8fa2648fbc83 100644
>> --- a/include/uapi/linux/if_link.h
>> +++ b/include/uapi/linux/if_link.h
>> @@ -532,6 +532,7 @@ enum {
>>  	IFLA_BRPORT_GROUP_FWD_MASK,
>>  	IFLA_BRPORT_NEIGH_SUPPRESS,
>>  	IFLA_BRPORT_ISOLATED,
>> +	IFLA_BRPORT_LOCKED,
>
> Please add it at the end to avoid breaking uAPI
>

Shall do.

>>  	IFLA_BRPORT_BACKUP_PORT,
>>  	IFLA_BRPORT_MRP_RING_OPEN,
>>  	IFLA_BRPORT_MRP_IN_OPEN,
>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>> index b50382f957c1..469e3adbce07 100644
>> --- a/net/bridge/br_input.c
>> +++ b/net/bridge/br_input.c
>> @@ -69,6 +69,7 @@ int br_handle_frame_finish(struct net *net, struct soc=
k *sk, struct sk_buff *skb
>>  	struct net_bridge_port *p =3D br_port_get_rcu(skb->dev);
>>  	enum br_pkt_type pkt_type =3D BR_PKT_UNICAST;
>>  	struct net_bridge_fdb_entry *dst =3D NULL;
>> +	struct net_bridge_fdb_entry *fdb_entry;
>>  	struct net_bridge_mcast_port *pmctx;
>>  	struct net_bridge_mdb_entry *mdst;
>>  	bool local_rcv, mcast_hit =3D false;
>> @@ -81,6 +82,8 @@ int br_handle_frame_finish(struct net *net, struct soc=
k *sk, struct sk_buff *skb
>>  	if (!p || p->state =3D=3D BR_STATE_DISABLED)
>>  		goto drop;
>>=20=20
>> +	br =3D p->br;
>> +
>>  	brmctx =3D &p->br->multicast_ctx;
>>  	pmctx =3D &p->multicast_ctx;
>>  	state =3D p->state;
>> @@ -88,10 +91,15 @@ int br_handle_frame_finish(struct net *net, struct s=
ock *sk, struct sk_buff *skb
>>  				&state, &vlan))
>>  		goto out;
>>=20=20
>> +	if (p->flags & BR_PORT_LOCKED) {
>> +		fdb_entry =3D br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>> +		if (!(fdb_entry && fdb_entry->dst =3D=3D p))
>> +			goto drop;
>
> I'm not familiar with 802.1X so I have some questions:
>
> 1. Do we need to differentiate between no FDB entry and an FDB entry
> pointing to a different port than we expect?
>
> 2. Does user space care about SAs that did not pass the check? That is,
> does it need to see notifications? Counters?
>

2. As of now there are no counters, notifications on a locked port.

>> +	}
>> +
>>  	nbp_switchdev_frame_mark(p, skb);
>>=20=20
>>  	/* insert into forwarding database after filtering to avoid spoofing */
>> -	br =3D p->br;
>>  	if (p->flags & BR_LEARNING)
>>  		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);
>>=20=20
>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
>> index 2ff83d84230d..7d4432ca9a20 100644
>> --- a/net/bridge/br_netlink.c
>> +++ b/net/bridge/br_netlink.c
>> @@ -184,6 +184,7 @@ static inline size_t br_port_info_size(void)
>>  		+ nla_total_size(1)	/* IFLA_BRPORT_VLAN_TUNNEL */
>>  		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
>>  		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
>> +		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
>>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_I=
D */
>>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE=
_ID */
>>  		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
>> @@ -269,7 +270,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>>  							  BR_MRP_LOST_CONT)) ||
>>  	    nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
>>  		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
>> -	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
>> +	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) =
||
>> +	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)))
>>  		return -EMSGSIZE;
>>=20=20
>>  	timerval =3D br_timer_value(&p->message_age_timer);
>> @@ -827,6 +829,7 @@ static const struct nla_policy br_port_policy[IFLA_B=
RPORT_MAX + 1] =3D {
>>  	[IFLA_BRPORT_GROUP_FWD_MASK] =3D { .type =3D NLA_U16 },
>>  	[IFLA_BRPORT_NEIGH_SUPPRESS] =3D { .type =3D NLA_U8 },
>>  	[IFLA_BRPORT_ISOLATED]	=3D { .type =3D NLA_U8 },
>> +	[IFLA_BRPORT_LOCKED] =3D { .type =3D NLA_U8 },
>>  	[IFLA_BRPORT_BACKUP_PORT] =3D { .type =3D NLA_U32 },
>>  	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] =3D { .type =3D NLA_U32 },
>>  };
>> @@ -893,6 +896,7 @@ static int br_setport(struct net_bridge_port *p, str=
uct nlattr *tb[],
>>  	br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
>>  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
>>  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
>> +	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
>>=20=20
>>  	changed_mask =3D old_flags ^ p->flags;
>>=20=20
>> --=20
>> 2.30.2
>>=20
