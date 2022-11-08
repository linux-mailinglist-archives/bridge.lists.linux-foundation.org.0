Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC68621B5E
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 19:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EC65404B0;
	Tue,  8 Nov 2022 18:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EC65404B0
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=pXcy5j5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7YIItbeNXgk; Tue,  8 Nov 2022 18:01:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A9614401A1;
	Tue,  8 Nov 2022 18:01:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9614401A1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5EED7C0077;
	Tue,  8 Nov 2022 18:01:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 582F2C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 267DD60E0B
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 267DD60E0B
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=pXcy5j5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64gcxqPRbCW8 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 18:01:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AE0D60E09
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AE0D60E09
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:01:46 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id cg5so9070508qtb.12
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 10:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=iTnP5LP2labxkSyGZH5Vskxk9ODyWSdqgqwb9mS92Aw=;
 b=pXcy5j5EMN3odfB4ZogVbRpQTKAKuVCUnSjwaZhKNqvKolvV42TLdAFvpKxGbmXxpx
 nuZZfulHiOMBgG3QtMGQWtQrOJt0pvvy0eXlCSMuCLwX7CHrO3K9hCvPeztZC4FYnS9t
 dfaqyHSjtngTY56Y9wIZtUpLUx3E5DntYf2Qad9+KGZhtNBDnFlNvya0c+QzPs6OgCHk
 msQUUniyjkVlAbWVX8FbxvQTUvlpdi+HH/1hWMVqEGPGXelexZu/abOOBcT1xoDqQz3u
 ee8oxkztM1z3k/ZBYQ3J1drPtMXjCPkGQnXf7vxSBgCHK/4KSrZ8SykHf9lI4NsgGDgO
 WzXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iTnP5LP2labxkSyGZH5Vskxk9ODyWSdqgqwb9mS92Aw=;
 b=7F9fL6j0x5YTcl98xOR++VVzKZ5Hpz6iYz4fenTqwW84yXKZ1Qmo37HPHLsz4Vx9c7
 EL3zTgflwQflWCv3Ro8e8+nfBQPT/3vUDI83sV9g+jZ7B2xpZOEO+ns0ssN5YMZ/vepb
 NusYLW31z6uL2lfjMy7zJqJw9dxcm4xX+HhDMAH5LFIxddsLwReEBCrxrdeLqZ1FMLUZ
 r1+HzpLcQ5M+Rn3fezJVIFVl6ppuuKMHH13EQONPPbkIFP4lrGf5YR39E3xEK69lw3VM
 uxhlzDkthVwVd4sTJqrEB7bV2RrCWXlcK14ejSq2hwZoQxJFBkXM2k8HUxsfowdJOr5t
 tCfw==
X-Gm-Message-State: ACrzQf2LwSSWRy4dwPwCzUMk8OPnbov9A70y7xVe2GmDnR2Dfy7/dUSN
 9yBwN3y8cIw/gSM5NwpMHbRbDORM7mcCLfdtIW4=
X-Google-Smtp-Source: AMsMyM4m9kKoLndYnV+VQrUYUNL+xrHmvRutYhRCnQT0YvSswMJJEHBqFys9RHxhPzRflf4OKJG1yA==
X-Received: by 2002:a05:622a:1794:b0:3a5:6520:1d18 with SMTP id
 s20-20020a05622a179400b003a565201d18mr18644269qtk.399.1667930504969; 
 Tue, 08 Nov 2022 10:01:44 -0800 (PST)
Received: from [127.0.0.1] ([190.167.198.156])
 by smtp.gmail.com with ESMTPSA id
 u14-20020a05620a430e00b006b640efe6dasm9457830qko.132.2022.11.08.10.01.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Nov 2022 10:01:44 -0800 (PST)
Date: Tue, 08 Nov 2022 14:01:42 -0400
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 netdev@vger.kernel.org
User-Agent: K-9 Mail for Android
In-Reply-To: <68167a3ebca74bb7cd45da0ff7c1268a70c33a96.1667902754.git.petrm@nvidia.com>
References: <cover.1667902754.git.petrm@nvidia.com>
 <68167a3ebca74bb7cd45da0ff7c1268a70c33a96.1667902754.git.petrm@nvidia.com>
Message-ID: <41B43D76-243C-4D9C-B517-6D19574D5D06@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: Re: [Bridge] [PATCH net-next 02/15] bridge: switchdev: Allow device
	drivers to install locked FDB entries
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

On 8 November 2022 06:47:08 GMT-04:00, Petr Machata <petrm@nvidia=2Ecom> wr=
ote:
>From: Hans J=2E Schultz <netdev@kapio-technology=2Ecom>
>
>When the bridge is offloaded to hardware, FDB entries are learned and
>aged-out by the hardware=2E Some device drivers synchronize the hardware
>and software FDBs by generating switchdev events towards the bridge=2E
>
>When a port is locked, the hardware must not learn autonomously, as
>otherwise any host will blindly gain authorization=2E Instead, the
>hardware should generate events regarding hosts that are trying to gain
>authorization and their MAC addresses should be notified by the device
>driver as locked FDB entries towards the bridge driver=2E
>
>Allow device drivers to notify the bridge driver about such entries by
>extending the 'switchdev_notifier_fdb_info' structure with the 'locked'
>bit=2E The bit can only be set by device drivers and not by the bridge
>driver=2E
>
>Prevent a locked entry from being installed if MAB is not enabled on the
>bridge port=2E
>
>If an entry already exists in the bridge driver, reject the locked entry
>if the current entry does not have the "locked" flag set or if it points
>to a different port=2E The same semantics are implemented in the software
>data path=2E
>
>Signed-off-by: Hans J=2E Schultz <netdev@kapio-technology=2Ecom>
>Signed-off-by: Ido Schimmel <idosch@nvidia=2Ecom>
>Reviewed-by: Petr Machata <petrm@nvidia=2Ecom>
>Signed-off-by: Petr Machata <petrm@nvidia=2Ecom>
>---
>
>Notes:
>    v1:
>    * Adjust commit message=2E
>    * Add a check in br_switchdev_fdb_notify()=2E
>    * Use 'false' instead of '0' in br_switchdev_fdb_populate()=2E
>   =20
>    Changes made by Ido:
>    * Reword commit message=2E
>    * Forbid locked entries when MAB is not enabled=2E
>    * Forbid roaming of locked entries=2E
>    * Avoid setting 'locked' bit towards device drivers=2E
>
> include/net/switchdev=2Eh   |  1 +
> net/bridge/br=2Ec           |  3 ++-
> net/bridge/br_fdb=2Ec       | 22 ++++++++++++++++++++--
> net/bridge/br_private=2Eh   |  2 +-
> net/bridge/br_switchdev=2Ec |  4 ++++
> 5 files changed, 28 insertions(+), 4 deletions(-)
>

Acked-by: Nikolay Aleksandrov <razor@blackwall=2Eorg>

>diff --git a/include/net/switchdev=2Eh b/include/net/switchdev=2Eh
>index 7dcdc97c0bc3=2E=2Eca0312b78294 100644
>--- a/include/net/switchdev=2Eh
>+++ b/include/net/switchdev=2Eh
>@@ -248,6 +248,7 @@ struct switchdev_notifier_fdb_info {
> 	u16 vid;
> 	u8 added_by_user:1,
> 	   is_local:1,
>+	   locked:1,
> 	   offloaded:1;
> };
>=20
>diff --git a/net/bridge/br=2Ec b/net/bridge/br=2Ec
>index 145999b8c355=2E=2E4f5098d33a46 100644
>--- a/net/bridge/br=2Ec
>+++ b/net/bridge/br=2Ec
>@@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *=
unused,
> 	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
> 		fdb_info =3D ptr;
> 		err =3D br_fdb_external_learn_add(br, p, fdb_info->addr,
>-						fdb_info->vid, false);
>+						fdb_info->vid,
>+						fdb_info->locked, false);
> 		if (err) {
> 			err =3D notifier_from_errno(err);
> 			break;
>diff --git a/net/bridge/br_fdb=2Ec b/net/bridge/br_fdb=2Ec
>index 3b83af4458b8=2E=2Ee69a872bfc1d 100644
>--- a/net/bridge/br_fdb=2Ec
>+++ b/net/bridge/br_fdb=2Ec
>@@ -1139,7 +1139,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct n=
et_bridge *br,
> 					   "FDB entry towards bridge must be permanent");
> 			return -EINVAL;
> 		}
>-		err =3D br_fdb_external_learn_add(br, p, addr, vid, true);
>+		err =3D br_fdb_external_learn_add(br, p, addr, vid, false, true);
> 	} else {
> 		spin_lock_bh(&br->hash_lock);
> 		err =3D fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
>@@ -1377,7 +1377,7 @@ void br_fdb_unsync_static(struct net_bridge *br, st=
ruct net_bridge_port *p)
> }
>=20
> int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_p=
ort *p,
>-			      const unsigned char *addr, u16 vid,
>+			      const unsigned char *addr, u16 vid, bool locked,
> 			      bool swdev_notify)
> {
> 	struct net_bridge_fdb_entry *fdb;
>@@ -1386,6 +1386,9 @@ int br_fdb_external_learn_add(struct net_bridge *br=
, struct net_bridge_port *p,
>=20
> 	trace_br_fdb_external_learn_add(br, p, addr, vid);
>=20
>+	if (locked && (!p || !(p->flags & BR_PORT_MAB)))
>+		return -EINVAL;
>+
> 	spin_lock_bh(&br->hash_lock);
>=20
> 	fdb =3D br_fdb_find(br, addr, vid);
>@@ -1398,6 +1401,9 @@ int br_fdb_external_learn_add(struct net_bridge *br=
, struct net_bridge_port *p,
> 		if (!p)
> 			flags |=3D BIT(BR_FDB_LOCAL);
>=20
>+		if (locked)
>+			flags |=3D BIT(BR_FDB_LOCKED);
>+
> 		fdb =3D fdb_create(br, p, addr, vid, flags);
> 		if (!fdb) {
> 			err =3D -ENOMEM;
>@@ -1405,6 +1411,13 @@ int br_fdb_external_learn_add(struct net_bridge *b=
r, struct net_bridge_port *p,
> 		}
> 		fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
> 	} else {
>+		if (locked &&
>+		    (!test_bit(BR_FDB_LOCKED, &fdb->flags) ||
>+		     READ_ONCE(fdb->dst) !=3D p)) {
>+			err =3D -EINVAL;
>+			goto err_unlock;
>+		}
>+
> 		fdb->updated =3D jiffies;
>=20
> 		if (READ_ONCE(fdb->dst) !=3D p) {
>@@ -1421,6 +1434,11 @@ int br_fdb_external_learn_add(struct net_bridge *b=
r, struct net_bridge_port *p,
> 			modified =3D true;
> 		}
>=20
>+		if (locked !=3D test_bit(BR_FDB_LOCKED, &fdb->flags)) {
>+			change_bit(BR_FDB_LOCKED, &fdb->flags);
>+			modified =3D true;
>+		}
>+
> 		if (swdev_notify)
> 			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>=20
>diff --git a/net/bridge/br_private=2Eh b/net/bridge/br_private=2Eh
>index 4ce8b8e5ae0b=2E=2E4c4fda930068 100644
>--- a/net/bridge/br_private=2Eh
>+++ b/net/bridge/br_private=2Eh
>@@ -811,7 +811,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct =
net_bridge_port *p);
> void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port =
*p);
> int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_p=
ort *p,
> 			      const unsigned char *addr, u16 vid,
>-			      bool swdev_notify);
>+			      bool locked, bool swdev_notify);
> int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_p=
ort *p,
> 			      const unsigned char *addr, u16 vid,
> 			      bool swdev_notify);
>diff --git a/net/bridge/br_switchdev=2Ec b/net/bridge/br_switchdev=2Ec
>index 8f3d76c751dd=2E=2E8a0abe35137d 100644
>--- a/net/bridge/br_switchdev=2Ec
>+++ b/net/bridge/br_switchdev=2Ec
>@@ -136,6 +136,7 @@ static void br_switchdev_fdb_populate(struct net_brid=
ge *br,
> 	item->added_by_user =3D test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> 	item->offloaded =3D test_bit(BR_FDB_OFFLOADED, &fdb->flags);
> 	item->is_local =3D test_bit(BR_FDB_LOCAL, &fdb->flags);
>+	item->locked =3D false;
> 	item->info=2Edev =3D (!p || item->is_local) ? br->dev : p->dev;
> 	item->info=2Ectx =3D ctx;
> }
>@@ -146,6 +147,9 @@ br_switchdev_fdb_notify(struct net_bridge *br,
> {
> 	struct switchdev_notifier_fdb_info item;
>=20
>+	if (test_bit(BR_FDB_LOCKED, &fdb->flags))
>+		return;
>+
> 	br_switchdev_fdb_populate(br, &item, fdb, NULL);
>=20
> 	switch (type) {

