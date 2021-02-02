Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C0130CCB0
	for <lists.bridge@lfdr.de>; Tue,  2 Feb 2021 21:06:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9ABBC86A03;
	Tue,  2 Feb 2021 20:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eP6hUPrQPAW2; Tue,  2 Feb 2021 20:06:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF4F9869A5;
	Tue,  2 Feb 2021 20:06:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D53B1C013A;
	Tue,  2 Feb 2021 20:06:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 35A69C013A
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 20:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2AA548657C
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 20:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoIsbWI8Mgr0 for <bridge@lists.linux-foundation.org>;
 Tue,  2 Feb 2021 20:06:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6321B85DE0
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 20:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612296411; x=1643832411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RKeIouPfYkF0dzBJ5Fr1sj32s0c2UpAxGehgP0ipTIk=;
 b=fEMDv/U7p2l/PXmMLP7zlNrs/o01viw7933ENvPoUvjNRRPbMKoRRaBv
 6KfJzzI3dzBz6Di3M8/vc/Ugu0d1r8/S86w24xsoJ4kiKcEiB9gG/Ijyt
 hpVuL1EYmUkd8FkmeoxJzDV4cVTC8D5fFJ9zp64ocmsGGW5poAunzCQro
 0jNO5QdL8oYCsE7QXy1gs3N45R+0sW4g66RCTYM6Bb/dOoKpxiBgiyJTa
 mLSIX90AkyaTurdguc9RebrnmO+PCedxksL0Iok1ow/H/7R3D6Sef4jSh
 FOhx3qlM10DMhtNAX9iQFkQNeQBJaHV/aJG2MLAsk8wrXOp8NxNa7babV g==;
IronPort-SDR: 2xhiryMspxkpjTx8/URWFWFtt5AZqaoYtryTyoFruivUi+L6BjodWopkvomUtuzFv0TRs7RFLJ
 QCtdHBGyisQAQwHMJiKa4eZ9F2993pp8dvvqpQwH1WeGHCflqUfh8K9g15UFxbMl5tH2r87rBe
 ICS9IG3ZfSQsw3qIRPgwacdAuxk1ks5sunoGYO2waIcA5km5vo/VjojVsFKDJswHK4iSy91mc2
 Unq7G1oi5SU6sM1n/9Pa9qYk/hWSAYFb598US+0JC9hnbv9lZF/d3utjCizc4eXDgIaTbTQs9r
 glQ=
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; d="scan'208";a="42661970"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Feb 2021 13:06:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Feb 2021 13:06:50 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 2 Feb 2021 13:06:49 -0700
Date: Tue, 2 Feb 2021 21:06:49 +0100
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210202200649.mc7vpgltoqxf2oni@soft-dev3.localdomain>
References: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
 <20210129190114.3f5b6b44@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <9143d15f-c41d-f0ab-7be0-32d797820384@prevas.dk>
 <20210202115032.6affffdc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210202115032.6affffdc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/4] bridge: mrp: Extend
	br_mrp_switchdev_*
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

The 02/02/2021 11:50, Jakub Kicinski wrote:
> 
> On Tue, 2 Feb 2021 08:40:02 +0100 Rasmus Villemoes wrote:
> > On 30/01/2021 04.01, Jakub Kicinski wrote:
> > > On Wed, 27 Jan 2021 21:52:37 +0100 Horatiu Vultur wrote:
> > >> This patch series extends MRP switchdev to allow the SW to have a better
> > >> understanding if the HW can implement the MRP functionality or it needs
> > >> to help the HW to run it. There are 3 cases:
> >
> > >> v2:
> > >>  - fix typos in comments and in commit messages
> > >>  - remove some of the comments
> > >>  - move repeated code in helper function
> > >>  - fix issue when deleting a node when sw_backup was true
> > >
> > > Folks who were involved in previous MRP conversations - does this look
> > > good to you? Anyone planning to test?
> >
> > I am planning to test these, but it's unlikely I'll get around to it
> > this week unfortunately.
> 
> Horatiu are you okay with deferring the series until Rasmus validates?
> Given none of this HW is upstream now (AFAIU) this is an awkward set
> to handle. Having a confirmation from Rasmus would make us a little bit
> more comfortable.

It is perfectly fine for me to wait for Rasmus to validate this series.
Also I have started to have a look how to implement the switchdev calls
for Ocelot driver. I might have something by the end of the week, but
lets see.

-- 
/Horatiu
