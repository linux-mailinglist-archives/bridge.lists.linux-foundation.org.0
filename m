Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAE44D93E5
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 06:32:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87DF360E9D;
	Tue, 15 Mar 2022 05:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWLPX6BgeRqe; Tue, 15 Mar 2022 05:32:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1006C60F49;
	Tue, 15 Mar 2022 05:32:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2187C0084;
	Tue, 15 Mar 2022 05:32:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B23CCC000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 05:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E2CC405B6
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 05:32:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OeIpy25ztLld for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 05:32:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA59D40534
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 05:32:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 77FF4611A7;
 Tue, 15 Mar 2022 05:32:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 290D5C340E8;
 Tue, 15 Mar 2022 05:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647322367;
 bh=XwfpXnEY7+wrg7B2csX4wE7a6rKBiz6F6P9neGxhXwA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UBUqwwHGlWWkv2/0uGVZBkjaSlGMmZ1WBsYvT4MZVkLCkYoxa6d5Fi9HZXPaBQ6LG
 kuBdq/Lj3Jz1+RL6rtrpY5qOrORwVS4sAfA422p7vDmvApGnOTQTnRIMurdHRj0HNo
 y39TUyb4wZXrfkN500PxcuvKhPD0EwhWtZWkYsUVXta0DaSAOsfkLdRnRVTOw6K+Y8
 35oPo1Kki+E8Ex5t3TrFcFdFhZStBArIsandoLNetv6WxyFM/1v6iS3cOjTQfkQ1qt
 53YZqDGjWKPzvnUPbbaW89Kl6sx7YNTgwXf1mx40axxouESh5z+DeXl+MIjJs7xvvw
 HDhaUR5otj3Iw==
Date: Mon, 14 Mar 2022 22:32:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314223246.45cf8305@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220315002543.190587-5-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-5-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 04/15] net: bridge: mst: Notify
 switchdev drivers of MST mode changes
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

On Tue, 15 Mar 2022 01:25:32 +0100 Tobias Waldekranz wrote:
> Trigger a switchdev event whenever the bridge's MST mode is
> enabled/disabled. This allows constituent ports to either perform any
> required hardware config, or refuse the change if it not supported.
>=20
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

../net/bridge/br_mst.c: In function =E2=80=98br_mst_set_enabled=E2=80=99:
../net/bridge/br_mst.c:102:16: error: variable =E2=80=98attr=E2=80=99 has i=
nitializer but incomplete type
  102 |         struct switchdev_attr attr =3D {
      |                ^~~~~~~~~~~~~~
../net/bridge/br_mst.c:103:18: error: =E2=80=98struct switchdev_attr=E2=80=
=99 has no member named =E2=80=98id=E2=80=99
  103 |                 .id =3D SWITCHDEV_ATTR_ID_BRIDGE_MST,
      |                  ^~
../net/bridge/br_mst.c:103:23: error: =E2=80=98SWITCHDEV_ATTR_ID_BRIDGE_MST=
=E2=80=99 undeclared (first use in this function)
  103 |                 .id =3D SWITCHDEV_ATTR_ID_BRIDGE_MST,
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
../net/bridge/br_mst.c:103:23: note: each undeclared identifier is reported=
 only once for each function it appears in
../net/bridge/br_mst.c:103:23: warning: excess elements in struct initializ=
er
../net/bridge/br_mst.c:103:23: note: (near initialization for =E2=80=98attr=
=E2=80=99)
../net/bridge/br_mst.c:104:18: error: =E2=80=98struct switchdev_attr=E2=80=
=99 has no member named =E2=80=98orig_dev=E2=80=99
  104 |                 .orig_dev =3D br->dev,
      |                  ^~~~~~~~
../net/bridge/br_mst.c:104:29: warning: excess elements in struct initializ=
er
  104 |                 .orig_dev =3D br->dev,
      |                             ^~
../net/bridge/br_mst.c:104:29: note: (near initialization for =E2=80=98attr=
=E2=80=99)
../net/bridge/br_mst.c:105:18: error: =E2=80=98struct switchdev_attr=E2=80=
=99 has no member named =E2=80=98u=E2=80=99
  105 |                 .u.mst =3D on,
      |                  ^
../net/bridge/br_mst.c:105:26: warning: excess elements in struct initializ=
er
  105 |                 .u.mst =3D on,
      |                          ^~
../net/bridge/br_mst.c:105:26: note: (near initialization for =E2=80=98attr=
=E2=80=99)
../net/bridge/br_mst.c:102:31: error: storage size of =E2=80=98attr=E2=80=
=99 isn=E2=80=99t known
  102 |         struct switchdev_attr attr =3D {
      |                               ^~~~
../net/bridge/br_mst.c:125:15: error: implicit declaration of function =E2=
=80=98switchdev_port_attr_set=E2=80=99; did you mean =E2=80=98br_switchdev_=
port_vlan_del=E2=80=99? [-Werror=3Dimplicit-function-declaration]
  125 |         err =3D switchdev_port_attr_set(br->dev, &attr, extack);
      |               ^~~~~~~~~~~~~~~~~~~~~~~
      |               br_switchdev_port_vlan_del
../net/bridge/br_mst.c:102:31: warning: unused variable =E2=80=98attr=E2=80=
=99 [-Wunused-variable]
  102 |         struct switchdev_attr attr =3D {
      |                               ^~~~
