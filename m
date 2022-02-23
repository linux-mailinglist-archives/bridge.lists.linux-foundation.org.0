Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 863F94C1014
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 11:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA2EA60AF1;
	Wed, 23 Feb 2022 10:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJvvvV-4UVkG; Wed, 23 Feb 2022 10:17:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 78E7D60F52;
	Wed, 23 Feb 2022 10:17:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 545A1C0077;
	Wed, 23 Feb 2022 10:17:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E7D4C0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D10641555
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KeOkjPmIODmj for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 10:17:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B187410E1
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:32 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id b11so30088255lfb.12
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 02:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=oETJ8BHkapcELva/Ym67RlDH1CS2/CVd4pT03JpAmjk=;
 b=niLwSzOyLHWERXqZJHx2dzbnAu9sBRR0CeAA6LttC/cVpasLf8KoH1o9+3Kk4dYtn2
 K+ASu7wOOm7npfuE4pl+6MKzQM/L+cIp2rkZXe4kz1LDmGSsOzhZSu+srpY6VUDnUIIR
 ZuS6jepKgiXavQyQVN2h577+noHVYnITJDxA9Qpn9CE61n5h7p+dW6Fsk8k1ZFLw6RzE
 qU216CveivbgsoRFFBhOVPIKwrq/qWnAzCiqGg8FFhi+nctUJYlMWjjnZho5FLs7B1oK
 M+dSNqife8xnMbYSm9SETUuIsuWrfyt6H/cKtk/tDJxjMNliDS1q7o3fPaKALsJKbXQL
 sEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=oETJ8BHkapcELva/Ym67RlDH1CS2/CVd4pT03JpAmjk=;
 b=NfHKGk8tMrXnJ7+TMI61NTFkeWmscD8spJ1s++DTZpyE2emD/UJ56ZcZ8CH3GOyLlu
 zdaVilpxiEmsmgy1Y875tmLZVcPEx7mZmTi4ln/MKBpqaYVg3o5roE1x1SAC6OjWCbmk
 DQXeQTkpNlnskMcE3zOmgyqQ6fNNIDvomn6KLeWiU3lQXflgIbLFTHn9Ei18TCM00V1c
 1FDgjgpaj/nfc/gnuZznLIM6MhJl6xl8T+GT8QwydB5tApMx6DA2a6tDYHfS+M+jtJUW
 0T8b2SNeECZEsasttfgD5qIs3snooj4Po1r9IK+l4vAKkqN2PPVfH0LxWtS1/FPHY6o1
 AFXg==
X-Gm-Message-State: AOAM531zkpoDIHRXN5u/JZk4yp5R+uaIbgxLsIzIZD27IW5YGASexcyY
 PUV9JJe5fLMPweKL88qPmlU=
X-Google-Smtp-Source: ABdhPJxUpI2v1ML4RH6CxYioCpG6eXJZsIWfYHtDZ7Z6Ism3hgfELJYfGbFge4bV9mCerBVr3Oao8g==
X-Received: by 2002:a05:6512:224d:b0:43e:da3e:46c9 with SMTP id
 i13-20020a056512224d00b0043eda3e46c9mr19709388lfu.581.1645611450237; 
 Wed, 23 Feb 2022 02:17:30 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id d5sm1613102lfs.307.2022.02.23.02.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:17:29 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 23 Feb 2022 11:16:49 +0100
Message-Id: <20220223101650.1212814-5-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
References: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v5 4/5] net: dsa: mv88e6xxx: Add support
	for bridge port locked mode
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

Supporting bridge ports in locked mode using the drop on lock
feature in Marvell mv88e6xxx switchcores is described in the
'88E6096/88E6097/88E6097F Datasheet', sections 4.4.6, 4.4.7 and
5.1.2.1 (Drop on Lock).

This feature is implemented here facilitated by the locked port flag.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c |  9 ++++++++-
 drivers/net/dsa/mv88e6xxx/port.c | 29 +++++++++++++++++++++++++++++
 drivers/net/dsa/mv88e6xxx/port.h |  9 ++++++++-
 3 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 58ca684d73f7..eed3713b97ae 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -5881,7 +5881,7 @@ static int mv88e6xxx_port_pre_bridge_flags(struct dsa_switch *ds, int port,
 	const struct mv88e6xxx_ops *ops;
 
 	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
-			   BR_BCAST_FLOOD))
+			   BR_BCAST_FLOOD | BR_PORT_LOCKED))
 		return -EINVAL;
 
 	ops = chip->info->ops;
@@ -5939,6 +5939,13 @@ static int mv88e6xxx_port_bridge_flags(struct dsa_switch *ds, int port,
 			goto out;
 	}
 
+	if (flags.mask & BR_PORT_LOCKED) {
+		bool locked = !!(flags.val & BR_PORT_LOCKED);
+
+		err = mv88e6xxx_port_set_lock(chip, port, locked);
+		if (err)
+			goto out;
+	}
 out:
 	mv88e6xxx_reg_unlock(chip);
 
diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
index ab41619a809b..b71061009fd4 100644
--- a/drivers/net/dsa/mv88e6xxx/port.c
+++ b/drivers/net/dsa/mv88e6xxx/port.c
@@ -1234,6 +1234,35 @@ int mv88e6xxx_port_set_mirror(struct mv88e6xxx_chip *chip, int port,
 	return err;
 }
 
+int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
+			    bool locked)
+{
+	u16 reg;
+	int err;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
+	if (err)
+		return err;
+
+	reg &= ~MV88E6XXX_PORT_CTL0_SA_FILT_MASK;
+	if (locked)
+		reg |= MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK;
+
+	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, &reg);
+	if (err)
+		return err;
+
+	reg &= ~MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
+	if (locked)
+		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
+
+	return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, reg);
+}
+
 int mv88e6xxx_port_set_8021q_mode(struct mv88e6xxx_chip *chip, int port,
 				  u16 mode)
 {
diff --git a/drivers/net/dsa/mv88e6xxx/port.h b/drivers/net/dsa/mv88e6xxx/port.h
index 03382b66f800..3f70557f0d48 100644
--- a/drivers/net/dsa/mv88e6xxx/port.h
+++ b/drivers/net/dsa/mv88e6xxx/port.h
@@ -142,7 +142,11 @@
 /* Offset 0x04: Port Control Register */
 #define MV88E6XXX_PORT_CTL0					0x04
 #define MV88E6XXX_PORT_CTL0_USE_CORE_TAG			0x8000
-#define MV88E6XXX_PORT_CTL0_DROP_ON_LOCK			0x4000
+#define MV88E6XXX_PORT_CTL0_SA_FILT_MASK			0xc000
+#define MV88E6XXX_PORT_CTL0_SA_FILT_DISABLED			0x0000
+#define MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK		0x4000
+#define MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_UNLOCK		0x8000
+#define MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_CPU		0xc000
 #define MV88E6XXX_PORT_CTL0_EGRESS_MODE_MASK			0x3000
 #define MV88E6XXX_PORT_CTL0_EGRESS_MODE_UNMODIFIED		0x0000
 #define MV88E6XXX_PORT_CTL0_EGRESS_MODE_UNTAGGED		0x1000
@@ -365,6 +369,9 @@ int mv88e6xxx_port_set_fid(struct mv88e6xxx_chip *chip, int port, u16 fid);
 int mv88e6xxx_port_get_pvid(struct mv88e6xxx_chip *chip, int port, u16 *pvid);
 int mv88e6xxx_port_set_pvid(struct mv88e6xxx_chip *chip, int port, u16 pvid);
 
+int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
+			    bool locked);
+
 int mv88e6xxx_port_set_8021q_mode(struct mv88e6xxx_chip *chip, int port,
 				  u16 mode);
 int mv88e6095_port_tag_remap(struct mv88e6xxx_chip *chip, int port);
-- 
2.30.2

