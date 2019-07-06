Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A9067DB6
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:07:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D5EE76D52;
	Sun, 14 Jul 2019 06:04:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C57CC1B6A
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 13:35:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 179F54C3
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 13:35:45 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p13so12475348wru.10
	for <bridge@lists.linux-foundation.org>;
	Sat, 06 Jul 2019 06:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=oeVwek081rLU3IzKc3eCX1wPmnlFaPnb3DNXz6UkpRk=;
	b=SYPnTWfJuAaCVAJE/69OMS6YDHiaLT4ce+AZxEH3cq3wjvE9/1QBGPeKccvlBMXgJg
	eGPlCnEL//DKnZwL/yi+2W0oyl50TzcJ6FtVFM7Xa4UeG9ygaPrDY8hv9tX/CI5pNT5o
	kl8YjepI0vKhNdI6aNnLFjAd5X2r+6Hjc7OU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=oeVwek081rLU3IzKc3eCX1wPmnlFaPnb3DNXz6UkpRk=;
	b=oukjlJ2jusaenn5ycTePSrQrSwjObWu5hJPRkSt1SkB5qJLUdrimBz/HKeE9dAW88y
	fLZ0p3FbjglPFF6SkOqrinhnRpw82xyhWHg6wney6MV94q+A845EIjo5tdWf1fYrNdlB
	mFnSDI0gG4O/RIeXybrc3RKp9Bbn6TLyuoq6OdmFYT1jG7piJP41V6rNkh+OZ2XaQ0h5
	DCUBwgoUAMee2B3Ai3LmnDrkFr6eTS7IS9H2GgXpdpK3wW379pldLkMNTWJ8Z6VaADk+
	WPyYa7NdO1GiFkDN4qxhSdB/LtSy9rzySD5n2Dt9cGB6hqY3ah+rCMuhV3Ws2LWAI+I/
	SIMg==
X-Gm-Message-State: APjAAAXU/L3FYDeRVATaOFwkQN8IbuIyalE3tYuBQeSp0zkE7TksSMte
	HxyiipEbeHsM8WkagCdnSfDRZbDiy7o=
X-Google-Smtp-Source: APXvYqzShFZq9QD4LtSeO1pw7PLziWgzO2+kYReupELaPx/6XLAfUqK6NeEFo2+eD8NemIXu4Mvb1A==
X-Received: by 2002:adf:e588:: with SMTP id l8mr7571526wrm.139.1562420144391; 
	Sat, 06 Jul 2019 06:35:44 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	s10sm14998307wmf.8.2019.07.06.06.35.43
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 06:35:43 -0700 (PDT)
To: wenxu <wenxu@ucloud.cn>, pablo@netfilter.org, fw@strlen.de
References: <1562364550-16974-1-git-send-email-wenxu@ucloud.cn>
	<1562364550-16974-3-git-send-email-wenxu@ucloud.cn>
	<114db8d1-2267-a338-688a-61f7f6db53ac@cumulusnetworks.com>
	<7b25d1ff-c527-5b79-d5de-6db13fdd8157@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <becc1445-f6af-9f43-de62-41d4c4a4b2e2@cumulusnetworks.com>
Date: Sat, 6 Jul 2019 16:35:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <7b25d1ff-c527-5b79-d5de-6db13fdd8157@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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

On 06/07/2019 16:27, wenxu wrote:
> 
> 在 2019/7/6 20:11, Nikolay Aleksandrov 写道:
>> On 06/07/2019 01:09, wenxu@ucloud.cn wrote:
>>> From: wenxu <wenxu@ucloud.cn>
>>>
>>> This new function allows you to fetch vlan info from packet path.
>>>
>>> Signed-off-by: wenxu <wenxu@ucloud.cn>
>>> ---
>>>  include/linux/if_bridge.h |  7 +++++++
>>>  net/bridge/br_vlan.c      | 23 ++++++++++++++++++-----
>>>  2 files changed, 25 insertions(+), 5 deletions(-)
>>>
>> Hi,
>> This patch will need more work, comments below.
>>
>>> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
>>> index 9e57c44..5c85608 100644
>>> --- a/include/linux/if_bridge.h
>>> +++ b/include/linux/if_bridge.h
>>> @@ -92,6 +92,8 @@ static inline bool br_multicast_router(const struct net_device *dev)
>>>  int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto);
>>>  int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>>  		     struct bridge_vlan_info *p_vinfo);
>>> +int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>>> +			 struct bridge_vlan_info *p_vinfo);
>>>  #else
>>>  static inline bool br_vlan_enabled(const struct net_device *dev)
>>>  {
>>> @@ -118,6 +120,11 @@ static inline int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>>  {
>>>  	return -EINVAL;
>>>  }
>>> +static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>>> +				       struct bridge_vlan_info *p_vinfo)
>>> +{
>>> +	return -EINVAL;
>>> +}
>>>  #endif
>>>  
>>>  #if IS_ENABLED(CONFIG_BRIDGE)
>>> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
>>> index 021cc9f66..2799a88 100644
>>> --- a/net/bridge/br_vlan.c
>>> +++ b/net/bridge/br_vlan.c
>>> @@ -1267,15 +1267,13 @@ int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
>>>  }
>>>  EXPORT_SYMBOL_GPL(br_vlan_get_pvid_rcu);
>>>  
>>> -int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>> -		     struct bridge_vlan_info *p_vinfo)
>>> +static int __br_vlan_get_info(const struct net_device *dev, u16 vid,
>>> +			      struct net_bridge_port *p,
>>> +			      struct bridge_vlan_info *p_vinfo)
>>>  {
>>>  	struct net_bridge_vlan_group *vg;
>>>  	struct net_bridge_vlan *v;
>>> -	struct net_bridge_port *p;
>>>  
>>> -	ASSERT_RTNL();
>> Removing the assert here doesn't make the function proper for RCU usage.
>>  Also note that for the RCU version you need to check if vg
>> is null.
> Why need check if vg is null?  The br_vlan_find already check it.

Ah, right. Fair enough, drop that part.

>>
>>> -	p = br_port_get_check_rtnl(dev);
>>>  	if (p)
>>>  		vg = nbp_vlan_group(p);
>>>  	else if (netif_is_bridge_master(dev))
>>> @@ -1291,8 +1289,23 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>>  	p_vinfo->flags = v->flags;
>>>  	return 0;
>>>  }
>>> +
>>> +int br_vlan_get_info(const struct net_device *dev, u16 vid,
>>> +		     struct bridge_vlan_info *p_vinfo)
>>> +{
>>> +	ASSERT_RTNL();
>>> +
>>> +	return __br_vlan_get_info(dev, vid, br_port_get_check_rtnl(dev), p_vinfo);
>>> +}
>>>  EXPORT_SYMBOL_GPL(br_vlan_get_info);
>>>  
>>> +int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>>> +			 struct bridge_vlan_info *p_vinfo)
>>> +{
>>> +	return __br_vlan_get_info(dev, vid, br_port_get_check_rtnl(dev), p_vinfo);
>>> +}
>>> +EXPORT_SYMBOL_GPL(br_vlan_get_info_rcu);
>>> +
>> This should use br_port_get_check_rcu().
>>
>>>  static int br_vlan_is_bind_vlan_dev(const struct net_device *dev)
>>>  {
>>>  	return is_vlan_dev(dev) &&
>>>
>>

