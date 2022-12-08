Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D046472ED
	for <lists.bridge@lfdr.de>; Thu,  8 Dec 2022 16:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6902A41942;
	Thu,  8 Dec 2022 15:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6902A41942
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=WbO0U13G
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J0uIN1QaHe-C; Thu,  8 Dec 2022 15:29:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B2CEF41944;
	Thu,  8 Dec 2022 15:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2CEF41944
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5A42BC007C;
	Thu,  8 Dec 2022 15:29:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29A7AC002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A683541944
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A683541944
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zypTzJx8Z2qc for <bridge@lists.linux-foundation.org>;
 Thu,  8 Dec 2022 15:29:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A96B641940
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on20629.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8c::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A96B641940
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gvSLn4xYkT/twtGRQJPSFTPJdUB/x4RL9muoTqhHDa1NnY19oALGiYlB9pOuG8LvBXUR2tBesHc6qutR28pDGAxu+bz0TY+2RvjSVoCziA3XkKkXPWUoOK8jl2eA/t4QIOPMc18XF3OSbqUCdCq1GmQO74obGS9j2k8jqjrzOBoOQQ7K0xaWmwNtTVzY/Cp9NUgdJcqj294rIqWk7iyIDlZ66sY/zsGUVs9y7BbpN85Oqd57vIYW5gDkrU7fSJeMeiRQ70d85kp8nGxjZaqXWCk6uURON/YXGKlh/JNdBKCBclyLHp1RiLkapvPr3z6nOCZrh7eLIUb9NS/z0fgEdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wOZExATRF4+USKA0DlWjLy2NSrwE0vQTjwz2rrwFRqo=;
 b=cXObwVTg/MS8t0BO6bv4aUz8dklFhAN+cBuvcxcNGImSgjIEJhUN82YEE3nN17ERxGxt4LZx5yp5zCeKA9FH/FxupwRT/Ynvh2YtAlJs4GkMlpM3HZuU5n1pjPSkZxQsL26a8QdIVdHloU0kbqlDvjlkTR659dnv7lWFkd64dH/p46yvrP0ktfeLKr/s+2K0+Af35bK+uU1KAeaoyMWspiFnczJVlzo72GLHkXlM1h8lbr1Uy2K0InSMZU+xUQNwtjlSI9Ak2F+ak2CylFgUEkcH0GnAdwRHA+zLyxY84CXT3fxr+29z9UDSQbC3HWXnPUozzvaiE/0BJey5ivdA3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wOZExATRF4+USKA0DlWjLy2NSrwE0vQTjwz2rrwFRqo=;
 b=WbO0U13G/2/vLLg73TV+UaIUjCS+i0/SeiyIOUN6CuLq6E437oCk1Pc1gZAE4D3N44Wf4vG6gkVKsR+YhcFdHqO2KRpjGfEcm4U2rZAHozgzwE2gYskzHXV+buSGkvBDdnT1xjSh1YNZaEExHoGRMfJ7XsE5HgVdip0Qbn9YHw3UfhPlVh6UlnIxH7bcPwMp24xR6hyccguL+87kjXbfkSZvxJhebhfKu4dPESBMo49/xtSb1f6lrouPISwYWsq+XNCIp5vf8S8aZRbmoTa1SnHWlRnowWdQyhP9ckrW0cxLY8O2QiB/H/jfLCAXphXk7JjwqiwxreyffAkqmVHJqA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by IA0PR12MB8207.namprd12.prod.outlook.com (2603:10b6:208:401::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Thu, 8 Dec
 2022 15:29:23 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:29:23 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  8 Dec 2022 17:28:29 +0200
Message-Id: <20221208152839.1016350-5-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208152839.1016350-1-idosch@nvidia.com>
References: <20221208152839.1016350-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR08CA0199.eurprd08.prod.outlook.com
 (2603:10a6:800:d2::29) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|IA0PR12MB8207:EE_
X-MS-Office365-Filtering-Correlation-Id: 430b382f-7c60-46f0-f5b3-08dad930fbb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dhMrLCjpfRDSVcbyv5h0mcqlO2+57wkUQoBJlpZX1LsKjcCvdb34quGafQ8eGO9m8mLnU8vnGV0aGUPVKvE9NtdiZ6XpjyKRlxazfojnBBdalKour7lLhkeNcfPoUfwl/+QLKBEqIwdJI1msVNLLGJjjQFIk4Ba6ujufShjtw3h7EmCgbqr2cLojdFbnNBjOeeEA2GcSN3Fxl7H9yTy589FfDaWCTZgakbyp8tBMNEjFYgtIrP+LLURMdOaPZREUnFqa8Ph/5RWv7/zTtRKi3SYzBQhW5GVdmucFfugyee9kCmtjHB/4AtzPr8CAAG45gDoJzeLzpCyeS2vlA56R0i7WPJ8h9UaZtoN5TcfGyHHHXJvsualk+lF8Lf2gNYAqJs3AyBlMzpin9loIaGu1+OFTjbW+Wc293xsnAJg9JIY5DtCKZJLY6Ade1evmpyu0mBQ1ag4KlnKBJWcKa/LOOabCHcvmppMR3JLxtColSJOU5K8T/ArotyBpBx1iKbO/FRezFnjNf408wTkEFkCCO2CT8WMVNEuhxp+1VKofm9PFiWJGCeS09ZArIFMj+RY6pk+ay7PcvGgT2Z7Xx7rwc1DFczSIc2/hcS8zZs24YsOz2aOMMuju3J1zxR9NJ7XARZkjFeIBnQLwMcX0SGQFBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199015)(2906002)(83380400001)(41300700001)(36756003)(1076003)(186003)(86362001)(5660300002)(38100700002)(8936002)(316002)(6486002)(6512007)(478600001)(26005)(66476007)(2616005)(6506007)(107886003)(4326008)(66946007)(66556008)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GnsTj4YRPaWePZqzMVv0KCE4F9OaSDzQa6zDqOmlwgxB/r3fIFcA/YoGqSo/?=
 =?us-ascii?Q?UO6Q4ecBKxsI6ywECIOQT389c1bUUH/F9GcpXhUsk8RcRCkggHxRuWRmcf0f?=
 =?us-ascii?Q?Bpk01+7sUdbwI9sJdSnAHEaJvR50N2M8z26NTA5hI6FHh3TPttssrK2kMKCI?=
 =?us-ascii?Q?eVSrEWFtMNR68VQZfyX9sLfJy5ujs7VwxqPkb2BwNfQt9QEJuHq3qwEwunAi?=
 =?us-ascii?Q?a4DhPSUr9jIdU1wnxLSxxt58X1E7wcBYAUsCJFusdxOA2lze7fhzIUU5UxAv?=
 =?us-ascii?Q?p6IiE6kAGysbb8JaSGXPB9CV3Wz7llBq1UoZzdwEfN117RUwPigxl5lvNwSU?=
 =?us-ascii?Q?0H4/w6I3LCcBZX8DxjqjeBnfZg3z+h0H8tHzSTRbq3aqfreChvMGExt+AKGT?=
 =?us-ascii?Q?ZZaNF/aBYpnOGAwXi2WisW15GkLiOu01Uoj0ySauu0IUpPQIwSJ64932rmQ0?=
 =?us-ascii?Q?XpsLNE5sVD6DX258KHNtbwmh4qJSXjwbjItsnj6JKFKuX1ChnTKk9S4U9GgR?=
 =?us-ascii?Q?B/qnN2khACDLSsToqhRWEyiKXuvTXaVk/S/hIAekFZVtqunwx9tSXm313gXz?=
 =?us-ascii?Q?PYgA1ez+XtF4ea/7LvM6w5rIUXwt0b/Wi/bNoqEZQEvf41XfvlnBv0L16ns5?=
 =?us-ascii?Q?FIW4h9FOLfitBU26SrQO02tn96EhiWxzEpu+D0Ng7656jylS1L4+KZl8+jfL?=
 =?us-ascii?Q?tO9T38wwLLpUdD1GU2Kxfv0YVnZz9cVdqkL0MazwKsSqzwEhadBRtzAwcaGz?=
 =?us-ascii?Q?aYsFZNoMF7pxNBAe2sM9ERtX/Cr7Dyesak2ecpakltGkO4FJr1Zl4tWL6a7Q?=
 =?us-ascii?Q?Sf7s+J5+wG8/zQT9CK6mNVQrbnkFf7UkqSyeraEWrTMLWajuBZ28fuMEfbNk?=
 =?us-ascii?Q?ab6L6nA4dDVVVVylxqXPAKG30R3HzsIbknh0XzYWTG3o/GiFCKfSYALRmY2r?=
 =?us-ascii?Q?R3DaeVUd77Q2I8uXZ/ytowfTN14O2qY2UzFLKQDwxdJJLKDH0aZtYY27WfQL?=
 =?us-ascii?Q?a3hm5VD6YTZBvzC1GHGW22x6NQi0wgoktUIs0qVzIu4mx4GRYKrnoFMesE2v?=
 =?us-ascii?Q?hbr+gyldhe1767mEf+Tx20/LqdvDxi8Q0Mc5v4Xhxw65L7dLEc71Z0ShA/F2?=
 =?us-ascii?Q?OsUAk8MhK2uXE/7tHJ791xO0iUge+IDH0Tapwlh4reo1aRSjTI/DuQHF9ci9?=
 =?us-ascii?Q?tuJNh27I7nVLhw28qJoeA04EtVOztCavc3Wj2koO2OTm/EfOFjzYgHgivFXh?=
 =?us-ascii?Q?qRWFzM8XDF9RkUGB1IKKGUAU3+xLjgJ13y5FDky+VFjeKgQsl+iAphpDeY4Z?=
 =?us-ascii?Q?SRwXpn6gSmLOZdKN7Zeen7TiACuUsazMIuHAptUpFQZ1Hxg0govB3KEOYkP+?=
 =?us-ascii?Q?G1iOhWfnOrsQGekgi4/AiJ2/8LoBuN3s7InTurX9qI2JOs6YBW6VhDg8PTOG?=
 =?us-ascii?Q?ywdk+Jpgwd2MBvkkaq+NE+Hc/b1QsspokZKaG5FX0e0bBzp7hmFKMjbnmqvR?=
 =?us-ascii?Q?PqjfBY3G9mVrqLMSiljEOv1UwqJAbkKYxA+PQsuthZYUnfezi79WS065EB8k?=
 =?us-ascii?Q?IT42ELwLp7hGQrivKQsBsR7nuyHb8UiHv4e069rD?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 430b382f-7c60-46f0-f5b3-08dad930fbb7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 15:29:23.3640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y7F5hv2APn92LPgBeqJfFLdcoWhKzcmCgOytRSGSuAiYqAjbEbUSsIY8psDm+aWpGHjKbP9lFFLD/23rq4WjSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8207
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 04/14] bridge: mcast: Add a centralized
	error path
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

Subsequent patches will add memory allocations in br_mdb_config_init()
as the MDB configuration structure will include a linked list of source
entries. This memory will need to be freed regardless if br_mdb_add()
succeeded or failed.

As a preparation for this change, add a centralized error path where the
memory will be freed.

Note that br_mdb_del() already has one error path and therefore does not
require any changes.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index fcdd464cf997..95780652cdbf 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -1053,28 +1053,29 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (err)
 		return err;
 
+	err = -EINVAL;
 	/* host join errors which can happen before creating the group */
 	if (!cfg.p && !br_group_is_l2(&cfg.group)) {
 		/* don't allow any flags for host-joined IP groups */
 		if (cfg.entry->state) {
 			NL_SET_ERR_MSG_MOD(extack, "Flags are not allowed for host groups");
-			return -EINVAL;
+			goto out;
 		}
 		if (!br_multicast_is_star_g(&cfg.group)) {
 			NL_SET_ERR_MSG_MOD(extack, "Groups with sources cannot be manually host joined");
-			return -EINVAL;
+			goto out;
 		}
 	}
 
 	if (br_group_is_l2(&cfg.group) && cfg.entry->state != MDB_PERMANENT) {
 		NL_SET_ERR_MSG_MOD(extack, "Only permanent L2 entries allowed");
-		return -EINVAL;
+		goto out;
 	}
 
 	if (cfg.p) {
 		if (cfg.p->state == BR_STATE_DISABLED && cfg.entry->state != MDB_PERMANENT) {
 			NL_SET_ERR_MSG_MOD(extack, "Port is in disabled state and entry is not permanent");
-			return -EINVAL;
+			goto out;
 		}
 		vg = nbp_vlan_group(cfg.p);
 	} else {
@@ -1096,6 +1097,7 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 		err = __br_mdb_add(&cfg, extack);
 	}
 
+out:
 	return err;
 }
 
-- 
2.37.3

