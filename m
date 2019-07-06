Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA4367DB4
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:07:19 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 13BDD1869;
	Sun, 14 Jul 2019 06:04:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 568B11C54
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 12:11:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 944B687C
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 12:11:46 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s3so11521356wms.2
	for <bridge@lists.linux-foundation.org>;
	Sat, 06 Jul 2019 05:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=g999pEtD0FzSaL6N2yZxnu1/NtRd71+QrEpF9P4ldP4=;
	b=UHM+VHpwAwdLD4joN7tLl/jxi0KshZBnLutF5EHC4s9ioNUMD0HuDbanq5lbiGu9c7
	IfMT1moTcP3xXlwQ9Eub75jS4WBmZS9kSFG0IDktIKP0BUVVqGMw64l7PavdG+B4kKsI
	gSjWA50/3eNwN9ivaeeuctCp4JLUz9nupp49w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=g999pEtD0FzSaL6N2yZxnu1/NtRd71+QrEpF9P4ldP4=;
	b=NeIcCMbn5cJ6WA2um2o3EcRK8jsWS7y4zUnWOgC1ZJyFjTY4qQr9LA0hxOz5z0B0+H
	aOYRJf2z615hvMmPFV8ePOgTfL9XVj1GRm8/4ppDF+UsSMN/A6pwj4X5vxGpy5JMSzev
	cSQ+mjD/DJYpC7GVnbDIMQzpfxu+JFv/Vbt83iWh4lfSIzsnakHkRPRkYDu7WjrJqcns
	fRl+sKluYs1qWgZB7qfSO9BJjlZWCOEvZcBSr0cfpZqkIzR4F8G2o10fiSt+NMT5Q1u7
	bwAP15j0NqU9BwJosf+jp8wHXKIt9+4AT9f2SVZimTxOsCU0DWVwLTJPO757T9Mxxirk
	25RA==
X-Gm-Message-State: APjAAAU7BaSyuTim8ajDmiaeRc2vXdyxcXmAkPXKyvT+wEwsr+0NfgoE
	oJRfYBPrR7onXEP1f9k9yW3rSMW/KqY=
X-Google-Smtp-Source: APXvYqxyxIKYYs+ixRHiwhEfmT4bufHMONxBlK+LPfSOX4ViWsuGc58UMlmNb+JVkoqZv4+535Z9qg==
X-Received: by 2002:a1c:7e14:: with SMTP id z20mr7847450wmc.83.1562415104876; 
	Sat, 06 Jul 2019 05:11:44 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	n125sm16134723wmf.6.2019.07.06.05.11.43
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 05:11:44 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org, fw@strlen.de
References: <1562364550-16974-1-git-send-email-wenxu@ucloud.cn>
	<1562364550-16974-3-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <114db8d1-2267-a338-688a-61f7f6db53ac@cumulusnetworks.com>
Date: Sat, 6 Jul 2019 15:11:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562364550-16974-3-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 06/07/2019 01:09, wenxu@ucloud.cn wrote:
> From: wenxu <wenxu@ucloud.cn>
> 
> This new function allows you to fetch vlan info from packet path.
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/linux/if_bridge.h |  7 +++++++
>  net/bridge/br_vlan.c      | 23 ++++++++++++++++++-----
>  2 files changed, 25 insertions(+), 5 deletions(-)
> 

Hi,
This patch will need more work, comments below.

> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 9e57c44..5c85608 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -92,6 +92,8 @@ static inline bool br_multicast_router(const struct net_device *dev)
>  int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto);
>  int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  		     struct bridge_vlan_info *p_vinfo);
> +int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
> +			 struct bridge_vlan_info *p_vinfo);
>  #else
>  static inline bool br_vlan_enabled(const struct net_device *dev)
>  {
> @@ -118,6 +120,11 @@ static inline int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  {
>  	return -EINVAL;
>  }
> +static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
> +				       struct bridge_vlan_info *p_vinfo)
> +{
> +	return -EINVAL;
> +}
>  #endif
>  
>  #if IS_ENABLED(CONFIG_BRIDGE)
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index 021cc9f66..2799a88 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -1267,15 +1267,13 @@ int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
>  }
>  EXPORT_SYMBOL_GPL(br_vlan_get_pvid_rcu);
>  
> -int br_vlan_get_info(const struct net_device *dev, u16 vid,
> -		     struct bridge_vlan_info *p_vinfo)
> +static int __br_vlan_get_info(const struct net_device *dev, u16 vid,
> +			      struct net_bridge_port *p,
> +			      struct bridge_vlan_info *p_vinfo)
>  {
>  	struct net_bridge_vlan_group *vg;
>  	struct net_bridge_vlan *v;
> -	struct net_bridge_port *p;
>  
> -	ASSERT_RTNL();

Removing the assert here doesn't make the function proper for RCU usage.
You'll either have to split it in two and use the proper accessors to
retrieve the vlan group based on the context (rtnl or rcu) or you'll
just have to add a second version of this function which uses the proper
accessors. Also note that for the RCU version you need to check if vg
is null.

> -	p = br_port_get_check_rtnl(dev);
>  	if (p)
>  		vg = nbp_vlan_group(p);
>  	else if (netif_is_bridge_master(dev))
> @@ -1291,8 +1289,23 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  	p_vinfo->flags = v->flags;
>  	return 0;
>  }
> +
> +int br_vlan_get_info(const struct net_device *dev, u16 vid,
> +		     struct bridge_vlan_info *p_vinfo)
> +{
> +	ASSERT_RTNL();
> +
> +	return __br_vlan_get_info(dev, vid, br_port_get_check_rtnl(dev), p_vinfo);
> +}
>  EXPORT_SYMBOL_GPL(br_vlan_get_info);
>  
> +int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
> +			 struct bridge_vlan_info *p_vinfo)
> +{
> +	return __br_vlan_get_info(dev, vid, br_port_get_check_rtnl(dev), p_vinfo);
> +}
> +EXPORT_SYMBOL_GPL(br_vlan_get_info_rcu);
> +

This should use br_port_get_check_rcu().

>  static int br_vlan_is_bind_vlan_dev(const struct net_device *dev)
>  {
>  	return is_vlan_dev(dev) &&
> 

