Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B99F17148D6
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 13:50:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D893F41DB8;
	Mon, 29 May 2023 11:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D893F41DB8
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=i2MFec74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rkyfG29P_4pI; Mon, 29 May 2023 11:50:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BE93941DE0;
	Mon, 29 May 2023 11:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE93941DE0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 928ECC0089;
	Mon, 29 May 2023 11:50:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0650C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D1B640BB7
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D1B640BB7
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=i2MFec74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SlZ5t-5HguML for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 11:50:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7407940B74
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on20622.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7ea9::622])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7407940B74
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYE8j1HH4ix9hisSAR6j5e6eTqRd+NHVDWW1dVndL9WIyLmulXNmPNJ9Dl5JgLxAeNMT/BYYOWR7WN6/nsPK8pAw3zeNxSvc0yJ5LcXS7+bI/y6vvvQ5DVIoP1uia+9H30DTuyl1RGO4dPyOZdtZqrpEycYamioF2xDgXUV0fQYCwn37G0OzGIlMXTfwe5CZXgplBKs6SJ0Kpi8VakgtxobWqYe1nXrdzUPklOsXh/UeTohLD5L0usjSIhcfl7dUXerCCBt5EOlkHqlNqM51N0rZ+nT1ESAeaB+Fnn2nknI+aGvjSZZ9zLDQcVdS3x4rRtcxEyPVx+wqbFE3JVDbNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vc5/tMt9sFwrCWq6+YtiD/d1QZ16Bt400idyZhPc9A=;
 b=YKT94+z/BcecxRohxBQulsh+x9RnDgnImqiJLTzv+/vd/A0D04kFXn7SDcHMOasBT1EHU2FBCcRRrpo8DZnObzJXNKsTo6qNhJZD8ubNtK6fO0Mv4o1yfYcxWFfR3Oqt/nWL2sJlj+E1OoipG3kPYXiNPdbu6SWKVmK/GgR3H2PFz3u1Xy4dEdxs4G/BBDgKeCnV5QWGIl2kzCtir6lNkO4zENWA42WWcfktAXmVkwLFVoEyBV5P5d6Io75RGL5QkThyBuOJtcrEwwvV0038o2AAZpF6KCqylD0K2J1sJeSfqhkivA3O6NvhgiVhwX9MT6lSE6RmxAnCEuFthzCFBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5vc5/tMt9sFwrCWq6+YtiD/d1QZ16Bt400idyZhPc9A=;
 b=i2MFec745JGKMBK8ultW23XMD0DZo4Av+wpan+mRmvqnje8U4DnmJIH+HFfBgGuZsTRAtTfH9eMtiqTVxPW3BB0EWKqVkTgQuI+/322XmwvP5ZIyBLLlQnWvm2iy8uY1g1gFG5WRYnYq5ruQwgn5ufoJ3jkX4OASsE9TDzJ8UFOseSqttz7gyWUD1UWFjzeQj9FQeWPMZY+x65FU83L7mFoh+rNRuGpi6PRzHB1X089kEb/q7lWTUHYh+HmHaluD4aDGa3jeD2KQerHmqv7nx4IdNIhDhLztSNHoVdVWgD6ZZ+jZ7UiGILz3dGjp4gDm4AzN1PkWGqql0AfWJslAHA==
Received: from DM6PR05CA0049.namprd05.prod.outlook.com (2603:10b6:5:335::18)
 by IA0PR12MB8301.namprd12.prod.outlook.com (2603:10b6:208:40b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 11:49:56 +0000
Received: from DM6NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:335:cafe::20) by DM6PR05CA0049.outlook.office365.com
 (2603:10b6:5:335::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.21 via Frontend
 Transport; Mon, 29 May 2023 11:49:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT036.mail.protection.outlook.com (10.13.172.64) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.21 via Frontend Transport; Mon, 29 May 2023 11:49:56 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 29 May 2023
 04:49:43 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 29 May 2023 04:49:37 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 29 May 2023 14:48:30 +0300
Message-ID: <20230529114835.372140-4-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DM6NAM11FT036:EE_|IA0PR12MB8301:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a285fc5-147c-44a7-d836-08db603ad2fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3fNI5GGrYE2SKsHWHWNsHxNazYsjfr/u2DFt2vjgnHrpDlSZp1OP1aDuMuZkMj6oUKQA8+cPOw7OWiyv9Ph4TMEaXUvfdiZBmglKevjXyu7MyJY3r7t5E3SVXTp/Ml46NzGHytSCosk8kxlBsevsrdNoAdxlDHQW5oN8jDUYbKlNNZTFw7h3FlC2naIRY3Ji+qzYYOjkoEshxzvZU6pni4XTkkuWOucqfrgPFn7fmPRgKB9mEzaG2NwdE5HU0O6AoUv2Cyt4pFgm4HQ9k1cWuKiboRV05Fo/XO+9EKrwtdQvVPDdtwFxOnwumATPSJBbzjt8UzzDNN0+SKKZlhzYnxriSlftDF4YtNCt7VWerjtzdm642SxdRjQLw3ajIqzZCPfX69vc8AOu7pyrivqnKv4jRDz/TkIwT5E2Pco0uHWj2rvigJqOt2JitR+sBgYgOR8dRSM+0NmE53EUvKjLuNxX1SejPGH0TJDvS0dsVqfcVVDVS4oyEi9woPtS5creC5xX97xkp6BNMNLk1HUYNkAyBypNUygZDuR90Az/Rkv9yznCJGM0yt63/zMpN7XqQqEDgLTf+yKm5WNaWgU9E8Q4aQXrP37PcUdT32LQSeSvFGUVn160p/HkXXQS4gcueeNAjd2XGzOJKeQCcaz0RIYAMYSDcHyQZAxHkBhsUG1K0Rf6RACMJdswS0lkYeAssGlz8x3kKnKqWju+zbwD4KFIsd81V4RgY/dQNjvozpfuiLqEgIiF0At1jkHQYgsk
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(136003)(396003)(376002)(346002)(451199021)(40470700004)(46966006)(36840700001)(26005)(1076003)(2906002)(6666004)(316002)(186003)(16526019)(40480700001)(40460700003)(5660300002)(107886003)(41300700001)(36756003)(7416002)(8676002)(8936002)(478600001)(82740400003)(7636003)(36860700001)(356005)(54906003)(426003)(336012)(82310400005)(86362001)(110136005)(4326008)(2616005)(47076005)(70586007)(70206006)(83380400001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 11:49:56.5715 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a285fc5-147c-44a7-d836-08db603ad2fd
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT036.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8301
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com,
 razor@blackwall.org, roopa@nvidia.com, claudiu.manoil@nxp.com,
 Ido Schimmel <idosch@nvidia.com>, UNGLinuxDriver@microchip.com,
 edumazet@google.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 3/8] net/sched: flower: Allow matching
	on layer 2 miss
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

Add the 'TCA_FLOWER_L2_MISS' netlink attribute that allows user space to
match on packets that encountered a layer 2 miss. The miss indication is
set as metadata in the tc skb extension by the bridge driver upon FDB or
MDB lookup miss and dissected by the flow dissector to the
'FLOW_DISSECTOR_KEY_META' key.

The use of this skb extension is guarded by the 'tc_skb_ext_tc' static
key. As such, enable / disable this key when filters that match on layer
2 miss are added / deleted.

Tested:

 # cat tc_skb_ext_tc.py
 #!/usr/bin/env -S drgn -s vmlinux

 refcount = prog["tc_skb_ext_tc"].key.enabled.counter.value_()
 print(f"tc_skb_ext_tc reference count is {refcount}")

 # ./tc_skb_ext_tc.py
 tc_skb_ext_tc reference count is 0

 # tc filter add dev swp1 egress proto all handle 101 pref 1 flower src_mac 00:11:22:33:44:55 action drop
 # tc filter add dev swp1 egress proto all handle 102 pref 2 flower src_mac 00:11:22:33:44:55 l2_miss true action drop
 # tc filter add dev swp1 egress proto all handle 103 pref 3 flower src_mac 00:11:22:33:44:55 l2_miss false action drop

 # ./tc_skb_ext_tc.py
 tc_skb_ext_tc reference count is 2

 # tc filter replace dev swp1 egress proto all handle 102 pref 2 flower src_mac 00:01:02:03:04:05 l2_miss false action drop

 # ./tc_skb_ext_tc.py
 tc_skb_ext_tc reference count is 2

 # tc filter del dev swp1 egress proto all handle 103 pref 3 flower
 # tc filter del dev swp1 egress proto all handle 102 pref 2 flower
 # tc filter del dev swp1 egress proto all handle 101 pref 1 flower

 # ./tc_skb_ext_tc.py
 tc_skb_ext_tc reference count is 0

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---

Notes:
    v2:
    * Split flow_dissector changes to a previous patch.
    * Use tc skb extension instead of 'skb->l2_miss'.

 include/uapi/linux/pkt_cls.h |  2 ++
 net/sched/cls_flower.c       | 30 ++++++++++++++++++++++++++++--
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index 648a82f32666..00933dda7b10 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -594,6 +594,8 @@ enum {
 
 	TCA_FLOWER_KEY_L2TPV3_SID,	/* be32 */
 
+	TCA_FLOWER_L2_MISS,		/* u8 */
+
 	__TCA_FLOWER_MAX,
 };
 
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index 9dbc43388e57..04adcde9eb81 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -120,6 +120,7 @@ struct cls_fl_filter {
 	u32 handle;
 	u32 flags;
 	u32 in_hw_count;
+	u8 needs_tc_skb_ext:1;
 	struct rcu_work rwork;
 	struct net_device *hw_dev;
 	/* Flower classifier is unlocked, which means that its reference counter
@@ -415,6 +416,8 @@ static struct cls_fl_head *fl_head_dereference(struct tcf_proto *tp)
 
 static void __fl_destroy_filter(struct cls_fl_filter *f)
 {
+	if (f->needs_tc_skb_ext)
+		tc_skb_ext_tc_disable();
 	tcf_exts_destroy(&f->exts);
 	tcf_exts_put_net(&f->exts);
 	kfree(f);
@@ -615,7 +618,8 @@ static void *fl_get(struct tcf_proto *tp, u32 handle)
 }
 
 static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
-	[TCA_FLOWER_UNSPEC]		= { .type = NLA_UNSPEC },
+	[TCA_FLOWER_UNSPEC]		= { .strict_start_type =
+						TCA_FLOWER_L2_MISS },
 	[TCA_FLOWER_CLASSID]		= { .type = NLA_U32 },
 	[TCA_FLOWER_INDEV]		= { .type = NLA_STRING,
 					    .len = IFNAMSIZ },
@@ -720,7 +724,7 @@ static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
 	[TCA_FLOWER_KEY_PPPOE_SID]	= { .type = NLA_U16 },
 	[TCA_FLOWER_KEY_PPP_PROTO]	= { .type = NLA_U16 },
 	[TCA_FLOWER_KEY_L2TPV3_SID]	= { .type = NLA_U32 },
-
+	[TCA_FLOWER_L2_MISS]		= NLA_POLICY_MAX(NLA_U8, 1),
 };
 
 static const struct nla_policy
@@ -1668,6 +1672,10 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
 		mask->meta.ingress_ifindex = 0xffffffff;
 	}
 
+	fl_set_key_val(tb, &key->meta.l2_miss, TCA_FLOWER_L2_MISS,
+		       &mask->meta.l2_miss, TCA_FLOWER_UNSPEC,
+		       sizeof(key->meta.l2_miss));
+
 	fl_set_key_val(tb, key->eth.dst, TCA_FLOWER_KEY_ETH_DST,
 		       mask->eth.dst, TCA_FLOWER_KEY_ETH_DST_MASK,
 		       sizeof(key->eth.dst));
@@ -2085,6 +2093,11 @@ static int fl_check_assign_mask(struct cls_fl_head *head,
 	return ret;
 }
 
+static bool fl_needs_tc_skb_ext(const struct fl_flow_key *mask)
+{
+	return mask->meta.l2_miss;
+}
+
 static int fl_set_parms(struct net *net, struct tcf_proto *tp,
 			struct cls_fl_filter *f, struct fl_flow_mask *mask,
 			unsigned long base, struct nlattr **tb,
@@ -2121,6 +2134,14 @@ static int fl_set_parms(struct net *net, struct tcf_proto *tp,
 		return -EINVAL;
 	}
 
+	/* Enable tc skb extension if filter matches on data extracted from
+	 * this extension.
+	 */
+	if (fl_needs_tc_skb_ext(&mask->key)) {
+		f->needs_tc_skb_ext = 1;
+		tc_skb_ext_tc_enable();
+	}
+
 	return 0;
 }
 
@@ -3074,6 +3095,11 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
 			goto nla_put_failure;
 	}
 
+	if (fl_dump_key_val(skb, &key->meta.l2_miss,
+			    TCA_FLOWER_L2_MISS, &mask->meta.l2_miss,
+			    TCA_FLOWER_UNSPEC, sizeof(key->meta.l2_miss)))
+		goto nla_put_failure;
+
 	if (fl_dump_key_val(skb, key->eth.dst, TCA_FLOWER_KEY_ETH_DST,
 			    mask->eth.dst, TCA_FLOWER_KEY_ETH_DST_MASK,
 			    sizeof(key->eth.dst)) ||
-- 
2.40.1

