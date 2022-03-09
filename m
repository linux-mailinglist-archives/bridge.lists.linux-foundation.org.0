Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 909844D350E
	for <lists.bridge@lfdr.de>; Wed,  9 Mar 2022 18:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21C7B409EC;
	Wed,  9 Mar 2022 17:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cl-uZInU_KQY; Wed,  9 Mar 2022 17:04:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F2B4541529;
	Wed,  9 Mar 2022 17:04:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9D558C0073;
	Wed,  9 Mar 2022 17:04:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72CC9C000B
 for <bridge@lists.linux-foundation.org>; Wed,  9 Mar 2022 17:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57BBC611A8
 for <bridge@lists.linux-foundation.org>; Wed,  9 Mar 2022 17:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kkn5iDIT4OlV for <bridge@lists.linux-foundation.org>;
 Wed,  9 Mar 2022 17:03:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B88DF611A4
 for <bridge@lists.linux-foundation.org>; Wed,  9 Mar 2022 17:03:54 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id h13so3715912ede.5
 for <bridge@lists.linux-foundation.org>; Wed, 09 Mar 2022 09:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=k141GwidNXRjahdS4nq6wClv46C5Je0axvt+W5lVMQk=;
 b=PdiEj+1Aa51J+awk55tE9/R3W0LIoQGtcEoKk9RtW5aNNQqg24erRB0bCZXjETVH+H
 NXhO1TaxSzmwuzxfs2+bIzZHdfGWKO6NLXGZjEOKiVDbB24HEUbAObdXvHvyt+7P0Nxj
 ufe+DHxvaGvH/P1e6uBxVTDUaryB7BnJV9ie1kmBDJAr3kwHftc7MOWcgP2pMq2FgSPA
 UEtNdjoZOxFTqcXMRlaHsr+2WEhhvpP/qKyAw+no8NrN+DjhLdaB9ZfyNlICJGqIvn3O
 YwdFkGTH6q9R4kMZs4hIhrCCgJ4u/x+EWIZMx+jPC4LsHrHsqBpRxuSqotPjhah/GN9o
 LRdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=k141GwidNXRjahdS4nq6wClv46C5Je0axvt+W5lVMQk=;
 b=x1Q7q9c5rfEFqKoBP6Uz3lUj7267B9DCuqtJRggCKn283ML7K+E0+rbb5lZZmaC2AZ
 giJUtmiNErF5M/NIurEFdef624lDiWnopePbG+SDOvFV7/VWISUhabI1ggRm8plbSQNr
 Qdyf2UK+N2hu+P0D541UUiyeplqjYqMgU2zAPV9k/RoinG8gNDdL7CrZaNdveMPQStxt
 UFI0LvWE1kWwNG2wS9LNWCz+TOzs+iDmjJfzXfDXA7MBQvGLC/X/KRJW2W2cN5xt+Fl1
 9zD35HEDG8uyQSKi3hl1BNtUvJkIWt6lj+V6e7O2mG6kdOoQGW7tE3pttnt7Un6TYBeT
 B8cw==
X-Gm-Message-State: AOAM532b02UQx7ImKly+PXwt7FwSg2kJg+CmNwj2wGNCROf1vRSq3pl5
 mGMZeUHqx/UsvEmaaeUA/MY=
X-Google-Smtp-Source: ABdhPJzH1n/dW6F/FfDqnkYKpsgEVC3b/FyC5pynSjuvTOkiGMKVlb6ljXIZfTPGC9OhdXoe4m5d1w==
X-Received: by 2002:aa7:c6d7:0:b0:415:a0fc:1dcd with SMTP id
 b23-20020aa7c6d7000000b00415a0fc1dcdmr432777eds.266.1646845432914; 
 Wed, 09 Mar 2022 09:03:52 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 yy18-20020a170906dc1200b006d6e5c75029sm913693ejb.187.2022.03.09.09.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 09:03:52 -0800 (PST)
Date: Wed, 9 Mar 2022 19:03:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220309170350.fzp3d6jjpiskdhqv@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-7-tobias@waldekranz.com>
 <20220303222942.dkz7bfuagkv7hbpp@skbuf>
 <87pmmvm8ll.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pmmvm8ll.fsf@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 06/10] net: dsa: Pass VLAN MSTI
 migration notifications to driver
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

On Wed, Mar 09, 2022 at 04:47:02PM +0100, Tobias Waldekranz wrote:
> >> +int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr)
> >> +{
> >> +	struct dsa_switch *ds = dp->ds;
> >> +
> >> +	if (!ds->ops->vlan_msti_set)
> >> +		return -EOPNOTSUPP;
> >> +
> >> +	return ds->ops->vlan_msti_set(ds, attr);
> >
> > I guess this doesn't need to be a cross-chip notifier event for all
> > switches, because replication to all bridge ports is handled by
> > switchdev_handle_port_attr_set(). Ok. But isn't it called too many times
> > per switch?
> 
> It is certainly called more times than necessary. But I'm not aware of
> any way to limit it. Just as with other bridge-global settings like
> ageing timeout, the bridge will just replicate the event to each port,
> not knowing whether some of them belong to the same underlying ASIC or
> not.
> 
> We could leverage hwdoms in the bridge to figure that out, but then:

Hmm, uncalled for. Also, not sure how it helps (it just plain doesn't
work, as you've pointed out below yourself).

> 
> - Drivers that do not implement forward offloading would miss out on
>   this optimization. Unfortunate but not a big deal.
> - Since DSA presents multi-chip trees as a single switchdev, the DSA
>   layer would have to replicate the event out to each device. Doable,
>   but feels like a series of its own.

I've mentally walked through the alternatives and I don't see a practical
alternative than letting the driver cut out the duplicate calls.

Maybe it's worth raising awareness by adding a comment above the
dsa_switch_ops :: vlan_msti_set definition that drivers should be
prepared to handle such calls.

Case in point, in mv88e6xxx_vlan_msti_set() you could avoid some useless
MDIO transactions (a call to mv88e6xxx_vtu_loadpurge) with a simple
"if (vlan.sid != new_sid)" check. Basically just go through a refcount
bump followed by an immediate drop.
