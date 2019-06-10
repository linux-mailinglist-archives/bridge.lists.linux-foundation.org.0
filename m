Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A48E3B9BF
	for <lists.bridge@lfdr.de>; Mon, 10 Jun 2019 18:41:06 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BA32BD8C;
	Mon, 10 Jun 2019 16:40:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 915DD255
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 09:44:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9785.mail.qiye.163.com (m9785.mail.qiye.163.com
	[220.181.97.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D6AE0711
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 09:44:10 +0000 (UTC)
Received: from localhost.localdomain (unknown [123.59.132.129])
	by m9785.mail.qiye.163.com (Hmail) with ESMTPA id C439C5C17DE;
	Mon, 10 Jun 2019 17:44:06 +0800 (CST)
From: wenxu@ucloud.cn
To: roopa@cumulusnetworks.com,
	nikolay@cumulusnetworks.com
Date: Mon, 10 Jun 2019 17:44:06 +0800
Message-Id: <1560159846-29933-1-git-send-email-wenxu@ucloud.cn>
X-Mailer: git-send-email 1.8.3.1
X-HM-Spam-Status: e1kIGBQJHllBWUlVSUNDS0tLSktNQ0pKTklZV1koWUFJQjdXWS1ZQUlXWQ
	kOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORA6CRw6Qjg#Oh4sNDMCURIv
	HBEaFC1VSlVKTk1LSk5CQ09NQkNOVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpJSFVO
	QlVKSElVSklCWVdZCAFZQUpCT0I3Bg++
X-HM-Tid: 0a6b40c601e72087kuqyc439c5c17de
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 10 Jun 2019 16:40:25 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next] bridge: Set the pvid for untaged packet
	before prerouting
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

From: wenxu <wenxu@ucloud.cn>

bridge vlan add dev veth1 vid 200 pvid untagged
bridge vlan add dev veth2 vid 200 pvid untagged

nft add table bridge firewall
nft add chain bridge firewall zones { type filter hook prerouting priority - 300 \; }
nft add rule bridge firewall zones counter ct zone set vlan id map { 100 : 1, 200 : 2 }

As above set the bridge port with pvid, the received packet don't contain
the vlan tag which means the packet should belong to vlan 200 through pvid.
User can do conntrack base base on vlan id and map the vlan id to zone id
in the prerouting hook.

Signed-off-by: wenxu <wenxu@ucloud.cn>
---
 net/bridge/br_input.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 21b74e7..31b44bc 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -341,6 +341,13 @@ rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
 	}
 
 forward:
+	if (br_opt_get(p->br, BROPT_VLAN_ENABLED) && !skb_vlan_tag_present(skb)) {
+		u16 pvid = br_get_pvid(nbp_vlan_group_rcu(p));
+
+		if (pvid)
+			__vlan_hwaccel_put_tag(skb, p->br->vlan_proto, pvid);
+	}
+
 	switch (p->state) {
 	case BR_STATE_FORWARDING:
 	case BR_STATE_LEARNING:
-- 
1.8.3.1

