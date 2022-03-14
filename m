Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 175CD4D8062
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 12:09:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25F4180C0D;
	Mon, 14 Mar 2022 11:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yEl9Ls_uAzPZ; Mon, 14 Mar 2022 11:09:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B569C81A16;
	Mon, 14 Mar 2022 11:09:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 67F00C0084;
	Mon, 14 Mar 2022 11:09:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC268C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 11:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2F8F80C0D
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 11:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tURXIgtUDv4Z for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 11:09:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7BB681A16
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 11:09:09 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id b15so15183056edn.4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 04:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=6n6ZEPynSftslrkkn67A9oe0ON+g8zOOoRrauuQESMk=;
 b=mdNIalz8h2RDTjPqrlM3K4jz0236U7jn5xSEIBvOEbVYU/XbpiHR159ZScGA4hIDYx
 yuL9nVsFKdhvSzggc/aCQm7MaYAF0quz3ReRJfl3YNaP13vvZulbDJzlv6X7A9O9OTy7
 pI3wSVawVh5TNALp7y/RBVPdu1nsqFXZBbZmkAAA+nyGM/4HGglw7KnHsIj6bsba+0K4
 t2R/sBj7TWigNOI6yHniw5MThsD7e9Pdt3uiptfvGhwjZAJAHGyx2NLiO4qVRIYELhUj
 MH/kDdd+9R31vP59FZ4L2Fwm40x5LTQ+tIjfEjBpmSXbk2Jdz/nfQFpL1+nO3OEyhVzC
 evAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=6n6ZEPynSftslrkkn67A9oe0ON+g8zOOoRrauuQESMk=;
 b=KgpiIAEqyWLpOLxhfg4qEUHEI9+UYEwbYZCqSn/GlZbcY5zyl1oVig4Z3K8xLcb95v
 7qz20zv0UEOq9FyxFRMyT06tvb1I6SqY2iah73DbPFjN4tfnH4zcEhBNAXbmTza9k/3c
 tKCxw3Jhjb8wwcj3xy/YPw4lf3TodVr7PLqQ7DTtvOOYIu/ToGUmu+9AS8gZdCn+F5cv
 tGX+ukzcyQjDbnU9TpCe6R/QFypcV6czwkt6ZuW6X1PXOUjZ8d1rpINib8RE5uc/5K+2
 6CVwzMvt4gWqhhLpPCpV05Cdk13uFETNzojC3am7d6eR8xd8qZItX1bJrG7s7X038ZHd
 arQQ==
X-Gm-Message-State: AOAM533VHjd49zW+OdDG+gByDEVovzcjvttE5Q+VkZslqePg75sn24DP
 IOb7FCCjMHf9Nqm3GJkjArVCuQ==
X-Google-Smtp-Source: ABdhPJytZgYN5TIXtT04/HdwGf3nX+Q2qhLKHYxSegtQ6AUH7F1BwD6kLs3Rx9zAh4zfS9hUnzKQFQ==
X-Received: by 2002:aa7:ce1a:0:b0:416:460:9df5 with SMTP id
 d26-20020aa7ce1a000000b0041604609df5mr19651936edv.277.1647256147967; 
 Mon, 14 Mar 2022 04:09:07 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 er12-20020a056402448c00b00413d03ac4a2sm7419235edb.69.2022.03.14.04.09.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 04:09:07 -0700 (PDT)
Message-ID: <037a8f48-29c5-ae45-b562-df15dbe6d163@blackwall.org>
Date: Mon, 14 Mar 2022 13:09:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-2-tobias@waldekranz.com>
 <9c103a85-f0e2-77cd-9fc6-dc19d99b19ec@blackwall.org>
In-Reply-To: <9c103a85-f0e2-77cd-9fc6-dc19d99b19ec@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 01/14] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

On 14/03/2022 12:37, Nikolay Aleksandrov wrote:
> On 14/03/2022 11:52, Tobias Waldekranz wrote:
>> Allow the user to switch from the current per-VLAN STP mode to an MST
>> mode.
>>
>> Up to this point, per-VLAN STP states where always isolated from each
>> other. This is in contrast to the MSTP standard (802.1Q-2018, Clause
>> 13.5), where VLANs are grouped into MST instances (MSTIs), and the
>> state is managed on a per-MSTI level, rather that at the per-VLAN
>> level.
>>
>> Perhaps due to the prevalence of the standard, many switching ASICs
>> are built after the same model. Therefore, add a corresponding MST
>> mode to the bridge, which we can later add offloading support for in a
>> straight-forward way.
>>
>> For now, all VLANs are fixed to MSTI 0, also called the Common
>> Spanning Tree (CST). That is, all VLANs will follow the port-global
>> state.
>>
>> Upcoming changes will make this actually useful by allowing VLANs to
>> be mapped to arbitrary MSTIs and allow individual MSTI states to be
>> changed.
>>
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
> [snip]
>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> index 48bc61ebc211..35b47f6b449a 100644
>> --- a/net/bridge/br_private.h
>> +++ b/net/bridge/br_private.h
>> @@ -178,6 +178,7 @@ enum {
>>   * @br_mcast_ctx: if MASTER flag set, this is the global vlan multicast context
>>   * @port_mcast_ctx: if MASTER flag unset, this is the per-port/vlan multicast
>>   *                  context
>> + * @msti: if MASTER flag set, this holds the VLANs MST instance
>>   * @vlist: sorted list of VLAN entries
>>   * @rcu: used for entry destruction
>>   *
>> @@ -210,6 +211,8 @@ struct net_bridge_vlan {
>>  		struct net_bridge_mcast_port	port_mcast_ctx;
>>  	};
>>  
>> +	u16				msti;
>> +
>>  	struct list_head		vlist;
>>  
>>  	struct rcu_head			rcu;
>> @@ -445,6 +448,7 @@ enum net_bridge_opts {
>>  	BROPT_NO_LL_LEARN,
>>  	BROPT_VLAN_BRIDGE_BINDING,
>>  	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
>> +	BROPT_MST_ENABLED,
>>  };
>>  
>>  struct net_bridge {
>> @@ -1765,6 +1769,29 @@ static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
>>  }
>>  #endif
>>  
>> +/* br_mst.c */
>> +#ifdef CONFIG_BRIDGE_VLAN_FILTERING
> 
> There is already such ifdef, you can embed all MST code inside it.
> 

My bad, I somehow confused the function placement. This is good. :)

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

