Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0784D9821
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 10:53:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DF7860D89;
	Tue, 15 Mar 2022 09:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id loFj10-5MvEK; Tue, 15 Mar 2022 09:53:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4376860D88;
	Tue, 15 Mar 2022 09:53:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB86FC0033;
	Tue, 15 Mar 2022 09:53:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE3AFC000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 09:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6F6F84197
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 09:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pINtakYxVYuU for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 09:52:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 863E98411C
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 09:52:57 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id qx21so39886698ejb.13
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 02:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nzL1DPOauY6xrdeyfpwRODojKdw/bFm68FMajovYo6g=;
 b=aPQtqBpjqL26lRUuA67dWSdBYZ+P/OnQD5b5DPaPCNVFC8mllI1F5Z4DrykGC7Nm52
 NYVARAcB6EKihQiU3nR7auLh2RMcX5iG4aZzNurSihePLSCDNafmV6aDnPt7iohqmzPT
 i+1RJQbOuQTUsiLaWuynMdfIp2D0pEXMbRgq3gppylA50fxe/er+TcNS8B7LqPy9DwNd
 xK4POQpl6tAPqXHcYYhL9RoWDsmggj0qIBO3em3KQdtOCCzH995aYYhNiMf7y+PmHirW
 gmes5oNZhwRimfcWiHSC/2oYzvBdzMMM04H84ESMBLL84WRaxdlbwsUak7eTTugCNdve
 PEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nzL1DPOauY6xrdeyfpwRODojKdw/bFm68FMajovYo6g=;
 b=M+Bo8/+EgtaRLeJoBxROMxTC09BQbkDyJEjXTXqLiU87ywo3i/tVzmYY7e/kmAgVnO
 ceCCgjlhMXXkXHrSSgaMTEw5IkyDgyEB9LjybmO4+7wD3YR1agD/43EHhPydmmyGB4fR
 ZC41S+1ZiVclv0ALrGwdvski6so3MeflspNWXt/qBmVSdm0TouETAyuhnzxFf7BZJW6K
 zwP0RpAtja9vnyCzyFKXZtS5G6neOzj+MkifZBkknb27lOR65oN0v9PkDsyFZ2+fHHYK
 +L14/IDNfRCpMpBCLMkqd2wmikaRoEtccCSH4GFHtQDCZn8VC41aJ04AFYYA486GKYEu
 S6Uw==
X-Gm-Message-State: AOAM5324gf3kWC04Eas/lVaKbjlisHpEnISomlSLqvfEuAeyR6DR6YBg
 gvYK4YuuFg1eC5snPTqb6tP3Dg==
X-Google-Smtp-Source: ABdhPJyQkxhiMyLn0VYaZCt9sQO44O40CE85NeRb10VArr61L3n9t7cm6DbwGGYW3nPA3mCgwXjBGg==
X-Received: by 2002:a17:906:d555:b0:6da:ac8c:f66b with SMTP id
 cr21-20020a170906d55500b006daac8cf66bmr21422702ejc.107.1647337975509; 
 Tue, 15 Mar 2022 02:52:55 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 a102-20020a509eef000000b0041614c8f79asm9346624edf.88.2022.03.15.02.52.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Mar 2022 02:52:55 -0700 (PDT)
Message-ID: <5c05d8b8-9c40-e38d-5c4d-e25526407e51@blackwall.org>
Date: Tue, 15 Mar 2022 11:52:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-4-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220315002543.190587-4-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v4 net-next 03/15] net: bridge: mst: Support
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

On 15/03/2022 02:25, Tobias Waldekranz wrote:
> Make it possible to change the port state in a given MSTI by extending
> the bridge port netlink interface (RTM_SETLINK on PF_BRIDGE).The
> proposed iproute2 interface would be:
> 
>     bridge mst set dev <PORT> msti <MSTI> state <STATE>
> 
> Current states in all applicable MSTIs can also be dumped via a
> corresponding RTM_GETLINK. The proposed iproute interface looks like
> this:
> 
> $ bridge mst
> port              msti
> vb1               0
> 		    state forwarding
> 		  100
> 		    state disabled
> vb2               0
> 		    state forwarding
> 		  100
> 		    state forwarding
> 
> The preexisting per-VLAN states are still valid in the MST
> mode (although they are read-only), and can be queried as usual if one
> is interested in knowing a particular VLAN's state without having to
> care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
> bound to MSTI 100):
> 
> $ bridge -d vlan
> port              vlan-id
> vb1               10
> 		    state forwarding mcast_router 1
> 		  20
> 		    state disabled mcast_router 1
> 		  30
> 		    state disabled mcast_router 1
> 		  40
> 		    state forwarding mcast_router 1
> vb2               10
> 		    state forwarding mcast_router 1
> 		  20
> 		    state forwarding mcast_router 1
> 		  30
> 		    state forwarding mcast_router 1
> 		  40
> 		    state forwarding mcast_router 1
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/uapi/linux/if_bridge.h |  16 +++++
>  include/uapi/linux/rtnetlink.h |   1 +
>  net/bridge/br_mst.c            | 127 +++++++++++++++++++++++++++++++++
>  net/bridge/br_netlink.c        |  44 +++++++++++-
>  net/bridge/br_private.h        |  23 ++++++
>  5 files changed, 210 insertions(+), 1 deletion(-)
> 
[snip]
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index 78ef5fea4d2b..355ad102d6b1 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -124,3 +124,130 @@ int br_mst_set_enabled(struct net_bridge *br, bool on,
>  	br_opt_toggle(br, BROPT_MST_ENABLED, on);
>  	return 0;
>  }
> +
> +size_t br_mst_info_size(const struct net_bridge_vlan_group *vg)
> +{
> +	DECLARE_BITMAP(seen, VLAN_N_VID) = { 0 };
> +	const struct net_bridge_vlan *v;
> +	size_t sz;
> +
> +	/* IFLA_BRIDGE_MST */
> +	sz = nla_total_size(0);
> +
> +	list_for_each_entry(v, &vg->vlan_list, vlist) {

Note that rtnl_calcit() (which ends up indirectly using this function) is called
only with rcu so you need to use list_for_each_entry_rcu() here.

> +		if (test_bit(v->brvlan->msti, seen))
> +			continue;
> +
> +		/* IFLA_BRIDGE_MST_ENTRY */
> +		sz += nla_total_size(0) +
> +			/* IFLA_BRIDGE_MST_ENTRY_MSTI */
> +			nla_total_size(sizeof(u16)) +
> +			/* IFLA_BRIDGE_MST_ENTRY_STATE */
> +			nla_total_size(sizeof(u8));
> +
> +		__set_bit(v->brvlan->msti, seen);
> +	}
> +
> +	return sz;
> +}
> +
