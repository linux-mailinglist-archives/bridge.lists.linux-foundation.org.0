Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 601F8433057
	for <lists.bridge@lfdr.de>; Tue, 19 Oct 2021 10:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E72260B28;
	Tue, 19 Oct 2021 08:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBiEJnhxDH_Q; Tue, 19 Oct 2021 08:01:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BAA3E60B49;
	Tue, 19 Oct 2021 08:01:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F28A1C0020;
	Tue, 19 Oct 2021 08:01:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28DF2C000D
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 11:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15CF540411
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 11:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ZuT2Od412NK for <bridge@lists.linux-foundation.org>;
 Sat, 16 Oct 2021 11:21:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54CCC40406
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 11:21:45 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id 21so8023620plo.13
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 04:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v+ROWip2DOu/ejvMTpR01JMqGD3ACZ+pK2z8e30nwBU=;
 b=U6gEy6R2isS5ApGPffAomw4itnMKRCLFRnH5F1vc3cmy3P5fxilDkNWDakQPr6TEn5
 nY0UTdBZDHpe8Eq9unND/qfujdHhpqp2zCGE+IKpJagGKhMNfSHSVVKPgbHj9+LLW5J6
 Ekgfu3L/E+Z8d8XQ4c9MDyKQYL2PKl1TtMGnRr+qrzXE7CiAJf2Jzj4KhS3wPv17TUeR
 5vp5S3rilwTz3+CWsIMVSno2bSXDhtkmZ2m4RZsPJyQ1HNWjdv3RIuob6PT99l4g5nKW
 EJ015IviUY6BL4tidEGWSu61iZzKrxHS7a6v2cdioxum98KfoxgWB15si2tUKEv7F5Qe
 hDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v+ROWip2DOu/ejvMTpR01JMqGD3ACZ+pK2z8e30nwBU=;
 b=5SUqQ5q5mVnUZKIg4vp2s5JpD0a+NHp5yJNCwlhPsfFEKGvRFmQUnPiD2XL5/6btme
 zLHouzZg389kWs9dwQLYDYeraXUC6YlvdB7FBWxW05m8Qpm810GpcrVp2eY72nQOE56Q
 /0VIN+H46fd+X1LJ95G52PIumpMorRm6XTClkL8yftw6S9Ln+QBxU6dQnc5JwMJxAprk
 x/19xEjWbNIDs5EllER07OLjAFXzCkT6dcxKFYUWgQT88t44MdexR+psOr5esQDFXDlI
 /WkNvrUqTsKJzAh6DUfu/3TNsiojx61pnemg/taC6iLiL+O7oqp8rcsIguToqe6jue4i
 jJcw==
X-Gm-Message-State: AOAM530j9GTNEEo2/CTfkLoaG6+ERvbfLgApT/soUq+m0aYP3wFRzz5/
 cPpU9oV/5mfEDlEQWO/tWJ8=
X-Google-Smtp-Source: ABdhPJyaV9NtD0ddKyNyjSDHSOdDhYIYDTt623NEd5phUE6MFqERN6ln5jxLvm5swtvCYllDVMQSbg==
X-Received: by 2002:a17:90b:4b03:: with SMTP id
 lx3mr19636771pjb.162.1634383304729; 
 Sat, 16 Oct 2021 04:21:44 -0700 (PDT)
Received: from rok-te3.kortoor.gmail.com.beta.tailscale.net ([211.250.198.237])
 by smtp.googlemail.com with ESMTPSA id b16sm7905873pfm.58.2021.10.16.04.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 04:21:44 -0700 (PDT)
From: Kyungrok Chung <acadx0@gmail.com>
To: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>
Date: Sat, 16 Oct 2021 20:21:36 +0900
Message-Id: <20211016112137.18858-1-acadx0@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 19 Oct 2021 08:01:38 +0000
Cc: bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH v3 net-next] net: make use of helper
	netif_is_bridge_master()
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

Make use of netdev helper functions to improve code readability.
Replace 'dev->priv_flags & IFF_EBRIDGE' with netif_is_bridge_master(dev).

Signed-off-by: Kyungrok Chung <acadx0@gmail.com>
---

v1->v2:
  - Apply fixes to batman-adv, core too.

v2->v3:
  - Fix wrong logic.

 net/batman-adv/multicast.c      | 2 +-
 net/bridge/br.c                 | 4 ++--
 net/bridge/br_fdb.c             | 6 +++---
 net/bridge/br_if.c              | 2 +-
 net/bridge/br_ioctl.c           | 2 +-
 net/bridge/br_mdb.c             | 4 ++--
 net/bridge/br_netfilter_hooks.c | 2 +-
 net/bridge/br_netlink.c         | 4 ++--
 net/core/rtnetlink.c            | 2 +-
 9 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index a3b6658ed789..433901dcf0c3 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -89,7 +89,7 @@ static struct net_device *batadv_mcast_get_bridge(struct net_device *soft_iface)
 	rcu_read_lock();
 	do {
 		upper = netdev_master_upper_dev_get_rcu(upper);
-	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
+	} while (upper && !netif_is_bridge_master(upper));
 
 	dev_hold(upper);
 	rcu_read_unlock();
diff --git a/net/bridge/br.c b/net/bridge/br.c
index d3a32c6813e0..1fac72cc617f 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -36,7 +36,7 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 	bool changed_addr;
 	int err;
 
-	if (dev->priv_flags & IFF_EBRIDGE) {
+	if (netif_is_bridge_master(dev)) {
 		err = br_vlan_bridge_event(dev, event, ptr);
 		if (err)
 			return notifier_from_errno(err);
@@ -349,7 +349,7 @@ static void __net_exit br_net_exit(struct net *net)
 
 	rtnl_lock();
 	for_each_netdev(net, dev)
-		if (dev->priv_flags & IFF_EBRIDGE)
+		if (netif_is_bridge_master(dev))
 			br_dev_delete(dev, &list);
 
 	unregister_netdevice_many(&list);
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 46812b659710..a6a68e18c70a 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -825,7 +825,7 @@ int br_fdb_dump(struct sk_buff *skb,
 	struct net_bridge_fdb_entry *f;
 	int err = 0;
 
-	if (!(dev->priv_flags & IFF_EBRIDGE))
+	if (!netif_is_bridge_master(dev))
 		return err;
 
 	if (!filter_dev) {
@@ -1076,7 +1076,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;
 	}
 
-	if (dev->priv_flags & IFF_EBRIDGE) {
+	if (netif_is_bridge_master(dev)) {
 		br = netdev_priv(dev);
 		vg = br_vlan_group(br);
 	} else {
@@ -1173,7 +1173,7 @@ int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	struct net_bridge *br;
 	int err;
 
-	if (dev->priv_flags & IFF_EBRIDGE) {
+	if (netif_is_bridge_master(dev)) {
 		br = netdev_priv(dev);
 		vg = br_vlan_group(br);
 	} else {
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 4a02f8bb278a..c11bba3e7ec0 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -471,7 +471,7 @@ int br_del_bridge(struct net *net, const char *name)
 	if (dev == NULL)
 		ret =  -ENXIO; 	/* Could not find device */
 
-	else if (!(dev->priv_flags & IFF_EBRIDGE)) {
+	else if (!netif_is_bridge_master(dev)) {
 		/* Attempt to delete non bridge device! */
 		ret = -EPERM;
 	}
diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 49c268871fc1..db4ab2c2ce18 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -26,7 +26,7 @@ static int get_bridge_ifindices(struct net *net, int *indices, int num)
 	for_each_netdev_rcu(net, dev) {
 		if (i >= num)
 			break;
-		if (dev->priv_flags & IFF_EBRIDGE)
+		if (netif_is_bridge_master(dev))
 			indices[i++] = dev->ifindex;
 	}
 	rcu_read_unlock();
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 0281453f7766..61ccf46fcc21 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -422,7 +422,7 @@ static int br_mdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 	cb->seq = net->dev_base_seq;
 
 	for_each_netdev_rcu(net, dev) {
-		if (dev->priv_flags & IFF_EBRIDGE) {
+		if (netif_is_bridge_master(dev)) {
 			struct net_bridge *br = netdev_priv(dev);
 			struct br_port_msg *bpm;
 
@@ -1016,7 +1016,7 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -ENODEV;
 	}
 
-	if (!(dev->priv_flags & IFF_EBRIDGE)) {
+	if (!netif_is_bridge_master(dev)) {
 		NL_SET_ERR_MSG_MOD(extack, "Device is not a bridge");
 		return -EOPNOTSUPP;
 	}
diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
index 8edfb98ae1d5..b5af68c105a8 100644
--- a/net/bridge/br_netfilter_hooks.c
+++ b/net/bridge/br_netfilter_hooks.c
@@ -968,7 +968,7 @@ static int brnf_device_event(struct notifier_block *unused, unsigned long event,
 	struct net *net;
 	int ret;
 
-	if (event != NETDEV_REGISTER || !(dev->priv_flags & IFF_EBRIDGE))
+	if (event != NETDEV_REGISTER || !netif_is_bridge_master(dev))
 		return NOTIFY_DONE;
 
 	ASSERT_RTNL();
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 5c6c4305ed23..0c8b5f1a15bc 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -106,7 +106,7 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 		p = br_port_get_check_rcu(dev);
 		if (p)
 			vg = nbp_vlan_group_rcu(p);
-	} else if (dev->priv_flags & IFF_EBRIDGE) {
+	} else if (netif_is_bridge_master(dev)) {
 		br = netdev_priv(dev);
 		vg = br_vlan_group_rcu(br);
 	}
@@ -1050,7 +1050,7 @@ int br_dellink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags)
 
 	p = br_port_get_rtnl(dev);
 	/* We want to accept dev as bridge itself as well */
-	if (!p && !(dev->priv_flags & IFF_EBRIDGE))
+	if (!p && !netif_is_bridge_master(dev))
 		return -EINVAL;
 
 	err = br_afspec(br, p, afspec, RTM_DELLINK, &changed, NULL);
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 2dc1b209ba91..564d24c451af 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4384,7 +4384,7 @@ static int rtnl_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 					continue;
 
 				if (br_dev != netdev_master_upper_dev_get(dev) &&
-				    !(dev->priv_flags & IFF_EBRIDGE))
+				    !netif_is_bridge_master(dev))
 					continue;
 				cops = ops;
 			}
-- 
2.33.0

