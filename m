Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5928836C0A1
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 525E883C51;
	Tue, 27 Apr 2021 08:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCgVy56-GgDS; Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0D0783B47;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 778D6C0024;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7761BC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6369A83443
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id woqT8bUCVRB3 for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CCFD83455
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id r128so62374404lff.4
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=6jO9lKWvNXYqdJyM5lCPEQQkRdWVnlQlbjfM8XXf2v8=;
 b=qPnr7n8CwJXjEsTLB4rmYkKB8NRheLcxrmx5roLwS/+3SaNuQnp1P8uP+pPTYuzkz7
 OFaVyG16nqOObJ8KcxNZ3dp+RUUTG9BWrs+lc5w5V+72xzFB/2FggGas8E34uLPN9ahW
 kYegr964IiRipmBOt/wWmJHWi2xS0UaoLqYHAGzpi230EE25kuyK7KLouF15fmzfv4Mi
 VlBbxEYrj+s4qnB+IpbKVzh4Upf3QeppIQ6xhhBy31Yqc1qPp0u21s9oHYVZCi1v8AZ0
 rVvZ2gp01kwbTuVzSrlPlJXy0UTgtWqH07fq0tmYxV3P/3dMr/dNg5V5U/Ps4wyqgozO
 rZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=6jO9lKWvNXYqdJyM5lCPEQQkRdWVnlQlbjfM8XXf2v8=;
 b=Zs+3e8DlIS84watNDfl2txG2XS1qNLady7e2Bw6TXVitn65Cw8X7wdz11v4KSAEVmA
 1lkQ4Xa9B7jvRQueEhWnJnxLkkgm5OoxX/D+QHlI1VvjSmasSAl6saxW0Wo0bdFhCDS1
 9cq6Ktm7YU5IsUFVYIEED+Epyu+DgmxxBiyijF8RulQWkApZZA56Gk1WtjdwO9SC832h
 NADMQBu6EqEDd1+j2XuX0lmwiBfo/Yrt4RD8DE0EkezHZMXJ8B82uMkqajZtk1oW0JyO
 B9a/wvkSrDtZbkmJb/H8Gd+X53bad8olz57beEDUn+fzCQA1qbuydWA+8d4XuWX1Fs9T
 +taA==
X-Gm-Message-State: AOAM533OHd808DdDGNXtrjrgthk0MQ3uvo4CsieKrvzAHHbyoGBygAiU
 g68PBR9+jOr0uSZSI+/h292wug==
X-Google-Smtp-Source: ABdhPJwojJ85VjAYnTpem4HGCSwPQtiHLBY5RdNMmwq6GgALnObnYL9JSM1J5TMn7t+873jUy+3eRw==
X-Received: by 2002:a19:ec0a:: with SMTP id b10mr7823784lfa.53.1619456692412; 
 Mon, 26 Apr 2021 10:04:52 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:51 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:08 +0200
Message-Id: <20210426170411.1789186-7-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 6/9] net: dsa: Forward offloading
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

Allow DSA drivers to support forward offloading from a bridge by:

- Passing calls to .ndo_dfwd_{add,del}_station to the drivers.

- Recording the subordinate device of offloaded skbs in the control
  buffer so that the tagger can take the appropriate action.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/dsa.h |  7 +++++++
 net/dsa/slave.c   | 36 ++++++++++++++++++++++++++++++++++--
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 1f9ba9889034..77d4df819299 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -119,6 +119,7 @@ struct dsa_netdevice_ops {
 
 struct dsa_skb_cb {
 	struct sk_buff *clone;
+	struct net_device *sb_dev;
 };
 
 struct __dsa_skb_cb {
@@ -828,6 +829,12 @@ struct dsa_switch_ops {
 					  const struct switchdev_obj_ring_role_mrp *mrp);
 	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
 					  const struct switchdev_obj_ring_role_mrp *mrp);
+
+	/* L2 forward offloading */
+	void *	(*dfwd_add_station)(struct dsa_switch *ds, int port,
+				    struct net_device *sb_dev);
+	void	(*dfwd_del_station)(struct dsa_switch *ds, int port,
+				    struct net_device *sb_dev);
 };
 
 #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 77b33bd161b8..3689ffa2dbb8 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -657,6 +657,13 @@ static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
 	return dsa_enqueue_skb(nskb, dev);
 }
 
+static u16 dsa_slave_select_queue(struct net_device *dev, struct sk_buff *skb,
+				  struct net_device *sb_dev)
+{
+	DSA_SKB_CB(skb)->sb_dev = sb_dev;
+	return netdev_pick_tx(dev, skb, sb_dev);
+}
+
 /* ethtool operations *******************************************************/
 
 static void dsa_slave_get_drvinfo(struct net_device *dev,
@@ -1708,10 +1715,33 @@ static int dsa_slave_fill_forward_path(struct net_device_path_ctx *ctx,
 	return 0;
 }
 
+static void *dsa_slave_dfwd_add_station(struct net_device *dev,
+					struct net_device *sb_dev)
+{
+	struct dsa_port *dp = dsa_slave_to_port(dev);
+	struct dsa_switch *ds = dp->ds;
+
+	if (ds->ops->dfwd_add_station)
+		return ds->ops->dfwd_add_station(ds, dp->index, sb_dev);
+
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static void dsa_slave_dfwd_del_station(struct net_device *dev,
+				       void *sb_dev)
+{
+	struct dsa_port *dp = dsa_slave_to_port(dev);
+	struct dsa_switch *ds = dp->ds;
+
+	if (ds->ops->dfwd_del_station)
+		ds->ops->dfwd_del_station(ds, dp->index, sb_dev);
+}
+
 static const struct net_device_ops dsa_slave_netdev_ops = {
 	.ndo_open	 	= dsa_slave_open,
 	.ndo_stop		= dsa_slave_close,
 	.ndo_start_xmit		= dsa_slave_xmit,
+	.ndo_select_queue	= dsa_slave_select_queue,
 	.ndo_change_rx_flags	= dsa_slave_change_rx_flags,
 	.ndo_set_rx_mode	= dsa_slave_set_rx_mode,
 	.ndo_set_mac_address	= dsa_slave_set_mac_address,
@@ -1734,6 +1764,8 @@ static const struct net_device_ops dsa_slave_netdev_ops = {
 	.ndo_get_devlink_port	= dsa_slave_get_devlink_port,
 	.ndo_change_mtu		= dsa_slave_change_mtu,
 	.ndo_fill_forward_path	= dsa_slave_fill_forward_path,
+	.ndo_dfwd_add_station	= dsa_slave_dfwd_add_station,
+	.ndo_dfwd_del_station	= dsa_slave_dfwd_del_station,
 };
 
 static struct device_type dsa_type = {
@@ -1914,8 +1946,8 @@ int dsa_slave_create(struct dsa_port *port)
 	slave_dev->features = master->vlan_features | NETIF_F_HW_TC;
 	if (ds->ops->port_vlan_add && ds->ops->port_vlan_del)
 		slave_dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
-	slave_dev->hw_features |= NETIF_F_HW_TC;
-	slave_dev->features |= NETIF_F_LLTX;
+	slave_dev->hw_features |= NETIF_F_HW_TC | NETIF_F_HW_L2FW_DOFFLOAD;
+	slave_dev->features |= NETIF_F_LLTX | NETIF_F_HW_L2FW_DOFFLOAD;
 	slave_dev->ethtool_ops = &dsa_slave_ethtool_ops;
 	if (!is_zero_ether_addr(port->mac))
 		ether_addr_copy(slave_dev->dev_addr, port->mac);
-- 
2.25.1

