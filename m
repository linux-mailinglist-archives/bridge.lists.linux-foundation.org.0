Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB7925F0B3
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 23:31:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C029D86697;
	Sun,  6 Sep 2020 21:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWL6tWm51aPA; Sun,  6 Sep 2020 21:31:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFF85866D4;
	Sun,  6 Sep 2020 21:31:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD9C1C0893;
	Sun,  6 Sep 2020 21:31:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4EA9FC0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:31:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 35E3C85C52
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z23GaI31-XRc for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 21:31:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4DF9885C4F
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:31:41 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id x14so13389793wrl.12
 for <bridge@lists.linux-foundation.org>; Sun, 06 Sep 2020 14:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pp55f5y/3oXmseDIKRvoQW92fcBrV55sv14SYmev+XI=;
 b=fn+MasOnPFOP+G2YS1p862AHL5F2hGI1qIlW52jGzrFMUpu85fSoUUO74d/pYH3hpw
 ohHAepPizDOATi/sSyAhsvMjWMNUFkNLStzWDbE7I4Xj5Ji+8H1hvHTXCGO/tM6w3gp5
 ukmUTPJ78PNNgCZvwEjwX4sbbU1LfF90yon+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pp55f5y/3oXmseDIKRvoQW92fcBrV55sv14SYmev+XI=;
 b=DkKa73bIgL+c827CU62wC6FuDFB3KzNpEd/XYFC07lwbGSGfxxJKDBTdLPCpUvVI6D
 ipI9cXmMWzN4VZalbf8rKWttJ2INvfkeL3G4kE1pgsYuLS5GnkX7lGfKfzegxq2RcBHN
 Bg0wgmTohQL4qgm9EQCj5GSKGg2SMq9LPJnvgkZuMERHMFLeL0DbfsH3eH2aq/wSZ4C7
 mzuvcvjqdHikKc91HbAO/2+qUqjHKyKCRvgWhuRq7Vf62Ub+HMWNwmJtkE+bdAQKtcPM
 5X2DFcS7+1X0L/D4mdfNP+64k2JtOlRxTUbhdfrzC/hNuQR3Z6/PeS/yWEIfwRheFaf/
 yRRw==
X-Gm-Message-State: AOAM5334dRoAGFx/gvSCf7p3q3JeD7lK68AWgL0TGjARv5usSbZ/tO0L
 GgyZ2Kgp82LtxQvP34E+OwYOMQ==
X-Google-Smtp-Source: ABdhPJy1EPpHkbk0i+6glEBgefPFhBRt8uQdIZ0ffA63263K3L1+n4XYG5VYy1piNbNpsWovKIGeFw==
X-Received: by 2002:a05:6000:1c7:: with SMTP id
 t7mr19379823wrx.95.1599427899835; 
 Sun, 06 Sep 2020 14:31:39 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id t4sm25203034wre.30.2020.09.06.14.31.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Sep 2020 14:31:39 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Jakub Kicinski <kuba@kernel.org>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
 <20200905082410.2230253-6-nikolay@cumulusnetworks.com>
 <20200906135604.4d47b7a8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <89eb1120-5776-081e-52ce-1ef92f41ecbe@cumulusnetworks.com>
Message-ID: <6765a976-0284-6ae9-f4f6-c0a72b80921b@cumulusnetworks.com>
Date: Mon, 7 Sep 2020 00:31:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <89eb1120-5776-081e-52ce-1ef92f41ecbe@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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

On 9/7/20 12:29 AM, Nikolay Aleksandrov wrote:
> On 9/6/20 11:56 PM, Jakub Kicinski wrote:
>> On Sat,  5 Sep 2020 11:24:00 +0300 Nikolay Aleksandrov wrote:
>>> @@ -843,24 +843,11 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
>>>           if (!p->port || p->port->dev->ifindex != entry->ifindex)
>>>               continue;
>>> -        if (!hlist_empty(&p->src_list)) {
>>> -            err = -EINVAL;
>>> -            goto unlock;
>>> -        }
>>> -
>>>           if (p->port->state == BR_STATE_DISABLED)
>>>               goto unlock;
>>> -        __mdb_entry_fill_flags(entry, p->flags);
>>
>> Just from staring at the code it's unclear why the list_empty() check
>> and this __mdb_entry_fill_flags() are removed as well.
>>
> 
> The hlist_empty check is added by patch 01 temporarily for correctness.
> Otherwise I'd have to edit all open-coded pg del places and add src delete
> code and then remove it here.
> 

Obviously if I do a v4, I'll just move this patch before adding the hlist_empty
in the first place. :-)

> __mdb_entry_fill_flags() are called by __mdb_fill_info() which is the only
> function used to fill an mdb both for dumping and notifications after patch 08.
> 
>>> -        rcu_assign_pointer(*pp, p->next);
>>> -        hlist_del_init(&p->mglist);
>>> -        del_timer(&p->timer);
>>> -        kfree_rcu(p, rcu);
>>> +        br_multicast_del_pg(mp, p, pp);
>>>           err = 0;
>>> -
>>> -        if (!mp->ports && !mp->host_joined &&
>>> -            netif_running(br->dev))
>>> -            mod_timer(&mp->timer, jiffies);
>>>           break;
>>
>>
>>> +void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
>>> +             struct net_bridge_port_group *pg,
>>> +             struct net_bridge_port_group __rcu **pp)
>>> +{
>>> +    struct net_bridge *br = pg->port->br;
>>> +    struct net_bridge_group_src *ent;
>>> +    struct hlist_node *tmp;
>>> +
>>> +    rcu_assign_pointer(*pp, pg->next);
>>> +    hlist_del_init(&pg->mglist);
>>> +    del_timer(&pg->timer);
>>> +    hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
>>> +        br_multicast_del_group_src(ent);
>>> +    br_mdb_notify(br->dev, pg->port, &pg->addr, RTM_DELMDB, pg->flags);
>>> +    kfree_rcu(pg, rcu);
>>> +
>>> +    if (!mp->ports && !mp->host_joined && netif_running(br->dev))
>>> +        mod_timer(&mp->timer, jiffies);
>>> +}
>>
>>> @@ -1641,16 +1647,7 @@ br_multicast_leave_group(struct net_bridge *br,
>>>               if (p->flags & MDB_PG_FLAGS_PERMANENT)
>>>                   break;
>>> -            rcu_assign_pointer(*pp, p->next);
>>> -            hlist_del_init(&p->mglist);
>>> -            del_timer(&p->timer);
>>> -            kfree_rcu(p, rcu);
>>> -            br_mdb_notify(br->dev, port, group, RTM_DELMDB,
>>> -                      p->flags | MDB_PG_FLAGS_FAST_LEAVE);
>>
>> And here we'll loose MDB_PG_FLAGS_FAST_LEAVE potentially?
>>
> 
> Good catch, we will lose the fast leave indeed.
> This is a 1 line change to set the flag before notifying. Would you prefer
> me to send a v4 or a follow up for it?
> 
> Thanks,
>   Nik
> 
>>> -            if (!mp->ports && !mp->host_joined &&
>>> -                netif_running(br->dev))
>>> -                mod_timer(&mp->timer, jiffies);
>>> +            br_multicast_del_pg(mp, p, pp);
> 

