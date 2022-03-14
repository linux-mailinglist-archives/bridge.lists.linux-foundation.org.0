Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DFE4D7F12
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6E5A83E22;
	Mon, 14 Mar 2022 09:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mi31pfhLSkiC; Mon, 14 Mar 2022 09:53:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6227283DF9;
	Mon, 14 Mar 2022 09:53:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B153C0084;
	Mon, 14 Mar 2022 09:53:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B5180C001D
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B30F3837C9
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tg0-bZc-AyPD for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0807833D3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:02 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id b28so14377718lfc.4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=GeXldrFeKrg0lPEJeX36xArmy/BPfNOm6qSBt2als+U=;
 b=DKul0GoktIJYgeWN/vKEMB2Tl2BU9os12gPMPighZ8mD8fFcNR87HfHHI2F/IR8ZPX
 JQRVP79pgzygTgg4KdeLJLId8VPrflVhPOsZuQcqf32sAqEkO0Ob/sfXaCjwW+qaoEs/
 jbMeNYVIJGZ3MWczoYQWqtWWtMWFR3jy48Aemgu2taAjJuW2OqgkX0B5E2nB+3+p8EvV
 /86ziW09PX4BFvj4EE8Btuy1yaIwsV4HHAXZdAbGGO3qfTNYf7DRHhvCJYgDrZRhzI1x
 gRsGiOd+YV3D9eYM0mwmHyaJMfd0oqvlHJZrlFkX0Fv73XI64p73QySRQvfInaO0b9Co
 is4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=GeXldrFeKrg0lPEJeX36xArmy/BPfNOm6qSBt2als+U=;
 b=3a35SaoTBCAV/2eKXlR/q8VIlELRohxpKMaIS2XKrFngtl9LNvdY7woWT6T7NxBgwC
 yjXKbBcAh7qh6TyLrPg/o2K7OGxZTo/8UYG3n1Jc3ponYoztYFxIl2hO2w6gNQ3srSjO
 0lT/r/O+aQMSgxeUftW+x7BA5olx2OLF1+toxk6tbk2gtLHDMkHvplXMzvm9mmmxKQQQ
 RLHzYCeBp9ptIFg1wvScPqtf/ZmLHxKjEktHolDG9rGAGDA7KcGCqbnrSWKQUKh97LqK
 il3sRl6YxR2ifu4gTKJP9BvrN6lUxSiUvTP59NGpVoEGklUN09kFIEXEXt38YMvzUxMK
 w4NQ==
X-Gm-Message-State: AOAM533zF5wREw8PJZJy4IS7ILYVS3tdtGRRiLqgdoC9XdmyijVmkU+t
 mrZCS/hywywcKqVSifF4dww0FQ==
X-Google-Smtp-Source: ABdhPJzgMmRpX9yWlD5LazxVThYtYIG18o4vNMr2kLKI16CAak4ZvoZ+VKnDtA7CIE+h24TBxsSm2A==
X-Received: by 2002:a05:6512:1084:b0:448:42b8:f45c with SMTP id
 j4-20020a056512108400b0044842b8f45cmr13157008lfg.13.1647251580665; 
 Mon, 14 Mar 2022 02:53:00 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.52.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:53:00 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:21 +0100
Message-Id: <20220314095231.3486931-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314095231.3486931-1-tobias@waldekranz.com>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 04/14] net: bridge: mst: Notify
	switchdev drivers of MST mode changes
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

Trigger a switchdev event whenever the bridge's MST mode is
enabled/disabled. This allows constituent ports to either perform any
required hardware config, or refuse the change if it not supported.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/switchdev.h |  2 ++
 net/bridge/br_mst.c     | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 3e424d40fae3..85dd004dc9ad 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -27,6 +27,7 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_BRIDGE_VLAN_PROTOCOL,
 	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
 	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
+	SWITCHDEV_ATTR_ID_BRIDGE_MST,
 	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
 };
 
@@ -48,6 +49,7 @@ struct switchdev_attr {
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
 		bool vlan_filtering;			/* BRIDGE_VLAN_FILTERING */
 		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
+		bool mst;				/* BRIDGE_MST */
 		bool mc_disabled;			/* MC_DISABLED */
 		u8 mrp_port_role;			/* MRP_PORT_ROLE */
 	} u;
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index df65aa7701c1..39057585c302 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -99,8 +99,14 @@ void br_mst_vlan_init_state(struct net_bridge_vlan *v)
 int br_mst_set_enabled(struct net_bridge *br, bool on,
 		       struct netlink_ext_ack *extack)
 {
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_BRIDGE_MST,
+		.orig_dev = br->dev,
+		.u.mst = on,
+	};
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p;
+	int err;
 
 	list_for_each_entry(p, &br->port_list, list) {
 		vg = nbp_vlan_group(p);
@@ -116,6 +122,10 @@ int br_mst_set_enabled(struct net_bridge *br, bool on,
 	if (br_opt_get(br, BROPT_MST_ENABLED) == on)
 		return 0;
 
+	err = switchdev_port_attr_set(br->dev, &attr, extack);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
 	if (on)
 		static_branch_enable(&br_mst_used);
 	else
-- 
2.25.1

