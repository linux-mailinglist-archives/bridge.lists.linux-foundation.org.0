Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7330A1DD446
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 19:27:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DFD5893C1;
	Thu, 21 May 2020 17:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Z5G+W-5dYtZ; Thu, 21 May 2020 17:26:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 545D788E0B;
	Thu, 21 May 2020 17:26:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2FCDAC0891;
	Thu, 21 May 2020 17:26:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D1E8C0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 17:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C51B8764E
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 17:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QEp1zZ9yEwn for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 17:26:55 +0000 (UTC)
X-Greylist: delayed 00:28:46 by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B3148764D
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 17:26:55 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id e16so7429042wra.7
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 10:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5Y9QXn5/MtNpd1gpuH+YQVxBDqCPuf0vIRP+fPeT388=;
 b=CQ7SXN1PdVyxzxTn48IBDk1HDqJrKf6aZ67r0kdzGCIMp82jRV5cP4cXU2qsgf8AMR
 f0AYNpGAUQai+4PcqZ5mqW77BBJDzPWRJnwb8ORAmgyJ5eeg8et4blG30bbGrcpoxGMM
 rYvRWqpfyEztOdLirxGPacBA6cO421LA1RVow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5Y9QXn5/MtNpd1gpuH+YQVxBDqCPuf0vIRP+fPeT388=;
 b=Jz3QdlgU5isppZgvL/Q51DNrs8q2Rn2XvDBFV6djivHrHfo6lnkpfhJikKVPzs4mFz
 gbxyNoPMa92j2ziV8HOlTWr8vw7eB+kJtqu3EAlEjpXr9bALoIkkdYYYSntx1/2r8Cx6
 28eh5Zr860sqPanr9rmJkJAtpeCb69ytia/pHtgtScN4s3EtQmfLgoONPFxRCkmc+r3L
 vVFzI3GFjZUgoR00ISxQIFIy1kZYzzT0sPqIYf0cMkZGD/x+Lsoue1UP5Yi0bZy3exnS
 BjjST6j8EFwuHx5j3khnRZc0YECSEgWK5V3JzkqdU7AnEhcs8xZnNP4Mt186wBeKl+ON
 rwUA==
X-Gm-Message-State: AOAM531hy0rcAVaJhze3ZziT/bPi6X3Chw5X9jTk0kcxDLt22BDywERr
 Vfj9mtAiA2NJvVhcCTneTi+Om3EjHZDKRQ==
X-Google-Smtp-Source: ABdhPJwtTFeFA0RzSf70parteHd+eKsBzJ7WMtkTQlSR9kL4jx9EHI7evkipwvopFBuSAuWcIlqymA==
X-Received: by 2002:a5d:5389:: with SMTP id d9mr6717311wrv.77.1590080287860;
 Thu, 21 May 2020 09:58:07 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id q15sm6224927wrf.87.2020.05.21.09.58.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 09:58:07 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
 <20200520130923.3196432-2-horatiu.vultur@microchip.com>
 <cecbdbf0-bb49-1e3c-c163-8e7412c6fcec@cumulusnetworks.com>
 <20200521181337.ory6lxyswatqhoej@soft-dev3.localdomain>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <39ba5110-2c2a-6fd9-a3e3-000b52a366dc@cumulusnetworks.com>
Date: Thu, 21 May 2020 19:58:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200521181337.ory6lxyswatqhoej@soft-dev3.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 1/3] bridge: mrp: Add br_mrp_unique_ifindex
	function
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

On 21/05/2020 21:49, Horatiu Vultur wrote:
> The 05/21/2020 11:16, Nikolay Aleksandrov wrote:
>> On 20/05/2020 16:09, Horatiu Vultur wrote:
>>> It is not allow to have the same net bridge port part of multiple MRP
>>> rings. Therefore add a check if the port is used already in a different
>>> MRP. In that case return failure.
>>>
>>> Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
>>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
>>> ---
>>>  net/bridge/br_mrp.c | 31 +++++++++++++++++++++++++++++++
>>>  1 file changed, 31 insertions(+)
>>>
>>> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
>>> index d7bc09de4c139..a5a3fa59c078a 100644
>>> --- a/net/bridge/br_mrp.c
>>> +++ b/net/bridge/br_mrp.c
>>> @@ -37,6 +37,32 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
>>>       return res;
>>>  }
>>>
>>> +static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
>>> +{
>>> +     struct br_mrp *mrp;
>>> +     bool res = true;
>>> +
>>> +     rcu_read_lock();
>>
>> Why do you need the rcu_read_lock() here when lockdep_rtnl_is_held() is used?
>> You should be able to just do rtnl_dereference() below as this is used only
>> under rtnl.
> 
> Hi Nik,
> 
> Also initially I thought that is not needed, but when I enabled all the
> RCU debug configs to see if I use correctly the RCU, I got a warning
> regarding suspicious RCU usage.
> And that is the reason why I have put it.
> 

Did you try using rtnl_dereference() instead of rcu_dereference() ?

>>
>>> +     list_for_each_entry_rcu(mrp, &br->mrp_list, list,
>>> +                             lockdep_rtnl_is_held()) {
>>> +             struct net_bridge_port *p;
>>> +
>>> +             p = rcu_dereference(mrp->p_port);
>>> +             if (p && p->dev->ifindex == ifindex) {
>>> +                     res = false;
>>> +                     break;
>>> +             }
>>> +
>>> +             p = rcu_dereference(mrp->s_port);
>>> +             if (p && p->dev->ifindex == ifindex) {
>>> +                     res = false;
>>> +                     break;
>>> +             }
>>> +     }
>>> +     rcu_read_unlock();
>>> +     return res;
>>> +}
>>> +
>>>  static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
>>>                                      struct net_bridge_port *p)
>>>  {
>>> @@ -255,6 +281,11 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
>>>           !br_mrp_get_port(br, instance->s_ifindex))
>>>               return -EINVAL;
>>>
>>> +     /* It is not possible to have the same port part of multiple rings */
>>> +     if (!br_mrp_unique_ifindex(br, instance->p_ifindex) ||
>>> +         !br_mrp_unique_ifindex(br, instance->s_ifindex))
>>> +             return -EINVAL;
>>> +
>>>       mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
>>>       if (!mrp)
>>>               return -ENOMEM;
>>>
>>
> 

