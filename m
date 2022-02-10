Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAA64B3AC7
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90C72814B5;
	Sun, 13 Feb 2022 10:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MzgMLEpDNLq; Sun, 13 Feb 2022 10:14:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 699BB80CB8;
	Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 16B2BC007B;
	Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A418C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 09:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19C0660E6A
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 09:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YanYZt9wZrU for <bridge@lists.linux-foundation.org>;
 Thu, 10 Feb 2022 09:22:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3508760E68
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 09:22:23 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id bu29so3971277lfb.0
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 01:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=nsTVaT+UT9MHEz7rhHRMqhy05TbGiCCQO6axpgS2mow=;
 b=bSNPCd7D7+ZPmKMhWJm+NE7jDlibmc7BV/Wfg3NIFdY6l5NMTPKPjWG4G1SeghmOiW
 4Mo4FTsE2ARgtf/IPMJ8sMVVbiq+BfVlkCnjdqMsJSTwpl+dV0rRlU+TLUuCvPZ8zTLK
 dlO/k/qeIP+RjIEMrDMwElUmhfFKcY+Sq1RLnd5K+mUiwHWTthNL6cVQOu8jhEXxu3wL
 3fKQpbhBxaKDLe/ZkhiQee9T+VZxK+uPmVBTyvzVRnbW0T3LklhEDGQXWqcuxZLJ/WAm
 Eu7v5rjieKB9FK668L7of1I8vnl8S4illOAhUxTN63oAAWFk0gbCZKidv2q5I63YqmXE
 RzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nsTVaT+UT9MHEz7rhHRMqhy05TbGiCCQO6axpgS2mow=;
 b=t4qA2zyT5Bf1TbnrUYOGBOqXNmw+j/2VApLxQOdBES4m/Iq8A5sSl/K/RzHwbgcVAF
 /gLMzI1yWiVS6e0SHINnd1Q4Y1w24r2jCUA4CYqOUVsGNZRl2Y/KkCsdHEXNnKLy+oOS
 81ySQyQtl6OI4LjKBRgo0wMcPuU4/muDSkkuuNvaUCBDBKo5z3resSd7vbM5i5sVFdgm
 +WpC8nwV2QkUxkoXIg9Vnn3eS4C6acrBUYZQwzyeIi7NcrEePDFEJuFZ2COck02D/eYf
 CnPqdlzGrIa40BgV8/yIp+qs0UZNquK5IM6DoN7YMGCIiEmKL5a2KwKBYECKYS9GWV85
 98sA==
X-Gm-Message-State: AOAM531VPbAD6WlNvJnCKqpKBXxx3VzCoj4lzkrTend13Q3t13gUbHMa
 QothoKdTLuK1e79FuoZFAPY=
X-Google-Smtp-Source: ABdhPJy3ngnKMEfBOmDyt9BDD0Fk/R8gFeaOkOvPjAAvY1gYVeuYXBWsEIS8hn6/chXIWRfJZSDGgw==
X-Received: by 2002:a05:6512:104a:: with SMTP id
 c10mr4619459lfb.297.1644484941078; 
 Thu, 10 Feb 2022 01:22:21 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k1sm2712230lfu.136.2022.02.10.01.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 01:22:20 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <fed43e8d-de8c-aa76-1451-877cf4cc76d2@blackwall.org>
References: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
 <20220209130538.533699-6-schultz.hans+netdev@gmail.com>
 <fed43e8d-de8c-aa76-1451-877cf4cc76d2@blackwall.org>
Date: Thu, 10 Feb 2022 10:22:17 +0100
Message-ID: <86o83fuldi.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Hans Schultz <schultz.hans+lkml@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2 5/5] net: bridge: Refactor bridge
 port in locked mode to use jump labels
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

On tor, feb 10, 2022 at 10:31, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 09/02/2022 15:05, Hans Schultz wrote:
>> From: Hans Schultz <schultz.hans+lkml@gmail.com>
>> 
>> As the locked mode feature is in the hot path of the bridge modules
>> reception of packets, it needs to be refactored to use jump labels
>> for optimization.
>> 
>> Signed-off-by: Hans Schultz <schultz.hans+lkml@gmail.com>
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>
> Why two (almost) identical sign-offs?

Ups, a mistake...

>
> Also, as Ido mentioned, please fold this patch into patch 01.
>
>>  net/bridge/br_input.c   | 22 ++++++++++++++++++----
>>  net/bridge/br_netlink.c |  6 ++++++
>>  net/bridge/br_private.h |  2 ++
>>  3 files changed, 26 insertions(+), 4 deletions(-)
>> 
>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>> index 469e3adbce07..6fc428d6bac5 100644
>> --- a/net/bridge/br_input.c
>> +++ b/net/bridge/br_input.c
>> @@ -23,6 +23,18 @@
>>  #include "br_private.h"
>>  #include "br_private_tunnel.h"
>>  
>> +static struct static_key_false br_input_locked_port_feature;
>> +
>> +void br_input_locked_port_add(void)
>> +{
>> +	static_branch_inc(&br_input_locked_port_feature);
>> +}
>> +
>> +void br_input_locked_port_remove(void)
>> +{
>> +	static_branch_dec(&br_input_locked_port_feature);
>> +}
>> +
>>  static int
>>  br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
>>  {
>> @@ -91,10 +103,12 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>  				&state, &vlan))
>>  		goto out;
>>  
>> -	if (p->flags & BR_PORT_LOCKED) {
>> -		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>> -		if (!(fdb_entry && fdb_entry->dst == p))
>> -			goto drop;
>> +	if (static_branch_unlikely(&br_input_locked_port_feature)) {
>> +		if (p->flags & BR_PORT_LOCKED) {
>> +			fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>> +			if (!(fdb_entry && fdb_entry->dst == p))
>> +				goto drop;
>> +		}
>>  	}
>>  
>>  	nbp_switchdev_frame_mark(p, skb);
>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
>> index 7d4432ca9a20..e3dbe9fed75c 100644
>> --- a/net/bridge/br_netlink.c
>> +++ b/net/bridge/br_netlink.c
>> @@ -860,6 +860,7 @@ static int br_set_port_state(struct net_bridge_port *p, u8 state)
>>  static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
>>  			     int attrtype, unsigned long mask)
>>  {
>> +	bool locked = p->flags & BR_PORT_LOCKED;
>>  	if (!tb[attrtype])
>>  		return;
>>  
>> @@ -867,6 +868,11 @@ static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
>>  		p->flags |= mask;
>>  	else
>>  		p->flags &= ~mask;
>> +
>> +	if ((p->flags & BR_PORT_LOCKED) && !locked)
>> +		br_input_locked_port_add();
>> +	if (!(p->flags & BR_PORT_LOCKED) && locked)
>> +		br_input_locked_port_remove();
>>  }
>>  
>>  /* Process bridge protocol info on port */
>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> index 2661dda1a92b..0ec3ef897978 100644
>> --- a/net/bridge/br_private.h
>> +++ b/net/bridge/br_private.h
>> @@ -832,6 +832,8 @@ void br_manage_promisc(struct net_bridge *br);
>>  int nbp_backup_change(struct net_bridge_port *p, struct net_device *backup_dev);
>>  
>>  /* br_input.c */
>> +void br_input_locked_port_add(void);
>> +void br_input_locked_port_remove(void);
>>  int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb);
>>  rx_handler_func_t *br_get_rx_handler(const struct net_device *dev);
>>  
