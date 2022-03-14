Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4D4D878A
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 15:59:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E18E160C2E;
	Mon, 14 Mar 2022 14:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6CLTdpWNET0H; Mon, 14 Mar 2022 14:59:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5A38360AEA;
	Mon, 14 Mar 2022 14:59:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 23A25C0084;
	Mon, 14 Mar 2022 14:59:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 34EE1C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 14:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D6FD404AA
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 14:59:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SSBsja0Wmchq for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 14:58:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4CA84019C
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 14:58:58 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id bi12so34660886ejb.3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 07:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OYV4LpH4D3agxsG3V7VyzstSf+lDz7EM5vQa2UkEP7w=;
 b=MOiHh0CsD3q+iNPxoPSXwT3iZzcB0ZcSFhKkrzBOMCkYSu7aKHbORB3emZtHnfBxYu
 v3dtH3qbNNm3Vi2nNIdfDrruOItemfOdVViSojC3sXZBM1YHKxbEtvfbb13NoFonpDil
 IMh6xGHEWuHI6yHyAYaLWJkI7K9IMXYWhHoYorlQAxEoMYom6ad0diEKR+HMICp5/tEX
 SP3kbCzP1qFzW5bV2gCgiYpimaqSn+c0SXq0O5OG3Pn4HJErrjdswwuRLYvwS0X1z5bL
 EajKTJDzTYBnw5lZVuhQzYCm25RotqH7PSMdw/AryMk6NHNJaUvcvC/z1eXwAlUn3UGi
 JdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OYV4LpH4D3agxsG3V7VyzstSf+lDz7EM5vQa2UkEP7w=;
 b=T3EfiYYHhu7sLrXd6Uz6axfl+IKNeEqK9T56S05LqCvsFr4QjQFfvy2oTXnx49HX10
 tlWHgBcsKfNPkL2+yUgjFTLVo6tYhsGJuXDatrtE2r+zFXY3FaYxFt9n9nD5SqtonRDz
 vcXyEiOxf67KdJ/jXclDnw9tUwZ1R5RoWCDerZt+7cGTmtqOMtPwEc6TLvZRpb/3RqIy
 Jw2DAcmtxpeJnRzu5zwuKsVyZaHIJ2n7PNw/49WS98E5sl0pILckV3gtRqRBrvl+WAGZ
 1ecKNMDAI909rYhLaBCdMjizF/naU3APgO0rJXLGvJJoJlYMb2WNnr6eU8ZCg6GHaUc8
 2R0w==
X-Gm-Message-State: AOAM533xa2rSxyMKSL8JbNppjxIEtxHbzdCrP6qi9LGEYSLDTtVHMPut
 R2Xk+iRA2vhe/2tXl0krpfc=
X-Google-Smtp-Source: ABdhPJwEXXJr7N8/UGnBPerXHkgdsTRUxrmYmjgrx1ZKylhRSvtZpmHi617uiUE4yKGd6/6FaDkQcw==
X-Received: by 2002:a17:907:2cc6:b0:6db:7e92:e36 with SMTP id
 hg6-20020a1709072cc600b006db7e920e36mr18090693ejc.329.1647269936492; 
 Mon, 14 Mar 2022 07:58:56 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 a1-20020aa7d901000000b00416217c99bcsm8157560edr.65.2022.03.14.07.58.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 07:58:56 -0700 (PDT)
Date: Mon, 14 Mar 2022 16:58:54 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314145854.shtnvetounjfnu4e@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-4-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220314095231.3486931-4-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 03/14] net: bridge: mst: Support
 setting and reporting MST port states
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

On Mon, Mar 14, 2022 at 10:52:20AM +0100, Tobias Waldekranz wrote:
> +int br_mst_fill_info(struct sk_buff *skb, struct net_bridge_vlan_group *vg)
> +{
> +	struct net_bridge_vlan *v;
> +	struct nlattr *nest;
> +	unsigned long *seen;
> +	int err = 0;
> +
> +	seen = bitmap_zalloc(VLAN_N_VID, 0);

I see there is precedent in the bridge driver for using dynamic
allocation as opposed to on-stack declaration using DECLARE_BITMAP().
I imagine this isn't just to be "heapsters", but why?

I don't have a very good sense of how much on-stack memory is too much
(a lot probably depends on the expected depth of the call stack too, and here it
doesn't appear to be too deep), but I see that mlxsw_sp_bridge_vxlan_vlan_is_valid()
has a DECLARE_BITMAP(vlans, VLAN_N_VID) too.

The comment applies for callers of br_mst_get_info() too.

> +	if (!seen)
> +		return -ENOMEM;
> +
> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
> +		if (test_bit(v->brvlan->msti, seen))
> +			continue;
> +
> +		nest = nla_nest_start_noflag(skb, IFLA_BRIDGE_MST_ENTRY);
> +		if (!nest ||
> +		    nla_put_u16(skb, IFLA_BRIDGE_MST_ENTRY_MSTI, v->brvlan->msti) ||
> +		    nla_put_u8(skb, IFLA_BRIDGE_MST_ENTRY_STATE, v->state)) {
> +			err = -EMSGSIZE;
> +			break;
> +		}
> +		nla_nest_end(skb, nest);
> +
> +		set_bit(v->brvlan->msti, seen);
> +	}
> +
> +	kfree(seen);
> +	return err;
> +}
