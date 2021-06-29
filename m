Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F93B73E3
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B43B403D7;
	Tue, 29 Jun 2021 14:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 655cKQPPCYRP; Tue, 29 Jun 2021 14:07:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A072D403CC;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80C35C0028;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D5E43C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4005608EA
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sIS1BTcoQfUP for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8A2F608C6
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id w13so25518375edc.0
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fKBJ+HCJQ1IihBjBCwPYHx5qSIWh4l6D9kHNjLPM2ok=;
 b=LUK7Je5mFDyxa3Ck/5fKxRcW1h76Y6D+iaxJLub1wjj+YhxP3HAS38wYKoUQvr9lrE
 RXetrSp0J6/onP+1RXJ94Rv7SKI/YQ+fQmvrmIoX3iUlXTP5F8+MJaJ+0bxX0thtmBoS
 v4OJqKxmQ+alqAMgUD+lcKUSzhzyUcqgkBOJ66Q92VDePY5CiPMtoW/xcn7nLSvSdNIu
 L7VSenM2of7PJ0i0bqvr0SnrS7pzWscde6LoC4giT+1wYl+yGwaiiFLKIiCSjyvtv04g
 b8rM5di8Muf1I3bnYbDcTLEXNWw4oPG1u4d5dgEVvOforOzv7BBYxkeZvdJd6jwLnwBP
 mvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fKBJ+HCJQ1IihBjBCwPYHx5qSIWh4l6D9kHNjLPM2ok=;
 b=BVVTgRQ0BsuUkiB1QWtNBT0oZEfaChRMfHx6Pxcr1JitokLKkiHTfmgG59keqYnLxA
 TQLW2sHhgSzpQwqsMstqzCnIKW8vM2jQig787Y5pjdWzhB9a499dbjNrqETHjaXNONb1
 E2+bdpioZJ+EDgZeCwkeKX+8hUlKmMYjq8Fj+Ancfyog9Vqemn336M6CpvVEkjLlRg8Q
 DLXTGICVNwBbrqw7frU/ix+bn1uQ7FpTR2aAPsQwrBrp5+cyFleF6mgwvxPBA6aOeVRj
 mNlb37jHCXRn6eKtzlGhtC/tUJVad37SuNB4z8kOaw/hBzoVyITcLjPeRkFDqrWPwY4o
 CVdQ==
X-Gm-Message-State: AOAM530yjMY5q7cKxzN0+Gxff+XXsCwvFiacWV5nq6g1kgPBJ4QJc+M8
 eeouShRxj5/8hcHwqlWheMI=
X-Google-Smtp-Source: ABdhPJzpk9UbzDS1mIMq0edX2hRVGUhSqmqFbRaBGLYKW+wuPinBA1YKnd78f/E78Y6iFdUMXWVNbg==
X-Received: by 2002:a05:6402:2813:: with SMTP id
 h19mr40161695ede.39.1624975652051; 
 Tue, 29 Jun 2021 07:07:32 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:31 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:58 +0300
Message-Id: <20210629140658.2510288-16-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 15/15] net: dsa: replay the local
	bridge FDB entries pointing to the bridge dev too
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

When we join a bridge that already has some local addresses pointing to
itself, we do not get those notifications. Similarly, when we leave that
bridge, we do not get notifications for the deletion of those entries.
The only switchdev notifications we get are those of entries added while
the DSA port is enslaved to the bridge.

This makes use cases such as the following work properly (with the
number of additions and removals properly balanced):

ip link add br0 type bridge
ip link add br1 type bridge
ip link set br0 address 00:01:02:03:04:05
ip link set br1 address 00:01:02:03:04:05
ip link set swp0 up
ip link set swp1 up
ip link set swp0 master br0
ip link set swp1 master br1
ip link set br0 up
ip link set br1 up
ip link del br1 # 00:01:02:03:04:05 still installed on the CPU port
ip link del br0 # 00:01:02:03:04:05 finally removed from the CPU port

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 net/dsa/port.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/net/dsa/port.c b/net/dsa/port.c
index 778b0dc2bb39..28b45b7e66df 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -199,11 +199,17 @@ static int dsa_port_switchdev_sync(struct dsa_port *dp,
 	if (err && err != -EOPNOTSUPP)
 		return err;
 
+	/* Forwarding and termination FDB entries on the port */
 	err = br_fdb_replay(br, brport_dev, dp, true,
 			    &dsa_slave_switchdev_notifier);
 	if (err && err != -EOPNOTSUPP)
 		return err;
 
+	/* Termination FDB entries on the bridge itself */
+	err = br_fdb_replay(br, br, dp, true, &dsa_slave_switchdev_notifier);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
 	err = br_vlan_replay(br, brport_dev, dp, true,
 			     &dsa_slave_switchdev_blocking_notifier, extack);
 	if (err && err != -EOPNOTSUPP)
@@ -225,11 +231,17 @@ static int dsa_port_switchdev_unsync_objs(struct dsa_port *dp,
 	if (err && err != -EOPNOTSUPP)
 		return err;
 
+	/* Forwarding and termination FDB entries on the port */
 	err = br_fdb_replay(br, brport_dev, dp, false,
 			    &dsa_slave_switchdev_notifier);
 	if (err && err != -EOPNOTSUPP)
 		return err;
 
+	/* Termination FDB entries on the bridge itself */
+	err = br_fdb_replay(br, br, dp, false, &dsa_slave_switchdev_notifier);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
 	err = br_vlan_replay(br, brport_dev, dp, false,
 			     &dsa_slave_switchdev_blocking_notifier, extack);
 	if (err && err != -EOPNOTSUPP)
-- 
2.25.1

