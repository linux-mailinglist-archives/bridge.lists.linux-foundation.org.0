Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4C24E527D
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 13:49:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1A69401EA;
	Wed, 23 Mar 2022 12:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o5eJd2FUwdmE; Wed, 23 Mar 2022 12:49:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5A1684024B;
	Wed, 23 Mar 2022 12:49:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18CD6C0073;
	Wed, 23 Mar 2022 12:49:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27920C000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17880841A9
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id anALpjZ-XPfB for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 12:49:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 296C084133
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:49:38 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id r22so1677505ljd.4
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 05:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=nM4ECUsKD86TuX1aebriaMiAFYf1FOMfworhtEK62yY=;
 b=q4QXZ6ZYBRVEjNXVeG4HyqNr/xsvJ41Yrfq1g3qXiSTGEX/JyAKhQYXsucxBKhrPoX
 1zALqoDFrlUEazH4Utx9a5idSyhlM5jEkiIx8KAhoiW4MqmaSiooQIrlBuZHBc29Kp71
 YdInh1dNzHDr6/a+0Iz5PofA7Zmy3jM0BGyS5+pUq9nEy9jHQDPZGwAhU/R1UBr2fn90
 s14w5/bTh/a70n/j/2g8ScpAjOCveJ2AEywNjgbUN5mTLEcoOepBH10NACleW3L2Enoz
 33uT5HmvypS9EpSoHduNTMc9H9g0NHv7dBMJIHiR0Pez0K7Mr+MbmNiSjYZOEoG8j34n
 kCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nM4ECUsKD86TuX1aebriaMiAFYf1FOMfworhtEK62yY=;
 b=0+QfVw1rSi+cfZf1mEV3nM6XZ936SOl0yJonvICd6KqhMnplNJB9Q4kqcyaCihFGPG
 4HdFe7B1mschldNzcGJ9j7MKFnG30Glq02rmwCUtg5PzrX1hMpKkeAV8OXdeynaGNIlc
 zhduzNdwe3i7BguwsIogLKPBelQGBWuJWoystcf39quWdGpDID5/otF9Lbel1dbkgmUz
 RiN71W0zyIvXadYCBUwsR7HtnxeQHlqn52/llBoKpG+i04rbL+CRJiAdH9DFVZnyuC2w
 N/oClooxBMu7xOq7K6JhaLkikGqeQ3bkxR7Z3nh4vHUqGIMr2UCZma8kEtxSPBWu3ys4
 z6dw==
X-Gm-Message-State: AOAM531UPtSqhEqF9HIkFX4JHAV6JhlOoNhNxOwpj3fdABKh0Vw4xbgH
 v4iSaLk0pvprixBPc+QeYeI=
X-Google-Smtp-Source: ABdhPJxzVlKNn3Jz26qzmOxkGiYvN7hZ1TF3R5fHeuNMvIa8zgMHBmDQdKGFqBG0N1ilCFcXwDnrzw==
X-Received: by 2002:a2e:944e:0:b0:246:4a4f:c610 with SMTP id
 o14-20020a2e944e000000b002464a4fc610mr21656073ljh.458.1648039775924; 
 Wed, 23 Mar 2022 05:49:35 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 n2-20020a056512310200b0044a30030d33sm905924lfb.91.2022.03.23.05.49.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 05:49:35 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220323123534.i2whyau3doq2xdxg@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
Date: Wed, 23 Mar 2022 13:49:32 +0100
Message-ID: <86wngkbzqb.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On ons, mar 23, 2022 at 14:35, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 01:29:52PM +0100, Hans Schultz wrote:
>> On tor, mar 17, 2022 at 10:39, Hans Schultz <schultz.hans@gmail.com> wrote:
>> > Used for Mac-auth/MAB feature in the offloaded case.
>> >
>> > Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> > ---
>> >  include/net/switchdev.h | 3 ++-
>> >  net/bridge/br.c         | 3 ++-
>> >  net/bridge/br_fdb.c     | 7 +++++--
>> >  net/bridge/br_private.h | 2 +-
>> >  4 files changed, 10 insertions(+), 5 deletions(-)
>> >
>> > diff --git a/include/net/switchdev.h b/include/net/switchdev.h
>> > index 3e424d40fae3..d5d923411f5e 100644
>> > --- a/include/net/switchdev.h
>> > +++ b/include/net/switchdev.h
>> > @@ -229,7 +229,8 @@ struct switchdev_notifier_fdb_info {
>> >  	u16 vid;
>> >  	u8 added_by_user:1,
>> >  	   is_local:1,
>> > -	   offloaded:1;
>> > +	   offloaded:1,
>> > +	   locked:1;
>> >  };
>> >  
>> >  struct switchdev_notifier_port_obj_info {
>> > diff --git a/net/bridge/br.c b/net/bridge/br.c
>> > index b1dea3febeea..adcdbecbc218 100644
>> > --- a/net/bridge/br.c
>> > +++ b/net/bridge/br.c
>> > @@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
>> >  	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
>> >  		fdb_info = ptr;
>> >  		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
>> > -						fdb_info->vid, false);
>> > +						fdb_info->vid, false,
>> > +						fdb_info->locked);
>> >  		if (err) {
>> >  			err = notifier_from_errno(err);
>> >  			break;
>> > diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> > index 57ec559a85a7..57aa1955d34d 100644
>> > --- a/net/bridge/br_fdb.c
>> > +++ b/net/bridge/br_fdb.c
>> > @@ -987,7 +987,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>> >  					   "FDB entry towards bridge must be permanent");
>> >  			return -EINVAL;
>> >  		}
>> > -		err = br_fdb_external_learn_add(br, p, addr, vid, true);
>> > +		err = br_fdb_external_learn_add(br, p, addr, vid, true,
>> >  false);
>> 
>> Does someone have an idea why there at this point is no option to add a
>> dynamic fdb entry?
>> 
>> The fdb added entries here do not age out, while the ATU entries do
>> (after 5 min), resulting in unsynced ATU vs fdb.
>
> I think the expectation is to use br_fdb_external_learn_del() if the
> externally learned entry expires. The bridge should not age by itself
> FDB entries learned externally.
>

It seems to me that something is missing then?
My tests using trafgen that I gave a report on to Lunn generated massive
amounts of fdb entries, but after a while the ATU was clean and the fdb
was still full of random entries...

>> >  	} else {
>> >  		spin_lock_bh(&br->hash_lock);
>> >  		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
>> > @@ -1216,7 +1216,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
>> >  
>> >  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>> >  			      const unsigned char *addr, u16 vid,
>> > -			      bool swdev_notify)
>> > +			      bool swdev_notify, bool locked)
>> >  {
>> >  	struct net_bridge_fdb_entry *fdb;
>> >  	bool modified = false;
>> > @@ -1236,6 +1236,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>> >  		if (!p)
>> >  			flags |= BIT(BR_FDB_LOCAL);
>> >  
>> > +		if (locked)
>> > +			flags |= BIT(BR_FDB_ENTRY_LOCKED);
>> > +
>> >  		fdb = fdb_create(br, p, addr, vid, flags);
>> >  		if (!fdb) {
>> >  			err = -ENOMEM;
>> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> > index f5a0b68c4857..3275e33b112f 100644
>> > --- a/net/bridge/br_private.h
>> > +++ b/net/bridge/br_private.h
>> > @@ -790,7 +790,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
>> >  void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
>> >  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>> >  			      const unsigned char *addr, u16 vid,
>> > -			      bool swdev_notify);
>> > +			      bool swdev_notify, bool locked);
>> >  int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
>> >  			      const unsigned char *addr, u16 vid,
>> >  			      bool swdev_notify);
>> > -- 
>> > 2.30.2
