Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD613B73E1
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A662608DA;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWA7IQosmhoM; Tue, 29 Jun 2021 14:07:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AA578608DE;
	Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 75AC9C000E;
	Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93B1BC001A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 703114049C
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ro3rGmxE_mEA for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A2C64049A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id w17so15982308edd.10
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+VJEpKYFzBJak2d7pHyDTke1vfLEgs3xoQ1r4o4dgZM=;
 b=mc/QbPoqafxS4G4eJ7J2D7LkgO1CV8lFyrq9a/Vb5fCrZ6NqNJGNCp1sVfNMVOmBGJ
 /H8w5DqF7Gyv9+Q4z0pbeeg6nG92z2TcOsn2EfHHfBu5auXz3mbIKl7maiwv+cPCR4HN
 wxt9dZME7jeRZvIRvjcsGNYco3wKx9vBdblLSuW0g0GvQ8m6sqafxJ0xBlDXUVHC04ba
 NRk5Q6xDXz06I+9TRAUEpOESApbLOW615sUtlIdjhC+uJa7EBK1Yhpv2oVFdzu1do8jz
 VPmLCsX0y+DOn5fBGJgF3PuErRCdr1ttpm/nRdqfxybCV6PlzKbvgazZ+QzWhQjiGaaC
 EaSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+VJEpKYFzBJak2d7pHyDTke1vfLEgs3xoQ1r4o4dgZM=;
 b=Rh2uxFpxpziTTRjOKxVX4IraVdQ3EvtcMtgcjkOjMea+5lZIigWRpXp5yeFEvdpW9s
 izYwfN81vstr+pEC5+AburuqIAb/DDoyoEx97jtftdDWoJMrIkgD/VAPv5Nkin0eT+2J
 DkDAjityFBQFA9ghZEJ1QwMXp8tll72tWM2cTQepWZVI2eZXY4YUaFJvlrgrJSCqfyEH
 TmgTOpj9+VC01hDFfavEJad4HfyhmGkNXxIEXfZoBtNlJlhu7/aKQRbOu4nlCn91mobZ
 oNNVXQ7JoXMuGe2F3zFYmKR4ITJ9heasahSJuEt4rAYgDGgsGhTBjoTz77yzWve3EXBa
 73cA==
X-Gm-Message-State: AOAM532PTPVdUxsDB647ciu+nzRdVTTZ78dBavPjmoveb9zhJn+n7LY8
 5kemrX5yHp8gpHQ9VeCqcHE=
X-Google-Smtp-Source: ABdhPJzzfAXfG8A91ZfAhd9VFlUbP5D7uM7QPMDjKJ2arsoCGJZmYZBSKDgUjJMA5YEkx40QdTDw5A==
X-Received: by 2002:a05:6402:1581:: with SMTP id
 c1mr40705298edv.213.1624975646613; 
 Tue, 29 Jun 2021 07:07:26 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:26 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:53 +0300
Message-Id: <20210629140658.2510288-11-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v5 net-next 10/15] net: dsa: install the host MDB
	and FDB entries in the master's RX filter
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

If the DSA master implements strict address filtering, then the unicast
and multicast addresses kept by the DSA CPU ports should be synchronized
with the address lists of the DSA master.

Note that we want the synchronization of the master's address lists even
if the DSA switch doesn't support unicast/multicast database operations,
on the premises that the packets will be flooded to the CPU in that
case, and we should still instruct the master to receive them. This is
why we do the dev_uc_add() etc first, even if dsa_port_notify() returns
-EOPNOTSUPP. In turn, dev_uc_add() and friends return error only if
memory allocation fails, so it is probably ok to check and propagate
that error code and not just ignore it.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: do the dev_uc_add before the dsa_port_notify, as was correctly
        hinted by the commit message but not implemented this way
        previously

 net/dsa/port.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/net/dsa/port.c b/net/dsa/port.c
index 1b80e0fbdfaa..778b0dc2bb39 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -655,6 +655,12 @@ int dsa_port_host_fdb_add(struct dsa_port *dp, const unsigned char *addr,
 		.addr = addr,
 		.vid = vid,
 	};
+	struct dsa_port *cpu_dp = dp->cpu_dp;
+	int err;
+
+	err = dev_uc_add(cpu_dp->master, addr);
+	if (err)
+		return err;
 
 	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_FDB_ADD, &info);
 }
@@ -668,6 +674,12 @@ int dsa_port_host_fdb_del(struct dsa_port *dp, const unsigned char *addr,
 		.addr = addr,
 		.vid = vid,
 	};
+	struct dsa_port *cpu_dp = dp->cpu_dp;
+	int err;
+
+	err = dev_uc_del(cpu_dp->master, addr);
+	if (err)
+		return err;
 
 	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_FDB_DEL, &info);
 }
@@ -715,6 +727,12 @@ int dsa_port_host_mdb_add(const struct dsa_port *dp,
 		.port = dp->index,
 		.mdb = mdb,
 	};
+	struct dsa_port *cpu_dp = dp->cpu_dp;
+	int err;
+
+	err = dev_mc_add(cpu_dp->master, mdb->addr);
+	if (err)
+		return err;
 
 	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_MDB_ADD, &info);
 }
@@ -727,6 +745,12 @@ int dsa_port_host_mdb_del(const struct dsa_port *dp,
 		.port = dp->index,
 		.mdb = mdb,
 	};
+	struct dsa_port *cpu_dp = dp->cpu_dp;
+	int err;
+
+	err = dev_mc_del(cpu_dp->master, mdb->addr);
+	if (err)
+		return err;
 
 	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_MDB_DEL, &info);
 }
-- 
2.25.1

