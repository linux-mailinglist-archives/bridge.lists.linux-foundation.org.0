Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0664618CCEB
	for <lists.bridge@lfdr.de>; Fri, 20 Mar 2020 12:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3297875DD;
	Fri, 20 Mar 2020 11:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rB9lCHUshnJF; Fri, 20 Mar 2020 11:25:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59B01875F6;
	Fri, 20 Mar 2020 11:25:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 359E6C07FF;
	Fri, 20 Mar 2020 11:25:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7FF3CC07FF
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F91787E59
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQWwMF2t9F-y for <bridge@lists.linux-foundation.org>;
 Fri, 20 Mar 2020 11:25:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 31D5787E2F
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:34 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id w4so5963101lji.11
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 04:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fCaYAvSmGffnW/vysOCdODUva6zu+fQ3erD26hq5+i0=;
 b=HaTZnTodsZZieLba1ORfg3uDuthwCmHGKgebWaz0XQmI74Yfr7MQewE4cQ18X7aaic
 xrezieL4VELt1QuNVg/N10LwWPqr6zh9l3sHC+9z7dc3vU1NiudzOG7VuEjiZVa5US0Q
 YpurzCK7vnlvT9PlNojJ2cEz/mG9TIhgfc7p8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fCaYAvSmGffnW/vysOCdODUva6zu+fQ3erD26hq5+i0=;
 b=IcNqXup5Set7RMXx1Llp1Ey9+nsM8ctnpBIBJqm3dqBNlzFKk6IEOhSFtv0WMYYuBN
 Hez23SEPs95IY6RoGpA7eXMbcPsy8VIVB10UQ2VjU6Kl2qi7dU/mFF7eeNdiZ+sEuwlQ
 pNj6TAOJOh95PZ925DTTxXZdfyJnip/+efAcScWkJM8RGiMOrWAd123Xy9OfBmxoQBFW
 gJS1Jxj9LzvEMJsgDlCHM171VK3SFdOsuOTH/qBjl6HriCOP2HmWvYbG7EPdWOECk8XB
 MskyAnMjb/kmlo4WNk0NC57zT2u+fd6Wh/nMt7vzE9PfGEX86wyMQNDJyUs0lf1sz6f+
 1yIA==
X-Gm-Message-State: ANhLgQ2WzAfVYvw/lj4K4pgEHhITv5dMNqTAQGJ1adFVJFk8eYXnZvIm
 LhDDTeRKAfXbOEv9u4pnBHA/oQ==
X-Google-Smtp-Source: ADFU+vuJ1a6F8w1OnayQOH7Joa1qLY76tUEheXQjMO4/Z2vPmpKiFY+DRoCydtIEyHp6bEmLBsonlQ==
X-Received: by 2002:a2e:a419:: with SMTP id p25mr4820243ljn.206.1584703532055; 
 Fri, 20 Mar 2020 04:25:32 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id l17sm3808616lje.81.2020.03.20.04.25.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 04:25:31 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Mar 2020 13:23:03 +0200
Message-Id: <20200320112303.81904-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
References: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 2/2] net: bridge: vlan options: move the
	tunnel command to the nested attribute
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

Now that we have a nested tunnel info attribute we can add a separate
one for the tunnel command and require it explicitly from user-space. It
must be one of RTM_SETLINK/DELLINK. Only RTM_SETLINK requires a valid
tunnel id, DELLINK just removes it if it was set before. This allows us
to have all tunnel attributes and control in one place, thus removing
the need for an outside vlan info flag.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h |  2 +-
 net/bridge/br_vlan_options.c   | 47 ++++++++++++++++++++++------------
 2 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index f3624fbf8fe0..bfe621ea51b3 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -131,7 +131,6 @@ enum {
 #define BRIDGE_VLAN_INFO_RANGE_END	(1<<4) /* VLAN is end of vlan range */
 #define BRIDGE_VLAN_INFO_BRENTRY	(1<<5) /* Global bridge VLAN entry */
 #define BRIDGE_VLAN_INFO_ONLY_OPTS	(1<<6) /* Skip create/delete/flags */
-#define BRIDGE_VLAN_INFO_REMOVE_TUN	(1<<7) /* Remove tunnel mapping */
 
 struct bridge_vlan_info {
 	__u16 flags;
@@ -219,6 +218,7 @@ enum {
 enum {
 	BRIDGE_VLANDB_TINFO_UNSPEC,
 	BRIDGE_VLANDB_TINFO_ID,
+	BRIDGE_VLANDB_TINFO_CMD,
 	__BRIDGE_VLANDB_TINFO_MAX,
 };
 #define BRIDGE_VLANDB_TINFO_MAX (__BRIDGE_VLANDB_TINFO_MAX - 1)
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index b39427f75457..dce6f79de397 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -97,6 +97,7 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
 
 static const struct nla_policy br_vlandb_tinfo_pol[BRIDGE_VLANDB_TINFO_MAX + 1] = {
 	[BRIDGE_VLANDB_TINFO_ID]	= { .type = NLA_U32 },
+	[BRIDGE_VLANDB_TINFO_CMD]	= { .type = NLA_U32 },
 };
 
 static int br_vlan_modify_tunnel(const struct net_bridge_port *p,
@@ -107,8 +108,8 @@ static int br_vlan_modify_tunnel(const struct net_bridge_port *p,
 {
 	struct nlattr *tun_tb[BRIDGE_VLANDB_TINFO_MAX + 1], *attr;
 	struct bridge_vlan_info *vinfo;
-	int cmdmap, err;
-	u32 tun_id;
+	u32 tun_id = 0;
+	int cmd, err;
 
 	if (!p) {
 		NL_SET_ERR_MSG_MOD(extack, "Can't modify tunnel mapping of non-port vlans");
@@ -125,23 +126,35 @@ static int br_vlan_modify_tunnel(const struct net_bridge_port *p,
 	if (err)
 		return err;
 
-	if (!tun_tb[BRIDGE_VLANDB_TINFO_ID]) {
-		NL_SET_ERR_MSG_MOD(extack, "Missing tunnel id attribute");
+	if (!tun_tb[BRIDGE_VLANDB_TINFO_CMD]) {
+		NL_SET_ERR_MSG_MOD(extack, "Missing tunnel command attribute");
 		return -ENOENT;
 	}
-	/* vlan info attribute is guaranteed by br_vlan_rtm_process_one */
-	vinfo = nla_data(tb[BRIDGE_VLANDB_ENTRY_INFO]);
-	cmdmap = vinfo->flags & BRIDGE_VLAN_INFO_REMOVE_TUN ? RTM_DELLINK :
-							      RTM_SETLINK;
-	/* when working on vlan ranges this represents the starting tunnel id */
-	tun_id = nla_get_u32(tun_tb[BRIDGE_VLANDB_TINFO_ID]);
-	/* tunnel ids are mapped to each vlan in increasing order,
-	 * the starting vlan is in BRIDGE_VLANDB_ENTRY_INFO and v is the
-	 * current vlan, so we compute: tun_id + v - vinfo->vid
-	 */
-	tun_id += v->vid - vinfo->vid;
-
-	return br_vlan_tunnel_info(p, cmdmap, v->vid, tun_id, changed);
+	cmd = nla_get_u32(tun_tb[BRIDGE_VLANDB_TINFO_CMD]);
+	switch (cmd) {
+	case RTM_SETLINK:
+		if (!tun_tb[BRIDGE_VLANDB_TINFO_ID]) {
+			NL_SET_ERR_MSG_MOD(extack, "Missing tunnel id attribute");
+			return -ENOENT;
+		}
+		/* when working on vlan ranges this is the starting tunnel id */
+		tun_id = nla_get_u32(tun_tb[BRIDGE_VLANDB_TINFO_ID]);
+		/* vlan info attr is guaranteed by br_vlan_rtm_process_one */
+		vinfo = nla_data(tb[BRIDGE_VLANDB_ENTRY_INFO]);
+		/* tunnel ids are mapped to each vlan in increasing order,
+		 * the starting vlan is in BRIDGE_VLANDB_ENTRY_INFO and v is the
+		 * current vlan, so we compute: tun_id + v - vinfo->vid
+		 */
+		tun_id += v->vid - vinfo->vid;
+		break;
+	case RTM_DELLINK:
+		break;
+	default:
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported tunnel command");
+		return -EINVAL;
+	}
+
+	return br_vlan_tunnel_info(p, cmd, v->vid, tun_id, changed);
 }
 
 static int br_vlan_process_one_opts(const struct net_bridge *br,
-- 
2.25.1

