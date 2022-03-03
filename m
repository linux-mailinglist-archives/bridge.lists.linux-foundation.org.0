Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDD64CC8DF
	for <lists.bridge@lfdr.de>; Thu,  3 Mar 2022 23:27:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C86E360B06;
	Thu,  3 Mar 2022 22:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QSSIKZP9Glvl; Thu,  3 Mar 2022 22:27:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7661760F64;
	Thu,  3 Mar 2022 22:27:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 337EBC0070;
	Thu,  3 Mar 2022 22:27:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3A08C000B
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE082409E0
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q2HeeqPk_fw1 for <bridge@lists.linux-foundation.org>;
 Thu,  3 Mar 2022 22:27:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2E6A409DC
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:27:46 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id qa43so13617507ejc.12
 for <bridge@lists.linux-foundation.org>; Thu, 03 Mar 2022 14:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lhX6RB0dmLl0zBx/bSbkGbH0bXRDixWhMm0OMYsDjEU=;
 b=nUcta1pBTg1eBDqSeVWWC7RG7LE4QO9NxqSvWSEBN6avbu3LxoVHgonweXNczxA8MY
 +0Xj6fYsk9kHfFFRpreqU9+GJF2viD2HI+ZdY1mhk/jIuewPSKhu1Irnu+7J7LLQXKVg
 Z//I2qjCq4oVYHYpupnAzHWP6Z2BBlhtBVlzl7AwyiHgequ7CP/pVy8emqV4jZhPxD4Z
 GB9VFg9w4zeY/9P30Hjj0LMeUHKGlVp330zGsWsVAI9UCVxnjvJZgcMcAjywIN65TF8n
 nrg2CurmSd4ZdoOTAw4FVnASk1a5QpYDKtbLcXQHWVlEEj82yA5ezQrcCPbZO32CUuYX
 wRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lhX6RB0dmLl0zBx/bSbkGbH0bXRDixWhMm0OMYsDjEU=;
 b=4oVnA3f9AbKGiARM6H+jEk2sNRbocEQocmWszLRAM8k4qwNI/Bxp/jBdkF5prnW0he
 t90Lm1ZzaRU8LNfCNzJUvFCZyKV1UcfKSyInTjIkvxWHtGhB6+IHAlK2yr5oJXR1n6w8
 MRRoajyhXdlAkPELxH/dSTBLL0DaqSS14O8lCx+j9fwAb5eSekChf2YTadBQy4uX6TCj
 iijd71jDCR1hcIicXLAeDJtj+BAEkeaN+v8p1iS4FlmY1BBjV+u975QiExuQYGJTbTsX
 //jMx8YKW/V/AJuPOXt3g5Kn2FYFrPTL2biY2uC+R/Wnr4LippBcfO0BOhNK5+3Cc/OB
 85KQ==
X-Gm-Message-State: AOAM5322SNbp0NXafWkuI4Z0Ja9+w3R85MWNxVObJ6N+Ix/eT1dEp/Lk
 WG5/jRCP3DkPmHum1E+S00w=
X-Google-Smtp-Source: ABdhPJwPUPd+eZufSqs2WXGP5Zo2/8iTvzMgr73R155deDRlQqBghh7PIunOorAqMCKxilu/lv6H3g==
X-Received: by 2002:a17:906:a10:b0:6ce:7107:598b with SMTP id
 w16-20020a1709060a1000b006ce7107598bmr28299009ejf.653.1646346464998; 
 Thu, 03 Mar 2022 14:27:44 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 v2-20020a509d02000000b00412d53177a6sm1368434ede.20.2022.03.03.14.27.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 14:27:44 -0800 (PST)
Date: Fri, 4 Mar 2022 00:27:42 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220303222742.si2gksy3tzagsc7r@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-3-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301100321.951175-3-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 02/10] net: bridge: mst: Allow
 changing a VLAN's MSTI
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

On Tue, Mar 01, 2022 at 11:03:13AM +0100, Tobias Waldekranz wrote:
> Allow a VLAN to move out of the CST (MSTI 0), to an independent tree.
> 
> The user manages the VID to MSTI mappings via a global VLAN
> setting. The proposed iproute2 interface would be:
> 
>     bridge vlan global set dev br0 vid <VID> msti <MSTI>
> 
> Changing the state in non-zero MSTIs is still not supported, but will
> be addressed in upcoming changes.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

> +static void br_mst_vlan_sync_state(struct net_bridge_vlan *pv, u16 msti)
> +{
> +	struct net_bridge_vlan_group *vg = nbp_vlan_group(pv->port);
> +	struct net_bridge_vlan *v;
> +
> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
> +		/* If this port already has a defined state in this
> +		 * MSTI (through some other VLAN membership), inherit
> +		 * it.
> +		 */
> +		if (v != pv && v->brvlan->msti == msti) {
> +			br_mst_vlan_set_state(pv->port, pv, v->state);
> +			return;
> +		}
> +	}
> +
> +	/* Otherwise, start out in a new MSTI with all ports disabled. */
> +	return br_mst_vlan_set_state(pv->port, pv, BR_STATE_DISABLED);
> +}
> +
> +int br_mst_vlan_set_msti(struct net_bridge_vlan *mv, u16 msti)
> +{
> +	struct net_bridge_vlan_group *vg;
> +	struct net_bridge_vlan *pv;
> +	struct net_bridge_port *p;

No attempt to detect non-changes to the MSTI, and exit early? In a later
patch you will also notify switchdev uselessly because of this.

> +
> +	mv->msti = msti;
> +
> +	list_for_each_entry(p, &mv->br->port_list, list) {
> +		vg = nbp_vlan_group(p);
> +
> +		pv = br_vlan_find(vg, mv->vid);
> +		if (pv)
> +			br_mst_vlan_sync_state(pv, msti);
> +	}
> +
> +	return 0;
> +}
