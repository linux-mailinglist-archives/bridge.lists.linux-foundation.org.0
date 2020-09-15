Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D307B26E223
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5BD322E1CB;
	Thu, 17 Sep 2020 17:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mLfAiz-qKnA2; Thu, 17 Sep 2020 17:19:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id D15A82E1AB;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B560EC0859;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 828DCC0051
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F60C86669
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BG8gqBQRIMrL for <bridge@lists.linux-foundation.org>;
 Tue, 15 Sep 2020 08:29:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B64C86668
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1600158568; x=1631694568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fTwn5T1pKJoEK59ue7GNAJ2X0iCUowH1el/JpPlsyUU=;
 b=lQhjU+I+GdpllOf3d8j099orGe/okkaTrxVNPgdYD2PC7owKKNSAh11G
 +pkn2lCV1oSp24KlSn8ItsZWFEA0XXxJRrGta3/ZEDfgN1GFZDLSauUpR
 dgB4veDdbmsDiuhOzGZohzH4vFORPSQAidfZri/u89J6PlYxkCEMiDC+L
 uxWWFqFwTLJLkDbhzegHd+i2XhDp5enpOCMfkukY+2MBMaj3uheuPZ9mN
 AyuMRHoy4gc7n3dLkpR3glCDuUnfs8690ohSlQ55MuCISJLFb9OtLeUDq
 bdoEO+eO0Coqf5kVv5GEGwWR5aAiB9xXdy8sCjXBsaFm7CGixZr+tqE8p Q==;
IronPort-SDR: NTXXUh8W7UGlRIh3NYvTRg3imnAHdVO9PbXTh/qe189wADZPMm7FsK6a1D28TsSmbjCRYpFM8W
 Rbt/tSEuRZ9Gi7ruA/yfm4mxInDR6vItb5CywcYszlsqsy0pNNIDjRpoS3dxERxiLKmwiKBCtO
 RV2JwkKzbKqC0bBxslYUlAxGXKvTGuDnYozLxz9x76Zx5nonaZzd3y2+++eoYpC8dditdUfF0x
 sUF6DDG8NSfdqHSwJthwkjm2Mhs7BnVwPpRJY+fejd4pG6HrFPwXiJ3LWAiDkmSFANKQXewUUe
 w1U=
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="26444736"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2020 01:29:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 15 Sep 2020 01:29:26 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 15 Sep 2020 01:29:18 -0700
Date: Tue, 15 Sep 2020 08:26:51 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20200915082651.4c5s734la37iqwfz@soft-test08>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904091527.669109-3-henrik.bjoernlund@microchip.com>
 <e145b130ba56460ecf11318f9a4550d2637aa222.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <e145b130ba56460ecf11318f9a4550d2637aa222.camel@nvidia.com>
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC 2/7] bridge: cfm: Add BRIDGE_CFM to Kconfig.
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
From: "henrik.bjoernlund--- via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "henrik.bjoernlund@microchip.com" <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for your review. I will update in the next version as suggested.

Regards
Henrik


The 09/08/2020 12:18, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-09-04 at 09:15 +0000, Henrik Bjoernlund wrote:
> > This makes it possible to include or exclude the CFM
> > protocol according to 802.1Q section 12.14.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > ---
> >  net/bridge/Kconfig      | 11 +++++++++++
> >  net/bridge/br_device.c  |  3 +++
> >  net/bridge/br_private.h |  3 +++
> >  3 files changed, 17 insertions(+)
> >
> > diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
> > index 80879196560c..3c8ded7d3e84 100644
> > --- a/net/bridge/Kconfig
> > +++ b/net/bridge/Kconfig
> > @@ -73,3 +73,14 @@ config BRIDGE_MRP
> >         Say N to exclude this support and reduce the binary size.
> >
> >         If unsure, say N.
> > +
> > +config BRIDGE_CFM
> > +     bool "CFM protocol"
> > +     depends on BRIDGE
> > +     help
> > +       If you say Y here, then the Ethernet bridge will be able to run CFM
> > +       protocol according to 802.1Q section 12.14
> > +
> > +       Say N to exclude this support and reduce the binary size.
> > +
> > +       If unsure, say N.
> > diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> > index a9232db03108..d12f5626a4b1 100644
> > --- a/net/bridge/br_device.c
> > +++ b/net/bridge/br_device.c
> > @@ -476,6 +476,9 @@ void br_dev_setup(struct net_device *dev)
> >       INIT_LIST_HEAD(&br->ftype_list);
> >  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> >       INIT_LIST_HEAD(&br->mrp_list);
> > +#endif
> > +#if IS_ENABLED(CONFIG_BRIDGE_CFM)
> > +     INIT_LIST_HEAD(&br->mep_list);
> >  #endif
> >       spin_lock_init(&br->hash_lock);
> >
> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > index e67c6d9e8bea..6294a3e51a33 100644
> > --- a/net/bridge/br_private.h
> > +++ b/net/bridge/br_private.h
> > @@ -445,6 +445,9 @@ struct net_bridge {
> >  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> >       struct list_head                mrp_list;
> >  #endif
> > +#if IS_ENABLED(CONFIG_BRIDGE_CFM)
> > +     struct list_head                mep_list;
> > +#endif
> >  };
> >
> >  struct br_input_skb_cb {
> 
> Looks good, perhaps also can use hlist to reduce the head size in net_bridge.
> 

-- 
/Henrik
