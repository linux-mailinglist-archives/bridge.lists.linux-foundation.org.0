Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E0F67DB5
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:07:34 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2EDC86D46;
	Sun, 14 Jul 2019 06:04:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F8BA1C78
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 13:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EEE914C3
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 13:27:18 +0000 (UTC)
Received: from [192.168.1.3] (unknown [58.37.149.201])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id 09882416B7;
	Sat,  6 Jul 2019 21:27:14 +0800 (CST)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, pablo@netfilter.org,
	fw@strlen.de
References: <1562364550-16974-1-git-send-email-wenxu@ucloud.cn>
	<1562364550-16974-3-git-send-email-wenxu@ucloud.cn>
	<114db8d1-2267-a338-688a-61f7f6db53ac@cumulusnetworks.com>
From: wenxu <wenxu@ucloud.cn>
Message-ID: <7b25d1ff-c527-5b79-d5de-6db13fdd8157@ucloud.cn>
Date: Sat, 6 Jul 2019 21:27:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <114db8d1-2267-a338-688a-61f7f6db53ac@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVkpVQ01JS0tLSE9NSkNITENZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NFE6Nyo5PzgwGA8fPxgKGhEI
	VgowCw1VSlVKTk1JT0pCTUhPSUNNVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWU5DVUhM
	VUpPQlVJS0pZV1kIAVlBT0NMTDcG
X-HM-Tid: 0a6bc777a0112086kuqy09882416b7
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 3/5 nf-next v3] bridge: add
	br_vlan_get_info_rcu()
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org


在 2019/7/6 20:11, Nikolay Aleksandrov 写道:
> On 06/07/2019 01:09, wenxu@ucloud.cn wrote:
>> From: wenxu <wenxu@ucloud.cn>
>>
>> This new function allows you to fetch vlan info from packet path.
>>
>> Signed-off-by: wenxu <wenxu@ucloud.cn>
>> ---
>>  include/linux/if_bridge.h |  7 +++++++
>>  net/bridge/br_vlan.c      | 23 ++++++++++++++++++-----
>>  2 files changed, 25 insertions(+), 5 deletions(-)
>>
> Hi,
> This patch will need more work, comments below.
>
>> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
>> index 9e57c44..5c85608 100644
>> --- a/include/linux/if_bridge.h
>> +++ b/include/linux/if_bridge.h
>> @@ -92,6 +92,8 @@ static inline bool br_multicast_router(const struct net_device *dev)
>>  int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto);
>>  int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>  		     struct bridge_vlan_info *p_vinfo);
>> +int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>> +			 struct bridge_vlan_info *p_vinfo);
>>  #else
>>  static inline bool br_vlan_enabled(const struct net_device *dev)
>>  {
>> @@ -118,6 +120,11 @@ static inline int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>  {
>>  	return -EINVAL;
>>  }
>> +static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>> +				       struct bridge_vlan_info *p_vinfo)
>> +{
>> +	return -EINVAL;
>> +}
>>  #endif
>>  
>>  #if IS_ENABLED(CONFIG_BRIDGE)
>> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
>> index 021cc9f66..2799a88 100644
>> --- a/net/bridge/br_vlan.c
>> +++ b/net/bridge/br_vlan.c
>> @@ -1267,15 +1267,13 @@ int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
>>  }
>>  EXPORT_SYMBOL_GPL(br_vlan_get_pvid_rcu);
>>  
>> -int br_vlan_get_info(const struct net_device *dev, u16 vid,
>> -		     struct bridge_vlan_info *p_vinfo)
>> +static int __br_vlan_get_info(const struct net_device *dev, u16 vid,
>> +			      struct net_bridge_port *p,
>> +			      struct bridge_vlan_info *p_vinfo)
>>  {
>>  	struct net_bridge_vlan_group *vg;
>>  	struct net_bridge_vlan *v;
>> -	struct net_bridge_port *p;
>>  
>> -	ASSERT_RTNL();
> Removing the assert here doesn't make the function proper for RCU usage.
>  Also note that for the RCU version you need to check if vg
> is null.
Why need check if vg is null?  The br_vlan_find already check it.
>
>> -	p = br_port_get_check_rtnl(dev);
>>  	if (p)
>>  		vg = nbp_vlan_group(p);
>>  	else if (netif_is_bridge_master(dev))
>> @@ -1291,8 +1289,23 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>  	p_vinfo->flags = v->flags;
>>  	return 0;
>>  }
>> +
>> +int br_vlan_get_info(const struct net_device *dev, u16 vid,
>> +		     struct bridge_vlan_info *p_vinfo)
>> +{
>> +	ASSERT_RTNL();
>> +
>> +	return __br_vlan_get_info(dev, vid, br_port_get_check_rtnl(dev), p_vinfo);
>> +}
>>  EXPORT_SYMBOL_GPL(br_vlan_get_info);
>>  
>> +int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>> +			 struct bridge_vlan_info *p_vinfo)
>> +{
>> +	return __br_vlan_get_info(dev, vid, br_port_get_check_rtnl(dev), p_vinfo);
>> +}
>> +EXPORT_SYMBOL_GPL(br_vlan_get_info_rcu);
>> +
> This should use br_port_get_check_rcu().
>
>>  static int br_vlan_is_bind_vlan_dev(const struct net_device *dev)
>>  {
>>  	return is_vlan_dev(dev) &&
>>
>
