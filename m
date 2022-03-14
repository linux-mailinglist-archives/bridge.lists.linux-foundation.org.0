Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 682844D8E0A
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 21:20:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3C2740941;
	Mon, 14 Mar 2022 20:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QK5SZbHPy_c8; Mon, 14 Mar 2022 20:20:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9215B4098A;
	Mon, 14 Mar 2022 20:20:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 482D6C0084;
	Mon, 14 Mar 2022 20:20:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C84F5C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 20:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A09D64052A
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 20:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1c2APUCFQ-C for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 20:20:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FD5540157
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 20:20:44 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id bi12so36698985ejb.3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 13:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XA2aP5Nic7Ru8rrrtaAb2aP/czbKdSvuHA7SK90mhFk=;
 b=JUfo9hahsbfyOV+1YWAdpd7ZQSi79AgJRln0bTaBY/kfgygleF/697oK4v0gYvWLmz
 Jpmhfqe3luT0Y1Dc15sA4D/CzyksBSiLk14ahgqip36BhsvtRRnj5P15SrA698KiE5IW
 AP5/GWrVwu/R7UCBkhdJros6ehhCPIvRnF/svwkbOuly8QwHVUeuRxbZf0Y+uy1FzRaE
 Dh9Gc1aAZ9Jrv+ZzTvy6Tns7KcPmV1H17e/pCLN+RsMkVjAlppMDvwLFIPa8W1Lyt2AQ
 M2/xfla50ew6JqyMKHw+FLYeLSpUXo5wOGcXI0r81HZzWBc+wZfgUiYdgEggzClum1ti
 5cMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XA2aP5Nic7Ru8rrrtaAb2aP/czbKdSvuHA7SK90mhFk=;
 b=MtIY3JMRpH17S03nKNRG3GRYCuSS3WzBEBzXb5QNlov+Yz3ls53gYeqWMJrcBWV8HI
 6ZZVNhfwcp1y+QO9KlzTEjgAk0C1DGc+skrlMATg7WGRPnDyKnSABhKjRG6DdL5ctQRW
 7u8rWfXYbozQ3J7d2IkpzcwtShtAm4UTDyH0JkUu84iwdNtV5g1kDg8z0At20WPhRAlW
 UaMOPw5DtaQxwoxB1PW7FvjDWZIi2B3WqNIG+Kq0fJjLGl0yjOvjUjiGMk7rgxRkiC1u
 +4ekfpNy+Zu3HNJ9mcIAt0GoO6N68GM7scIVzYo6Taxei16a7CfsUUM3Hq+x+7P/rn3V
 kgqw==
X-Gm-Message-State: AOAM533GH0yUWl3vOQ7MlNTm1gwr6s87wkZE//erXQPAjWvqcGxwTezT
 O2BAN9pprb6kEHrPgjRyYmY=
X-Google-Smtp-Source: ABdhPJzgAIAgLYgjQeMcar+yKXCNF8VRMp68hiBa0K+XaXi0U5DOVLCj3x8vqtuQ//JRA1VlttSFOA==
X-Received: by 2002:a17:906:7fc9:b0:6cf:d288:c9ef with SMTP id
 r9-20020a1709067fc900b006cfd288c9efmr19524300ejs.751.1647289242547; 
 Mon, 14 Mar 2022 13:20:42 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 q16-20020a170906145000b006bdaf981589sm7267557ejc.81.2022.03.14.13.20.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 13:20:41 -0700 (PDT)
Date: Mon, 14 Mar 2022 22:20:40 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314202040.f2r4pidcy6ws34qv@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-10-tobias@waldekranz.com>
 <20220314165649.vtsd3xqv7htut55d@skbuf>
 <20220314175556.7mjr4tui4vb4i5qn@skbuf>
 <87mthsl2wn.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mthsl2wn.fsf@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 09/14] net: dsa: Validate hardware
 support for MST
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

On Mon, Mar 14, 2022 at 09:01:12PM +0100, Tobias Waldekranz wrote:
> On Mon, Mar 14, 2022 at 19:55, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Mon, Mar 14, 2022 at 06:56:49PM +0200, Vladimir Oltean wrote:
> >> > diff --git a/net/dsa/port.c b/net/dsa/port.c
> >> > index 58291df14cdb..1a17a0efa2fa 100644
> >> > --- a/net/dsa/port.c
> >> > +++ b/net/dsa/port.c
> >> > @@ -240,6 +240,10 @@ static int dsa_port_switchdev_sync_attrs(struct dsa_port *dp,
> >> >  	if (err && err != -EOPNOTSUPP)
> >> >  		return err;
> >> >  
> >> > +	err = dsa_port_mst_enable(dp, br_mst_enabled(br), extack);
> >> > +	if (err && err != -EOPNOTSUPP)
> >> > +		return err;
> >> 
> >> Sadly this will break down because we don't have unwinding on error in
> >> place (sorry). We'd end up with an unoffloaded bridge port with
> >> partially synced bridge port attributes. Could you please add a patch
> >> previous to this one that handles this, and unoffloads those on error?
> >
> > Actually I would rather rename the entire dsa_port_mst_enable() function
> > to dsa_port_mst_validate() and move it to the beginning of dsa_port_bridge_join().
> > This simplifies the unwinding that needs to take place quite a bit.
> 
> Well you still need to unwind vlan filtering if setting the ageing time
> fails, which is the most complicated one, right?

Yes, but we can leave that for another day :)

...ergo

> Should the unwinding patch still be part of this series then?

no.

> Still, I agree that _validate is a better name, and then _bridge_join
> seems like a more reasonable placement.
> 
> While we're here, I actually made this a hard error in both scenarios
> (but forgot to update the log - will do that in v4, depending on what we
> decide here). There's a dilemma:
> 
> - When reacting to the attribute event, i.e. changing the mode on a
>   member we're apart of, we _can't_ return -EOPNOTSUPP as it will be
>   ignored, which is why dsa_port_mst_validate (nee _enable) returns
>   -EINVAL.
> 
> - When joining a bridge, we _must_ return -EOPNOTSUPP to trigger the
>   software fallback.
> 
> Having something like this in dsa_port_bridge_join...
> 
> err = dsa_port_mst_validate(dp);
> if (err == -EINVAL)
> 	return -EOPNOTSUPP;
> else if (err)
> 	return err;
> 
> ...works I suppose, but feels somewhat awkwark. Any better ideas?

What you can do is follow the model of dsa_switch_supports_uc_filtering(),
and create a dsa_switch_supports_mst() which is called inside an
"if br_mst_enabled(br)" check, and returns bool. When false, you could
return -EINVAL or -EOPNOTSUPP, as appropriate.

This is mostly fine, except for the pesky dsa_port_can_configure_learning(dp)
check :) So while you could name it dsa_port_supports_mst() and pass it
a dsa_port, the problem is that you can't put the implementation of this
new dsa_port_supports_mst() next to dsa_switch_supports_uc_filtering()
where it would be nice to sit for symmetry, because the latter is static
inline and we're missing the definition of dsa_port_can_configure_learning().
So.. the second best thing is to keep dsa_port_supports_mst() in the
same place where dsa_port_mst_enable() currently is.

What do you think?
