Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0F98088F
	for <lists.bridge@lfdr.de>; Sun,  4 Aug 2019 00:52:49 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2162B9CA;
	Sat,  3 Aug 2019 22:52:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15B96F4D
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 15:41:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8C15821
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 15:41:17 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n4so77727286wrs.3
	for <bridge@lists.linux-foundation.org>;
	Fri, 02 Aug 2019 08:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Xs/YFHKf9PHFCNDA8QLLkg7vQCLE7jJpoBWYpDOuQ/Y=;
	b=eZI3YKZA4tQVIbTp8h7H4gCHu061YRt4/w7RQZjwDJoRCgkouJZbM31gNWX62qmifZ
	05XdnxNMDilS6VMLwhc/7gU2ZZogQfhmo8kdCwwt/zTaJ2Yc/kBa4N10tD/+C12fBkZR
	vnFTtbFUAKAstiVu+lgXDeVtLwqKc907yTX0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Xs/YFHKf9PHFCNDA8QLLkg7vQCLE7jJpoBWYpDOuQ/Y=;
	b=sfPPfOKzujsTSDP2yjO+OlAiTD/ldbDpT5k8+1S7aZWUn2oX7tLthzjJKKJsfxr1Sy
	CxaX2mVVMchlkuLZQJ/4tnUMGwNfSwGuWIeWD64y0XZSlLD/MNd30BAYnnP0pSW6Q0tX
	uZtE2GRyvxCswZ6t8PLWVqA8KO6XAzRGp73c7jxCW/ORVLLcRXWUPbm1VwkzC6vx0S06
	FeOhwg8eOC/hvSa0dBnwXyOsiA/I9+f8Dc/QtYxvpMUKDNgDRwVlaTape3emKr/vhPAO
	wnX5pa6Z9Euoz89pcEqAGL5z4AZQdTS/OWS9MyZ3ND5/OEY2dpsafN2e2/XQ/jYJk+7G
	MJ1Q==
X-Gm-Message-State: APjAAAXJTggbwAo09CugJcElUEG5iH8DAZk3H3HdPknEvhT3JobuEKVd
	ZMi3LsvCCWK8JRDuTDHjms10bA==
X-Google-Smtp-Source: APXvYqyHg18h+IOigT/kFMxhHANlBBseWIs/Rj7Wsq/ljYjhkgeEUQnEnVYtKaZ2YAxhR/6eu7C18g==
X-Received: by 2002:a5d:4284:: with SMTP id k4mr142482707wrq.194.1564760476081;
	Fri, 02 Aug 2019 08:41:16 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	g8sm77281166wme.20.2019.08.02.08.41.14
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Aug 2019 08:41:15 -0700 (PDT)
To: Stephen Hemminger <stephen@networkplumber.org>
References: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
	<20190802105736.26767-1-nikolay@cumulusnetworks.com>
	<20190802083519.71cb4fa2@hermes.lan>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <dfc69d03-6c90-ae62-6c23-b7de52ada422@cumulusnetworks.com>
Date: Fri, 2 Aug 2019 18:41:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190802083519.71cb4fa2@hermes.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, davem@davemloft.net,
	michael-dev <michael-dev@fami-braun.de>
Subject: Re: [Bridge] [PATCH net v4] net: bridge: move default pvid
 init/deinit to NETDEV_REGISTER/UNREGISTER
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

On 02/08/2019 18:35, Stephen Hemminger wrote:
> On Fri,  2 Aug 2019 13:57:36 +0300
> Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> 
>> +int br_vlan_bridge_event(struct net_device *dev, unsigned long event, void *ptr)
>>  {
>>  	struct netdev_notifier_changeupper_info *info;
>> -	struct net_bridge *br;
>> +	struct net_bridge *br = netdev_priv(dev);
>> +	bool changed;
>> +	int ret = 0;
>>  
>>  	switch (event) {
>> +	case NETDEV_REGISTER:
>> +		ret = br_vlan_add(br, br->default_pvid,
>> +				  BRIDGE_VLAN_INFO_PVID |
>> +				  BRIDGE_VLAN_INFO_UNTAGGED |
>> +				  BRIDGE_VLAN_INFO_BRENTRY, &changed, NULL);
>> +		break;
> 
> Looks good.
> 
> As minor optimization br_vlan_add could ignore changed pointer if NULL.
> This would save places where you don't care.
> 
> 
> Something like:
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index 021cc9f66804..bacd3543b215 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -626,10 +626,11 @@ static int br_vlan_add_existing(struct net_bridge *br,
>  		refcount_inc(&vlan->refcnt);
>  		vlan->flags |= BRIDGE_VLAN_INFO_BRENTRY;
>  		vg->num_vlans++;
> -		*changed = true;
> +		if (changed)
> +			*changed = true;
>  	}
>  
> -	if (__vlan_add_flags(vlan, flags))
> +	if (__vlan_add_flags(vlan, flags) && changed)
>  		*changed = true;
>  
>  	return 0;
> @@ -653,7 +654,8 @@ int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags, bool *changed,
>  
>  	ASSERT_RTNL();
>  
> -	*changed = false;
> +	if (changed)
> +		*changed = false;
>  	vg = br_vlan_group(br);
>  	vlan = br_vlan_find(vg, vid);
>  	if (vlan)
> @@ -679,7 +681,7 @@ int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags, bool *changed,
>  	if (ret) {
>  		free_percpu(vlan->stats);
>  		kfree(vlan);
> -	} else {
> +	} else if (changed) {
>  		*changed = true;
>  	}
>  
> 

sure, this is ok for net-next

