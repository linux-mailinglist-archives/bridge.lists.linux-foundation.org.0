Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87051209E4B
	for <lists.bridge@lfdr.de>; Thu, 25 Jun 2020 14:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED08320461;
	Thu, 25 Jun 2020 12:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cxrdpwtonH4R; Thu, 25 Jun 2020 12:18:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3E70520416;
	Thu, 25 Jun 2020 12:18:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1907BC016F;
	Thu, 25 Jun 2020 12:18:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF5D7C016F
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 12:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BAFCD87668
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 12:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I+9QAByJVAkq for <bridge@lists.linux-foundation.org>;
 Thu, 25 Jun 2020 12:17:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AEC586E0A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 12:17:59 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 17so5704814wmo.1
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 05:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aA/oXrkv3sIy+s2Zp87t2t4rA27Esv7FPgR5kYDO2Ko=;
 b=BauguZ0b2C8HJrzUizMCRyp+s56kk9/WlVHsF82HHJ/NSEAvFJlBn0pGIcffmJHk+t
 zkWH6DMsT/W6wF6p7zptOq0diTzk2pnVtrp88121PFTHh49uhmJgfI6aCr+eIcO4pUkp
 qkj/JmOypfYmcJjsnQu9xtWJgEFGq7jSTpBdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aA/oXrkv3sIy+s2Zp87t2t4rA27Esv7FPgR5kYDO2Ko=;
 b=KD9Ba//BQfWmdg2MqniGPfzsMAGq8Jl5IT6m9naAk6W4HNmjheMR8rW/oN3AIu2sVh
 o+hzbkKw6iPiVxeFdyuRVgWihX63E+oqOQxpjBrcvQWHHYbMXKdFk+800gjIhszmBnU+
 nj7CdjmXEFxYbWWJcU6rbQEumWM5g++Fz0uV5bu5si5+H1d2Xen9VO6c0hb2Qv6CUWxz
 XhkGefiwEXnfIVIch3jYXQ0Dxj6YlpGCYli+3jO2lI9dUxbU3M61+jT4xq4eKNC70fcJ
 jpOKMPEuaDq/3A5sOT5hJY7tYgAmrx9cWF6aFTZLoKyyodwNyixzvw+eUrz3BV8vZBY0
 LX4Q==
X-Gm-Message-State: AOAM532ZL+ZtazMglaA2pSjgMXSmSr847Tu2BxTdOEzUZoEV7MS4ASoH
 ofgQUw35uDV6+dkWDTKvP7o4hQ==
X-Google-Smtp-Source: ABdhPJzJgrOf1IvTIuo5ckdk8A5+c8I2EDpfgIjr6HNxJY1iwBurIE4Cc4aGzr5Gw1lHTVtUd48q5g==
X-Received: by 2002:a1c:e355:: with SMTP id a82mr3162219wmh.165.1593087477784; 
 Thu, 25 Jun 2020 05:17:57 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id k126sm6799176wme.17.2020.06.25.05.17.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jun 2020 05:17:56 -0700 (PDT)
To: kernel test robot <lkp@intel.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com,
 davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200625070630.3267620-1-horatiu.vultur@microchip.com>
 <202006251953.iZkqIUMb%lkp@intel.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <e0c847b9-8af5-c24f-8813-cffb388e3e23@cumulusnetworks.com>
Date: Thu, 25 Jun 2020 15:17:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202006251953.iZkqIUMb%lkp@intel.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: kbuild-all@lists.01.org
Subject: Re: [Bridge] [PATCH net-next v2] bridge: mrp: Extend MRP netlink
 interface with IFLA_BRIDGE_MRP_CLEAR
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

On 25/06/2020 15:03, kernel test robot wrote:
> Hi Horatiu,
> 
> Thank you for the patch! Perhaps something to improve:
> 

Hi,
I think you should drop the __rcu tag for the mrp_list member and also
from the "list" member of struct br_mrp to fix most of the below.

Cheers,
 Nik

> [auto build test WARNING on net-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Horatiu-Vultur/bridge-mrp-Extend-MRP-netlink-interface-with-IFLA_BRIDGE_MRP_CLEAR/20200625-150941
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 147373d968f1c1b5d6bb71e4e8b7495eeb9cdcae
> config: i386-randconfig-s001-20200624 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.2-dirty
>         # save the attached .config to linux build tree
>         make W=1 C=1 ARCH=i386 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> 
> sparse warnings: (new ones prefixed by >>)
> 
>    net/bridge/br_mrp.c:106:18: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned short [usertype] @@     got restricted __be16 [usertype] @@
>    net/bridge/br_mrp.c:106:18: sparse:     expected unsigned short [usertype]
>    net/bridge/br_mrp.c:106:18: sparse:     got restricted __be16 [usertype]
>    net/bridge/br_mrp.c:281:23: sparse: sparse: incorrect type in argument 1 (different modifiers) @@     expected struct list_head *entry @@     got struct list_head [noderef] * @@
>    net/bridge/br_mrp.c:281:23: sparse:     expected struct list_head *entry
>    net/bridge/br_mrp.c:281:23: sparse:     got struct list_head [noderef] *
>    net/bridge/br_mrp.c:332:28: sparse: sparse: incorrect type in argument 1 (different modifiers) @@     expected struct list_head *new @@     got struct list_head [noderef] * @@
>    net/bridge/br_mrp.c:332:28: sparse:     expected struct list_head *new
>    net/bridge/br_mrp.c:332:28: sparse:     got struct list_head [noderef] *
>    net/bridge/br_mrp.c:332:40: sparse: sparse: incorrect type in argument 2 (different modifiers) @@     expected struct list_head *head @@     got struct list_head [noderef] * @@
>    net/bridge/br_mrp.c:332:40: sparse:     expected struct list_head *head
>    net/bridge/br_mrp.c:332:40: sparse:     got struct list_head [noderef] *
>    net/bridge/br_mrp.c:691:29: sparse: sparse: incorrect type in argument 1 (different modifiers) @@     expected struct list_head const *head @@     got struct list_head [noderef] * @@
>    net/bridge/br_mrp.c:691:29: sparse:     expected struct list_head const *head
>    net/bridge/br_mrp.c:691:29: sparse:     got struct list_head [noderef] *
>>> net/bridge/br_mrp.c:383:9: sparse: sparse: dereference of noderef expression
>>> net/bridge/br_mrp.c:383:9: sparse: sparse: dereference of noderef expression
>>> net/bridge/br_mrp.c:383:9: sparse: sparse: dereference of noderef expression
> 
> vim +383 net/bridge/br_mrp.c
> 
>    284	
>    285	/* Adds a new MRP instance.
>    286	 * note: called under rtnl_lock
>    287	 */
>    288	int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
>    289	{
>    290		struct net_bridge_port *p;
>    291		struct br_mrp *mrp;
>    292		int err;
>    293	
>    294		/* If the ring exists, it is not possible to create another one with the
>    295		 * same ring_id
>    296		 */
>    297		mrp = br_mrp_find_id(br, instance->ring_id);
>    298		if (mrp)
>    299			return -EINVAL;
>    300	
>    301		if (!br_mrp_get_port(br, instance->p_ifindex) ||
>    302		    !br_mrp_get_port(br, instance->s_ifindex))
>    303			return -EINVAL;
>    304	
>    305		/* It is not possible to have the same port part of multiple rings */
>    306		if (!br_mrp_unique_ifindex(br, instance->p_ifindex) ||
>    307		    !br_mrp_unique_ifindex(br, instance->s_ifindex))
>    308			return -EINVAL;
>    309	
>    310		mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
>    311		if (!mrp)
>    312			return -ENOMEM;
>    313	
>    314		mrp->ring_id = instance->ring_id;
>    315		mrp->prio = instance->prio;
>    316	
>    317		p = br_mrp_get_port(br, instance->p_ifindex);
>    318		spin_lock_bh(&br->lock);
>    319		p->state = BR_STATE_FORWARDING;
>    320		p->flags |= BR_MRP_AWARE;
>    321		spin_unlock_bh(&br->lock);
>    322		rcu_assign_pointer(mrp->p_port, p);
>    323	
>    324		p = br_mrp_get_port(br, instance->s_ifindex);
>    325		spin_lock_bh(&br->lock);
>    326		p->state = BR_STATE_FORWARDING;
>    327		p->flags |= BR_MRP_AWARE;
>    328		spin_unlock_bh(&br->lock);
>    329		rcu_assign_pointer(mrp->s_port, p);
>    330	
>    331		INIT_DELAYED_WORK(&mrp->test_work, br_mrp_test_work_expired);
>  > 332		list_add_tail_rcu(&mrp->list, &br->mrp_list);
>    333	
>    334		err = br_mrp_switchdev_add(br, mrp);
>    335		if (err)
>    336			goto delete_mrp;
>    337	
>    338		return 0;
>    339	
>    340	delete_mrp:
>    341		br_mrp_del_impl(br, mrp);
>    342	
>    343		return err;
>    344	}
>    345	
>    346	/* Deletes the MRP instance from which the port is part of
>    347	 * note: called under rtnl_lock
>    348	 */
>    349	void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p)
>    350	{
>    351		struct br_mrp *mrp = br_mrp_find_port(br, p);
>    352	
>    353		/* If the port is not part of a MRP instance just bail out */
>    354		if (!mrp)
>    355			return;
>    356	
>    357		br_mrp_del_impl(br, mrp);
>    358	}
>    359	
>    360	/* Deletes existing MRP instance based on ring_id
>    361	 * note: called under rtnl_lock
>    362	 */
>    363	int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance)
>    364	{
>    365		struct br_mrp *mrp = br_mrp_find_id(br, instance->ring_id);
>    366	
>    367		if (!mrp)
>    368			return -EINVAL;
>    369	
>    370		br_mrp_del_impl(br, mrp);
>    371	
>    372		return 0;
>    373	}
>    374	
>    375	/* Deletes all MRP instances on the bridge
>    376	 * note: called under rtnl_lock
>    377	 */
>    378	int br_mrp_clear(struct net_bridge *br)
>    379	{
>    380		struct br_mrp *mrp;
>    381		struct br_mrp *tmp;
>    382	
>  > 383		list_for_each_entry_safe(mrp, tmp, &br->mrp_list, list) {
>    384			br_mrp_del_impl(br, mrp);
>    385		}
>    386	
>    387		return 0;
>    388	}
>    389	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

