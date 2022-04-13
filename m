Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F347D4FF69E
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 14:22:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C21A82C33;
	Wed, 13 Apr 2022 12:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHpitn6IRcil; Wed, 13 Apr 2022 12:22:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E6D8F82B97;
	Wed, 13 Apr 2022 12:22:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BCF64C0088;
	Wed, 13 Apr 2022 12:22:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4210AC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FC28403CC
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uP7oT0elItJF for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 12:21:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1EF3403D0
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:21:57 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id bv19so3574316ejb.6
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 05:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=GV1nEmPNWWnt7I/+Fibq0oOUSj+d5KUf8rISFVYc4fc=;
 b=IGjZSUGpbOCCSnf3cF5c7E/eZeOHaIv4ZMPdu1AUHumMqiOIl4yO45X1Ssyhicq443
 BlN5XuHvFRZ6/z1KNHuHD4uja9M+sOTO8mXnGqCJ5Bzfb0GdUo6g1V6gUGmZvmBZUNSy
 nMTj68BMhrsL88zgfpIIBvXCmHminoOlEWE52VM0HToXYhLGwz+zHEzFSf+8Bfg95+dl
 thM7uBkUpHgFQvOJnxXGqnJzyCR494+1QxazIz/V5+oapHGkjKFGocwwbLvY6oN74YQI
 bcnSm6Rsn6Aelnn72zHwPAShVjqhMiNURJDPeqYDp5Qvte2Ogu10ozKSoeHV6hb20zRh
 xF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GV1nEmPNWWnt7I/+Fibq0oOUSj+d5KUf8rISFVYc4fc=;
 b=SQB6SebJvnUWA6j4rCk0k4FkHpL0+7QI4plTrAeC+fR6TaVlxB3sFdQcJZbGB7XYPd
 ZdyrJvK1Ro4HKVWVRzDttsIVdjU0XVmS/+54p60B9zADxyTXuCPtvFLLpaS6SzV358wS
 vB5Pv7Pl4G9h2HsrfWPjlEuqmVYbycZm73bZL3KOdMDZSfkANm88HiRPROo+2UVe65Ry
 V4N6MvtpCi2pQLG/a0mMPxbeBNqon0aLcQC/VdjvOW1lVYV86pChDDXyI2QrVJkdmamK
 bA57uQTi1OVB0jnkXJUcdcoL2LynbBGn9XZ/8M2/Ge8XhNayeQBrxuGBb3wx2HfQWROV
 Yglw==
X-Gm-Message-State: AOAM530sTzuqtytAetfbTBhMIHYn0gC1MgW/7gqMcquizCShd2zGSkri
 7Kx2AAweDvDGcn6ZN1uPJbznK/KE0Oq5uk3M
X-Google-Smtp-Source: ABdhPJwS44a67YEGP287nJdV+dtpGUos2BQDkp2Z1mpmP4SxQB5Td9PPPQk2bD8fgoTAZra4YC7NPA==
X-Received: by 2002:a17:907:90d0:b0:6e8:9a64:4f2d with SMTP id
 gk16-20020a17090790d000b006e89a644f2dmr11202305ejb.444.1649852515992; 
 Wed, 13 Apr 2022 05:21:55 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r17-20020a1709067fd100b006e88d3eefe6sm3836627ejs.205.2022.04.13.05.21.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 05:21:55 -0700 (PDT)
Message-ID: <e22bd42c-f257-82d6-f550-6e174c74b500@blackwall.org>
Date: Wed, 13 Apr 2022 15:21:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-8-razor@blackwall.org> <YlbABWs3ICeeiKsq@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YlbABWs3ICeeiKsq@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 07/12] net: rtnetlink: add
 NLM_F_BULK support to rtnl_fdb_del
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

On 13/04/2022 15:20, Ido Schimmel wrote:
> On Wed, Apr 13, 2022 at 01:51:57PM +0300, Nikolay Aleksandrov wrote:
>> When NLM_F_BULK is specified in a fdb del message we need to handle it
>> differently. First since this is a new call we can strictly validate the
>> passed attributes, at first only ifindex and vlan are allowed as these
>> will be the initially supported filter attributes, any other attribute
>> is rejected. The mac address is no longer mandatory, but we use it
>> to error out in older kernels because it cannot be specified with bulk
>> request (the attribute is not allowed) and then we have to dispatch
>> the call to ndo_fdb_del_bulk if the device supports it. The del bulk
>> callback can do further validation of the attributes if necessary.
>>
>> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
>> ---
>> v4: mark PF_BRIDGE/RTM_DELNEIGH with RTNL_FLAG_BULK_DEL_SUPPORTED
>>
>>  net/core/rtnetlink.c | 67 +++++++++++++++++++++++++++++++-------------
>>  1 file changed, 48 insertions(+), 19 deletions(-)
>>
>> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
>> index 63c7df52a667..520d50fcaaea 100644
>> --- a/net/core/rtnetlink.c
>> +++ b/net/core/rtnetlink.c
>> @@ -4169,22 +4169,34 @@ int ndo_dflt_fdb_del(struct ndmsg *ndm,
>>  }
>>  EXPORT_SYMBOL(ndo_dflt_fdb_del);
>>  
>> +static const struct nla_policy fdb_del_bulk_policy[NDA_MAX + 1] = {
>> +	[NDA_VLAN]	= { .type = NLA_U16 },
> 
> In earlier versions br_vlan_valid_id() was used to validate the VLAN,
> but I don't see it anymore. Maybe use 
> 
> NLA_POLICY_RANGE(1, VLAN_N_VID - 2)
> 
> ?
> 
> I realize that invalid values won't do anything, but I think it's better
> to only allow valid ranges.
> 

It's already validated below, see fdb_vid_parse().


>> +	[NDA_IFINDEX]	= NLA_POLICY_MIN(NLA_S32, 1),
>> +};
>> +
>>  static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>  			struct netlink_ext_ack *extack)
>>  {
>> +	bool del_bulk = !!(nlh->nlmsg_flags & NLM_F_BULK);
>>  	struct net *net = sock_net(skb->sk);
>> +	const struct net_device_ops *ops;
>>  	struct ndmsg *ndm;
>>  	struct nlattr *tb[NDA_MAX+1];
>>  	struct net_device *dev;
>> -	__u8 *addr;
>> +	__u8 *addr = NULL;
>>  	int err;
>>  	u16 vid;
>>  
>>  	if (!netlink_capable(skb, CAP_NET_ADMIN))
>>  		return -EPERM;
>>  
>> -	err = nlmsg_parse_deprecated(nlh, sizeof(*ndm), tb, NDA_MAX, NULL,
>> -				     extack);
>> +	if (!del_bulk) {
>> +		err = nlmsg_parse_deprecated(nlh, sizeof(*ndm), tb, NDA_MAX,
>> +					     NULL, extack);
>> +	} else {
>> +		err = nlmsg_parse(nlh, sizeof(*ndm), tb, NDA_MAX,
>> +				  fdb_del_bulk_policy, extack);
>> +	}
>>  	if (err < 0)
>>  		return err;
>>  
>> @@ -4200,9 +4212,12 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>  		return -ENODEV;
>>  	}
>>  
>> -	if (!tb[NDA_LLADDR] || nla_len(tb[NDA_LLADDR]) != ETH_ALEN) {
>> -		NL_SET_ERR_MSG(extack, "invalid address");
>> -		return -EINVAL;
>> +	if (!del_bulk) {
>> +		if (!tb[NDA_LLADDR] || nla_len(tb[NDA_LLADDR]) != ETH_ALEN) {
>> +			NL_SET_ERR_MSG(extack, "invalid address");
>> +			return -EINVAL;
>> +		}
>> +		addr = nla_data(tb[NDA_LLADDR]);
>>  	}
>>  
>>  	if (dev->type != ARPHRD_ETHER) {
>> @@ -4210,8 +4225,6 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>  		return -EINVAL;
>>  	}
>>  
>> -	addr = nla_data(tb[NDA_LLADDR]);
>> -
>>  	err = fdb_vid_parse(tb[NDA_VLAN], &vid, extack);
>>  	if (err)
>>  		return err;
>> @@ -4222,10 +4235,16 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>  	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
>>  	    netif_is_bridge_port(dev)) {
>>  		struct net_device *br_dev = netdev_master_upper_dev_get(dev);
>> -		const struct net_device_ops *ops = br_dev->netdev_ops;
>>  
>> -		if (ops->ndo_fdb_del)
>> -			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
>> +		ops = br_dev->netdev_ops;
>> +		if (!del_bulk) {
>> +			if (ops->ndo_fdb_del)
>> +				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
>> +		} else {
>> +			if (ops->ndo_fdb_del_bulk)
>> +				err = ops->ndo_fdb_del_bulk(ndm, tb, dev, vid,
>> +							    extack);
>> +		}
>>  
>>  		if (err)
>>  			goto out;
>> @@ -4235,15 +4254,24 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
>>  
>>  	/* Embedded bridge, macvlan, and any other device support */
>>  	if (ndm->ndm_flags & NTF_SELF) {
>> -		if (dev->netdev_ops->ndo_fdb_del)
>> -			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
>> -							   vid);
>> -		else
>> -			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
>> +		ops = dev->netdev_ops;
>> +		if (!del_bulk) {
>> +			if (ops->ndo_fdb_del)
>> +				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
>> +			else
>> +				err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
>> +		} else {
>> +			/* in case err was cleared by NTF_MASTER call */
>> +			err = -EOPNOTSUPP;
>> +			if (ops->ndo_fdb_del_bulk)
>> +				err = ops->ndo_fdb_del_bulk(ndm, tb, dev, vid,
>> +							    extack);
>> +		}
>>  
>>  		if (!err) {
>> -			rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
>> -					ndm->ndm_state);
>> +			if (!del_bulk)
>> +				rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
>> +						ndm->ndm_state);
>>  			ndm->ndm_flags &= ~NTF_SELF;
>>  		}
>>  	}
>> @@ -6145,7 +6173,8 @@ void __init rtnetlink_init(void)
>>  	rtnl_register(PF_UNSPEC, RTM_DELLINKPROP, rtnl_dellinkprop, NULL, 0);
>>  
>>  	rtnl_register(PF_BRIDGE, RTM_NEWNEIGH, rtnl_fdb_add, NULL, 0);
>> -	rtnl_register(PF_BRIDGE, RTM_DELNEIGH, rtnl_fdb_del, NULL, 0);
>> +	rtnl_register(PF_BRIDGE, RTM_DELNEIGH, rtnl_fdb_del, NULL,
>> +		      RTNL_FLAG_BULK_DEL_SUPPORTED);
>>  	rtnl_register(PF_BRIDGE, RTM_GETNEIGH, rtnl_fdb_get, rtnl_fdb_dump, 0);
>>  
>>  	rtnl_register(PF_BRIDGE, RTM_GETLINK, NULL, rtnl_bridge_getlink, 0);
>> -- 
>> 2.35.1
>>

