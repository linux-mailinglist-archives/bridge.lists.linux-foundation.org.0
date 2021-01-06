Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4133F2EBBDD
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 10:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CBBC22DEC;
	Wed,  6 Jan 2021 09:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MI3LkYVz4uKz; Wed,  6 Jan 2021 09:52:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E905922E6E;
	Wed,  6 Jan 2021 09:52:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CC985C013A;
	Wed,  6 Jan 2021 09:52:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F33BBC013A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E2B4A850E1
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c_T8849rkaI7 for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 09:52:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E7E884FC9
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:16 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id r5so3772833eda.12
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 01:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yF3rnLTyQNwA21TyP52ciWlNhWGg2itKNaVkTO2/cDA=;
 b=V6RtY4DS+UNCW6fua0p/m79afdROsP11C0PquKtYRn2kbdiNrCrgy7y6M/h+MXGVQP
 q4Dx+GPHMSamQ4qCkjtNGolJEYlY0fDQCEF36qoySnoe2UrtWpBQ5QdSydtSI68Clx5b
 hMaGW05NJvB+f6iNIPZHZensNo0ntRUM4JNk9DZ9tz19cbBEQnvu0LMdFh4ehjOQ/k41
 hMmY4DRE8QMJDh4eErCfywL82gw7kC31uiT/Px/XwK2JW6QK9oHLrwS+UcnrCUmdNSSL
 A4oCXrvEQ4Rukl7UDY3nSBiHsmUGqghaca8EQuWNG08bIwGktNOLZ4kllyQfgJjPQDOT
 L9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yF3rnLTyQNwA21TyP52ciWlNhWGg2itKNaVkTO2/cDA=;
 b=KregR3705VXjw7NqnPAdCB6PoL0uK003/Tjt0qWv0C12pAhkccnTX35a7wsm6vOJtQ
 eZVHlRBZ+pKj9oxNZA2UfxftOS7ZNmHeO+xtKJbX9WSG3/gyq45hfN3cZ4CXWgVOobHr
 l3vyA+7Jeu0alfHVnXSRGxkP+5MHGOiTxFkJMbdMJE/F6G41lWIwCtLdEk2zPsYj1x3Z
 A78jiH9TdQLB96Vc+Z+UCskNYCPTKgsByH0VD7GY+N9by/JD+Y9YNA6tKlRK0av2pFWg
 lKUsow80R4queRCAT6rzAMe0tM8bWcQ6YDclxaU7td9k6nu5gSrmGVJ17KEAhZNNMFwB
 HJeA==
X-Gm-Message-State: AOAM531FEklZck4Im5AV3MABMcrnwHapl3pUQ7p2qCfI6rgR/NdW7146
 NhlxAlIUnRJXzUZiKaLmIKU=
X-Google-Smtp-Source: ABdhPJzTQaqy8VXeMTSaAYqUwxQFJr8Tf4SYo0dqaCd3QeTpmzC07iD46TQwKp0I0Q6h+rvjDTaAcA==
X-Received: by 2002:a50:f1c7:: with SMTP id y7mr3495727edl.184.1609926733626; 
 Wed, 06 Jan 2021 01:52:13 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id n8sm1019587eju.33.2021.01.06.01.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 01:52:13 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Wed,  6 Jan 2021 11:51:34 +0200
Message-Id: <20210106095136.224739-6-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210106095136.224739-1-olteanv@gmail.com>
References: <20210106095136.224739-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 5/7] net: dsa: exit early in
	dsa_slave_switchdev_event if we can't program the FDB
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

Right now, the following would happen for a switch driver that does not
implement .port_fdb_add or .port_fdb_del.

dsa_slave_switchdev_event returns NOTIFY_OK and schedules:
-> dsa_slave_switchdev_event_work
   -> dsa_port_fdb_add
      -> dsa_port_notify(DSA_NOTIFIER_FDB_ADD)
         -> dsa_switch_fdb_add
            -> if (!ds->ops->port_fdb_add) return -EOPNOTSUPP;
   -> an error is printed with dev_dbg, and
      dsa_fdb_offload_notify(switchdev_work) is not called.

We can avoid scheduling the worker for nothing and say NOTIFY_DONE.
Because we don't call dsa_fdb_offload_notify, the static FDB entry will
remain just in the software bridge.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
Changes in v4:
None.

Changes in v3:
s/NOTIFY_OK/NOTIFY_DONE/ in commit description.

Changes in v2:
Patch is new.

 net/dsa/slave.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 42ec18a4c7ba..37dffe5bc46f 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2132,6 +2132,9 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 
 		dp = dsa_slave_to_port(dev);
 
+		if (!dp->ds->ops->port_fdb_add || !dp->ds->ops->port_fdb_del)
+			return NOTIFY_DONE;
+
 		switchdev_work = kzalloc(sizeof(*switchdev_work), GFP_ATOMIC);
 		if (!switchdev_work)
 			return NOTIFY_BAD;
-- 
2.25.1

