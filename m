Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B468E1DD469
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 19:31:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 39FBF20523;
	Thu, 21 May 2020 17:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wrr+wAA0pWKA; Thu, 21 May 2020 17:30:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 070CF2153B;
	Thu, 21 May 2020 17:30:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9C0EC0891;
	Thu, 21 May 2020 17:30:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84DADC0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 17:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 78A9F884DE
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 17:30:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxxwtSAdEv7t for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 17:30:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BAE5F8838C
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590082255; x=1621618255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Jy/N3rXBqaPkEkb9eg+3JzspSpEQo1U1nxztCbeYZ9U=;
 b=ULbE8NFEXrtZAeYWavM34nGAjZQL2VJIlOZuhwnAAFtnvEDjSnjoX/Z4
 nHaWe6KBzWLIgiJnm2cyuOWhxoi89ejNUTyVv2q2Tqd6kSQ3+ym22Fflb
 lrqXvlACL5wRZrxMdmaVkeVBocGDaaZx8VzEmVTS4oHLNxIaDJDwPsHyW
 R7gqFjC6UDRnrZVNK8xAIeftUv7Yjzt3IZ/IkyNP/0TbqWChls/63erVj
 vO1nOlgzhlwc5ZEy82P+5sGClM6/k5XPTsC73EKE+iv1wnc13Dju8ttSD
 sHZwPGSRaL4tDpWurU74bhOKPeP2+8U8SxLl6ef+Q7sNcQM8U4dpBZ4Fr w==;
IronPort-SDR: fQGe2TnqJy/y13jXVDIOYviAEYOuT8hwN8rTE5UdkE1usCD6xgCxudqs4v8nIN4lOtTkmdBAw4
 E/dekCYJdfpF9kvvd9cJ+qeMrvEMFOLnuZeftgL4icKRrnfJzkyJoVo0w0bUzxsmzG72GlcaEz
 yC2v7OCyBdWBz8gbdgFdl4qKuI8CphAp5+XFJjUAMQD8CxkiUK4UtkhqX441gf18h5RnWzC2UX
 Gg/ibsiqFBc2qNhyegRe0coMnFGZrLKobSzkWTk7Wj9U0DZMFdSK1jhcV3yzYDcYHqxuUYIlm7
 JIg=
X-IronPort-AV: E=Sophos;i="5.73,418,1583218800"; d="scan'208";a="76664518"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 May 2020 10:30:55 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 May 2020 10:30:53 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 21 May 2020 10:30:53 -0700
Date: Thu, 21 May 2020 19:30:33 +0000
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200521193033.3f553xieh2a7eapl@soft-dev3.localdomain>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
 <20200520130923.3196432-2-horatiu.vultur@microchip.com>
 <cecbdbf0-bb49-1e3c-c163-8e7412c6fcec@cumulusnetworks.com>
 <20200521181337.ory6lxyswatqhoej@soft-dev3.localdomain>
 <39ba5110-2c2a-6fd9-a3e3-000b52a366dc@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <39ba5110-2c2a-6fd9-a3e3-000b52a366dc@cumulusnetworks.com>
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

The 05/21/2020 19:58, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 21/05/2020 21:49, Horatiu Vultur wrote:
> > The 05/21/2020 11:16, Nikolay Aleksandrov wrote:
> >> On 20/05/2020 16:09, Horatiu Vultur wrote:
> >>> It is not allow to have the same net bridge port part of multiple MRP
> >>> rings. Therefore add a check if the port is used already in a different
> >>> MRP. In that case return failure.
> >>>
> >>> Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
> >>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> >>> ---
> >>>  net/bridge/br_mrp.c | 31 +++++++++++++++++++++++++++++++
> >>>  1 file changed, 31 insertions(+)
> >>>
> >>> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> >>> index d7bc09de4c139..a5a3fa59c078a 100644
> >>> --- a/net/bridge/br_mrp.c
> >>> +++ b/net/bridge/br_mrp.c
> >>> @@ -37,6 +37,32 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
> >>>       return res;
> >>>  }
> >>>
> >>> +static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
> >>> +{
> >>> +     struct br_mrp *mrp;
> >>> +     bool res = true;
> >>> +
> >>> +     rcu_read_lock();
> >>
> >> Why do you need the rcu_read_lock() here when lockdep_rtnl_is_held() is used?
> >> You should be able to just do rtnl_dereference() below as this is used only
> >> under rtnl.
> >
> > Hi Nik,
> >
> > Also initially I thought that is not needed, but when I enabled all the
> > RCU debug configs to see if I use correctly the RCU, I got a warning
> > regarding suspicious RCU usage.
> > And that is the reason why I have put it.
> >
> 
> Did you try using rtnl_dereference() instead of rcu_dereference() ?

I have just tried it now and that seems to work fine.
I will redo the patch and send a new patch series.

> 
> >>
> >>> +     list_for_each_entry_rcu(mrp, &br->mrp_list, list,
> >>> +                             lockdep_rtnl_is_held()) {
> >>> +             struct net_bridge_port *p;
> >>> +
> >>> +             p = rcu_dereference(mrp->p_port);
> >>> +             if (p && p->dev->ifindex == ifindex) {
> >>> +                     res = false;
> >>> +                     break;
> >>> +             }
> >>> +
> >>> +             p = rcu_dereference(mrp->s_port);
> >>> +             if (p && p->dev->ifindex == ifindex) {
> >>> +                     res = false;
> >>> +                     break;
> >>> +             }
> >>> +     }
> >>> +     rcu_read_unlock();
> >>> +     return res;
> >>> +}
> >>> +
> >>>  static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
> >>>                                      struct net_bridge_port *p)
> >>>  {
> >>> @@ -255,6 +281,11 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
> >>>           !br_mrp_get_port(br, instance->s_ifindex))
> >>>               return -EINVAL;
> >>>
> >>> +     /* It is not possible to have the same port part of multiple rings */
> >>> +     if (!br_mrp_unique_ifindex(br, instance->p_ifindex) ||
> >>> +         !br_mrp_unique_ifindex(br, instance->s_ifindex))
> >>> +             return -EINVAL;
> >>> +
> >>>       mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
> >>>       if (!mrp)
> >>>               return -ENOMEM;
> >>>
> >>
> >
> 

-- 
/Horatiu
