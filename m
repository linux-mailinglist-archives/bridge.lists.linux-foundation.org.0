Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 392B52EBBDE
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 10:52:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EB0C85102;
	Wed,  6 Jan 2021 09:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vSyU3EE0tPhj; Wed,  6 Jan 2021 09:52:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CD4885116;
	Wed,  6 Jan 2021 09:52:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 02BF5C013A;
	Wed,  6 Jan 2021 09:52:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9BEDC088B
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 904E222DEC
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gw5xJu-rtu4Z for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 09:52:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by silver.osuosl.org (Postfix) with ESMTPS id 42F8322D22
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:18 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id h16so3835192edt.7
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 01:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EJz2f0BPU/V/WA7rRceP314TuPjibKG/K1RbisBajTo=;
 b=rQffNnMRM7oY9+l+SpdWettB2i1OKHz8Lz3g09zgPf3ec3ndhAnOqlOVCtp5BKqPAM
 GM31b+hc3zuVHBbAcpLec7UZYKcM3na7OcLpXOWW7Ra6EihpvYf2h2CwjUyaPkQRr4AW
 yNSOkgVn0HHWvWLHPGek3GC2pYiNMpP7dOPvo1nXCjHlKomgd1Znxc7FDR/AJOLuzZvp
 cvzV9WijdJ9epII9ZtODKpZytTr1MFouAn4P5mbxZ/MPaeZ1e3KkBgphqyTQpIgyDnR4
 1TGGWGRYZ+pj2w9/lL/ezmKT3iKMFaldyoxCcjtzkOJxVHrKmmlmCriikJbypo4rEfD4
 OKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EJz2f0BPU/V/WA7rRceP314TuPjibKG/K1RbisBajTo=;
 b=sNITSSEIslmtKzForxyMYWdg5blGtTjkqxtYzogguAxpQojfGIoE2FOKhS8lDp49OY
 kBjLruAVvFcLzJggOJfbrjuHbvvlLxpc1ZagceJ42gs2pEfl+m8Mdx+MZldknGHuuoLU
 MXhA4Qs0bcjcuqUFwtKlLPcW0CJOv0d4vbdSenTq6J6LHpvvSeC2K3amt8x9scEbGybA
 aYyUyS6baYcJLhe5/nwvjr62aG+V6yTIVT+gktUZimpX48E/seT9oZSLsNHe2iVIHUkC
 6nxj75ND8+WA2BvATn4NZATzTYDIEFZ8RsqXd+HJLD31u/zR6KhqwEk0R8q2AsLYX2ih
 R66g==
X-Gm-Message-State: AOAM533se6EuXR0bvwqevXSzZrfS1UIN87lQ4feAeOVkXIOCfy+MFhpX
 TOQfQNvVdNYfLIcqC6KcWK0=
X-Google-Smtp-Source: ABdhPJwxu5waLfll8PJNcf8kYlI8DCoNBnS83NsaQszhFl33Rn+Pdbaw+WiWrPjr6CzxniORyULxNQ==
X-Received: by 2002:a50:d604:: with SMTP id x4mr3468939edi.64.1609926736645;
 Wed, 06 Jan 2021 01:52:16 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id n8sm1019587eju.33.2021.01.06.01.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 01:52:16 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Wed,  6 Jan 2021 11:51:36 +0200
Message-Id: <20210106095136.224739-8-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v4 net-next 7/7] net: dsa: ocelot: request DSA to
	fix up lack of address learning on CPU port
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

Given the following setup:

ip link add br0 type bridge
ip link set eno0 master br0
ip link set swp0 master br0
ip link set swp1 master br0
ip link set swp2 master br0
ip link set swp3 master br0

Currently, packets received on a DSA slave interface (such as swp0)
which should be routed by the software bridge towards a non-switch port
(such as eno0) are also flooded towards the other switch ports (swp1,
swp2, swp3) because the destination is unknown to the hardware switch.

This patch addresses the issue by monitoring the addresses learnt by the
software bridge on eno0, and adding/deleting them as static FDB entries
on the CPU port accordingly.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
Changes in v4:
None.

Changes in v3:
s/learning_broken/assisted_learning/

Changes in v2:
Patch is new.

 drivers/net/dsa/ocelot/felix.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 7dc230677b78..90c3c76f21b2 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -629,6 +629,7 @@ static int felix_setup(struct dsa_switch *ds)
 
 	ds->mtu_enforcement_ingress = true;
 	ds->configure_vlan_while_not_filtering = true;
+	ds->assisted_learning_on_cpu_port = true;
 
 	return 0;
 }
-- 
2.25.1

