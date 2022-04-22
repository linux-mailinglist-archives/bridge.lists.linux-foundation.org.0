Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE7650C233
	for <lists.bridge@lfdr.de>; Sat, 23 Apr 2022 00:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A02940B03;
	Fri, 22 Apr 2022 22:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1dKNYT9MDqro; Fri, 22 Apr 2022 22:14:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DB54940AFF;
	Fri, 22 Apr 2022 22:14:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F624C007C;
	Fri, 22 Apr 2022 22:14:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29EC9C002D
 for <bridge@lists.linux-foundation.org>; Fri, 22 Apr 2022 22:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0600D40AFC
 for <bridge@lists.linux-foundation.org>; Fri, 22 Apr 2022 22:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 053KRQN0XdhI for <bridge@lists.linux-foundation.org>;
 Fri, 22 Apr 2022 22:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FCD140141
 for <bridge@lists.linux-foundation.org>; Fri, 22 Apr 2022 22:14:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 662D9B82C15;
 Fri, 22 Apr 2022 22:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2762C385A4;
 Fri, 22 Apr 2022 22:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650665667;
 bh=OBcxSR9xi8xcrAi/LuWUvS+xg1jLOhXBymc5euRWtvg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Vxp3cZDongmz0cuL/Uq7z3oAQEThdZyXloJYSjDrME+6Sc2UXKCBMT5RWtp9sZdEr
 ZA3VB5Xx6se4O0cDs4APAktjZ8Iv29pnuNCxF3Yx7eyE5zaMc4xWqFUEgTQN3fkJKJ
 rmR+aMwcDhFyY06JiVfwlv5mtEziLkJx++OnYV3pySFXCMA5/yP1R3MnrjbsC0s9cw
 fcYNvq0pySITAQMLZwj2Sv5oQ3LFHwk6OT8Kduspy+wCXCmejYTSgXqrqgt5b0cTRh
 6cpYzTJuMTAGA82EuswOhRY9SwNryS8qgmfs66Au7Fx7fVWhlbjcQJQL+XLp7CCxjJ
 G4qaidBDIpgIQ==
Date: Fri, 22 Apr 2022 15:14:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220422151425.7a3f90d4@kernel.org>
In-Reply-To: <c945ebff-02fe-f2d5-656f-6bdfc46416f1@blackwall.org>
References: <20220421101247.121896-1-clement.leger@bootlin.com>
 <c945ebff-02fe-f2d5-656f-6bdfc46416f1@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: check
 br_vlan_group() return value
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

On Thu, 21 Apr 2022 13:17:51 +0300 Nikolay Aleksandrov wrote:
> On 21/04/2022 13:12, Cl=C3=A9ment L=C3=A9ger wrote:
> > br_vlan_group() can return NULL and thus return value must be checked
> > to avoid dereferencing a NULL pointer.
> >=20
> > Fixes: 6284c723d9b9 ("net: bridge: mst: Notify switchdev drivers of VLA=
N MSTI migrations")
> > Signed-off-by: Cl=C3=A9ment L=C3=A9ger <clement.leger@bootlin.com>
> > ---
> >  net/bridge/br_switchdev.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> > index 81400e0b26ac..8f3d76c751dd 100644
> > --- a/net/bridge/br_switchdev.c
> > +++ b/net/bridge/br_switchdev.c
> > @@ -354,6 +354,8 @@ static int br_switchdev_vlan_attr_replay(struct net=
_device *br_dev,
> >  	attr.orig_dev =3D br_dev;
> > =20
> >  	vg =3D br_vlan_group(br);
> > +	if (!vg)
> > +		return 0;
> > =20
> >  	list_for_each_entry(v, &vg->vlan_list, vlist) {
> >  		if (v->msti) { =20
>=20
> Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

Thanks! Applying to net tho, the patch in question is already=20
in Linus's tree.
