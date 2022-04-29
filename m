Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 242D45149D6
	for <lists.bridge@lfdr.de>; Fri, 29 Apr 2022 14:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C583E611EB;
	Fri, 29 Apr 2022 12:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LUoKjnBiTbIU; Fri, 29 Apr 2022 12:49:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 50E65611E5;
	Fri, 29 Apr 2022 12:49:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1142DC007C;
	Fri, 29 Apr 2022 12:49:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90CA5C002D
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 12:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DCC441CAE
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 12:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Axx8T6QBAj7l for <bridge@lists.linux-foundation.org>;
 Fri, 29 Apr 2022 12:49:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60F3841CCE
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 12:49:15 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id j15so10687091wrb.2
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 05:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m2VDhVRQPjsV1IPycPT/Y4TlTx8jaZtNzcIfdQQLUOE=;
 b=ecACeX4mEA86JpS0EXqxZYgqpdd/LkB5YAIuA0ZlDvIGigqsSq6u1HE5Fkm2nj/4no
 XTvJc5g4hQCzMLN3bJsYak/3ygV7SkqvcmGozAMysaaQj34gblO9wOzUSGOqLyVMxCgq
 5U8GqBywfsp3IGvSDFHF/01j/6tEwuIdmQR/hx1zigTs9Xk9q8h7f1m8Ziq8Z+TYc0zP
 S0le5HBcSYQI/59t/usSCR632rbPOBsY3eu8+iu2xiVmpUE8dn/ZyGq6gbJIInUCVMG/
 gyhZJu9P1d9wi011YgbJEn3rUvLoIGwLNbdNeGgF1SgvtfrM1Vu6ZsHHnmqlIFstgVBn
 vBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m2VDhVRQPjsV1IPycPT/Y4TlTx8jaZtNzcIfdQQLUOE=;
 b=UEdLZYeejiHRK7P1hslHuGRjF7DZOtC6zRW6JJKE1A3Za5jkc4YMG6v954/YjXACky
 Er8Fp1BoCmu0z8diZ5R0hhlugsytZwLrCxpmNw4lSokvZeQ5CGzatRkxJnRUN+qLRt0Z
 +ocyxwHPPPHrI4r9ENtZbzYMH9nHK44zgVMT+JfptGEZejB8BAHEMrmnUGYrXv0JXWx/
 8NayufFS+SSneotTF5OsjI79S0zno/avkk9rEXTHp5lGorikv/rs7THQy3dinXinSEAl
 IaOT5hZKOQVQpDBjWzCzN8bey22EZ4aOvq1cEQd3+gB89EasxoLxaVXz0i0vi1qxrTkR
 L1ug==
X-Gm-Message-State: AOAM531K03AChlz13/B2rHGzfD5QiBysDkMq2xfW7qf7c0rqbkW5elCI
 qG9NZAma2d0JSDjK9AJOqgQ=
X-Google-Smtp-Source: ABdhPJzV6OVD5id6uhYczjlC98kidiEApQj0yn/ZFy0FzVSsvGmB79Qh41p54L7i5YkxXtjSF9eTgQ==
X-Received: by 2002:a05:6000:1d81:b0:207:b7f8:24ee with SMTP id
 bk1-20020a0560001d8100b00207b7f824eemr30228367wrb.260.1651236553660; 
 Fri, 29 Apr 2022 05:49:13 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226]) by smtp.gmail.com with ESMTPSA id
 e25-20020adfa459000000b0020c4ebaf526sm443463wra.78.2022.04.29.05.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:49:13 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Apr 2022 14:49:07 +0200
Message-Id: <7abd2d1abb8abd3080356b8e031b1b100b80f1ed.1651236082.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
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
Subject: [Bridge] [PATCH net-next v5 2/2] net: vxlan: Add extack support to
	vxlan_fdb_delete
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
changes in V5:
	- edit commit message
---
 drivers/net/vxlan/vxlan_core.c | 38 ++++++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index ad0f2150cfdb..429ce2168971 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,19 +1129,25 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,

 static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
-			   __be32 *vni, u32 *ifindex, u32 *nhid)
+			   __be32 *vni, u32 *ifindex, u32 *nhid,
+			   struct netlink_ext_ack *extack)
 {
 	struct net *net = dev_net(vxlan->dev);
 	int err;

 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
-	    tb[NDA_PORT]))
-		return -EINVAL;
+	    tb[NDA_PORT])) {
+			NL_SET_ERR_MSG(extack,
+						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
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

@@ -1157,24 +1163,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
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
@@ -1183,12 +1195,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
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
@@ -1226,7 +1242,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

@@ -1292,7 +1308,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

--
2.36.0

