Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A544295237
	for <lists.bridge@lfdr.de>; Wed, 21 Oct 2020 20:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 529942F576;
	Wed, 21 Oct 2020 18:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HqDzXN2Uy34Z; Wed, 21 Oct 2020 18:30:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 81BA22EA10;
	Wed, 21 Oct 2020 09:19:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6455DC0052;
	Wed, 21 Oct 2020 09:19:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38482C0052
 for <bridge@lists.linux-foundation.org>; Wed, 21 Oct 2020 09:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1E414867BF
 for <bridge@lists.linux-foundation.org>; Wed, 21 Oct 2020 09:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkKMcqvKDLMz for <bridge@lists.linux-foundation.org>;
 Wed, 21 Oct 2020 09:19:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2720866DE
 for <bridge@lists.linux-foundation.org>; Wed, 21 Oct 2020 09:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1603271940; x=1634807940;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+rVpCXr52dnGbmc7Y9HfkgfgWTlzu8JQ4Bcf4/Mlfb4=;
 b=EHQxjPOqMffduTdpi4fZS5GVSs9nel9YEG8CNaVxtoSt57Y1gde1etJc
 vxndFgaFKcfyhcsc0Y7h4m+mlHwtpm671D8M19ESUJeEMlwQCOVlqr4+t
 +oS5aqIlB2CF/qWpAPZpmPidFA6Afw3qt6sL/w1Olfx+R4rr4hoSmkomS
 IDhXfN41oLxP119cT7mb1Z2dQ/JgG7dWBSbVds7nxWlLxg02fdp/EYkYp
 cbnkZXh7xUtGgxKGIqqqkcNVKEAsHXB5LINl6XNz6SQXRJ4M32yocEkfL
 kwHLJHat5AC/JU+PiTreIhHQhJcXvjVOpMUyVcVqUZyxSZTkIjkjW1FFP w==;
IronPort-SDR: ifd+PM8WlqYDzsrG7H1uCjR08Q9aQWKZa34JgqBZuyNrHqiuXfx8QaadFSmhnks9/QiFDnGJMq
 fdVKydKlRSNg3ZslmwsLCUR7vRZtaI7EzPQJhAbFKpjnKge9rm1hgqGGIZ04L36Nk4xVx4Aa3Z
 /1zVm9SmCs6ckMiZ+r+9IzIUyWbQXcltDRnQ8OanlV7gPrWF/odULI+wBAskxjYpNFF292GTyU
 AvygR5gMmrYYdEou1wSeultoMHMyj6sbHaWxgc4V9sUnDXEQmr+TrAs0QTbQs7ZSaoBk/T6Ero
 DxI=
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="93389639"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Oct 2020 02:18:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 21 Oct 2020 02:18:58 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 21 Oct 2020 02:18:58 -0700
Date: Wed, 21 Oct 2020 09:17:29 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201021091729.a6wlccjlin5muejt@soft-test08>
References: <20201015115418.2711454-1-henrik.bjoernlund@microchip.com>
 <20201015115418.2711454-8-henrik.bjoernlund@microchip.com>
 <20201015103431.25d66c8b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20201019085104.2hkz2za2o2juliab@soft-test08>
 <20201019092143.258cb256@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201019092143.258cb256@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v6 07/10] bridge: cfm: Netlink SET
 configuration Interface.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thank you for the review. Comments below.

The 10/19/2020 09:21, Jakub Kicinski wrote:> 
> On Mon, 19 Oct 2020 08:51:04 +0000 Henrik Bjoernlund wrote:
> > Thank you for the review. Comments below.
> >
> > The 10/15/2020 10:34, Jakub Kicinski wrote:
> > >
> > > On Thu, 15 Oct 2020 11:54:15 +0000 Henrik Bjoernlund wrote:
> > > > +     [IFLA_BRIDGE_CFM_MEP_CONFIG_MDLEVEL]     = {
> > > > +     .type = NLA_U32, .validation_type = NLA_VALIDATE_MAX, .max = 7 },
> > >
> > >         NLA_POLICY_MAX(NLA_U32, 7)
> >
> > I will change as requested.
> >
> > >
> > > Also why did you keep the validation in the code in patch 4?
> >
> > In patch 4 there is no CFM NETLINK so I desided to keep the validation in the
> > code until NETLINK was added that is now doing the check.
> > I this a problem?
> 
> Nothing calls those functions until patch 7, so there's no need for
> that code to be added.

I will change as requested.

-- 
/Henrik
