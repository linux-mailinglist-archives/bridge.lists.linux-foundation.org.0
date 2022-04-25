Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A3E50E300
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 16:25:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D719A40292;
	Mon, 25 Apr 2022 14:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hKeg2_1awC0N; Mon, 25 Apr 2022 14:25:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0DD6340281;
	Mon, 25 Apr 2022 14:25:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4573C007C;
	Mon, 25 Apr 2022 14:25:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3B8DBC002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35F5E40285
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NEGIpOrMnMjs for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 14:25:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A1FC40268
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:24 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id p189so9376959wmp.3
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 07:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KYRLxtWUoxgDscOvKvmLE9kQsS+KE+dJRTrR6t8FDR8=;
 b=WuafkhyX7Fx9at098OuChlVigGPd1iHClFHiuDAVRJeQ03c9Wb1wDEJtnTecQaNYwB
 F+QTzW9dj1bLKpzzJDlAMEkVoL+aYZSouz/zeFXitzzpfSP0A0r2KqAafjhCcWJD16/E
 IDL6RkMQpbHT6su/QOBuVk3eZ5VH29ni7Oj2YvFU5EaL4j1m+HsjhaOlSSjlEuOicVSp
 6PB631/7lQQCjFIb75ceY96erzQOorqmsQt66/YOalU1GA24rjSVy/s82GmmDFFt74Yo
 +rL7V7Y9ozJ45ksMVVoM7loCEPmK0kOSyoWzM5u6C5U3Bpq9dWtdiKIsqJKJ/V0Ai2kM
 cOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KYRLxtWUoxgDscOvKvmLE9kQsS+KE+dJRTrR6t8FDR8=;
 b=W4BDpbC5X2C+rm3CNdrkA9kC61hagzX3r02QYKgEHKQYwrfH0sKeXVjWpUQ03iixaC
 w+N/QRwRGuCd1gteaUZnIMzw74aXlptLgrQ29tB5AX76wI8DGQ9x2Yv7JrnFqMNcL7tM
 oR8Zu8+v46n4MR/RisQ+eTwmT9WUawWFCcuTwGyH0dLlgM9PGGw/kkNIxZufNPXpTyRH
 pdVd0S9GEjg1NaS/r7yKoDGC6G2MbXQijFbD/TmFyS9iZ31obXG3fD/9KWcnuLivU4UW
 hOFBF2ZQiy0Xb1KdzCCNUsAACqlNwx7OfnhAxOJEXaeSA1Kig9GQTiIE7TR42jIA7IL1
 F9gw==
X-Gm-Message-State: AOAM531ixp1ofkkbqOm9r6pmZlg834c/H8cpdnP/+CG12wbDIv5V8Vw0
 aAgsFNsy3DnxXRB0njaNK/8=
X-Google-Smtp-Source: ABdhPJyGKMUuEPLqmssTF7rRhMHFCQgerExqOcCfS0wOFKXnNsPt8f23J/FpZzUNhz93QJfhCBq+zA==
X-Received: by 2002:a05:600c:c9:b0:392:af6f:734a with SMTP id
 u9-20020a05600c00c900b00392af6f734amr22986997wmm.61.1650896723300; 
 Mon, 25 Apr 2022 07:25:23 -0700 (PDT)
Received: from alaa-emad ([197.57.226.213]) by smtp.gmail.com with ESMTPSA id
 l6-20020a1c2506000000b0038e6fe8e8d8sm10996601wml.5.2022.04.25.07.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 07:25:23 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Mon, 25 Apr 2022 16:25:07 +0200
Message-Id: <a99bfeb371857968a3fa734c00bd9b0e122719c1.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Subject: [Bridge] [PATCH net-next v4 2/2] net: vxlan: vxlan_core.c: Add
	extack support to vxlan_fdb_delete
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

This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
extack is used to propagate meaningful error msgs to the user of vxlan
fdb netlink api

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	- fix spelling vxlan_fdb_delete
	- add missing braces
	- edit error message
---
changes in V3:
	fix errors reported by checkpatch.pl
---
changes in V4:
	- fix errors reported by checkpatch.pl
	- edit commit message.
---
 drivers/net/vxlan/vxlan_core.c | 37 ++++++++++++++++++++++++----------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index cf2f60037340..ef69aeb058b8 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,19 +1129,24 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,

 static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
-			   __be32 *vni, u32 *ifindex, u32 *nhid)
+			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
 {
 	struct net *net = dev_net(vxlan->dev);
 	int err;

 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
-	    tb[NDA_PORT]))
-		return -EINVAL;
+	    tb[NDA_PORT])) {
+			NL_SET_ERR_MSG(extack,
+						   "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
+			return -EINVAL;
+		}

 	if (tb[NDA_DST]) {
 		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
-		if (err)
+		if (err) {
+			NL_SET_ERR_MSG(extack, "Unsupported address family");
 			return err;
+		}
 	} else {
 		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;

@@ -1157,24 +1162,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	}

 	if (tb[NDA_PORT]) {
-		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
+		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)) {
+			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
 			return -EINVAL;
+		}
 		*port = nla_get_be16(tb[NDA_PORT]);
 	} else {
 		*port = vxlan->cfg.dst_port;
 	}

 	if (tb[NDA_VNI]) {
-		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_VNI]) != sizeof(u32)) {
+			NL_SET_ERR_MSG(extack, "Invalid vni");
 			return -EINVAL;
+		}
 		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 	} else {
 		*vni = vxlan->default_dst.remote_vni;
 	}

 	if (tb[NDA_SRC_VNI]) {
-		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)) {
+			NL_SET_ERR_MSG(extack, "Invalid src vni");
 			return -EINVAL;
+		}
 		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
 	} else {
 		*src_vni = vxlan->default_dst.remote_vni;
@@ -1183,12 +1194,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	if (tb[NDA_IFINDEX]) {
 		struct net_device *tdev;

-		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
+		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)) {
+			NL_SET_ERR_MSG(extack, "Invalid ifindex");
 			return -EINVAL;
+		}
 		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
 		tdev = __dev_get_by_index(net, *ifindex);
-		if (!tdev)
+		if (!tdev) {
+			NL_SET_ERR_MSG(extack, "Device not found");
 			return -EADDRNOTAVAIL;
+		}
 	} else {
 		*ifindex = 0;
 	}
@@ -1226,7 +1241,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

@@ -1291,7 +1306,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

--
2.36.0

