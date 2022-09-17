Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC1C5BBA39
	for <lists.bridge@lfdr.de>; Sat, 17 Sep 2022 22:18:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8785419E7;
	Sat, 17 Sep 2022 20:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8785419E7
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=DR6GSoqK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfgpL5tS71c5; Sat, 17 Sep 2022 20:18:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id DA6E2415E5;
	Sat, 17 Sep 2022 20:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA6E2415E5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 963CBC007B;
	Sat, 17 Sep 2022 20:18:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC8C5C002D
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3E6884404
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3E6884404
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DR6GSoqK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xHZNosbHMStd for <bridge@lists.linux-foundation.org>;
 Sat, 17 Sep 2022 20:18:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E83E2843FB
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E83E2843FB
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:14 +0000 (UTC)
Received: by mail-qv1-xf32.google.com with SMTP id w4so19196462qvp.2
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 13:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=XwRURR16o8IU6+jA9ItEJoRw2ePOvsnk2WOjALj1ZLc=;
 b=DR6GSoqK3SF1nT3MGrQtB/w9LqHLwFXcSX8bTXMJdecy6L4PTdYMHDmY60jhjLZjgR
 obsBHNDbljWwVIZ3qfIZ5cQtuLxZGJNXHdL+27mtzzC0UYujs4U2ZU+GAr1RXbfd+A1m
 1K/Byn2FoZ+PdItsh+lgCLBB0UlUAgj6vVnxXaWUysi6ZzofsFtL0/iCZhFHgrU5miWU
 NkMoIEHbrcOXCM4f16+mhM0MyszJl4Db/ywTI4U3msepTQwWoo+obpNDdaIgEKZbdg0/
 wRbSgOp8mpS7ZlqHgsTc40AqiiIGYYPP7WqQQrE3/sGDCxFn2g10x/tCYlSvb//kKk/1
 oD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=XwRURR16o8IU6+jA9ItEJoRw2ePOvsnk2WOjALj1ZLc=;
 b=sijrBkN2xlcewEyyf8Yc2o5fxwpz3FAJsxmXlA6zhTBVv7dzvEVbMvK1yv/T14+R4A
 aMLNBubxy64i9JLcwkWDIgp6oerdI3FI1jZzBqbiffZoJygBzC1fdLGLysHDBIppVdRw
 uAzNLYFwndhXku9KPivmkuuOAX09cFx6kkfxENVan/yojnerNhl8qXToEFWdD+9DP8IB
 IwSPuCcZpqvuCLS9qdauSFhUdlZ4kilUIF7dv5s0uc+bj0H2wlw328P84b1dfZ2u/r46
 +aOXF9AygeAcTR5mCttaGDH6/0pRrAAROUKjXQf84328ZWQCRRzuCFXm2AFvFY644a9M
 M1/Q==
X-Gm-Message-State: ACrzQf0P/cFUiqdqqN9JLIDhJY2ky/jGKGpwd+VAuu4zTqMdOCvJsxv9
 d4Zm4nRBU6afpFSA/dRKE7I=
X-Google-Smtp-Source: AMsMyM6kpA6kK7/4ITcDIIujrBRqXvPKin1oTiH6aVt/sl5nnK6zp0+UCBzwn+I5hDvMyShWhUWifg==
X-Received: by 2002:a05:6214:21ee:b0:4ac:7107:4c23 with SMTP id
 p14-20020a05621421ee00b004ac71074c23mr8950360qvj.86.1663445893566; 
 Sat, 17 Sep 2022 13:18:13 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 do53-20020a05620a2b3500b006cea2984c9bsm6791961qkb.100.2022.09.17.13.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Sep 2022 13:18:13 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Sep 2022 16:17:58 -0400
Message-Id: <31aa2b6c1eb53812abeaf75f8c01017713eb3cbf.1663445339.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 2/5] net: core: introduce a new
	notifier for link-type-specific changes
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

The netdev notification subsystem is lacking a generic notifier than
can pass link-type-specific information alongside the device. For
example, the VLAN subsystem needs to notify the bridge of a change in
the VLAN bridge brinding flag. This flag change might result in the
bridge setting VLAN devices UP or DOWN depending on the state of the
bridge ports.

Instead of introducing one new NETDEV_* notification just for this
specific use-case, introduce a generic notifier which can pass
link-type specific information. The notification’s target can decode
the union type by checking the type of the target device.  That way,
other link types will be able to reuse this notification type to
notify with their own specific link specific struct. As this
notification is only for internal use, there’s no need to export it to
userspace.

Other NETDEV_* notifiers have also been looked at to see if it is
possible to consolidate:

 * NETDEV_CHANGEINFODATA: this notification needs to be sent to
   userspace; keep it separate from NETDEV_CHANGE_DETAILS.
 * NETDEV_CHANGE: this is to notify net_device->flags change; it is
   not link-type specific.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 include/linux/if_vlan.h       |  4 ++++
 include/linux/netdevice.h     |  1 +
 include/linux/notifier_info.h | 21 +++++++++++++++++++++
 net/core/dev.c                |  2 +-
 4 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/notifier_info.h

diff --git a/include/linux/if_vlan.h b/include/linux/if_vlan.h
index e00c4ee81ff7..38ffd2ee5112 100644
--- a/include/linux/if_vlan.h
+++ b/include/linux/if_vlan.h
@@ -37,6 +37,10 @@ struct vlan_hdr {
 	__be16	h_vlan_encapsulated_proto;
 };
 
+struct vlan_change_details {
+	bool bridge_binding;
+};
+
 /**
  *	struct vlan_ethhdr - vlan ethernet header (ethhdr + vlan_hdr)
  *	@h_dest: destination ethernet address
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 56b96b1e4c4c..912c04b09ebb 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2770,6 +2770,7 @@ enum netdev_cmd {
 	NETDEV_UNREGISTER,
 	NETDEV_CHANGEMTU,	/* notify after mtu change happened */
 	NETDEV_CHANGEADDR,	/* notify after the address change */
+	NETDEV_CHANGE_DETAILS,
 	NETDEV_PRE_CHANGEADDR,	/* notify before the address change */
 	NETDEV_GOING_DOWN,
 	NETDEV_CHANGENAME,
diff --git a/include/linux/notifier_info.h b/include/linux/notifier_info.h
new file mode 100644
index 000000000000..3e53f18c6da1
--- /dev/null
+++ b/include/linux/notifier_info.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_NOTIFIER_INFO_H_
+#define _LINUX_NOTIFIER_INFO_H_
+
+#include <linux/netdevice.h>
+#include <linux/if_vlan.h>
+
+/*
+ * This struct is used for passing link-type-specific information to
+ * the device.
+ */
+
+struct netdev_notifier_change_details_info {
+	struct netdev_notifier_info info; /* must be first */
+	union {
+		struct vlan_change_details vlan;
+	};
+};
+
+#endif /* !(_LINUX_NOTIFIER_INFO_H_) */
diff --git a/net/core/dev.c b/net/core/dev.c
index e233145d1452..b50470378994 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -1622,7 +1622,7 @@ const char *netdev_cmd_to_name(enum netdev_cmd cmd)
 	N(POST_INIT) N(RELEASE) N(NOTIFY_PEERS) N(JOIN) N(CHANGEUPPER)
 	N(RESEND_IGMP) N(PRECHANGEMTU) N(CHANGEINFODATA) N(BONDING_INFO)
 	N(PRECHANGEUPPER) N(CHANGELOWERSTATE) N(UDP_TUNNEL_PUSH_INFO)
-	N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN)
+	N(UDP_TUNNEL_DROP_INFO) N(CHANGE_TX_QUEUE_LEN) N(CHANGE_DETAILS)
 	N(CVLAN_FILTER_PUSH_INFO) N(CVLAN_FILTER_DROP_INFO)
 	N(SVLAN_FILTER_PUSH_INFO) N(SVLAN_FILTER_DROP_INFO)
 	N(PRE_CHANGEADDR) N(OFFLOAD_XSTATS_ENABLE) N(OFFLOAD_XSTATS_DISABLE)
-- 
2.34.1

