Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EBD210C00
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 15:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 861FC894F6;
	Wed,  1 Jul 2020 13:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ow2FrUANoDPJ; Wed,  1 Jul 2020 13:19:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46D72894F1;
	Wed,  1 Jul 2020 13:19:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 36314C0890;
	Wed,  1 Jul 2020 13:19:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7727BC0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 732B78B447
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OGAJjytXMnN for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 13:19:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 094BF8B435
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 13:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593609581; x=1625145581;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=w1Bi0JXqdM2ufMXqYAxcGD/e6gns1M8IrcGV3a6OBmA=;
 b=UTJpaguemft+TtBPbBYAc34KOLHQwGSI2WdOfgfaToslUeomTzCRQHTC
 r8E/NvD26hO92MGj/rcTE+aPS/EzKflOzTAhlGcY59uCeMkV48P/2dc3y
 7f6C3iKTt2Btn5xhaxrISnMhariuw/CCDKpJ693K/M0RBhEb3oLe3kaEG
 ePwZDPhBTcUrQ/l0tm8O6s2KbTucO7p1aXrNy9FrRN2UVSk3qkplqx+2H
 hlB1W2Hortw0VlKF9EhzM7nhnkhbShDWc+HRXIEhUtmNc0FR1nfeQ8mb4
 CC70QiYDyiecZs4R30rWdOcNnCclsj7mXSA+Ob1ywgTRp7HGbaDjPryM0 g==;
IronPort-SDR: CACbmcQpoOAtRtqiBQVYzHRCPFN/j/ocKbaAAGsdJRP2qm0odNZqH6YJ+0Vft2NDr01lpAhLWe
 oD6tSFyaUhEnMtYnyoaF5BlLx7CUlW8CWFnJbC8e2WSj1Z3tDrFvdrUIXg/Tp7yCQdMAykRwxf
 o4AJkzcCXD2dks6Cs5EWKsOplTiDqj4dm8xzmT5iLlyoCA7cJDVnkvj5igMkATmNDldPHEe62r
 ZHUBAjL4YAWMR3+AtBr3iIIru82e0383p4nNvr1+HP7p5YVJIKfREAbeomDlQr/usiqBxGZE41
 SUs=
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="85820750"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jul 2020 06:19:41 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 1 Jul 2020 06:19:22 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 1 Jul 2020 06:19:40 -0700
Date: Wed, 1 Jul 2020 15:19:39 +0200
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200701131939.bc6xwf7y2tlypio7@soft-dev3.localdomain>
References: <20200701072239.520807-1-horatiu.vultur@microchip.com>
 <20200701072239.520807-4-horatiu.vultur@microchip.com>
 <a861340c-8d80-6cff-39ec-1a80ee578813@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <a861340c-8d80-6cff-39ec-1a80ee578813@cumulusnetworks.com>
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, jiri@mellanox.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 3/3] bridge: Extend br_fill_ifinfo
 to return MPR status
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 07/01/2020 12:51, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 01/07/2020 10:22, Horatiu Vultur wrote:
> > This patch extends the function br_fill_ifinfo to return also the MRP
> > status for each instance on a bridge. It also adds a new filter
> > RTEXT_FILTER_MRP to return the MRP status only when this is set, not to
> > interfer with the vlans. The MRP status is return only on the bridge
> > interfaces.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  include/uapi/linux/rtnetlink.h |  1 +
> >  net/bridge/br_netlink.c        | 29 ++++++++++++++++++++++++++++-
> >  2 files changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
> > index 879e64950a0a2..9b814c92de123 100644
> > --- a/include/uapi/linux/rtnetlink.h
> > +++ b/include/uapi/linux/rtnetlink.h
> > @@ -778,6 +778,7 @@ enum {
> >  #define RTEXT_FILTER_BRVLAN  (1 << 1)
> >  #define RTEXT_FILTER_BRVLAN_COMPRESSED       (1 << 2)
> >  #define      RTEXT_FILTER_SKIP_STATS (1 << 3)
> > +#define RTEXT_FILTER_MRP     (1 << 4)
> >
> >  /* End of information exported to user level */
> >
> > diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> > index 240e260e3461c..6ecb7c7453dcb 100644
> > --- a/net/bridge/br_netlink.c
> > +++ b/net/bridge/br_netlink.c
> > @@ -453,6 +453,32 @@ static int br_fill_ifinfo(struct sk_buff *skb,
> >               rcu_read_unlock();
> >               if (err)
> >                       goto nla_put_failure;
> > +
> > +             nla_nest_end(skb, af);
> > +     }
> > +
> > +     if (filter_mask & RTEXT_FILTER_MRP) {
> > +             struct nlattr *af;
> > +             int err;
> > +
> > +             /* RCU needed because of the VLAN locking rules (rcu || rtnl) */
> > +             rcu_read_lock();

Hi Nik,
> 
> If you're using RCU, then in the previous patch (02) you should be using RCU primitives
> to walk the list and deref the ports.
> Alternatively if you rely on rtnl only then drop these RCU locks here as they're misleading.
> 
> I'd prefer to just use RCU for it in case we drop rtnl one day when dumping.

Thanks for the comments. I will create a new series where I will use the
RCU.

> 
> > +             if (!br_mrp_enabled(br) || port) {
> > +                     rcu_read_unlock();
> > +                     goto done;
> > +             }
> > +             af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
> > +             if (!af) {
> > +                     rcu_read_unlock();
> > +                     goto nla_put_failure;
> > +             }
> > +
> > +             err = br_mrp_fill_info(skb, br);
> > +
> > +             rcu_read_unlock();
> > +             if (err)
> > +                     goto nla_put_failure;
> > +
> >               nla_nest_end(skb, af);
> >       }
> >
> > @@ -516,7 +542,8 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
> >       struct net_bridge_port *port = br_port_get_rtnl(dev);
> >
> >       if (!port && !(filter_mask & RTEXT_FILTER_BRVLAN) &&
> > -         !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED))
> > +         !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED) &&
> > +         !(filter_mask & RTEXT_FILTER_MRP))
> >               return 0;
> >
> >       return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
> >
> 

-- 
/Horatiu
