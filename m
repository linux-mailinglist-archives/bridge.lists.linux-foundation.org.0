Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E55A25F0A5
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 23:29:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85F848708D;
	Sun,  6 Sep 2020 21:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCYFTELvcE5k; Sun,  6 Sep 2020 21:29:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53B2C87084;
	Sun,  6 Sep 2020 21:29:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 43C16C0893;
	Sun,  6 Sep 2020 21:29:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8B2ABC0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7369E87084
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id crvpmSRlszMt for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 21:29:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99D0D87058
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:29:14 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id m6so13456375wrn.0
 for <bridge@lists.linux-foundation.org>; Sun, 06 Sep 2020 14:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Cdl9efMcAoNEveqStkBCk/t96vJJ9p7Xq7BYNCaD9mE=;
 b=KtJZ9Ymns9vxEj2Dy9ujxWcaYxXrDqEtd7OkeyfWPSHuSPBdVxcMS107jf4ehG84ML
 1axRv96qjrP5WxJSdgfmzKFYIePdVy9/usQ80NCnCMLmqzftITyLobH0C8MoJr8Lhg5V
 uqwOJQr1O4hmz4mzpmAahYmEhG6o9v/qaHwCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Cdl9efMcAoNEveqStkBCk/t96vJJ9p7Xq7BYNCaD9mE=;
 b=gKhfIn8IpU/KGOAlll6tE1qO4maL7gGY5BePY/WgzM0ubTTQ+EM/cL6a9ypvYpMhVM
 AmHrgnNzcELYAjktVOQaPXXXkyXq4iaqyhtjBcJBXJkB8cdAyY3pgxromiA/wfn+2KhC
 qcbgIShSVCRwe+xJ1vYjhczS76PE7n8tSCf01hPE1HWtV+hmAZ98+GLalaYU2f8RJ6j0
 zXbG1cw4S4I4B/TTJ011K0lSabP6hkdJ3+8mvFNstiaHIGk+3jhYaGLV4LWRg+GHrxVG
 ZYp5kGpzghOlzIHBeeylFjujcW4XxchLW5w2n7lN60P97DGctc88tq8Ckj1rf9sodwYl
 5Vug==
X-Gm-Message-State: AOAM533vByjEe085T05OY+dMIbuFUKoDrMLdvJEQCIcrCH7JNwwTxx9l
 pOEqXTKEfvRJcKZVPHkoZYxIJg==
X-Google-Smtp-Source: ABdhPJzIKEvz9JeQB9DkE/0Eo5vb+GtHuj8kZpFf2poYm58BccFYE4XAk5FwQa4HBrbvENHjl7nRZQ==
X-Received: by 2002:a5d:4bcf:: with SMTP id l15mr18197371wrt.384.1599427752957; 
 Sun, 06 Sep 2020 14:29:12 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id y1sm23390187wma.36.2020.09.06.14.29.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Sep 2020 14:29:12 -0700 (PDT)
To: Jakub Kicinski <kuba@kernel.org>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
 <20200905082410.2230253-6-nikolay@cumulusnetworks.com>
 <20200906135604.4d47b7a8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <89eb1120-5776-081e-52ce-1ef92f41ecbe@cumulusnetworks.com>
Date: Mon, 7 Sep 2020 00:29:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200906135604.4d47b7a8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v3 05/15] net: bridge: mcast: factor
 out port group del
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

On 9/6/20 11:56 PM, Jakub Kicinski wrote:
> On Sat,  5 Sep 2020 11:24:00 +0300 Nikolay Aleksandrov wrote:
>> @@ -843,24 +843,11 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
>>   		if (!p->port || p->port->dev->ifindex != entry->ifindex)
>>   			continue;
>>   
>> -		if (!hlist_empty(&p->src_list)) {
>> -			err = -EINVAL;
>> -			goto unlock;
>> -		}
>> -
>>   		if (p->port->state == BR_STATE_DISABLED)
>>   			goto unlock;
>>   
>> -		__mdb_entry_fill_flags(entry, p->flags);
> 
> Just from staring at the code it's unclear why the list_empty() check
> and this __mdb_entry_fill_flags() are removed as well.
> 

The hlist_empty check is added by patch 01 temporarily for correctness.
Otherwise I'd have to edit all open-coded pg del places and add src delete
code and then remove it here.

__mdb_entry_fill_flags() are called by __mdb_fill_info() which is the only
function used to fill an mdb both for dumping and notifications after patch 08.

>> -		rcu_assign_pointer(*pp, p->next);
>> -		hlist_del_init(&p->mglist);
>> -		del_timer(&p->timer);
>> -		kfree_rcu(p, rcu);
>> +		br_multicast_del_pg(mp, p, pp);
>>   		err = 0;
>> -
>> -		if (!mp->ports && !mp->host_joined &&
>> -		    netif_running(br->dev))
>> -			mod_timer(&mp->timer, jiffies);
>>   		break;
> 
> 
>> +void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
>> +			 struct net_bridge_port_group *pg,
>> +			 struct net_bridge_port_group __rcu **pp)
>> +{
>> +	struct net_bridge *br = pg->port->br;
>> +	struct net_bridge_group_src *ent;
>> +	struct hlist_node *tmp;
>> +
>> +	rcu_assign_pointer(*pp, pg->next);
>> +	hlist_del_init(&pg->mglist);
>> +	del_timer(&pg->timer);
>> +	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
>> +		br_multicast_del_group_src(ent);
>> +	br_mdb_notify(br->dev, pg->port, &pg->addr, RTM_DELMDB, pg->flags);
>> +	kfree_rcu(pg, rcu);
>> +
>> +	if (!mp->ports && !mp->host_joined && netif_running(br->dev))
>> +		mod_timer(&mp->timer, jiffies);
>> +}
> 
>> @@ -1641,16 +1647,7 @@ br_multicast_leave_group(struct net_bridge *br,
>>   			if (p->flags & MDB_PG_FLAGS_PERMANENT)
>>   				break;
>>   
>> -			rcu_assign_pointer(*pp, p->next);
>> -			hlist_del_init(&p->mglist);
>> -			del_timer(&p->timer);
>> -			kfree_rcu(p, rcu);
>> -			br_mdb_notify(br->dev, port, group, RTM_DELMDB,
>> -				      p->flags | MDB_PG_FLAGS_FAST_LEAVE);
> 
> And here we'll loose MDB_PG_FLAGS_FAST_LEAVE potentially?
> 

Good catch, we will lose the fast leave indeed.
This is a 1 line change to set the flag before notifying. Would you prefer
me to send a v4 or a follow up for it?

Thanks,
  Nik

>> -			if (!mp->ports && !mp->host_joined &&
>> -			    netif_running(br->dev))
>> -				mod_timer(&mp->timer, jiffies);
>> +			br_multicast_del_pg(mp, p, pp);

