Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143C25BFE1E
	for <lists.bridge@lfdr.de>; Wed, 21 Sep 2022 14:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC24740144;
	Wed, 21 Sep 2022 12:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC24740144
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=MTPc36+T
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQvRNRoCHa7b; Wed, 21 Sep 2022 12:43:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6550A40017;
	Wed, 21 Sep 2022 12:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6550A40017
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 02E66C0077;
	Wed, 21 Sep 2022 12:43:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C833DC002D
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 12:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9417E400EF
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 12:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9417E400EF
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MTPc36+T
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESSZ9JUvR1ql for <bridge@lists.linux-foundation.org>;
 Wed, 21 Sep 2022 12:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4A4C4007A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4A4C4007A
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 12:43:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6872F61F40;
 Wed, 21 Sep 2022 12:43:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55148C433D6;
 Wed, 21 Sep 2022 12:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663764179;
 bh=9SIsgEZDXH7+JI+d9iRn2G0EfLXDT4/JWJpJozreBdw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MTPc36+TcxZoaVX6OfmzqolFrEa4eQjyXWca93IU01neVV8qA4SlqSUsUFqf7bgtr
 /sLQIwvfg5W/0O1kmdCEWlda9w/4/8e3nhS3lpFI8Bb6kXauCXYQaJVCjX69SaHYZO
 xpjrhFg8lbVMCtWoM/DOJ8awGrUfqYqtFCrA2GJ5ORSNLs4kptlA8nLbcYSlU8myip
 m6omQYK//fzm/M4HLAkJs1vN3dWamRnCWkaa+QLK1Dub24JK2iXwagLqXBDb79wZ2Q
 sH6yXl7xLKveMEOf4Ftr/TJuSIiOLRqxlSVsK80lRxxJ5qEWFkDTfiZIUGIXyq4v+0
 GxPIL5s6pKs1Q==
Date: Wed, 21 Sep 2022 05:42:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220921054258.41e06387@kernel.org>
In-Reply-To: <3f2d6682-7c5c-5a6d-110b-568331650949@blackwall.org>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
 <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
 <20220920162954.1f4aaf7b@kernel.org>
 <3f2d6682-7c5c-5a6d-110b-568331650949@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/5] net: vlan: fix bridge binding
 behavior and add selftests
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

On Wed, 21 Sep 2022 07:45:07 +0300 Nikolay Aleksandrov wrote:
> > IDK, vlan knows it's calling the bridge:
> >=20
> > +	if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
> > +	    netif_is_bridge_master(vlan->real_dev)) {
>=20
> This one is more of an optimization so notifications are sent only when t=
he bridge
> is involved, it can be removed if other interested parties show up.
>=20
> > bridge knows it's vlan calling:
> >=20
> > +	if (is_vlan_dev(dev)) {
> > +		br_vlan_device_event(dev, event, ptr);
> >=20
> > going thru the generic NETDEV notifier seems odd.
> >=20
> > If this is just to avoid the dependency we can perhaps add a stub=20
> > like net/ipv4/udp_tunnel_stub.c ?
>=20
> I suggested the notifier to be more generic and be able to re-use it for =
other link types although
> I don't have other use cases in mind right now. Stubs are an alternative =
as long as they and
> their lifetime are properly managed. I don't have a strong preference her=
e so if you prefer
> stubs I'm good.

Yup, stub seems simpler and more efficient to me. Only time will
tell if indeed this ntf type would have been reused further.. =F0=9F=A4=B7
