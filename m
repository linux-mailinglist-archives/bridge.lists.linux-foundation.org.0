Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F69F13B18E
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EDE387A3A;
	Tue, 14 Jan 2020 17:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WhFlxRiw2qlk; Tue, 14 Jan 2020 17:58:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2014087A52;
	Tue, 14 Jan 2020 17:58:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E3610C077D;
	Tue, 14 Jan 2020 17:58:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39D07C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C30684D2E
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7LinFhSD2ntM for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:58:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B57D849CD
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:37 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id y4so15387998ljj.9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GqMStuk0JvHvzED0KA0S3hdX9UaNP460NhlyDnEu1VA=;
 b=PCM5PXoVjOPOlb0K13e3hqwHsFQeCrmKxDyPRhIxo/3ZvwAS9XmPB62iOfbYgcVImW
 07dnIiVl1gJvi1L+TI8GifVRHZusqVyevtc9Qe3SznlPdyjmSayWeYORs+ni+tzql2eK
 ImfTcqwxyBvQvLbwbu3Jfjo0Xl7UO5qv1EnBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GqMStuk0JvHvzED0KA0S3hdX9UaNP460NhlyDnEu1VA=;
 b=FkLHr1YoxdqhnkKfqFLMrYWMqRbii4M7XCUE2Ftt8k8Qff4pNPm2StAl5yj3g3LTQo
 Wbfgt/HcMOXjJXSZSaaKpC260gIRu/PX+q/g0uStgcP/0X7WCPvF8KmGxDvI3s1zqKfQ
 qNQ5oMVJaNKtetUjzFS2ZHwa+PVi3Mq8T82zhjA8zugysY0ToM4ZBEMBSkcEOzp8zFsE
 ma76I4bcT+4emzrBXxC2ZwgbgK6gwwZI9sEDvQykX8kY8XLA6OiDTUbT1ZKAy2vhb04s
 0SKozZE+6fUKV/7TZEBjGZD3bSGKSsoMtfvQF1sAusST2VZ/KC/u6WceA10HAJDgE3Hm
 x6Jg==
X-Gm-Message-State: APjAAAWXf7XIEJh5ovKE96aNI2WwjKbQbfoyvzj3wpcuZ+VaglIc6XNH
 ZtJzOVkGQWg51eR8g49E2r/kzP6h19w=
X-Google-Smtp-Source: APXvYqzcun2+JVhRwLbbaUGDG8y2iY0xvkMXUyoqaBxle2ixbuRCd5eV2cc6YjRRwEcoT3JLl4B+OA==
X-Received: by 2002:a2e:974b:: with SMTP id f11mr15485947ljj.173.1579024715467; 
 Tue, 14 Jan 2020 09:58:35 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a15sm7685655lfi.60.2020.01.14.09.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:58:34 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Jan 2020 19:56:10 +0200
Message-Id: <20200114175614.17543-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
References: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 4/8] net: bridge: vlan: add new rtm
	message support
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

Add initial RTM_NEWVLAN support which can only create vlans, operating
similar to the current br_afspec(). We will use it later to also change
per-vlan options. Old-style (flag-based) vlan ranges are not allowed
when using RTM messages, we will introduce vlan ranges later via a new
nested attribute which would allow us to have all the information about a
range encapsulated into a single nl attribute.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
v2: use nlmsg_parse() for stricter message validation

 net/bridge/br_netlink.c |  12 ++---
 net/bridge/br_private.h |   6 +++
 net/bridge/br_vlan.c    | 111 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 123 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 75a7ecf95d7f..b3da4f46dc64 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -561,12 +561,12 @@ static int br_vlan_info(struct net_bridge *br, struct net_bridge_port *p,
 	return err;
 }
 
-static int br_process_vlan_info(struct net_bridge *br,
-				struct net_bridge_port *p, int cmd,
-				struct bridge_vlan_info *vinfo_curr,
-				struct bridge_vlan_info **vinfo_last,
-				bool *changed,
-				struct netlink_ext_ack *extack)
+int br_process_vlan_info(struct net_bridge *br,
+			 struct net_bridge_port *p, int cmd,
+			 struct bridge_vlan_info *vinfo_curr,
+			 struct bridge_vlan_info **vinfo_last,
+			 bool *changed,
+			 struct netlink_ext_ack *extack)
 {
 	if (!br_vlan_valid_id(vinfo_curr->vid, extack))
 		return -EINVAL;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1c00411ae938..ee3871dea68f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1237,6 +1237,12 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlmsg, u16 flags,
 int br_dellink(struct net_device *dev, struct nlmsghdr *nlmsg, u16 flags);
 int br_getlink(struct sk_buff *skb, u32 pid, u32 seq, struct net_device *dev,
 	       u32 filter_mask, int nlflags);
+int br_process_vlan_info(struct net_bridge *br,
+			 struct net_bridge_port *p, int cmd,
+			 struct bridge_vlan_info *vinfo_curr,
+			 struct bridge_vlan_info **vinfo_last,
+			 bool *changed,
+			 struct netlink_ext_ack *extack);
 
 #ifdef CONFIG_SYSFS
 /* br_sysfs_if.c */
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 5f2ac4f244f5..6da0210b01eb 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1643,13 +1643,124 @@ static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
 	return err;
 }
 
+static const struct nla_policy br_vlan_db_policy[BRIDGE_VLANDB_ENTRY_MAX + 1] = {
+	[BRIDGE_VLANDB_ENTRY_INFO]	= { .type = NLA_EXACT_LEN,
+					    .len = sizeof(struct bridge_vlan_info) },
+};
+
+static int br_vlan_rtm_process_one(struct net_device *dev,
+				   const struct nlattr *attr,
+				   int cmd, struct netlink_ext_ack *extack)
+{
+	struct bridge_vlan_info *vinfo, *vinfo_last = NULL;
+	struct nlattr *tb[BRIDGE_VLANDB_ENTRY_MAX + 1];
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_port *p = NULL;
+	int err = 0, cmdmap = 0;
+	struct net_bridge *br;
+	bool changed = false;
+
+	if (netif_is_bridge_master(dev)) {
+		br = netdev_priv(dev);
+		vg = br_vlan_group(br);
+	} else {
+		p = br_port_get_rtnl(dev);
+		if (WARN_ON(!p))
+			return -ENODEV;
+		br = p->br;
+		vg = nbp_vlan_group(p);
+	}
+
+	if (WARN_ON(!vg))
+		return -ENODEV;
+
+	err = nla_parse_nested(tb, BRIDGE_VLANDB_ENTRY_MAX, attr,
+			       br_vlan_db_policy, extack);
+	if (err)
+		return err;
+
+	if (!tb[BRIDGE_VLANDB_ENTRY_INFO]) {
+		NL_SET_ERR_MSG_MOD(extack, "Missing vlan entry info");
+		return -EINVAL;
+	}
+
+	vinfo = nla_data(tb[BRIDGE_VLANDB_ENTRY_INFO]);
+	if (vinfo->flags & (BRIDGE_VLAN_INFO_RANGE_BEGIN |
+			    BRIDGE_VLAN_INFO_RANGE_END)) {
+		NL_SET_ERR_MSG_MOD(extack, "Old-style vlan ranges are not allowed when using RTM vlan calls");
+		return -EINVAL;
+	}
+	if (!br_vlan_valid_id(vinfo->vid, extack))
+		return -EINVAL;
+
+	switch (cmd) {
+	case RTM_NEWVLAN:
+		cmdmap = RTM_SETLINK;
+		break;
+	}
+
+	err = br_process_vlan_info(br, p, cmdmap, vinfo, &vinfo_last, &changed,
+				   extack);
+	if (changed)
+		br_ifinfo_notify(cmdmap, br, p);
+
+	return err;
+}
+
+static int br_vlan_rtm_process(struct sk_buff *skb, struct nlmsghdr *nlh,
+			       struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct br_vlan_msg *bvm;
+	struct net_device *dev;
+	struct nlattr *attr;
+	int err, vlans = 0;
+	int rem;
+
+	/* this should validate the header and check for remaining bytes */
+	err = nlmsg_parse(nlh, sizeof(*bvm), NULL, BRIDGE_VLANDB_MAX, NULL,
+			  extack);
+	if (err < 0)
+		return err;
+
+	bvm = nlmsg_data(nlh);
+	dev = __dev_get_by_index(net, bvm->ifindex);
+	if (!dev)
+		return -ENODEV;
+
+	if (!netif_is_bridge_master(dev) && !netif_is_bridge_port(dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "The device is not a valid bridge or bridge port");
+		return -EINVAL;
+	}
+
+	nlmsg_for_each_attr(attr, nlh, sizeof(*bvm), rem) {
+		if (nla_type(attr) != BRIDGE_VLANDB_ENTRY)
+			continue;
+
+		vlans++;
+		err = br_vlan_rtm_process_one(dev, attr, nlh->nlmsg_type,
+					      extack);
+		if (err)
+			break;
+	}
+	if (!vlans) {
+		NL_SET_ERR_MSG_MOD(extack, "No vlans found to process");
+		err = -EINVAL;
+	}
+
+	return err;
+}
+
 void br_vlan_rtnl_init(void)
 {
 	rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_GETVLAN, NULL,
 			     br_vlan_rtm_dump, 0);
+	rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_NEWVLAN,
+			     br_vlan_rtm_process, NULL, 0);
 }
 
 void br_vlan_rtnl_uninit(void)
 {
 	rtnl_unregister(PF_BRIDGE, RTM_GETVLAN);
+	rtnl_unregister(PF_BRIDGE, RTM_NEWVLAN);
 }
-- 
2.21.0

