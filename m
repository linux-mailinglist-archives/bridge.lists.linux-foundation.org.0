Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E31E4E5241
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 13:35:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F9BC4188D;
	Wed, 23 Mar 2022 12:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uC2Kny4d2kdD; Wed, 23 Mar 2022 12:35:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8B5D341863;
	Wed, 23 Mar 2022 12:35:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D370C0073;
	Wed, 23 Mar 2022 12:35:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE92AC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE7BC849FA
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qOG2A_gfDk4g for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 12:35:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E445B849D9
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 12:35:38 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id w25so1640757edi.11
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 05:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Mhag5ovtYN4y+cwgnNecwoiRCVi5N408hmW0RyzBoZc=;
 b=kjXzeUm3TWtsI2fQtlaPCwwXNwLwV82onpuzsedxBmluQrcR7w3lB81348DaxiWvOl
 ECCGz7eN+mv8de3iYNHN9x9ksDTBl8ZiMEmpcObnuNEoFMSjNGFW2wFy/xvum6aN6G1H
 ddZ6oAK1Xe7/Q2IgBaWX3JNAaAvZzBO7Ak4ZuS1ue0ongls2rtBa0p5+nTiR+5DK48w+
 +Zb6fAZQZ3TPlbY2rsZQXmoHJBMu5/+YsbAd1XDm4b6YXvMhj4+dDoltJIw9oBXcQMib
 ZS8fEivwhvfcq7+KvC6RvGq1RlgnlIM1g1Uo/n+K1IrLelR/eQNEr9DG78S8HhSOmD9i
 /AVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Mhag5ovtYN4y+cwgnNecwoiRCVi5N408hmW0RyzBoZc=;
 b=soJ05HVNPTfvBp6lBdHWV97Duk2Zfqe/sCCXsz6frR+qTjg6+3gMyDhEBm5bG3Hyt1
 m8CYXcuWKWw1Yj8QfWDC8l1zUfinXmK+29W5Ai09pPD0FAjdTzak05BHjDWvneL3CGkI
 xeK5YXCBvGiUcfxgG8CaTOV8C/tdY9s6Lf6wZy+0avYg4s6eobH89Zbn4mZnSw5boeDU
 Dc5RmnFggOsHAcvLf6sOJKGpIAxzXk3JXLl3EUevfOddgTX8IO5hlzKYGP5XSBFKAM0G
 B2hBD2LKodqBCZkS4p8LcOQrRO8Dc76Qz5egMQg9P1fpyg2+mw2b0rc7WllsTUb+5Cwe
 kvWQ==
X-Gm-Message-State: AOAM532TKFRdsEMTpFUmehBB5j9VkwvzZgJy2ZVkanEMm5WuUrvPlwAa
 6Dqol9HfXsJvxT9JPF2amR0=
X-Google-Smtp-Source: ABdhPJzmvXjkIpVDAMHix4xRjwT4qH/ThhEt5Ka8tENBDumGywa3/8It2C5SKpGLaPoqLfK2VTTZMA==
X-Received: by 2002:a05:6402:51d0:b0:419:4121:f41a with SMTP id
 r16-20020a05640251d000b004194121f41amr16844121edd.117.1648038937130; 
 Wed, 23 Mar 2022 05:35:37 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 f5-20020a17090624c500b006cee6661b6esm9892645ejb.10.2022.03.23.05.35.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 05:35:36 -0700 (PDT)
Date: Wed, 23 Mar 2022 14:35:34 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220323123534.i2whyau3doq2xdxg@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86o81whmwv.fsf@gmail.com>
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

On Wed, Mar 23, 2022 at 01:29:52PM +0100, Hans Schultz wrote:
> On tor, mar 17, 2022 at 10:39, Hans Schultz <schultz.hans@gmail.com> wrote:
> > Used for Mac-auth/MAB feature in the offloaded case.
> >
> > Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> > ---
> >  include/net/switchdev.h | 3 ++-
> >  net/bridge/br.c         | 3 ++-
> >  net/bridge/br_fdb.c     | 7 +++++--
> >  net/bridge/br_private.h | 2 +-
> >  4 files changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> > index 3e424d40fae3..d5d923411f5e 100644
> > --- a/include/net/switchdev.h
> > +++ b/include/net/switchdev.h
> > @@ -229,7 +229,8 @@ struct switchdev_notifier_fdb_info {
> >  	u16 vid;
> >  	u8 added_by_user:1,
> >  	   is_local:1,
> > -	   offloaded:1;
> > +	   offloaded:1,
> > +	   locked:1;
> >  };
> >  
> >  struct switchdev_notifier_port_obj_info {
> > diff --git a/net/bridge/br.c b/net/bridge/br.c
> > index b1dea3febeea..adcdbecbc218 100644
> > --- a/net/bridge/br.c
> > +++ b/net/bridge/br.c
> > @@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
> >  	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
> >  		fdb_info = ptr;
> >  		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
> > -						fdb_info->vid, false);
> > +						fdb_info->vid, false,
> > +						fdb_info->locked);
> >  		if (err) {
> >  			err = notifier_from_errno(err);
> >  			break;
> > diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> > index 57ec559a85a7..57aa1955d34d 100644
> > --- a/net/bridge/br_fdb.c
> > +++ b/net/bridge/br_fdb.c
> > @@ -987,7 +987,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
> >  					   "FDB entry towards bridge must be permanent");
> >  			return -EINVAL;
> >  		}
> > -		err = br_fdb_external_learn_add(br, p, addr, vid, true);
> > +		err = br_fdb_external_learn_add(br, p, addr, vid, true,
> >  false);
> 
> Does someone have an idea why there at this point is no option to add a
> dynamic fdb entry?
> 
> The fdb added entries here do not age out, while the ATU entries do
> (after 5 min), resulting in unsynced ATU vs fdb.

I think the expectation is to use br_fdb_external_learn_del() if the
externally learned entry expires. The bridge should not age by itself
FDB entries learned externally.

> >  	} else {
> >  		spin_lock_bh(&br->hash_lock);
> >  		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> > @@ -1216,7 +1216,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
> >  
> >  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
> >  			      const unsigned char *addr, u16 vid,
> > -			      bool swdev_notify)
> > +			      bool swdev_notify, bool locked)
> >  {
> >  	struct net_bridge_fdb_entry *fdb;
> >  	bool modified = false;
> > @@ -1236,6 +1236,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
> >  		if (!p)
> >  			flags |= BIT(BR_FDB_LOCAL);
> >  
> > +		if (locked)
> > +			flags |= BIT(BR_FDB_ENTRY_LOCKED);
> > +
> >  		fdb = fdb_create(br, p, addr, vid, flags);
> >  		if (!fdb) {
> >  			err = -ENOMEM;
> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > index f5a0b68c4857..3275e33b112f 100644
> > --- a/net/bridge/br_private.h
> > +++ b/net/bridge/br_private.h
> > @@ -790,7 +790,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
> >  void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
> >  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
> >  			      const unsigned char *addr, u16 vid,
> > -			      bool swdev_notify);
> > +			      bool swdev_notify, bool locked);
> >  int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
> >  			      const unsigned char *addr, u16 vid,
> >  			      bool swdev_notify);
> > -- 
> > 2.30.2
