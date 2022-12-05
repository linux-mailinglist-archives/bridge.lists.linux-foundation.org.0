Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 337626423BF
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 08:43:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 530CE60C18;
	Mon,  5 Dec 2022 07:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 530CE60C18
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=bpacDoNw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVN0Y3MjzpDA; Mon,  5 Dec 2022 07:43:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CAB2460BDA;
	Mon,  5 Dec 2022 07:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAB2460BDA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 96749C002D;
	Mon,  5 Dec 2022 07:43:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FF9DC002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 07:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FF0381423
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 07:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FF0381423
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=bpacDoNw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3XqCm_XKfJq for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 07:43:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF8E081417
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on20608.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8d::608])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF8E081417
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 07:43:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiMVrtcfpwPgw6aFFpsCCnPzOQrTGjXqNB+LbVuDed2uwOImmg0ByylVGfXsapf1LtXyWAp8hhzG1c68wGNYw7hNZYnCzJJ901jjkyIc3dyB2ac+kX/d+EoXF+hzG3Ei33/xzZda7VY+ck9ZTKAIVEcJtFp449ijXDyLSrOnBxWMvE22/mSiT5hy8TjLFLVGmEEAvIkfuaaXJj5E4wuC67za9UOZi1cpb7MO5diJfTVCpxldtZWpEtEshD5EagbvSabD7H3zzV7tWXhS2RkP2aOoNWxCXfdzRJxmaJHaSWU+vMOz+IUCAdgQyJS0zA9GHkOui105ZMRes0XkCHXweg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7KoE8HIJ1pu5VQO2POFsxCEe9tHwXnYbaiO6W4KMMA=;
 b=lr8d6SoMU2XKFHCMxvhz0+Aa3TgE4Z4RJRjrlYBwn0c70+VJ8SCaq9K5r3ydwrqdWwgO4WdAzUNUJqWfxzkafYg4bELHhdSV74vHgz/BUgDlH3ol4vcv0ie6Cb29wpZogMfnMoi5ChNJlvEZo6G0aBwUbenpXBZuf8zNneRWTKhp586YKWmS2EB/YatDmHnSnXFHZki3tFAm8m9brcN7q5soxRG6+RD002ziTN23PzI7PFUKJGUDf6SQHbOvR+banWgja9KypbU8XNmR92ldJom+mbS8TeNrtM+j7bPnWNLnLrukk+byBMxsTB+2IhWVe4VXBxDdteO5bHyzuXliIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r7KoE8HIJ1pu5VQO2POFsxCEe9tHwXnYbaiO6W4KMMA=;
 b=bpacDoNwCR+TJ3QvPi+vdVdgcpELh4uTMKuLF1AzUEYgXuOGP8HUwWMccdt4s9k4s4IMQ5FBVNXFDjcPaGxgbom5drTwfafIu5qNOmxRWP5BIp9XbBxu2QsYPW7suhZd/f9daRAzsnrZkq6kIMHGITk7SCLcax+tvlh6bIFFugw93cRN+LxDiAqkp+yrzkw2/wmtAbGWvO4WZAkj0oL+aeB8trUT/5vlY8Ezr3pUOrKQTl7NVlL2tQtMwivA2ISfpJX4v6i6IaxZsdxFpsBMd96ecPXyQvR8eC1GBEtcTciaI3n7/BxUrom4NIW+LBB9j4zF9mcFOu1hF2Qin/S65w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from IA1PR12MB6163.namprd12.prod.outlook.com (2603:10b6:208:3e9::22)
 by PH0PR12MB5607.namprd12.prod.outlook.com (2603:10b6:510:142::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 07:43:39 +0000
Received: from IA1PR12MB6163.namprd12.prod.outlook.com
 ([fe80::193d:487e:890f:a91d]) by IA1PR12MB6163.namprd12.prod.outlook.com
 ([fe80::193d:487e:890f:a91d%4]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 07:43:38 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Mon,  5 Dec 2022 09:42:47 +0200
Message-Id: <20221205074251.4049275-5-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221205074251.4049275-1-idosch@nvidia.com>
References: <20221205074251.4049275-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0340.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::16) To IA1PR12MB6163.namprd12.prod.outlook.com
 (2603:10b6:208:3e9::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR12MB6163:EE_|PH0PR12MB5607:EE_
X-MS-Office365-Filtering-Correlation-Id: d2333a78-adc4-4b9e-f6e2-08dad6946c55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A3b8Kr2U7FHsbOsBx1Fcvfsj5alvmo4j2rrngtMHIWOom+jVJ0m0MdMdsyCTdVIFLVRt3JpeCFwebigaD7AA2ANEzKsmlyN8HPGNC9G0KapBpMz+B6h7W0KI9efyhvNok7yvwpf+ZbDYwS9TEXRAfxl/L8XhuhKr5XQbIcfa6UQI7m8qZM9DaJPi5c1cus/sDbBF6MGp22z0884NoWyj/lSmaj2S5ySNMVuAuNn4v189N6loiag7oevX8QSXFPrE9Fk9laWHz1GPBbJzSfffAA12RL+Qxq/h04eS8T86MrwCY5puiPZX/sHNgtoZh8T0LOHwv+Y0AuKee+78P+tsljP8rxgPazEWrW+6gKzl2SvKSC/ElotNo3VN7QOpAzbJDdMNsTqkO8Ih1FIIlbLbJFjWWynfqkUCJ1ipM2rSHX3ZJbRJ8IlPdu2q4fs2+TRdwF65k2pVix41YC7s4JfondTOF2pYTbryOrVyDONXHULrmAruMQXJllW4DKPg7rUnm6EzYI7VrbY/wSF8AqNDg9HshLzTKV6VlZ+GXtWqE0XCvHlRzpO13jqBAGNO0Ca/9d4XyhiEs/qO4xSpoRxx1eLGwbSehCJXymCYJNmrnmmxP6QKd8otEOFz5IFq1pt02gfiYt7CSfa2HH7dXRDxXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR12MB6163.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199015)(36756003)(38100700002)(86362001)(5660300002)(2906002)(41300700001)(8936002)(4326008)(83380400001)(66476007)(66946007)(66556008)(478600001)(6486002)(316002)(2616005)(8676002)(6666004)(107886003)(1076003)(186003)(6506007)(26005)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6CqKdW2HHjRrXKt/XT1cA3+dhotSolzLnd2XTbsIVKgU16TtrpYGlwypyTVY?=
 =?us-ascii?Q?7K3TPYB0krTMkNNO1Bb6+aaBfXNgmEROs+JECWN05oh+nwkzeSBq9slu+9gM?=
 =?us-ascii?Q?OQgaNzmm/yqi0bxRr3NUVLZbiXx96qgyDYmfFTFo4h5C8tYRhzIdwZgeWjzG?=
 =?us-ascii?Q?A/C5UI6FXLUkNU2YpOafewLoHbzqMtk/6teJtxy1BCaFsMlC0CepJH1czjUU?=
 =?us-ascii?Q?bxy6w2yRkJaInm/NvEACGnwl6fU5pE7r5pGc91o3n7j6mRV7TMcZWEBvZy0x?=
 =?us-ascii?Q?iCziNTL7eG7jdn4LeQkVt5SRZzj/o6pLJK0jyKCMYAa/Xhrf43hBoJfuYMqi?=
 =?us-ascii?Q?Zi6HsPzhogmxcP628hPVJjTCkaEBUYL3C91UyaZfuilue8eLh+74gYbBkzhD?=
 =?us-ascii?Q?5CTcII2ujQQ4e9kOlKVKNbEZABRmtGD35OY11gz4FXtaRQk5RmA4y+rFVSSZ?=
 =?us-ascii?Q?thTObahd5kjQMQv9v6DdBeDF4UR1Whcb9Qx65ufntZl0GOnDtGvW7KGx1WhR?=
 =?us-ascii?Q?5pYywh/jBX7LmFY6n5ngioRl5hM7yWoqefoJRJxbdaLiO1tro4ANui5RDigR?=
 =?us-ascii?Q?5gWVUYO2MUTB1D/Zwn1VP1MqHl60WSciTzWxRsTM84KJoZy0osY5eES6nXnP?=
 =?us-ascii?Q?UQFKqKIBrfLjHWBJzipJA5B1Voh/3bMlNw7OQi5QE95Wj43ZW4qoqnVCj7QD?=
 =?us-ascii?Q?8km4N0CEFtWJ6e6mfP2RYYPaK3AD5UYQWMBm4ualRaS4wmvcm5sM976mKl01?=
 =?us-ascii?Q?By0vKNjsj0WxS1+QyBO7kVschfrKQyiwrCNbOrorWglmDgOSl2KB+hVdJgrF?=
 =?us-ascii?Q?NjSODvBzWvOdoicLwrnJywWz8Ff7h0DwurCVYLh9eifSWrTlXbDSpydthD2f?=
 =?us-ascii?Q?Jd8Dr7qhvjkjTt8AWtN+pP8oeN6B9PI6xUWipjBc4SiNELxDKklTf/9gNbHE?=
 =?us-ascii?Q?eAo2m8uA/9GN0OZW+17r2kYDUraRrj7OyeyC5f/alKijnXjvIEAoCdY8r6ZA?=
 =?us-ascii?Q?QYzTPW9Qs8697whGK73ZGB8ueRloiTk+6Z5vh7rcr+9+G9vxwjdozSxl3hZW?=
 =?us-ascii?Q?T03jEkBk29UmzhXnZcJfmxMgyr6PjlkR7NQmSf4IPJVwHATBETzdRGMrvJoO?=
 =?us-ascii?Q?lQyXYEWmaWIEdvQDpd9pnK7qaM9VRpJuxpzKmFuT+ZFwUqfTfSmH8KPYZhWq?=
 =?us-ascii?Q?bj5BnflnKjdOMa02lEavVrpIzUbX0uAoO2MgyE6kUTsaRJXOLPgk8gEnVka3?=
 =?us-ascii?Q?zZ+cQaYsHZpXdmVTvnouSxDOtbw9qxd53xprBgIbRkiZM7/0v71sSNMjr5Ju?=
 =?us-ascii?Q?O5Ast6iBB+fUD5PblS1llnNQK/ljR3itzvNuqiS1ECyi197P65XgFmom6c9C?=
 =?us-ascii?Q?nY14lquAB4jjN5qbZ3mNpKnmyIOwOWvX93Q5SSYdwzYKj2dTqstV7cDwMy6q?=
 =?us-ascii?Q?XzfldAx0SJoIAf4r6MxloqiEW21CYtLL8gbKz2zKw5+bB4kwgrjuQtghvHPG?=
 =?us-ascii?Q?LxR9vZFyVWMUSNAxOTtn8C84T9tkqBKyxaj5IKjUQa5rC1IWP/rDNc9rNqnA?=
 =?us-ascii?Q?ObzeUpr49tlf5rXChe5B8rdW1RiDF3rXmPjfdlot?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2333a78-adc4-4b9e-f6e2-08dad6946c55
X-MS-Exchange-CrossTenant-AuthSource: IA1PR12MB6163.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 07:43:38.8673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bolJnN3/1RjEuOHb5lCcxM8YvhP/+3rsESAwFVkhMdAHCMIlswt6S+CyZfRalzp+av4RzG5l1QobQolQWp69Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5607
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 4/8] bridge: mcast: Propagate MDB
	configuration structure further
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

As an intermediate step towards only using the new MDB configuration
structure, pass it further in the control path instead of passing
individual attributes.

No functional changes intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index cdc71516a51b..2f9b192500a3 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -959,17 +959,15 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	return 0;
 }
 
-static int __br_mdb_add(struct net *net, struct net_bridge *br,
-			struct net_bridge_port *p,
-			struct br_mdb_entry *entry,
+static int __br_mdb_add(struct br_mdb_config *cfg,
 			struct nlattr **mdb_attrs,
 			struct netlink_ext_ack *extack)
 {
 	int ret;
 
-	spin_lock_bh(&br->multicast_lock);
-	ret = br_mdb_add_group(br, p, entry, mdb_attrs, extack);
-	spin_unlock_bh(&br->multicast_lock);
+	spin_lock_bh(&cfg->br->multicast_lock);
+	ret = br_mdb_add_group(cfg->br, cfg->p, cfg->entry, mdb_attrs, extack);
+	spin_unlock_bh(&cfg->br->multicast_lock);
 
 	return ret;
 }
@@ -1120,22 +1118,22 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(cfg.br->dev) && vg && cfg.entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			cfg.entry->vid = v->vid;
-			err = __br_mdb_add(net, cfg.br, cfg.p, cfg.entry,
-					   mdb_attrs, extack);
+			err = __br_mdb_add(&cfg, mdb_attrs, extack);
 			if (err)
 				break;
 		}
 	} else {
-		err = __br_mdb_add(net, cfg.br, cfg.p, cfg.entry, mdb_attrs,
-				   extack);
+		err = __br_mdb_add(&cfg, mdb_attrs, extack);
 	}
 
 	return err;
 }
 
-static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry,
+static int __br_mdb_del(struct br_mdb_config *cfg,
 			struct nlattr **mdb_attrs)
 {
+	struct br_mdb_entry *entry = cfg->entry;
+	struct net_bridge *br = cfg->br;
 	struct net_bridge_mdb_entry *mp;
 	struct net_bridge_port_group *p;
 	struct net_bridge_port_group __rcu **pp;
@@ -1206,10 +1204,10 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(cfg.br->dev) && vg && cfg.entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			cfg.entry->vid = v->vid;
-			err = __br_mdb_del(cfg.br, cfg.entry, mdb_attrs);
+			err = __br_mdb_del(&cfg, mdb_attrs);
 		}
 	} else {
-		err = __br_mdb_del(cfg.br, cfg.entry, mdb_attrs);
+		err = __br_mdb_del(&cfg, mdb_attrs);
 	}
 
 	return err;
-- 
2.37.3

