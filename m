Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1A821F266
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 891BB89031;
	Tue, 14 Jul 2020 13:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djlxIQzri-UQ; Tue, 14 Jul 2020 13:24:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3ABE89030;
	Tue, 14 Jul 2020 13:24:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C6089C0733;
	Tue, 14 Jul 2020 13:24:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E81C0C0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E42B58A4A3
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OfHSeolvWEPp for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:24:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61EB08A445
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:24:13 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id o11so21607611wrv.9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=GLQFPBl5ZkcFo2RqZUybqIh63q95UCf0Z8BJV3RDMtg=;
 b=NQxGY9DH2ko89HRv96PUpvFPQ56CknakRiZggzLyCALPV9ffdGKud1RW/ACIS3sAfQ
 z21YzXvQG6Pu+Hq3ExYQCW2s/xnsbGvt3DeghR5vJIawL84TbRJq1G5sNWpvpsn9FvCz
 LdFKtgabq4Wko8HWsV2p6uYpHABdhM3WwU6hU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GLQFPBl5ZkcFo2RqZUybqIh63q95UCf0Z8BJV3RDMtg=;
 b=dKJUrVTOIp89OMwmaH+heH4c755HD0cQUqzkYXHB309xt4yG7kv6oyf7JHWi1JbwW5
 xfRPVmGUTpz1b6w7VeKoDIdK2xOZ+TfFaHHYAo54G4UrvfdbcIxz5h2NhZ8pR5onpxM0
 dTS2yvw2Iqj12H8FDS/2Jk7Qa4WIqRYNB/nOcnJPTwvKYZmeCsdaycsGHP8F0DuFdXJY
 Dgf9B6ORxagnt/FjgYVmIWIttgh68dJ4hgvGPag3Jzc4PzrKKZDTKNE+JVZUniHdi2i1
 AZ6KequFiYYbRjcLIK3xndPX1hnMY41bFGps3qJHNAEVKVtgWsxbZsop69+Y3JA+QPlQ
 5nEA==
X-Gm-Message-State: AOAM533zEJTjo58XDw4/ThyyZv77EuARRmZIw7F35dr+IVaWePlFVzjS
 RstCD8ZG8Kzzby/hhOXeS8cL9yfTxbwBwg==
X-Google-Smtp-Source: ABdhPJxCyPl+yApWOj4n537rplVLqxUnmtGApZDEWCERFAe4cqO8pE+Beoe8GGFBqi/ahuXd+98Qqw==
X-Received: by 2002:adf:db86:: with SMTP id u6mr5652247wri.27.1594733051514;
 Tue, 14 Jul 2020 06:24:11 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d13sm28530933wrn.61.2020.07.14.06.24.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:24:10 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-10-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <c78a8a50-3407-d7d2-c72a-897789cd4152@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:24:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-10-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 09/12] bridge: mrp: Extend MRP
 netlink interface for configuring MRP interconnect
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

On 14/07/2020 10:34, Horatiu Vultur wrote:
> This patch extends the existing MRP netlink interface with the following
> attributes: IFLA_BRIDGE_MRP_IN_ROLE, IFLA_BRIDGE_MRP_IN_STATE and
> IFLA_BRIDGE_MRP_START_IN_TEST. These attributes are similar with their
> ring attributes but they apply to the interconnect port.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp_netlink.c | 140 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 140 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index 4bf7aaeb29152..a006e0771e8d3 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -14,6 +14,9 @@ static const struct nla_policy br_mrp_policy[IFLA_BRIDGE_MRP_MAX + 1] = {
>  	[IFLA_BRIDGE_MRP_RING_STATE]	= { .type = NLA_NESTED },
>  	[IFLA_BRIDGE_MRP_RING_ROLE]	= { .type = NLA_NESTED },
>  	[IFLA_BRIDGE_MRP_START_TEST]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_IN_ROLE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_IN_STATE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_START_IN_TEST]	= { .type = NLA_NESTED },
>  };
>  
>  static const struct nla_policy
> @@ -235,6 +238,121 @@ static int br_mrp_start_test_parse(struct net_bridge *br, struct nlattr *attr,
>  	return br_mrp_start_test(br, &test);
>  }
>  
> +static const struct nla_policy
> +br_mrp_in_state_policy[IFLA_BRIDGE_MRP_IN_STATE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_IN_STATE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_IN_STATE_IN_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_IN_STATE_STATE]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_in_state_parse(struct net_bridge *br, struct nlattr *attr,
> +				 struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_IN_STATE_MAX + 1];
> +	struct br_mrp_in_state state;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_IN_STATE_MAX, attr,
> +			       br_mrp_in_state_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_IN_STATE_IN_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_IN_STATE_STATE]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: IN_ID or STATE");
> +		return -EINVAL;
> +	}
> +
> +	memset(&state, 0x0, sizeof(state));
> +
> +	state.in_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_STATE_IN_ID]);
> +	state.in_state = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_STATE_STATE]);
> +
> +	return br_mrp_set_in_state(br, &state);
> +}
> +
> +static const struct nla_policy
> +br_mrp_in_role_policy[IFLA_BRIDGE_MRP_IN_ROLE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_IN_ROLE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_IN_ROLE_RING_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_IN_ROLE_IN_ID]		= { .type = NLA_U16 },
> +	[IFLA_BRIDGE_MRP_IN_ROLE_ROLE]		= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_in_role_parse(struct net_bridge *br, struct nlattr *attr,
> +				struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_IN_ROLE_MAX + 1];
> +	struct br_mrp_in_role role;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_IN_ROLE_MAX, attr,
> +			       br_mrp_in_role_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_IN_ROLE_RING_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_IN_ROLE_IN_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX] ||
> +	    !tb[IFLA_BRIDGE_MRP_IN_ROLE_ROLE]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: RING_ID or ROLE or IN_ID or I_IFINDEX");
> +		return -EINVAL;
> +	}
> +
> +	memset(&role, 0x0, sizeof(role));
> +
> +	role.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_ROLE_RING_ID]);
> +	role.in_id = nla_get_u16(tb[IFLA_BRIDGE_MRP_IN_ROLE_IN_ID]);
> +	role.i_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX]);
> +	role.in_role = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_ROLE_ROLE]);
> +
> +	return br_mrp_set_in_role(br, &role);
> +}
> +
> +static const struct nla_policy
> +br_mrp_start_in_test_policy[IFLA_BRIDGE_MRP_START_IN_TEST_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_START_IN_TEST_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_start_in_test_parse(struct net_bridge *br,
> +				      struct nlattr *attr,
> +				      struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_START_IN_TEST_MAX + 1];
> +	struct br_mrp_start_in_test test;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_START_IN_TEST_MAX, attr,
> +			       br_mrp_start_in_test_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL] ||
> +	    !tb[IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS] ||
> +	    !tb[IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: RING_ID or INTERVAL or MAX_MISS or PERIOD");
> +		return -EINVAL;
> +	}
> +
> +	memset(&test, 0x0, sizeof(test));
> +
> +	test.in_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID]);
> +	test.interval = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL]);
> +	test.max_miss = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS]);
> +	test.period = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD]);
> +
> +	return br_mrp_start_in_test(br, &test);
> +}
> +
>  int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack)
>  {
> @@ -301,6 +419,28 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  			return err;
>  	}
>  
> +	if (tb[IFLA_BRIDGE_MRP_IN_STATE]) {
> +		err = br_mrp_in_state_parse(br, tb[IFLA_BRIDGE_MRP_IN_STATE],
> +					    extack);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (tb[IFLA_BRIDGE_MRP_IN_ROLE]) {
> +		err = br_mrp_in_role_parse(br, tb[IFLA_BRIDGE_MRP_IN_ROLE],
> +					   extack);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (tb[IFLA_BRIDGE_MRP_START_IN_TEST]) {
> +		err = br_mrp_start_in_test_parse(br,
> +						 tb[IFLA_BRIDGE_MRP_START_IN_TEST],
> +						 extack);
> +		if (err)
> +			return err;
> +	}
> +
>  	return 0;
>  }
>  
> 

