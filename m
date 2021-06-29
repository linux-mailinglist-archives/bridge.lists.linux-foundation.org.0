Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0D3B73D2
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86CA0608A1;
	Tue, 29 Jun 2021 14:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JLDu3mp-f90Q; Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DFCDC608B0;
	Tue, 29 Jun 2021 14:07:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4F3FC000E;
	Tue, 29 Jun 2021 14:07:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4DE67C0023
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DD97608A1
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UMVNme7ZWajM for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19A9060692
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id w13so25517354edc.0
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qp1Wym23fsm8ZjxCkVQpJHPfKixlHLefM9c8QMfFxqI=;
 b=An3t6WLgWzxmEsd4dR5o8QW/LCiUu48UA3lHcQDAqhlh8s7JY2GnC2RdDSOBqFVOBf
 Yldat7Fby04T9YyROLjRvzyvzLnaTLjDh0YyTp1Vv+cOGWRJeVCOmKsaRZAvcc5nXnpd
 GhVCH7Ub7b/UJCqMygRc+u6H+L3XdlrN5/3Q3Rz36rIm+ZR3ymS/9RRmQUtbxNaaYBu4
 kElyKRlZ0wtM2C9QjBEsh+fE6sSXMW5o0sYK12ryP7HrglsSy14nhKQa+YXB+R0ITcM9
 i7e+Hi9+ETmFgMEtzmr76chGmN4/NtQRCsjgKCg49kJoKB+JY0vXx1GZNCUAjbi/fNdT
 B+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qp1Wym23fsm8ZjxCkVQpJHPfKixlHLefM9c8QMfFxqI=;
 b=N5aJWxKAI/4sKVjPVvUEXv+rmbNk7FDT797HfS4HleM1OhActR/kjE3vdP3XGPQk9q
 xWbci2br74pmutOKylBdSTmQ2qmN2IoSOQLKSmyPABeZA78ruk9alKJLXjMZ8MKfcvck
 BamFQHJoshYZWWfZcP2cGGhfjCWog+98QR44dt0cZG+FGENwoavrgKA+WR/AQFH0PWeG
 S4BSarABeXJzaknMRk0H7q9HA3GF6q/K7EsvbfXwSPl1YGOzutDdxkqqMVDvs27zBj7a
 kYZraVL717IOxBGE0HmyU1+e0FBVVoGMAdZmBEkO1IpEw8jyyWDkzHUOOGpBwReUlPTN
 yzFA==
X-Gm-Message-State: AOAM5335fvwFxUuj4FAnMqN+AnxqHz9ikufFjlDJ9ZTQz5mqYrUZYVc/
 YYCB0rSszn6MY7ABDvY7gQw=
X-Google-Smtp-Source: ABdhPJybGht+7mBGUDB5IVr54VtQh97khH4O34uwPPKoB+qSe0zenRX1SoLXhPtH1FFHx/b37uBXww==
X-Received: by 2002:aa7:c54c:: with SMTP id s12mr41202476edr.24.1624975640253; 
 Tue, 29 Jun 2021 07:07:20 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:20 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:47 +0300
Message-Id: <20210629140658.2510288-5-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v5 net-next 04/15] net: dsa: delete
	dsa_legacy_fdb_add and dsa_legacy_fdb_del
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

We want to add reference counting for FDB entries in cross-chip
topologies, and in order for that to have any chance of working and not
be unbalanced (leading to entries which are never deleted), we need to
ensure that higher layers are sane, because if they aren't, it's garbage
in, garbage out.

For example, if we add a bridge FDB entry twice, the bridge properly
errors out:

$ bridge fdb add dev swp0 00:01:02:03:04:07 master static
$ bridge fdb add dev swp0 00:01:02:03:04:07 master static
RTNETLINK answers: File exists

However, the same thing cannot be said about the bridge bypass
operations:

$ bridge fdb add dev swp0 00:01:02:03:04:07
$ bridge fdb add dev swp0 00:01:02:03:04:07
$ bridge fdb add dev swp0 00:01:02:03:04:07
$ bridge fdb add dev swp0 00:01:02:03:04:07
$ echo $?
0

But one 'bridge fdb del' is enough to remove the entry, no matter how
many times it was added.

The bridge bypass operations are impossible to maintain in these
circumstances and lack of support for reference counting the cross-chip
notifiers is holding us back from making further progress, so just drop
support for them. The only way left for users to install static bridge
FDB entries is the proper one, using the "master static" flags.

With this change, rtnl_fdb_add() falls back to calling
ndo_dflt_fdb_add() which uses the duplicate-exclusive variant of
dev_uc_add(): dev_uc_add_excl(). Because DSA does not (yet) declare
IFF_UNICAST_FLT, this results in us going to promiscuous mode:

$ bridge fdb add dev swp0 00:01:02:03:04:05
[   28.206743] device swp0 entered promiscuous mode
$ bridge fdb add dev swp0 00:01:02:03:04:05
RTNETLINK answers: File exists

So even if it does not completely fail, there is at least some indication
that it is behaving differently from before, and closer to user space
expectations, I would argue (the lack of a "local|static" specifier
defaults to "local", or "host-only", so dev_uc_add() is a reasonable
default implementation). If the generic implementation of .ndo_fdb_add
provided by Vlad Yasevich is a proof of anything, it only proves that
the implementation provided by DSA was always wrong, by not looking at
"ndm->ndm_state & NUD_NOARP" (the "static" flag which means that the FDB
entry points outwards) and "ndm->ndm_state & NUD_PERMANENT" (the "local"
flag which means that the FDB entry points towards the host). It all
used to mean the same thing to DSA.

Update the documentation so that the users are not confused about what's
going on.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: updated the documentation

 .../networking/dsa/configuration.rst          | 68 +++++++++++++++++++
 net/dsa/slave.c                               | 23 -------
 2 files changed, 68 insertions(+), 23 deletions(-)

diff --git a/Documentation/networking/dsa/configuration.rst b/Documentation/networking/dsa/configuration.rst
index 774f0e76c746..2b08f1a772d3 100644
--- a/Documentation/networking/dsa/configuration.rst
+++ b/Documentation/networking/dsa/configuration.rst
@@ -292,3 +292,71 @@ configuration.
 
     # bring up the bridge devices
     ip link set br0 up
+
+Forwarding database (FDB) management
+------------------------------------
+
+The existing DSA switches do not have the necessary hardware support to keep
+the software FDB of the bridge in sync with the hardware tables, so the two
+tables are managed separately (``bridge fdb show`` queries both, and depending
+on whether the ``self`` or ``master`` flags are being used, a ``bridge fdb
+add`` or ``bridge fdb del`` command acts upon entries from one or both tables).
+
+Up until kernel v4.14, DSA only supported user space management of bridge FDB
+entries using the bridge bypass operations (which do not update the software
+FDB, just the hardware one) using the ``self`` flag (which is optional and can
+be omitted).
+
+  .. code-block:: sh
+
+    bridge fdb add dev swp0 00:01:02:03:04:05 self static
+    # or shorthand
+    bridge fdb add dev swp0 00:01:02:03:04:05 static
+
+Due to a bug, the bridge bypass FDB implementation provided by DSA did not
+distinguish between ``static`` and ``local`` FDB entries (``static`` are meant
+to be forwarded, while ``local`` are meant to be locally terminated, i.e. sent
+to the host port). Instead, all FDB entries with the ``self`` flag (implicit or
+explicit) are treated by DSA as ``static`` even if they are ``local``.
+
+  .. code-block:: sh
+
+    # This command:
+    bridge fdb add dev swp0 00:01:02:03:04:05 static
+    # behaves the same for DSA as this command:
+    bridge fdb add dev swp0 00:01:02:03:04:05 local
+    # or shorthand, because the 'local' flag is implicit if 'static' is not
+    # specified, it also behaves the same as:
+    bridge fdb add dev swp0 00:01:02:03:04:05
+
+The last command is an incorrect way of adding a static bridge FDB entry to a
+DSA switch using the bridge bypass operations, and works by mistake. Other
+drivers will treat an FDB entry added by the same command as ``local`` and as
+such, will not forward it, as opposed to DSA.
+
+Between kernel v4.14 and v5.14, DSA has supported in parallel two modes of
+adding a bridge FDB entry to the switch: the bridge bypass discussed above, as
+well as a new mode using the ``master`` flag which installs FDB entries in the
+software bridge too.
+
+  .. code-block:: sh
+
+    bridge fdb add dev swp0 00:01:02:03:04:05 master static
+
+Since kernel v5.14, DSA has gained stronger integration with the bridge's
+software FDB, and the support for its bridge bypass FDB implementation (using
+the ``self`` flag) has been removed. This results in the following changes:
+
+  .. code-block:: sh
+
+    # This is the only valid way of adding an FDB entry that is supported,
+    # compatible with v4.14 kernels and later:
+    bridge fdb add dev swp0 00:01:02:03:04:05 master static
+    # This command is no longer buggy and the entry is properly treated as
+    # 'local' instead of being forwarded:
+    bridge fdb add dev swp0 00:01:02:03:04:05
+    # This command no longer installs a static FDB entry to hardware:
+    bridge fdb add dev swp0 00:01:02:03:04:05 static
+
+Script writers are therefore encouraged to use the ``master static`` set of
+flags when working with bridge FDB entries on DSA switch interfaces.
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 898ed9cf756f..64acb1e11cd7 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -1651,27 +1651,6 @@ static const struct ethtool_ops dsa_slave_ethtool_ops = {
 	.self_test		= dsa_slave_net_selftest,
 };
 
-/* legacy way, bypassing the bridge *****************************************/
-static int dsa_legacy_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
-			      struct net_device *dev,
-			      const unsigned char *addr, u16 vid,
-			      u16 flags,
-			      struct netlink_ext_ack *extack)
-{
-	struct dsa_port *dp = dsa_slave_to_port(dev);
-
-	return dsa_port_fdb_add(dp, addr, vid);
-}
-
-static int dsa_legacy_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
-			      struct net_device *dev,
-			      const unsigned char *addr, u16 vid)
-{
-	struct dsa_port *dp = dsa_slave_to_port(dev);
-
-	return dsa_port_fdb_del(dp, addr, vid);
-}
-
 static struct devlink_port *dsa_slave_get_devlink_port(struct net_device *dev)
 {
 	struct dsa_port *dp = dsa_slave_to_port(dev);
@@ -1713,8 +1692,6 @@ static const struct net_device_ops dsa_slave_netdev_ops = {
 	.ndo_change_rx_flags	= dsa_slave_change_rx_flags,
 	.ndo_set_rx_mode	= dsa_slave_set_rx_mode,
 	.ndo_set_mac_address	= dsa_slave_set_mac_address,
-	.ndo_fdb_add		= dsa_legacy_fdb_add,
-	.ndo_fdb_del		= dsa_legacy_fdb_del,
 	.ndo_fdb_dump		= dsa_slave_fdb_dump,
 	.ndo_do_ioctl		= dsa_slave_ioctl,
 	.ndo_get_iflink		= dsa_slave_get_iflink,
-- 
2.25.1

