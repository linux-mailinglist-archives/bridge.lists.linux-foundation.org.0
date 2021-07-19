Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176593CCE71
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 09:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B6E140123;
	Mon, 19 Jul 2021 07:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3NIvdOmw-n74; Mon, 19 Jul 2021 07:22:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0F52840104;
	Mon, 19 Jul 2021 07:22:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C2E32C0022;
	Mon, 19 Jul 2021 07:22:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 526D9C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 07:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2335660782
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 07:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDAHw6fGiWrF for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 07:22:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7F326077A
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 07:22:55 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id bu12so27114372ejb.0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 00:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wM1rb/gmdPeOZ6FJpFaplJnOYR4K1cm0jlU1hEXr38s=;
 b=KATtogEFo9OqXImI3C/eS7sxD8mDnUTjCyBuXvJf6hjAcSw+ClT4A2jfaGzJExvEPp
 SzsnIyRLX58g9zPXkg5SRLHfmX0az2cusXDoadf4JjBO93QCysHE2fFHzUg90FYYH80S
 j3arLrmaGV9xPRfxLXrRGFYicOQK6CB4urRCjocPJtIxPg4BfteRRJUn7B4pWxKZHE4/
 w6+I7NY3l+7BbbNv0Xx7gvKXp5GWgjhP1xVShzFsHkrJnum3z7Ral5ARsnCTByYXFhni
 hSl0dPxMls/gKvT1cTeTOAtDEdFMdk008bEQNBDnvtLhfn9mS5VCuOX49Xh4t02Jkzdk
 l52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wM1rb/gmdPeOZ6FJpFaplJnOYR4K1cm0jlU1hEXr38s=;
 b=WCkHtIsIpkAgme/VOLt/Zx/PuhLJrhRvl3ZWx2mOhvrgCkdQ/2M7EVjokryg1yHp3n
 nKzJEXwrMSNp73hvyfUSaZzI63HdsczVIY9Xlp1LA1ieYZqGArEbJSiQjaRVxcQH25+q
 KDSW2CwicI3DLc561HulhQlr2YPxLp7ir6Fpi5Y8mpwnpVnxFJFBRhwPB/d+5kNhle0u
 HqqfHrYi0zheSc8JfZh4KqLdcUPpb8QbE+wD+8dRNUDBY5wZsCmj6SeCs1SUoj2OMnAF
 WjaOqgzbkHgO69UJyvpzKXxS5iXuEM4KG3BlBvRSuFd9YKZoWMVc/wmJnbtmcMOlVyQ6
 5x5Q==
X-Gm-Message-State: AOAM532yN6C1PVYDgw69yFJmdgevTIRTy6tTTo+7g/m0ScdwfUG704D3
 przk0yaXUsymXJqw71PLCMI=
X-Google-Smtp-Source: ABdhPJyHFNGEZFhOZWQGSJ22fAWK9rbRlAVa4z4iG4bDHvWmi6C+yoYMmZNi5qvyAMwS3H180+PeGQ==
X-Received: by 2002:a17:906:998c:: with SMTP id
 af12mr25612647ejc.240.1626679374002; 
 Mon, 19 Jul 2021 00:22:54 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id l3sm5561208ejs.78.2021.07.19.00.22.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 00:22:53 -0700 (PDT)
Date: Mon, 19 Jul 2021 10:22:51 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210719072251.encyen5fbln6z6je@skbuf>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-12-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210718214434.3938850-12-vladimir.oltean@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@idosch.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <kabel@blackhole.sk>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 11/15] net: bridge: switchdev:
 allow the TX data plane forwarding to be offloaded
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

On Mon, Jul 19, 2021 at 12:44:30AM +0300, Vladimir Oltean wrote:
>  static int nbp_switchdev_add(struct net_bridge_port *p,
>  			     struct netdev_phys_item_id ppid,
> +			     bool tx_fwd_offload,
>  			     struct netlink_ext_ack *extack)
>  {
> +	int err;
> +
>  	if (p->offload_count) {
>  		/* Prevent unsupported configurations such as a bridge port
>  		 * which is a bonding interface, and the member ports are from
> @@ -189,7 +228,16 @@ static int nbp_switchdev_add(struct net_bridge_port *p,
>  	p->ppid = ppid;
>  	p->offload_count = 1;
>  
> -	return nbp_switchdev_hwdom_set(p);
> +	err = nbp_switchdev_hwdom_set(p);
> +	if (err)
> +		return err;
> +
> +	if (tx_fwd_offload) {
> +		p->flags |= BR_TX_FWD_OFFLOAD;
> +		static_branch_inc(&br_switchdev_fwd_offload_used);
> +	}
> +
> +	return 0;
>  }
>  
>  static void nbp_switchdev_del(struct net_bridge_port *p,
> @@ -210,6 +258,8 @@ static void nbp_switchdev_del(struct net_bridge_port *p,
>  
>  	if (p->hwdom)
>  		nbp_switchdev_hwdom_put(p);
> +
> +	p->flags &= ~BR_TX_FWD_OFFLOAD;
>  }

Not the end of the world, but the static_branch_dec(&br_switchdev_fwd_offload_used)
was lost here in a rebase. Not a functional issue per se, but it is on
my list of things I would like to fix when I resend.
