Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F2E4D8525
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 13:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E63E341550;
	Mon, 14 Mar 2022 12:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2CwluyHSzmQ; Mon, 14 Mar 2022 12:38:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4AAE44155D;
	Mon, 14 Mar 2022 12:38:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB6DBC0084;
	Mon, 14 Mar 2022 12:38:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3FB2C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 12:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD89A81297
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 12:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_XbdGCpmDdF for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 12:38:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E0BA81264
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 12:38:38 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id l20so26788123lfg.12
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 05:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=niZ0dixE3Q2j3/AHI21Azov9Ljg7nx7JugA2Xkl5Xhk=;
 b=08QF6+AE2N28+Eq+ppMSO58vJr/awzbHs6G8E9smJ8HhqPbOJkm/QpOt0yARry8Kpo
 uF2UpOvAIeuiYghNANjlLHbWwbhxNFP1DekCO5i+cOQmgcoa+uzrZLFDNNSldaW4G5sj
 Ax7sZ6Jnrt60eY/7q89BfAxFRB9haFemgc+qeep3NQCk4BovUaz83voUnQnO7yTkPWXY
 mjm4Di1fEe8zClqvZzJrg8Q/v+wbxsZpOmZwcmlRz9nI7eP8JDY+0FDrfqE/lXHd6hcP
 xp1beTVlCfDhlA/NngZYgjn5puYtrxia6vXY+cOlEuiTppxGwevEDk68dkIIIi73qg2Z
 l0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=niZ0dixE3Q2j3/AHI21Azov9Ljg7nx7JugA2Xkl5Xhk=;
 b=E04GSVEy2LZBG0OI61g80sfdZL3mFDWK7nczxigBBmPX+rxcwa2WH2/4eOojW0kPjw
 qtH/pW8jT5/Uz5wRaJARht83oLLqFOH7SUt0W0tHwQnmYCO+xCe5oRRC6OtHkwSrnV6u
 ugVRj+vs0gw7cMo8Jd3h6U/MHqJbORobjCBedi/O3shU0u5is84vgBneYYBHQmC4Zz2Z
 7HZl3Dyix5EzBnBMR0pvTDFLSX74ciMnJQkKDQrH24pLmn1BtEziqvA+RdhZmv2natiw
 XZP5bba1ViPb8IWfzJ+iLb5jFuoUsWS6PgjB4yu8pm7IOsdDx3W/1plziMDI0+zgM/xa
 T4/g==
X-Gm-Message-State: AOAM531+RO/BcxCPAxxdDkA+lMIn+KtE5dwRr32kfUoLHO7huHcRGMrG
 U1zws9j6gw8p/j6zQ2Z7fIyrmaMSRnfwT/EcOK7eHw==
X-Google-Smtp-Source: ABdhPJx4NxFIn56/ru/5uryrjUXEoOLsoHEMECVAUtnjdcVlz8PXEmeJftfdyGwuCAYzP0Ofz3wn4A==
X-Received: by 2002:a05:6512:3e21:b0:448:53c7:178e with SMTP id
 i33-20020a0565123e2100b0044853c7178emr14304913lfv.374.1647261515942; 
 Mon, 14 Mar 2022 05:38:35 -0700 (PDT)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 e3-20020a196743000000b0044311216c42sm3258657lfj.307.2022.03.14.05.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 05:38:35 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, davem@davemloft.net,
 kuba@kernel.org
In-Reply-To: <d16cb4b7-a1bf-2e96-0b59-2c4c37b2fdd3@blackwall.org>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-4-tobias@waldekranz.com>
 <d16cb4b7-a1bf-2e96-0b59-2c4c37b2fdd3@blackwall.org>
Date: Mon, 14 Mar 2022 13:38:34 +0100
Message-ID: <8735jkn1yt.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
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

On Mon, Mar 14, 2022 at 12:37, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 14/03/2022 11:52, Tobias Waldekranz wrote:
>> Make it possible to change the port state in a given MSTI by extending
>> the bridge port netlink interface (RTM_SETLINK on PF_BRIDGE).The
>> proposed iproute2 interface would be:
>> 
>>     bridge mst set dev <PORT> msti <MSTI> state <STATE>
>> 
>> Current states in all applicable MSTIs can also be dumped via a
>> corresponding RTM_GETLINK. The proposed iproute interface looks like
>> this:
>> 
>> $ bridge mst
>> port              msti
>> vb1               0
>> 		    state forwarding
>> 		  100
>> 		    state disabled
>> vb2               0
>> 		    state forwarding
>> 		  100
>> 		    state forwarding
>> 
>> The preexisting per-VLAN states are still valid in the MST
>> mode (although they are read-only), and can be queried as usual if one
>> is interested in knowing a particular VLAN's state without having to
>> care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
>> bound to MSTI 100):
>> 
>> $ bridge -d vlan
>> port              vlan-id
>> vb1               10
>> 		    state forwarding mcast_router 1
>> 		  20
>> 		    state disabled mcast_router 1
>> 		  30
>> 		    state disabled mcast_router 1
>> 		  40
>> 		    state forwarding mcast_router 1
>> vb2               10
>> 		    state forwarding mcast_router 1
>> 		  20
>> 		    state forwarding mcast_router 1
>> 		  30
>> 		    state forwarding mcast_router 1
>> 		  40
>> 		    state forwarding mcast_router 1
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>
> Hi Tobias,
> A few comments below..
>
>>  include/uapi/linux/if_bridge.h |  17 ++++++
>>  include/uapi/linux/rtnetlink.h |   1 +
>>  net/bridge/br_mst.c            | 105 +++++++++++++++++++++++++++++++++
>>  net/bridge/br_netlink.c        |  32 +++++++++-
>>  net/bridge/br_private.h        |  15 +++++
>>  5 files changed, 169 insertions(+), 1 deletion(-)
>> 
>> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>> index f60244b747ae..879dfaef8da0 100644
>> --- a/include/uapi/linux/if_bridge.h
>> +++ b/include/uapi/linux/if_bridge.h
>> @@ -122,6 +122,7 @@ enum {
>>  	IFLA_BRIDGE_VLAN_TUNNEL_INFO,
>>  	IFLA_BRIDGE_MRP,
>>  	IFLA_BRIDGE_CFM,
>> +	IFLA_BRIDGE_MST,
>>  	__IFLA_BRIDGE_MAX,
>>  };
>>  #define IFLA_BRIDGE_MAX (__IFLA_BRIDGE_MAX - 1)
>> @@ -453,6 +454,21 @@ enum {
>>  
>>  #define IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX (__IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX - 1)
>>  
>> +enum {
>> +	IFLA_BRIDGE_MST_UNSPEC,
>> +	IFLA_BRIDGE_MST_ENTRY,
>> +	__IFLA_BRIDGE_MST_MAX,
>> +};
>> +#define IFLA_BRIDGE_MST_MAX (__IFLA_BRIDGE_MST_MAX - 1)
>> +
>> +enum {
>> +	IFLA_BRIDGE_MST_ENTRY_UNSPEC,
>> +	IFLA_BRIDGE_MST_ENTRY_MSTI,
>> +	IFLA_BRIDGE_MST_ENTRY_STATE,
>> +	__IFLA_BRIDGE_MST_ENTRY_MAX,
>> +};
>> +#define IFLA_BRIDGE_MST_ENTRY_MAX (__IFLA_BRIDGE_MST_ENTRY_MAX - 1)
>> +
>>  struct bridge_stp_xstats {
>>  	__u64 transition_blk;
>>  	__u64 transition_fwd;
>> @@ -786,4 +802,5 @@ enum {
>>  	__BRIDGE_QUERIER_MAX
>>  };
>>  #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
>> +
>
> stray new line

Well that's embarrassing :)

>>  #endif /* _UAPI_LINUX_IF_BRIDGE_H */
>> diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
>> index 51530aade46e..83849a37db5b 100644
>> --- a/include/uapi/linux/rtnetlink.h
>> +++ b/include/uapi/linux/rtnetlink.h
>> @@ -817,6 +817,7 @@ enum {
>>  #define RTEXT_FILTER_MRP	(1 << 4)
>>  #define RTEXT_FILTER_CFM_CONFIG	(1 << 5)
>>  #define RTEXT_FILTER_CFM_STATUS	(1 << 6)
>> +#define RTEXT_FILTER_MST	(1 << 7)
>>  
>>  /* End of information exported to user level */
>>  
>> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
>> index 78ef5fea4d2b..df65aa7701c1 100644
>> --- a/net/bridge/br_mst.c
>> +++ b/net/bridge/br_mst.c
>> @@ -124,3 +124,108 @@ int br_mst_set_enabled(struct net_bridge *br, bool on,
>>  	br_opt_toggle(br, BROPT_MST_ENABLED, on);
>>  	return 0;
>>  }
>> +
>> +int br_mst_fill_info(struct sk_buff *skb, struct net_bridge_vlan_group *vg)
>
> const vg
>
>> +{
>> +	struct net_bridge_vlan *v;
>
> const v
>
>> +	struct nlattr *nest;
>> +	unsigned long *seen;
>> +	int err = 0;
>> +
>> +	seen = bitmap_zalloc(VLAN_N_VID, 0);
>> +	if (!seen)
>> +		return -ENOMEM;
>> +
>> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
>> +		if (test_bit(v->brvlan->msti, seen))
>> +			continue;
>> +
>> +		nest = nla_nest_start_noflag(skb, IFLA_BRIDGE_MST_ENTRY);
>> +		if (!nest ||
>> +		    nla_put_u16(skb, IFLA_BRIDGE_MST_ENTRY_MSTI, v->brvlan->msti) ||
>> +		    nla_put_u8(skb, IFLA_BRIDGE_MST_ENTRY_STATE, v->state)) {
>> +			err = -EMSGSIZE;
>> +			break;
>> +		}
>> +		nla_nest_end(skb, nest);
>> +
>> +		set_bit(v->brvlan->msti, seen);
>
> __set_bit()
>
>> +	}
>> +
>> +	kfree(seen);
>> +	return err;
>> +}
>> +
>> +static const struct nla_policy br_mst_nl_policy[IFLA_BRIDGE_MST_ENTRY_MAX + 1] = {
>> +	[IFLA_BRIDGE_MST_ENTRY_MSTI] = NLA_POLICY_RANGE(NLA_U16,
>> +						   1, /* 0 reserved for CST */
>> +						   VLAN_N_VID - 1),
>> +	[IFLA_BRIDGE_MST_ENTRY_STATE] = NLA_POLICY_RANGE(NLA_U8,
>> +						    BR_STATE_DISABLED,
>> +						    BR_STATE_BLOCKING),
>> +};
>> +
>> +static int br_mst_parse_one(struct net_bridge_port *p,
>> +			    const struct nlattr *attr,
>> +			    struct netlink_ext_ack *extack)
>> +{
>
> I'd either set the state after parsing, so this function just does what it
> says (parse) or I'd rename it.
>
>> +	struct nlattr *tb[IFLA_BRIDGE_MST_ENTRY_MAX + 1];
>> +	u16 msti;
>> +	u8 state;
>> +	int err;
>> +
>> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MST_ENTRY_MAX, attr,
>> +			       br_mst_nl_policy, extack);
>> +	if (err)
>> +		return err;
>> +
>> +	if (!tb[IFLA_BRIDGE_MST_ENTRY_MSTI]) {
>> +		NL_SET_ERR_MSG_MOD(extack, "MSTI not specified");
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (!tb[IFLA_BRIDGE_MST_ENTRY_STATE]) {
>> +		NL_SET_ERR_MSG_MOD(extack, "State not specified");
>> +		return -EINVAL;
>> +	}
>> +
>> +	msti = nla_get_u16(tb[IFLA_BRIDGE_MST_ENTRY_MSTI]);
>> +	state = nla_get_u8(tb[IFLA_BRIDGE_MST_ENTRY_STATE]);
>> +
>> +	br_mst_set_state(p, msti, state);
>> +	return 0;
>> +}
>> +
>> +int br_mst_parse(struct net_bridge_port *p, struct nlattr *mst_attr,
>> +		 struct netlink_ext_ack *extack)
>
> This doesn't just parse though, it also sets the state. Please rename it to
> something more appropriate.
>
> const mst_attr
>
>> +{
>> +	struct nlattr *attr;
>> +	int err, msts = 0;
>> +	int rem;
>> +
>> +	if (!br_opt_get(p->br, BROPT_MST_ENABLED)) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Can't modify MST state when MST is disabled");
>> +		return -EBUSY;
>> +	}
>> +
>> +	nla_for_each_nested(attr, mst_attr, rem) {
>> +		switch (nla_type(attr)) {
>> +		case IFLA_BRIDGE_MST_ENTRY:
>> +			err = br_mst_parse_one(p, attr, extack);
>> +			break;
>> +		default:
>> +			continue;
>> +		}
>> +
>> +		msts++;
>> +		if (err)
>> +			break;
>> +	}
>> +
>> +	if (!msts) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Found no MST entries to process");
>> +		err = -EINVAL;
>> +	}
>> +
>> +	return err;
>> +}
>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
>> index 7d4432ca9a20..d2b4550f30d6 100644
>> --- a/net/bridge/br_netlink.c
>> +++ b/net/bridge/br_netlink.c
>> @@ -485,7 +485,8 @@ static int br_fill_ifinfo(struct sk_buff *skb,
>>  			   RTEXT_FILTER_BRVLAN_COMPRESSED |
>>  			   RTEXT_FILTER_MRP |
>>  			   RTEXT_FILTER_CFM_CONFIG |
>> -			   RTEXT_FILTER_CFM_STATUS)) {
>> +			   RTEXT_FILTER_CFM_STATUS |
>> +			   RTEXT_FILTER_MST)) {
>>  		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
>>  		if (!af)
>>  			goto nla_put_failure;
>> @@ -564,7 +565,28 @@ static int br_fill_ifinfo(struct sk_buff *skb,
>>  		nla_nest_end(skb, cfm_nest);
>>  	}
>>  
>> +	if ((filter_mask & RTEXT_FILTER_MST) &&
>> +	    br_opt_get(br, BROPT_MST_ENABLED) && port) {
>> +		struct net_bridge_vlan_group *vg = nbp_vlan_group(port);
>
> const vg
>
>> +		struct nlattr *mst_nest;
>> +		int err;
>> +
>> +		if (!vg || !vg->num_vlans)
>> +			goto done;
>> +
>> +		mst_nest = nla_nest_start(skb, IFLA_BRIDGE_MST);
>> +		if (!mst_nest)
>> +			goto nla_put_failure;
>> +
>> +		err = br_mst_fill_info(skb, vg);
>> +		if (err)
>> +			goto nla_put_failure;
>> +
>> +		nla_nest_end(skb, mst_nest);
>> +	}
>> +
>
> I think you should also update br_get_link_af_size_filtered() to account for the
> new dump attributes based on the filter. I'd adjust vinfo_sz based on the filter
> flag.
>
>>  done:
>> +
>>  	if (af)
>>  		nla_nest_end(skb, af);
>>  	nlmsg_end(skb, nlh);
>> @@ -803,6 +825,14 @@ static int br_afspec(struct net_bridge *br,
>>  			if (err)
>>  				return err;
>>  			break;
>> +		case IFLA_BRIDGE_MST:
>> +			if (cmd != RTM_SETLINK || !p)
>> +				return -EINVAL;
>
> These are two different errors, please set extack appropriately
> for each error.

Thanks for the review, all of the above will be fixed in v4.

