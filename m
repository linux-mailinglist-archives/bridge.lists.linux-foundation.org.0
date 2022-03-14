Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE264D7F16
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEC9E40285;
	Mon, 14 Mar 2022 09:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4hEIn3MPB5g; Mon, 14 Mar 2022 09:53:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 46FD7414CE;
	Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26A69C0070;
	Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FB2DC000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E426414CE
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XxjLcrDN_yn2 for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CE24402D1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:10 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id e6so19451571lfc.1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=aX/tyKTTlC2fOBLF30DbEmug8lr4QMJWtdHHEsfB8ls=;
 b=6h+9N7Unq/C54UTeMTcGlVIoOSDDtrPDrd/GLYB+4EbFvaq3keKFdDepoPvlkE6OZC
 bQUwb8H/65AybyOLa2SXoECYsX/TcJYj8H9dUUTagAHpQDrkeoUkip6c6gvG1iWuc842
 DlLAT4X+6dSQSG5O/dYp41qL/KzfQqougxmfU8SfSuX2FIluLvRdjmRoChbYXVJFLrOb
 5nmYZSve3jhbTTGpznlkwPAdoG0NtaAd9yppN+ncTbeTkB01WfSZ48dPOcwyGjCSnJeZ
 ZipHSxFvcPapWKBhrucgczZMip5jCvKkxWuHCai5SFQiIyP+GpnciyhsUSaYw6qw4VM3
 SWAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=aX/tyKTTlC2fOBLF30DbEmug8lr4QMJWtdHHEsfB8ls=;
 b=UjxTaRRWP9P5+jV5rTmSN1VTLFU4AHo/VHQjuatzvETxvhnu9sii5fGY6GMGmZTuMS
 Tt67jXka37xSp+BHPIbvYtmUhrgKkh082auswPxnL3ecUIP6eg5ufvuUKwnxHfmoodqn
 z9HyQHEcRIxTrlxKAB9Hs2hlCui3Qe+cC8WLfQfGsl1IKD87ptkvtUiZY5oif/LyX/kr
 EHlImT2SnKuYnzCh4w17vyBorkpEsmMwwciTXoVJnwSBdKJu71S8fEOAV6Lpv/E6yQeV
 OmIzciI5oViA2szdfOGLQHcBO+CJg8ueQsc/gJCLf9fgdPI/m8syNndCNhBVQKqDsFpB
 7jeg==
X-Gm-Message-State: AOAM532wUAEpGIErwp7+FtzPR57N/daWyjobSjIqn1V+X0/8O724uMjB
 GmZnCoS96qfcIobf3d3RP0dWAlEI4KQoNXUp
X-Google-Smtp-Source: ABdhPJyPiLr9FUGydQZpohRHqknpYmmbfxvdUg7o3WlDFO2inSS46l+nCZzb3aCjSbHOak56mpZQ2g==
X-Received: by 2002:a05:6512:ba6:b0:448:9f0b:bc25 with SMTP id
 b38-20020a0565120ba600b004489f0bbc25mr898011lfv.256.1647251588383; 
 Mon, 14 Mar 2022 02:53:08 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.53.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:53:07 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:26 +0100
Message-Id: <20220314095231.3486931-10-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v3 net-next 09/14] net: dsa: Validate hardware
	support for MST
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

When joining a bridge where MST is enabled, we validate that the
proper offloading support is in place, otherwise we fallback to
software bridging.

When then mode is changed on a bridge in which we are members, we
refuse the change if offloading is not supported.

At the moment we only check for configurable learning, but this will
be further restricted as we support more MST related switchdev events.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 20 ++++++++++++++++++++
 net/dsa/slave.c    |  6 ++++++
 3 files changed, 28 insertions(+)

diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index f20bdd8ea0a8..2aba420696ef 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -234,6 +234,8 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
 			    struct netlink_ext_ack *extack);
 bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
 int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
+int dsa_port_mst_enable(struct dsa_port *dp, bool on,
+			struct netlink_ext_ack *extack);
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match);
 int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 58291df14cdb..1a17a0efa2fa 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -240,6 +240,10 @@ static int dsa_port_switchdev_sync_attrs(struct dsa_port *dp,
 	if (err && err != -EOPNOTSUPP)
 		return err;
 
+	err = dsa_port_mst_enable(dp, br_mst_enabled(br), extack);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
 	return 0;
 }
 
@@ -735,6 +739,22 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
 	return 0;
 }
 
+int dsa_port_mst_enable(struct dsa_port *dp, bool on,
+			struct netlink_ext_ack *extack)
+{
+	struct dsa_switch *ds = dp->ds;
+
+	if (!on)
+		return 0;
+
+	if (!dsa_port_can_configure_learning(dp)) {
+		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 int dsa_port_pre_bridge_flags(const struct dsa_port *dp,
 			      struct switchdev_brport_flags flags,
 			      struct netlink_ext_ack *extack)
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index a61a7c54af20..333f5702ea4f 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -463,6 +463,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_ageing_time(dp, attr->u.ageing_time);
 		break;
+	case SWITCHDEV_ATTR_ID_BRIDGE_MST:
+		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_mst_enable(dp, attr->u.mst, extack);
+		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
 		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
 			return -EOPNOTSUPP;
-- 
2.25.1

