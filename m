Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A176151E8
	for <lists.bridge@lfdr.de>; Tue,  1 Nov 2022 20:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0560A60A6F;
	Tue,  1 Nov 2022 19:04:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0560A60A6F
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=XTGZDwzw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-2X4x5Ay-lE; Tue,  1 Nov 2022 19:04:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8FA1160A9B;
	Tue,  1 Nov 2022 19:04:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FA1160A9B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 25CFCC0077;
	Tue,  1 Nov 2022 19:04:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 68665C002D
 for <bridge@lists.linux-foundation.org>; Tue,  1 Nov 2022 19:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F0C74098D
 for <bridge@lists.linux-foundation.org>; Tue,  1 Nov 2022 19:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F0C74098D
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=XTGZDwzw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRYfDzYO4ZAl for <bridge@lists.linux-foundation.org>;
 Tue,  1 Nov 2022 19:04:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DED44097D
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DED44097D
 for <bridge@lists.linux-foundation.org>; Tue,  1 Nov 2022 19:04:29 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id 21so23153791edv.3
 for <bridge@lists.linux-foundation.org>; Tue, 01 Nov 2022 12:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Y2EdN1b7RhysOT15RURE5ha+GdNMYogbP0VztCt1Rok=;
 b=XTGZDwzwD7eX7RMU3MkCmQaarNWCP1ZYYsSHu7vW45fUcT6YElvg/pJhJMcK4zhkke
 qQwFyH0ov5WVMiH9ZXUWDumfqZ8qDlx5aFLNULcbNb9O6Yf5/Ek2PXRSf7VOYPSvaPMN
 gZiAevFtKr2P8WU6YvJtC6JvdaLvNeqIq58Y0rOXcSCtQA2p8GDsK2NvRbDVBCIGJRrI
 5MrbcO1HAKRDZ35tDTViDqXeLspHGPf7836l96EwN+aGcheAPrzNwRlOGKU2jKl5jS5U
 5qHWkieGFVY8zYaxR6ld7b9MNDmL7kXy+R0eboXoNsdfvzlB6p/pjqOiD6JZohwAfAhQ
 9EzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Y2EdN1b7RhysOT15RURE5ha+GdNMYogbP0VztCt1Rok=;
 b=VtBnVoQnJihFzImLts5iD/A1VvaN8Mqhz4lcr1YKtM4fCNmwozVuZ6k1ohnkR3pc6X
 bV7OGULGLxcO0HPKbC/32vE43mO3+iPlIFKCt15/AaeCHfkEnGNxmBzEI0T9wyd+izCO
 DsP8FQJaLVillw/luUZfBsc5t7vG0FPUx+gIyijBl4kmCXXnNediArh8pyydeG0twh7v
 UpcRQBKjJU4+zax9ilC2kc1U5jbfXMDXzLfxVDgf0rVDxKMEiXZL+QDOEF/GM2UnLktT
 F62f1EMJalOAe33sAWExiC8ApBUEFJuqGoI/EG/vRNVhev462K8km30jb7jlFtCDNUBY
 XLnw==
X-Gm-Message-State: ACrzQf3qk7hkSx7HQRpEUq+Kg3O9wIODiYPkez7dBNEEO/o/BcybQkCj
 rOJoxz81b4kgG2CeHgeQ4fB2uA==
X-Google-Smtp-Source: AMsMyM5xg3aZpSFCindpi6/QLKLFa41WXgHZBMug6jvZVuRABdIuWRxmhu0V5EYYc/z9lJUrWpBgfw==
X-Received: by 2002:a05:6402:544:b0:463:beae:427f with SMTP id
 i4-20020a056402054400b00463beae427fmr3672391edx.29.1667329467931; 
 Tue, 01 Nov 2022 12:04:27 -0700 (PDT)
Received: from [127.0.0.1] (95-42-27-223.ip.btc-net.bg. [95.42.27.223])
 by smtp.gmail.com with ESMTPSA id
 g11-20020a170906538b00b0078d9cd0d2d6sm4560459ejo.11.2022.11.01.12.04.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Nov 2022 12:04:27 -0700 (PDT)
Date: Tue, 01 Nov 2022 21:04:24 +0200
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
User-Agent: K-9 Mail for Android
In-Reply-To: <20221101185753.2120691-1-idosch@nvidia.com>
References: <20221101185753.2120691-1-idosch@nvidia.com>
Message-ID: <FB8BCFAD-D132-4B8A-BE01-859327F22D19@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] bridge: Fix flushing of dynamic FDB entries
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

On 1 November 2022 20:57:53 EET, Ido Schimmel <idosch@nvidia=2Ecom> wrote:
>The following commands should result in all the dynamic FDB entries
>being flushed, but instead all the non-local (non-permanent) entries are
>flushed:
>
> # bridge fdb add 00:aa:bb:cc:dd:ee dev dummy1 master static
> # bridge fdb add 00:11:22:33:44:55 dev dummy1 master dynamic
> # ip link set dev br0 type bridge fdb_flush
> # bridge fdb show brport dummy1
> 00:00:00:00:00:01 master br0 permanent
> 33:33:00:00:00:01 self permanent
> 01:00:5e:00:00:01 self permanent
>
>This is because br_fdb_flush() works with FDB flags and not the
>corresponding enumerator values=2E Fix by passing the FDB flag instead=2E
>
>After the fix:
>
> # bridge fdb add 00:aa:bb:cc:dd:ee dev dummy1 master static
> # bridge fdb add 00:11:22:33:44:55 dev dummy1 master dynamic
> # ip link set dev br0 type bridge fdb_flush
> # bridge fdb show brport dummy1
> 00:aa:bb:cc:dd:ee master br0 static
> 00:00:00:00:00:01 master br0 permanent
> 33:33:00:00:00:01 self permanent
> 01:00:5e:00:00:01 self permanent
>
>Fixes: 1f78ee14eeac ("net: bridge: fdb: add support for fine-grained flus=
hing")
>Signed-off-by: Ido Schimmel <idosch@nvidia=2Ecom>
>---
> net/bridge/br_netlink=2Ec  | 2 +-
> net/bridge/br_sysfs_br=2Ec | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/net/bridge/br_netlink=2Ec b/net/bridge/br_netlink=2Ec
>index 5aeb3646e74c=2E=2Ed087fd4c784a 100644
>--- a/net/bridge/br_netlink=2Ec
>+++ b/net/bridge/br_netlink=2Ec
>@@ -1332,7 +1332,7 @@ static int br_changelink(struct net_device *brdev, =
struct nlattr *tb[],
>=20
> 	if (data[IFLA_BR_FDB_FLUSH]) {
> 		struct net_bridge_fdb_flush_desc desc =3D {
>-			=2Eflags_mask =3D BR_FDB_STATIC
>+			=2Eflags_mask =3D BIT(BR_FDB_STATIC)
> 		};
>=20
> 		br_fdb_flush(br, &desc);
>diff --git a/net/bridge/br_sysfs_br=2Ec b/net/bridge/br_sysfs_br=2Ec
>index 612e367fff20=2E=2Eea733542244c 100644
>--- a/net/bridge/br_sysfs_br=2Ec
>+++ b/net/bridge/br_sysfs_br=2Ec
>@@ -345,7 +345,7 @@ static int set_flush(struct net_bridge *br, unsigned =
long val,
> 		     struct netlink_ext_ack *extack)
> {
> 	struct net_bridge_fdb_flush_desc desc =3D {
>-		=2Eflags_mask =3D BR_FDB_STATIC
>+		=2Eflags_mask =3D BIT(BR_FDB_STATIC)
> 	};
>=20
> 	br_fdb_flush(br, &desc);

Oops=2E :)
Acked-by: Nikolay Aleksandrov <razor@blackwall=2Eorg>

