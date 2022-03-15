Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 256004DA567
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 23:28:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6332C81396;
	Tue, 15 Mar 2022 22:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r6gq_twjEoI9; Tue, 15 Mar 2022 22:28:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E93C4813E8;
	Tue, 15 Mar 2022 22:28:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BC48BC0033;
	Tue, 15 Mar 2022 22:28:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92399C0012
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7385260B83
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jr7D8BvOQr1A for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 22:28:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2115B606A9
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:28:43 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id s25so823796lfs.10
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 15:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=w7BDs3bl+/ZPNAYyg8MK8EHAzhqEJFCQVGbId855EFw=;
 b=UNKIKiXT8QfonLayJTWbx/cxsyCrYGovzyCMkmOQ0WbbLDyVWoFc+Uk1YSJdQ1ErVj
 NSZ65OYFwoBxTx37iTZxofhPtQYuTz0inW2ISH8BrEsIVKWupQ1V/0v2AOTqnkzOqHIW
 MVzHAKTAj6L5LAFrRjVFItdVTexCKpxRKzLUb91eMO3QhpYWVcExxhjIB3WbJnai2fTU
 qfuNwPew+1Y3t6NU7MAANItoNNKZRVoZY9NnXqRDDEl6dp6M2w5ktTXMJ6Fflzyk/u8n
 bGm8okMa05EECvOosBzkbLV4oB43ONkLUH1EODsepFAU/yZWqBY7ocKkvqsrQZA8Ubbx
 k16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=w7BDs3bl+/ZPNAYyg8MK8EHAzhqEJFCQVGbId855EFw=;
 b=buBRrDYPPduD8TPpAHMHAH2h7ovlHKX4tBGSP+9buvINXChJ4SICZJDxK+1vAN5BqD
 O3Z9r7Nu0KTk68w6Jbp26kYszNNfj8aaZlBkA9K+dJ6QY9NHq/z//N8XQ+8bI71XHNX4
 tbZ1y69zwKGSr0s4CELWB/WQdwpNZM7v6aqjBtFXOhrfOS2LqkPf9KBgE+uQvExUZ9ut
 WriBSgavlhNG5jKgsg1PsfU+/iv6FmI0rUvP/eAPaHkxHu9jCQF1DORorKKeDWQeuk63
 yB3jrB8nv1sjjB/OkSj90uOCP7yCY/qlaElo3w+9kd6mmf9VkCRcT0/nibcv5pxBJA7m
 jmoA==
X-Gm-Message-State: AOAM5330Kxw1fkApX3p77esfT51IEoR+vdRRLB65fB7FOu05d/AI/at/
 pn8UIIWN3e3AOhXJ594aDYQQ2NhX4MlOp9w/
X-Google-Smtp-Source: ABdhPJzSvTuOZ2Qd6cxpzVKDTdxQS6q1f1pKQ777CthPpVb5BrMo3DXztfZjgkzp4GIoFxE23grYmA==
X-Received: by 2002:a05:6512:3e21:b0:448:53c7:178e with SMTP id
 i33-20020a0565123e2100b0044853c7178emr18805261lfv.374.1647383321771; 
 Tue, 15 Mar 2022 15:28:41 -0700 (PDT)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 i2-20020ac25b42000000b004488d7f5eadsm21083lfp.88.2022.03.15.15.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 15:28:41 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20220314223246.45cf8305@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-5-tobias@waldekranz.com>
 <20220314223246.45cf8305@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Tue, 15 Mar 2022 23:28:40 +0100
Message-ID: <87bky6lujr.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

On Mon, Mar 14, 2022 at 22:32, Jakub Kicinski <kuba@kernel.org> wrote:
> On Tue, 15 Mar 2022 01:25:32 +0100 Tobias Waldekranz wrote:
>> Trigger a switchdev event whenever the bridge's MST mode is
>> enabled/disabled. This allows constituent ports to either perform any
>> required hardware config, or refuse the change if it not supported.
>>=20
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>
> ../net/bridge/br_mst.c: In function =E2=80=98br_mst_set_enabled=E2=80=99:
> ../net/bridge/br_mst.c:102:16: error: variable =E2=80=98attr=E2=80=99 has=
 initializer but incomplete type
>   102 |         struct switchdev_attr attr =3D {
>       |                ^~~~~~~~~~~~~~
> ../net/bridge/br_mst.c:103:18: error: =E2=80=98struct switchdev_attr=E2=
=80=99 has no member named =E2=80=98id=E2=80=99
>   103 |                 .id =3D SWITCHDEV_ATTR_ID_BRIDGE_MST,
>       |                  ^~
> ../net/bridge/br_mst.c:103:23: error: =E2=80=98SWITCHDEV_ATTR_ID_BRIDGE_M=
ST=E2=80=99 undeclared (first use in this function)
>   103 |                 .id =3D SWITCHDEV_ATTR_ID_BRIDGE_MST,
>       |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../net/bridge/br_mst.c:103:23: note: each undeclared identifier is report=
ed only once for each function it appears in
> ../net/bridge/br_mst.c:103:23: warning: excess elements in struct initial=
izer
> ../net/bridge/br_mst.c:103:23: note: (near initialization for =E2=80=98at=
tr=E2=80=99)
> ../net/bridge/br_mst.c:104:18: error: =E2=80=98struct switchdev_attr=E2=
=80=99 has no member named =E2=80=98orig_dev=E2=80=99
>   104 |                 .orig_dev =3D br->dev,
>       |                  ^~~~~~~~
> ../net/bridge/br_mst.c:104:29: warning: excess elements in struct initial=
izer
>   104 |                 .orig_dev =3D br->dev,
>       |                             ^~
> ../net/bridge/br_mst.c:104:29: note: (near initialization for =E2=80=98at=
tr=E2=80=99)
> ../net/bridge/br_mst.c:105:18: error: =E2=80=98struct switchdev_attr=E2=
=80=99 has no member named =E2=80=98u=E2=80=99
>   105 |                 .u.mst =3D on,
>       |                  ^
> ../net/bridge/br_mst.c:105:26: warning: excess elements in struct initial=
izer
>   105 |                 .u.mst =3D on,
>       |                          ^~
> ../net/bridge/br_mst.c:105:26: note: (near initialization for =E2=80=98at=
tr=E2=80=99)
> ../net/bridge/br_mst.c:102:31: error: storage size of =E2=80=98attr=E2=80=
=99 isn=E2=80=99t known
>   102 |         struct switchdev_attr attr =3D {
>       |                               ^~~~
> ../net/bridge/br_mst.c:125:15: error: implicit declaration of function =
=E2=80=98switchdev_port_attr_set=E2=80=99; did you mean =E2=80=98br_switchd=
ev_port_vlan_del=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>   125 |         err =3D switchdev_port_attr_set(br->dev, &attr, extack);
>       |               ^~~~~~~~~~~~~~~~~~~~~~~
>       |               br_switchdev_port_vlan_del
> ../net/bridge/br_mst.c:102:31: warning: unused variable =E2=80=98attr=E2=
=80=99 [-Wunused-variable]
>   102 |         struct switchdev_attr attr =3D {
>       |                               ^~~~

Sorry about that. Forgot to run the incremental build after the
rebase. Will be fixed in v5.
