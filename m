Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E98F06FC007
	for <lists.bridge@lfdr.de>; Tue,  9 May 2023 09:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 733FD84506;
	Tue,  9 May 2023 07:06:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 733FD84506
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Xzz6k4Kp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uACCpVsV6Ey5; Tue,  9 May 2023 07:06:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 779B38454C;
	Tue,  9 May 2023 07:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 779B38454C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4C13CC008F;
	Tue,  9 May 2023 07:06:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0A6F7C008A
 for <bridge@lists.linux-foundation.org>; Tue,  9 May 2023 07:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD4B44025D
 for <bridge@lists.linux-foundation.org>; Tue,  9 May 2023 07:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD4B44025D
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Xzz6k4Kp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eopl77RYBCZb for <bridge@lists.linux-foundation.org>;
 Tue,  9 May 2023 07:06:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0100F408EF
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2061f.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::61f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0100F408EF
 for <bridge@lists.linux-foundation.org>; Tue,  9 May 2023 07:06:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFs8/rFZwxYqVM+Afb6o/Z6cKPgT13xa5M7zfBuNe2W1khiZD9CmMOYXQpujKzpMFmICHjYUGPhaskTDmPh84PSwQ7joG0KrV0GxrPoz21kIrRlKx5nJ7MZy7+DsWJ9mkKVK9e8CtIVLvQW4qGNS8F5UF6pPl3B7Ala/HdxRrSZ9jKro1t2I/WHR+g1OjmuYcPglzoBfsYaqzcDVb9h0vwwqzbqG/Cstqp3urPpsA+200XO7QBJuPFj9lNclDBcw79hgeAbsYieNqHLqdvA+u2iZultO8v8MWe6P6Lcq9BA2Ok6z7Evd0HxC1+FTH5Z+I1rujvWTPNdHxY6frTKyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+JC35ro7zE3aai5AM0voSy7JdBNhtLPukhKGob/b1U8=;
 b=KnV7e99/SEYbtD9mqVxxjHM0RyhCvPn6xkmE22poNgjeAc5wUgDkyib+rCWC2gOcQ/TlLRz1x2+a9litV+3a2lhiuR7OzxGgjURoXMeLrInyvesBQEm0nX0Nt3SFXdz2/HI6UXZo5IsomeQLmiKbFoz5QrFumP0b5R/E1NyrI/yVg0pEF15yyJLmFc41pOYIf0pWz6PG4fTj4JZStGBfKp43i4vU+YxeSA3sFvjc6wGdlz5Y733ml52mG28+VbV3o4BU2NvlBaPOczU3IYszHMvIo/rrT5u11NRFl2r6NOdMyr+WL3xt56toIcY4/JNYIiFWwHtJM6BzrzvSR7E3xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+JC35ro7zE3aai5AM0voSy7JdBNhtLPukhKGob/b1U8=;
 b=Xzz6k4KpR3vTW8H6Kezt8Zk6zNTiFJwH42z5yo4GUk3pbs4pLcDvwCsSi5eUp/WuQgz+kIDe+PhgA1h532JKPWK5Md9kcZoTgf3vjITjawNWOewP6EUWxiBk3UV9rRqpAuWaFFYw7zXbN5Tmhe8T7dXijqzryDbELs1HuV2PID7tDje0+KSYbFpTI72vmgmXzK5MV9FFXCdQBGph1b6ITtbCn+xS/+zt/NlA3q0e9XbyRUkkczJNx31LfX53RkMZbmdtlUzA3L1HDQP51a8pNe9TXRq/aZdNLTMVlbmih8o8iBjNhmcbycfLnv55tWk2hYl66ILh94diR/hurgUdCw==
Received: from DM6PR11CA0023.namprd11.prod.outlook.com (2603:10b6:5:190::36)
 by SJ2PR12MB7989.namprd12.prod.outlook.com (2603:10b6:a03:4c3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 07:06:09 +0000
Received: from DM6NAM11FT017.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:190:cafe::f0) by DM6PR11CA0023.outlook.office365.com
 (2603:10b6:5:190::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33 via Frontend
 Transport; Tue, 9 May 2023 07:06:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT017.mail.protection.outlook.com (10.13.172.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.33 via Frontend Transport; Tue, 9 May 2023 07:06:09 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Tue, 9 May 2023
 00:05:53 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.37) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Tue, 9 May 2023 00:05:50 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Tue, 9 May 2023 10:04:43 +0300
Message-ID: <20230509070446.246088-3-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230509070446.246088-1-idosch@nvidia.com>
References: <20230509070446.246088-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT017:EE_|SJ2PR12MB7989:EE_
X-MS-Office365-Filtering-Correlation-Id: 4af5a835-ed2f-4c38-c303-08db505bdd92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PybAgxlKQH0VjUZUMA3vOqEHBuNeJZBIJuvgJhkpxgOAiaTD/WqK4JrYiHOIael5Gz4dz7kQOKk/ovtN2WKzNT3UTH39CxKTdxNcT7Bg6UDnpRrNOvFCU1rPZbBL+S36Utj23B12obJwX278QVtajhyG65QG+9gp+eFw6dUcw/BdYSax8ctuU71JnutnpcFiUggOu2ddhc0HsnKdVIc+svSoZ8+srI6NTmujxQzXGWSRgGZqHaFXbI3tgpglDX0rhgV/TKxq+wXazEX5gqIMzxE7GL/Q85HBFWU1h1YUfiOgDN8V+w+STse35xUUyzd4ecUiZPK+tg2kWty6eqf03WHv2rGU5//KKn7dDZtdzRUP5PnFBqVUyNEd0ThSSqNjrGv5a7zOVOz4Ni7pvQ+Z5eRDYsdgiO4oZyKW+WhmQJQyURES+bk9Cqzj4LUCobSEehhSDt1K3cMOxXkrwDS8ZDS3vUKYMDUnioivWvooBdGKxVQeGIw3NrbcjWyQ+ezZjFV9Ngn4AQQDhI7gfBRNQn2ZBG7aMQwTSB44hUjrEyudowOsp1uduzButiyXeZSRFcsj+SpgZaZbGakNz3TaKauj+noYVTEyW8hGzqyx5x7zCR0Dgu8JgmtkFlq6FU5/zTBnkGoDtyzACUmIMvxZ9M+qzb5RctppLuOfHS7cjPfjYkphigJh4Uv8767zPpayMr5xYaSONfLC77z5MMoaRw==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(376002)(136003)(346002)(396003)(451199021)(40470700004)(46966006)(36840700001)(54906003)(86362001)(478600001)(110136005)(82310400005)(41300700001)(70586007)(316002)(70206006)(40460700003)(83380400001)(6666004)(36756003)(4326008)(8936002)(8676002)(7416002)(5660300002)(7636003)(82740400003)(356005)(107886003)(1076003)(26005)(186003)(16526019)(36860700001)(2906002)(336012)(426003)(47076005)(2616005)(40480700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 07:06:09.1279 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4af5a835-ed2f-4c38-c303-08db505bdd92
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT017.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7989
Cc: petrm@nvidia.com, jiri@resnulli.us, taspelund@nvidia.com,
 xiyou.wangcong@gmail.com, Ido Schimmel <idosch@nvidia.com>,
 razor@blackwall.org, jhs@mojatatu.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 2/5] net/sched: flower: Allow matching
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
set as metadata in the skb by the bridge driver upon FDB/MDB lookup
miss.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 include/net/flow_dissector.h |  2 ++
 include/uapi/linux/pkt_cls.h |  2 ++
 net/core/flow_dissector.c    |  3 +++
 net/sched/cls_flower.c       | 14 ++++++++++++--
 4 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
index 85b2281576ed..8b41668c77fc 100644
--- a/include/net/flow_dissector.h
+++ b/include/net/flow_dissector.h
@@ -243,10 +243,12 @@ struct flow_dissector_key_ip {
  * struct flow_dissector_key_meta:
  * @ingress_ifindex: ingress ifindex
  * @ingress_iftype: ingress interface type
+ * @l2_miss: packet did not match an L2 entry during forwarding
  */
 struct flow_dissector_key_meta {
 	int ingress_ifindex;
 	u16 ingress_iftype;
+	u8 l2_miss;
 };
 
 /**
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
 
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 25fb0bbc310f..3776c7bdd228 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -241,6 +241,9 @@ void skb_flow_dissect_meta(const struct sk_buff *skb,
 					 FLOW_DISSECTOR_KEY_META,
 					 target_container);
 	meta->ingress_ifindex = skb->skb_iif;
+#if IS_ENABLED(CONFIG_BRIDGE)
+	meta->l2_miss = skb->l2_miss;
+#endif
 }
 EXPORT_SYMBOL(skb_flow_dissect_meta);
 
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index 9dbc43388e57..4eb06c6367fc 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -615,7 +615,8 @@ static void *fl_get(struct tcf_proto *tp, u32 handle)
 }
 
 static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
-	[TCA_FLOWER_UNSPEC]		= { .type = NLA_UNSPEC },
+	[TCA_FLOWER_UNSPEC]		= { .strict_start_type =
+						TCA_FLOWER_L2_MISS },
 	[TCA_FLOWER_CLASSID]		= { .type = NLA_U32 },
 	[TCA_FLOWER_INDEV]		= { .type = NLA_STRING,
 					    .len = IFNAMSIZ },
@@ -720,7 +721,7 @@ static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
 	[TCA_FLOWER_KEY_PPPOE_SID]	= { .type = NLA_U16 },
 	[TCA_FLOWER_KEY_PPP_PROTO]	= { .type = NLA_U16 },
 	[TCA_FLOWER_KEY_L2TPV3_SID]	= { .type = NLA_U32 },
-
+	[TCA_FLOWER_L2_MISS]		= NLA_POLICY_MAX(NLA_U8, 1),
 };
 
 static const struct nla_policy
@@ -1668,6 +1669,10 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
 		mask->meta.ingress_ifindex = 0xffffffff;
 	}
 
+	fl_set_key_val(tb, &key->meta.l2_miss, TCA_FLOWER_L2_MISS,
+		       &mask->meta.l2_miss, TCA_FLOWER_UNSPEC,
+		       sizeof(key->meta.l2_miss));
+
 	fl_set_key_val(tb, key->eth.dst, TCA_FLOWER_KEY_ETH_DST,
 		       mask->eth.dst, TCA_FLOWER_KEY_ETH_DST_MASK,
 		       sizeof(key->eth.dst));
@@ -3074,6 +3079,11 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
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

