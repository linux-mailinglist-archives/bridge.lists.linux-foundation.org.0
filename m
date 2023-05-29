Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 312597148D2
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 13:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E23B8220E;
	Mon, 29 May 2023 11:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E23B8220E
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=krG6uIXj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I8MakxiFHJi1; Mon, 29 May 2023 11:49:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9D99082217;
	Mon, 29 May 2023 11:49:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D99082217
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB798C0090;
	Mon, 29 May 2023 11:49:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92005C0036
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D10E61181
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D10E61181
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=krG6uIXj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LlcQgFe3I838 for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 11:49:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1287860AC0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20610.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::610])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1287860AC0
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:49:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTf81e5UOlVd7YcLJWeAzl/OOHtpLW9kg7U9BiU7rGp0cgGhMUY8sSC7dL4a2o3y/tu4bLpUddvlRD0zRQwG0ZWuFtM6R8VlAOEi8+7TedqQJE9UllEM7tCYP74H7+ALfQseNFIK6vnEs1K6l/J0TdOHJpcaW/KyZ3PSalbaQHuEMF6UTItbGHqF0yYuAU/r3CxUtUkX8J5yDQi9fXsXt0iFBb0EWrYxKJf3XQUfFRC21GbFOBzurjmBq0kDKNjJSns24GzqYyrd/4aqMS9raPy1dovAzMC4BMqbcjZBE4gsl8BYid7O5o/TE1F4dVDRWop8kHInELiTwTb5gFTYLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ddChwO0XV2RfxJFWAOa8FJ3HKcgwhT0IXU/U9IfVtqE=;
 b=NndkphmjjZ/0NU4S9SQY58AexHlItXElVMe9/FKPxB9STTRRALB2lL8Zw0i8rl6OdHGFXdkRncEw8WCMGZRH608sLFKVDzXiZr7hQt7dXCP1CbcTfd5wd0vSipydkvPO4r4qwA0E4aScMf0F4Be5ewyUvBpLbz5aMijwa+jl6+kmClfKArXFga1QW0E/32+hwxtZ3CrpNBRkHV/aGSEYGMPD79Lj+AtRaw/iwvCMneAMI5yLBK3KVE7UEXsEJr++BHZvn9NnjnzJ1h6yw/QbSbFJFdkSBqZOmImqpWAp5juwccBWASheE5zs9x6AkGyiSiK2ie0CFjDPyGSYRn8q+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ddChwO0XV2RfxJFWAOa8FJ3HKcgwhT0IXU/U9IfVtqE=;
 b=krG6uIXjoEuAlMR1A4gI3ZSnl63Dd4gWJidxvsCER7HS8T/bBkQs8+7Lz1KTApoHd1rkcLOgiw6TYuyLeJUMjUnABjsejQHbqQTl7T9zXCxL5jIfSWQ1hSCqEWv8vJZ0RxK05EHakLV08bmRI8RSS8vJz65IyBnB/TyRVM2xRje7Fz7r6mD8k41RS4brKQTX4J2v3LOsB3br1ABp1EiJyoC3zjIdLnWaOFoXkp926dcbhSz7AHDv0diFN3tFVWS78IXx2MWOsN/5oHWpzRTOnPu44cnHvwOkBuy1mC9ZeAq0r9lns5UN7CuLftkuYDVk3MQb7M/7+vhgIXUdHDY1Vg==
Received: from SJ0PR03CA0035.namprd03.prod.outlook.com (2603:10b6:a03:33e::10)
 by SJ2PR12MB9190.namprd12.prod.outlook.com (2603:10b6:a03:554::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 11:49:42 +0000
Received: from DM6NAM11FT108.eop-nam11.prod.protection.outlook.com
 (2603:10b6:a03:33e:cafe::8e) by SJ0PR03CA0035.outlook.office365.com
 (2603:10b6:a03:33e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23 via Frontend
 Transport; Mon, 29 May 2023 11:49:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT108.mail.protection.outlook.com (10.13.172.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.21 via Frontend Transport; Mon, 29 May 2023 11:49:41 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 29 May 2023
 04:49:31 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 29 May 2023 04:49:25 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 29 May 2023 14:48:28 +0300
Message-ID: <20230529114835.372140-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230529114835.372140-1-idosch@nvidia.com>
References: <20230529114835.372140-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT108:EE_|SJ2PR12MB9190:EE_
X-MS-Office365-Filtering-Correlation-Id: 68351df6-ab21-4da4-9747-08db603aca0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wCcnaSyvSw8Wf5E7PWDgi6q5mLZL+P2vyEc3XZKKkPF1qQgjKVUKTFo/O+opX7Mn3CoG/IheVLjn2ZPOQtaRswjbc70eN7myrEKnGAwCYlCGUs2VC900rC534cU3hXz+Oygr3emgkm3xiyldR1YqOOpZRc6kjmMnRN45ijwlhv+lqxzLW8+VqRhdRBITYe41N6tLalLoFOBWjhpgL+Voo2XpGc+kli4WAU6xt/N6ooWeg8rBNFzpEVW738V9acK48h/D9P/U7wpU28kVjB2GYee7ynZW8CuGm3FE9XGFhu8cUd7TPVV0ukv70FNy4o1n2JB+rZqTyENFsmVPOaR8rShCft8prJg6kAwL0jH2os8w8QoDqj81dfppSTI5S/Jk8TQsaglVghmQuiGZmB8Ip4Gt2sJWmdbPdjzoLKtGE47fyVVhIHxFKBNanyJxNx38xVjHYg4jbTrHeMJrkB2pCWaOMBooZC4jYJCzXHMBcNlXq470wCZtUejhh8rDE4+fUwgdusBQFswtn/zEgY2JiKall5fXMFxK7WVFFO0sdthF2ALCmMQu+7n9te3IJuviStXy8gl1QHPGFWjzYgI1WDR+yBVpTp2IaHz7R1VHpmA2TKGlIrcWsUgVy5kVxIwbN7LiAdfwUVPJiUeHdSEM21aVYGpH1bnPfKQsGEptFBAMSRarSs2hOi5FMMsT5x+ERsz9EQ4bkeemxIgY3Sky/U2s98k3AS/VRP5cxA3FqAgRQtbClEw+XbdNzX8S6OG9
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(136003)(396003)(376002)(346002)(451199021)(40470700004)(46966006)(36840700001)(26005)(1076003)(2906002)(316002)(186003)(16526019)(40480700001)(40460700003)(5660300002)(107886003)(41300700001)(36756003)(7416002)(8676002)(8936002)(478600001)(82740400003)(7636003)(36860700001)(356005)(54906003)(426003)(336012)(82310400005)(86362001)(110136005)(4326008)(2616005)(47076005)(70586007)(70206006)(83380400001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 11:49:41.5974 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68351df6-ab21-4da4-9747-08db603aca0e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT108.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB9190
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com,
 razor@blackwall.org, roopa@nvidia.com, claudiu.manoil@nxp.com,
 Ido Schimmel <idosch@nvidia.com>, UNGLinuxDriver@microchip.com,
 edumazet@google.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 1/8] skbuff: bridge: Add layer 2 miss
	indication
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
From: Ido Schimmel via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ido Schimmel <idosch@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

For EVPN non-DF (Designated Forwarder) filtering we need to be able to
prevent decapsulated traffic from being flooded to a multi-homed host.
Filtering of multicast and broadcast traffic can be achieved using the
following flower filter:

 # tc filter add dev bond0 egress pref 1 proto all flower indev vxlan0 dst_mac 01:00:00:00:00:00/01:00:00:00:00:00 action drop

Unlike broadcast and multicast traffic, it is not currently possible to
filter unknown unicast traffic. The classification into unknown unicast
is performed by the bridge driver, but is not visible to other layers
such as tc.

Solve this by adding a new 'l2_miss' bit to the tc skb extension. Clear
the bit whenever a packet enters the bridge (received from a bridge port
or transmitted via the bridge) and set it if the packet did not match an
FDB or MDB entry. If there is no skb extension and the bit needs to be
cleared, then do not allocate one as no extension is equivalent to the
bit being cleared. The bit is not set for broadcast packets as they
never perform a lookup and therefore never incur a miss.

A bit that is set for every flooded packet would also work for the
current use case, but it does not allow us to differentiate between
registered and unregistered multicast traffic, which might be useful in
the future.

To keep the performance impact to a minimum, the marking of packets is
guarded by the 'tc_skb_ext_tc' static key. When 'false', the skb is not
touched and an skb extension is not allocated. Instead, only a
5 bytes nop is executed, as demonstrated below for the call site in
br_handle_frame().

Before the patch:

```
        memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
  c37b09:       49 c7 44 24 28 00 00    movq   $0x0,0x28(%r12)
  c37b10:       00 00

        p = br_port_get_rcu(skb->dev);
  c37b12:       49 8b 44 24 10          mov    0x10(%r12),%rax
        memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
  c37b17:       49 c7 44 24 30 00 00    movq   $0x0,0x30(%r12)
  c37b1e:       00 00
  c37b20:       49 c7 44 24 38 00 00    movq   $0x0,0x38(%r12)
  c37b27:       00 00
```

After the patch (when static key is disabled):

```
        memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
  c37c29:       49 c7 44 24 28 00 00    movq   $0x0,0x28(%r12)
  c37c30:       00 00
  c37c32:       49 8d 44 24 28          lea    0x28(%r12),%rax
  c37c37:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
  c37c3e:       00
  c37c3f:       48 c7 40 10 00 00 00    movq   $0x0,0x10(%rax)
  c37c46:       00

#ifdef CONFIG_HAVE_JUMP_LABEL_HACK

static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
{
        asm_volatile_goto("1:"
  c37c47:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
        br_tc_skb_miss_set(skb, false);

        p = br_port_get_rcu(skb->dev);
  c37c4c:       49 8b 44 24 10          mov    0x10(%r12),%rax
```

Subsequent patches will extend the flower classifier to be able to match
on the new 'l2_miss' bit and enable / disable the static key when
filters that match on it are added / deleted.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---

Notes:
    v2:
    * Use tc skb extension instead of adding a bit to the skb.
    * Do not mark broadcast packets as they never perform a lookup and
      therefore never incur a miss.

 include/linux/skbuff.h  |  1 +
 net/bridge/br_device.c  |  1 +
 net/bridge/br_forward.c |  3 +++
 net/bridge/br_input.c   |  1 +
 net/bridge/br_private.h | 27 +++++++++++++++++++++++++++
 5 files changed, 33 insertions(+)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 5951904413ab..e2f48ddb2f7c 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -330,6 +330,7 @@ struct tc_skb_ext {
 	u8 post_ct_snat:1;
 	u8 post_ct_dnat:1;
 	u8 act_miss:1; /* Set if act_miss_cookie is used */
+	u8 l2_miss:1; /* Set by bridge upon FDB or MDB miss */
 };
 #endif
 
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8eca8a5c80c6..9a5ea06236bd 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -39,6 +39,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	u16 vid = 0;
 
 	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
+	br_tc_skb_miss_set(skb, false);
 
 	rcu_read_lock();
 	nf_ops = rcu_dereference(nf_br_ops);
diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 84d6dd5e5b1a..6116eba1bd89 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -203,6 +203,8 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
 	struct net_bridge_port *prev = NULL;
 	struct net_bridge_port *p;
 
+	br_tc_skb_miss_set(skb, pkt_type != BR_PKT_BROADCAST);
+
 	list_for_each_entry_rcu(p, &br->port_list, list) {
 		/* Do not flood unicast traffic to ports that turn it off, nor
 		 * other traffic if flood off, except for traffic we originate
@@ -295,6 +297,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 			allow_mode_include = false;
 	} else {
 		p = NULL;
+		br_tc_skb_miss_set(skb, true);
 	}
 
 	while (p || rp) {
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index fc17b9fd93e6..c34a0b0901b0 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -334,6 +334,7 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
 		return RX_HANDLER_CONSUMED;
 
 	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
+	br_tc_skb_miss_set(skb, false);
 
 	p = br_port_get_rcu(skb->dev);
 	if (p->flags & BR_VLAN_TUNNEL)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 2119729ded2b..a63b32c1638e 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -15,6 +15,7 @@
 #include <linux/u64_stats_sync.h>
 #include <net/route.h>
 #include <net/ip6_fib.h>
+#include <net/pkt_cls.h>
 #include <linux/if_vlan.h>
 #include <linux/rhashtable.h>
 #include <linux/refcount.h>
@@ -754,6 +755,32 @@ void br_boolopt_multi_get(const struct net_bridge *br,
 			  struct br_boolopt_multi *bm);
 void br_opt_toggle(struct net_bridge *br, enum net_bridge_opts opt, bool on);
 
+#if IS_ENABLED(CONFIG_NET_TC_SKB_EXT)
+static inline void br_tc_skb_miss_set(struct sk_buff *skb, bool miss)
+{
+	struct tc_skb_ext *ext;
+
+	if (!tc_skb_ext_tc_enabled())
+		return;
+
+	ext = skb_ext_find(skb, TC_SKB_EXT);
+	if (ext) {
+		ext->l2_miss = miss;
+		return;
+	}
+	if (!miss)
+		return;
+	ext = tc_skb_ext_alloc(skb);
+	if (!ext)
+		return;
+	ext->l2_miss = true;
+}
+#else
+static inline void br_tc_skb_miss_set(struct sk_buff *skb, bool miss)
+{
+}
+#endif
+
 /* br_device.c */
 void br_dev_setup(struct net_device *dev);
 void br_dev_delete(struct net_device *dev, struct list_head *list);
-- 
2.40.1

