Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1539107B17
	for <lists.bridge@lfdr.de>; Sat, 23 Nov 2019 00:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 15116203FC;
	Fri, 22 Nov 2019 23:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZ1VwKxhKzh1; Fri, 22 Nov 2019 23:08:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 08B152637D;
	Fri, 22 Nov 2019 23:08:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9FEDC1D74;
	Fri, 22 Nov 2019 23:08:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 143E6C18DA
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 23:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A2A38915B
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 23:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I76f4qclgWOS for <bridge@lists.linux-foundation.org>;
 Fri, 22 Nov 2019 23:08:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2153289157
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 23:08:34 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 14so9745361qtf.5
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 15:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ae3uIT0vqnb8YtlHE2QZPNR79CkT2a8BKD5dBlLX6/A=;
 b=NEpldRNm6jCjQ3BxWKsKrhFBugPNw7z3qWl8gqesYCcLwUMnAbUJu/fZAXEsRKYRqA
 DB2495cM2M/u92FQJwRrDwA/dH7GrtmiTOGsR+s10CSlB4KyzxXegepK7nMiCFNpmPTp
 Gh4+i2vol0JCqcG8WlO8IOyxR2sMUoLhyX71gQcOEVGgRhOYKBZ5btSckuoIp5oVmon+
 TuC81rnGpFn6GlAMJ6IjIkNy839nQfDdBkT14bCU/r1F2wSTE0SMllGmhLJN5ApHgYCq
 JgcAQku7UMVRbZ7vTckQQZz2Y5sw2DKrIFAH/8PKhxQGQZ31nmjkVBGFl/qHg+YYpyjF
 mong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ae3uIT0vqnb8YtlHE2QZPNR79CkT2a8BKD5dBlLX6/A=;
 b=JuUSUJOWgyqz21T3aMifmnOgMVnWz5a6cvZfySY//3zi6qjRLna8WpLLfIr4PsrSI3
 eWhvrkzO5KwG+EWQhH+3MhllYx1nTdDqIotyYOUhmIx3WMKYKAfak2U60o6SrOJJVL6J
 KStDGt/qFDA0s+bFbgGV6rsAeIY4XASZ7udOyX0RffKcrxG+DIf582zDXPs4ObdMcyqR
 Q081wosr90+BWuY1LXHru1RCnvnY4crQ54iuERmKJ+2Ox3c+AxLzGkHOamgXjR5Ba42P
 qX7QCw3KNR1wI9fwm7Q3fbacvhLB/YU1ykBdHPnFGgbTd8340PoCTRN98bM3M1CdxEa3
 jQhg==
X-Gm-Message-State: APjAAAV0O9409UyYyAVKP8+6I2LFRf2vepaEZLP/IT+3oEIuDolby30q
 YxTEemgQin0/emw4CM2cP5c=
X-Google-Smtp-Source: APXvYqwk3e1ysEeBjXXy4OwXkjeLH86DkOtecWYpgobykDGwdHE/SkWkIIz6CrY+mBzfTjPI0CKEHA==
X-Received: by 2002:ac8:644:: with SMTP id e4mr17347064qth.302.1574464112961; 
 Fri, 22 Nov 2019 15:08:32 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id i35sm2852216qtc.18.2019.11.22.15.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 15:08:32 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 22 Nov 2019 18:07:42 -0500
Message-Id: <20191122230742.1515752-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: f.fainelli@gmail.com, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next] net: bridge: add STP stat counters
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

This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
transition_fwd stat counters to the bridge ports, along with sysfs
statistics nodes under a "statistics" directory of the "brport" entry,
providing useful information for STP, for example:

    # cat /sys/class/net/lan0/brport/statistics/tx_bpdu
    26
    # cat /sys/class/net/lan5/brport/statistics/transition_fwd
    3

At the same time, make BRPORT_ATTR define a non-const attribute as
this is required by the attribute group structure.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 net/bridge/br_private.h  |  8 ++++++++
 net/bridge/br_stp.c      |  8 ++++++++
 net/bridge/br_stp_bpdu.c |  4 ++++
 net/bridge/br_sysfs_if.c | 35 ++++++++++++++++++++++++++++++++++-
 4 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 36b0367ca1e0..360d8030e3b2 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -283,6 +283,14 @@ struct net_bridge_port {
 #endif
 	u16				group_fwd_mask;
 	u16				backup_redirected_cnt;
+
+	/* Statistics */
+	atomic_long_t			rx_bpdu;
+	atomic_long_t			tx_bpdu;
+	atomic_long_t			rx_tcn;
+	atomic_long_t			tx_tcn;
+	atomic_long_t			transition_blk;
+	atomic_long_t			transition_fwd;
 };
 
 #define kobj_to_brport(obj)	container_of(obj, struct net_bridge_port, kobj)
diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
index 1f1410f8d312..63568ee2a9cd 100644
--- a/net/bridge/br_stp.c
+++ b/net/bridge/br_stp.c
@@ -403,6 +403,8 @@ static void br_make_blocking(struct net_bridge_port *p)
 
 		del_timer(&p->forward_delay_timer);
 	}
+
+	atomic_long_inc(&p->transition_blk);
 }
 
 /* called under bridge lock */
@@ -426,6 +428,8 @@ static void br_make_forwarding(struct net_bridge_port *p)
 
 	if (br->forward_delay != 0)
 		mod_timer(&p->forward_delay_timer, jiffies + br->forward_delay);
+
+	atomic_long_inc(&p->transition_fwd);
 }
 
 /* called under bridge lock */
@@ -512,6 +516,8 @@ void br_received_config_bpdu(struct net_bridge_port *p,
 	} else if (br_is_designated_port(p)) {
 		br_reply(p);
 	}
+
+	atomic_long_inc(&p->rx_bpdu);
 }
 
 /* called under bridge lock */
@@ -524,6 +530,8 @@ void br_received_tcn_bpdu(struct net_bridge_port *p)
 		br_topology_change_detection(p->br);
 		br_topology_change_acknowledge(p);
 	}
+
+	atomic_long_inc(&p->rx_tcn);
 }
 
 /* Change bridge STP parameter */
diff --git a/net/bridge/br_stp_bpdu.c b/net/bridge/br_stp_bpdu.c
index 7796dd9d42d7..e824e040846c 100644
--- a/net/bridge/br_stp_bpdu.c
+++ b/net/bridge/br_stp_bpdu.c
@@ -118,6 +118,8 @@ void br_send_config_bpdu(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
 	br_set_ticks(buf+33, bpdu->forward_delay);
 
 	br_send_bpdu(p, buf, 35);
+
+	atomic_long_inc(&p->tx_bpdu);
 }
 
 /* called under bridge lock */
@@ -133,6 +135,8 @@ void br_send_tcn_bpdu(struct net_bridge_port *p)
 	buf[2] = 0;
 	buf[3] = BPDU_TYPE_TCN;
 	br_send_bpdu(p, buf, 4);
+
+	atomic_long_inc(&p->tx_tcn);
 }
 
 /*
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 7a59cdddd3ce..1fcd42ffa0ff 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -33,7 +33,7 @@ const struct brport_attribute brport_attr_##_name = {			\
 };
 
 #define BRPORT_ATTR(_name, _mode, _show, _store)		\
-const struct brport_attribute brport_attr_##_name = { 	        \
+struct brport_attribute brport_attr_##_name = { 	        \
 	.attr = {.name = __stringify(_name), 			\
 		 .mode = _mode },				\
 	.show	= _show,					\
@@ -52,6 +52,13 @@ static int store_##_name(struct net_bridge_port *p, unsigned long v) \
 static BRPORT_ATTR(_name, 0644,					\
 		   show_##_name, store_##_name)
 
+#define BRPORT_ATTR_STAT(_name)						\
+static ssize_t show_##_name(struct net_bridge_port *p, char *buf) 	\
+{									\
+	return sprintf(buf, "%lu\n", atomic_long_read(&p->_name));	\
+}									\
+static BRPORT_ATTR(_name, 0444, show_##_name, NULL)
+
 static int store_flag(struct net_bridge_port *p, unsigned long v,
 		      unsigned long mask)
 {
@@ -352,6 +359,28 @@ const struct sysfs_ops brport_sysfs_ops = {
 	.store = brport_store,
 };
 
+BRPORT_ATTR_STAT(rx_bpdu);
+BRPORT_ATTR_STAT(tx_bpdu);
+BRPORT_ATTR_STAT(rx_tcn);
+BRPORT_ATTR_STAT(tx_tcn);
+BRPORT_ATTR_STAT(transition_blk);
+BRPORT_ATTR_STAT(transition_fwd);
+
+static struct attribute *br_sysfs_attrs[] __ro_after_init = {
+	&brport_attr_rx_bpdu.attr,
+	&brport_attr_tx_bpdu.attr,
+	&brport_attr_rx_tcn.attr,
+	&brport_attr_tx_tcn.attr,
+	&brport_attr_transition_blk.attr,
+	&brport_attr_transition_fwd.attr,
+	NULL
+};
+
+static const struct attribute_group br_sysfs_group = {
+	.name = "statistics",
+	.attrs = br_sysfs_attrs,
+};
+
 /*
  * Add sysfs entries to ethernet device added to a bridge.
  * Creates a brport subdirectory with bridge attributes.
@@ -374,6 +403,10 @@ int br_sysfs_addif(struct net_bridge_port *p)
 			return err;
 	}
 
+	err = sysfs_create_group(&p->kobj, &br_sysfs_group);
+	if (err)
+		return err;
+
 	strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
 	return sysfs_create_link(br->ifobj, &p->kobj, p->sysfs_name);
 }
-- 
2.24.0

