Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277F24D96B3
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 09:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0292E404F4;
	Tue, 15 Mar 2022 08:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8TPcjLQEHhk; Tue, 15 Mar 2022 08:49:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D891840201;
	Tue, 15 Mar 2022 08:49:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8B018C0031;
	Tue, 15 Mar 2022 08:49:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12A5DC000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 08:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E36B160C03
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 08:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PCSNE1VfelPI for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 08:48:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19D0B60AE5
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 08:48:57 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id h14so31678031lfk.11
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 01:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=0D/qDmhXs9KTVIVEd7/N1WYmWdmHzo+e42flk/d3j6Y=;
 b=VjfewExNWrMUAD3TXnOWZyUf0JFHb5alzMKxnqU3tQLJt0c46OROW/LnmxgTYkzBdH
 +2b3oAbbqnoHer/WwvLrzP7zhZPq75b8qYAw/4UsS6pFY7cmWYhcP0LQGgwQ8y8fnIXe
 uWc/TMxGjqQijqhBpyZojRwzyr60GYtqcX1mLCwdHV6GhpTF0rvwNHvoQLOvnCaBfkaF
 Iey5jaKWubfhtalV4lnAkvqv6teQuurDZ/l5hYY4xgTVqEc0+2ViUZBvEPdwrUTF/j2m
 s+GHQwSylHF/szw7gqtgQV6CEZA3mLuz6IIJC9DFkKpcXvm0wGF0fN3RCuZp3Mqppf6h
 OyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=0D/qDmhXs9KTVIVEd7/N1WYmWdmHzo+e42flk/d3j6Y=;
 b=J4GRmnnX3BXqHbx5mjQZJJQtq53N5twyk8rrf44195+yofwpSa2vWNVtd4IkUAUwia
 2ubeCKbIIepChWgYvFb3ln58h2T0ym3rulszBRvKHfmer9A6foXNyCsjqg/iodo19/JM
 ui2VN/JcOWANpeuI5LtO4IWTYtUZAQIL9+bofdP5ish1SmGmBDVQsF8wV0okiMmUgiPx
 abYW9KXuhHMegr32RdhPZGzovenRdiKpKIx40YdjWNPBf6/t5Awss4ulqt27a0V5/lxg
 rD9OcEi712t+NO2zOnKttxwlvPYsyb2jCI9SuuODBCE+gilQZNClGt6DDQyfuWTPd3m6
 Z0WA==
X-Gm-Message-State: AOAM533b9KtkGe6ntgXd+pTEe7LDPhCugsfbDmt0GW2M9YHY7DRqrj11
 kRhqDz9/QTBMFiHs0RIRMQ+wo+8Q0rPdfYMK
X-Google-Smtp-Source: ABdhPJw47TdTPGbwo/hKYZZlDRipCHD9KyFgdy5zpJF5ozRV0tX2dBZwnYfVVDm6auIjroNp+h4RCw==
X-Received: by 2002:ac2:410d:0:b0:443:7f40:47a8 with SMTP id
 b13-20020ac2410d000000b004437f4047a8mr15421619lfi.228.1647334135928; 
 Tue, 15 Mar 2022 01:48:55 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 i29-20020a0565123e1d00b004485c87722csm3198004lfv.171.2022.03.15.01.48.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 01:48:55 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <Yi9fqkQ9wH3Duqhg@shredder>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
 <Yi9fqkQ9wH3Duqhg@shredder>
Date: Tue, 15 Mar 2022 09:48:52 +0100
Message-ID: <86h77zha8b.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: add fdb flag to
 extent locked port feature
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

On m=C3=A5n, mar 14, 2022 at 17:30, Ido Schimmel <idosch@idosch.org> wrote:
> On Thu, Mar 10, 2022 at 03:23:18PM +0100, Hans Schultz wrote:
>> Add an intermediate state for clients behind a locked port to allow for
>> possible opening of the port for said clients. This feature corresponds
>> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
>> latter defined by Cisco.
>>=20
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>>  include/uapi/linux/neighbour.h |  1 +
>>  net/bridge/br_fdb.c            |  6 ++++++
>>  net/bridge/br_input.c          | 11 ++++++++++-
>>  net/bridge/br_private.h        |  3 ++-
>>  4 files changed, 19 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbo=
ur.h
>> index db05fb55055e..83115a592d58 100644
>> --- a/include/uapi/linux/neighbour.h
>> +++ b/include/uapi/linux/neighbour.h
>> @@ -208,6 +208,7 @@ enum {
>>  	NFEA_UNSPEC,
>>  	NFEA_ACTIVITY_NOTIFY,
>>  	NFEA_DONT_REFRESH,
>> +	NFEA_LOCKED,
>>  	__NFEA_MAX
>>  };
>>  #define NFEA_MAX (__NFEA_MAX - 1)
>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> index 6ccda68bd473..396dcf3084cf 100644
>> --- a/net/bridge/br_fdb.c
>> +++ b/net/bridge/br_fdb.c
>> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const =
struct net_bridge *br,
>>  	struct nda_cacheinfo ci;
>>  	struct nlmsghdr *nlh;
>>  	struct ndmsg *ndm;
>> +	u8 ext_flags =3D 0;
>>=20=20
>>  	nlh =3D nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>>  	if (nlh =3D=3D NULL)
>> @@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, cons=
t struct net_bridge *br,
>>  		ndm->ndm_flags |=3D NTF_EXT_LEARNED;
>>  	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>>  		ndm->ndm_flags |=3D NTF_STICKY;
>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
>> +		ext_flags |=3D 1 << NFEA_LOCKED;
>>=20=20
>>  	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>>  		goto nla_put_failure;
>>  	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>>  		goto nla_put_failure;
>> +	if (nla_put_u8(skb, NDA_FDB_EXT_ATTRS, ext_flags))
>> +		goto nla_put_failure;
>> +
>>  	ci.ndm_used	 =3D jiffies_to_clock_t(now - fdb->used);
>>  	ci.ndm_confirmed =3D 0;
>>  	ci.ndm_updated	 =3D jiffies_to_clock_t(now - fdb->updated);
>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>> index e0c13fcc50ed..897908484b18 100644
>> --- a/net/bridge/br_input.c
>> +++ b/net/bridge/br_input.c
>> @@ -75,6 +75,7 @@ int br_handle_frame_finish(struct net *net, struct soc=
k *sk, struct sk_buff *skb
>>  	struct net_bridge_mcast *brmctx;
>>  	struct net_bridge_vlan *vlan;
>>  	struct net_bridge *br;
>> +	unsigned long flags =3D 0;
>>  	u16 vid =3D 0;
>>  	u8 state;
>>=20=20
>> @@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct so=
ck *sk, struct sk_buff *skb
>>  			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>>=20=20
>>  		if (!fdb_src || READ_ONCE(fdb_src->dst) !=3D p ||
>> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
>> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
>> +			if (!fdb_src) {
>> +				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
>
> This flag is read-only for user space, right? That is, the kernel needs
> to reject it during netlink policy validation.
>

Yes, the flag is only readable from user space, unless there is a wish
to change that.

>> +				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
>> +			}
>>  			goto drop;
>> +		} else {
>
> IIUC, we get here in case there is a non-local FDB entry with the SA
> that points to our port. Can you write it as:
>

Yes, looks like that's more optimal. :)

> if (!fdb_src || READ_ONCE(fdb_src->dst) !=3D p ||
>     test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
>     test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags)) {
>     	if (!fdb_src) {
> 	...
> 	}
> 	goto drop;
> }
>
>> +			if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags))
>> +				goto drop;
>> +		}
>>  	}
>>=20=20
>>  	nbp_switchdev_frame_mark(p, skb);
>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> index 48bc61ebc211..f5a0b68c4857 100644
>> --- a/net/bridge/br_private.h
>> +++ b/net/bridge/br_private.h
>> @@ -248,7 +248,8 @@ enum {
>>  	BR_FDB_ADDED_BY_EXT_LEARN,
>>  	BR_FDB_OFFLOADED,
>>  	BR_FDB_NOTIFY,
>> -	BR_FDB_NOTIFY_INACTIVE
>> +	BR_FDB_NOTIFY_INACTIVE,
>> +	BR_FDB_ENTRY_LOCKED,
>>  };
>>=20=20
>>  struct net_bridge_fdb_key {
>> --=20
>> 2.30.2
>>=20
