Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D7C68AB7B
	for <lists.bridge@lfdr.de>; Sat,  4 Feb 2023 18:12:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AAB082053;
	Sat,  4 Feb 2023 17:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AAB082053
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Xpe75xFX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BHOTTgnuHuy3; Sat,  4 Feb 2023 17:12:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9322182058;
	Sat,  4 Feb 2023 17:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9322182058
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01140C0078;
	Sat,  4 Feb 2023 17:11:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42D7BC002B
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02DDE41B9C
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02DDE41B9C
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Xpe75xFX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLcTZFoFQ6Au for <bridge@lists.linux-foundation.org>;
 Sat,  4 Feb 2023 17:11:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9242D41B87
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::601])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9242D41B87
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:11:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQXPtR/YU0K3zY9wQtDOPzHHOqVrT9fIMB3BrFBlZTDDh9lghNT+l9rcumO5SvdPV/SAyexdTN8gQU7KHFLt/E5Batb3rIbuCMWPQ9iBbrBpyZ3Yp81PAcDuYNZEuvDN/xIPXZ4GBGZrplwOpyzYntkpZ0yz7WaUegZASXoruVGKUwj+6VF3uFJhSiaBFfYbx10k0dlxviUihWcgcQWRvDLtcTc+iaoToIfP2YDdKRQG6KzGM+FXuGebA3StRSaG1wAzK/lGwfu8Uo9vJ3gCm5mdkE+NQiHBsbw0jX5au0bHf87qqfYR9de3w7blfO4a3/uAccHVfrBUUWC4QoXlbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=REBoPD/3fQkhdNFrYHOPfbSU4VP8xl+1/rrOSS6EpiM=;
 b=As6vhzxWfh1LJHprse45sgMui96vqP+j6kTHjwBzz8jCzDpSDpXdGuyGQAmvYL5NSRqu7zfv/Bm87ByFAGB86fiMK28Xx+kAg1q0RqwyMp5fsmUTaUII/L5GBViH2NGKpfoT/6F5sqxywzMNJkKXUP5tk8WiTd3lvLRfBdreHqlUKK2zeaeT/6JZgW0Tr7MCIoNlBz3ooHHPoJexHrbe3AwpA9Pv9qmmunY6J6LJKs6LOykMvF5VhFxw5sGI62F3ahVsD/kTAtJ+ThUk8EIbpo+FEuS2FbKKOUU8i9R3Ag3x7MZhk0oLOz2d+cdc7sx7c9VPQxB3H6/tCI2MzfUuQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=REBoPD/3fQkhdNFrYHOPfbSU4VP8xl+1/rrOSS6EpiM=;
 b=Xpe75xFXp7TfciZj62RfnS5pOJlCDkoe7MrQ4MmSMTbacWdaOso8dwAcNtHWWYU144MuNNqOdM1L6O5TfXXHgdNFvCB2QKM+edQBVkKJMbnipr+gxQpKCjnDk+640ScMro6i6mvxqNOXGTt9pg7BBXLzL9kKGLWTz7nTByBqowg1BtTyrHNIPFJFdbW2enEm1hG8FzPTcowG0Di9nucHRiMYzpnBjd1mgBDptTktnGIjBu67vvNBfe6juOWIHvtZewWsv4lzQ71QAAArg5uEL0hL05z9VE+nC7phqjjBwzrHrTcHDeQpuq14AGTIml4cLbtvM5zEIRikH0XrrvmXJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SA3PR12MB7997.namprd12.prod.outlook.com (2603:10b6:806:307::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.31; Sat, 4 Feb
 2023 17:11:53 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.025; Sat, 4 Feb 2023
 17:11:52 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat,  4 Feb 2023 19:07:50 +0200
Message-Id: <20230204170801.3897900-3-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230204170801.3897900-1-idosch@nvidia.com>
References: <20230204170801.3897900-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR07CA0257.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::24) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SA3PR12MB7997:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a4eed0e-1d4c-41b8-2497-08db06d2e928
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CblcSWtyufgvS3iOU9E1Gsr9OGV+t74dKhsbIS9S9grepzSFAyHzGxKkMm7NqueHDGHFFSggoNkCX8AForWZlW2QOWaLFkpdVHirJXUv2coVj2Mnpszdir+awQK/qqS5YyrGczWH1kiDRsUMz97Sbqrs6BZaexDk9OlSSRGn1n7n36/75aLk+gX3Byt7x84ZD0s2XGrhJwcFOlv9MxfBpfcsWPjSMYTuku+y5sUdOe7NPdPiouVbM9PdlQ26jLdqeXggsbUmL3aHCGTUnnXycxRUaxfCmqUoSuMgoF5+zO25CdSlQ4kmmMO4BlxuY/lsez2fMOLbBODKSUfz32TjO5IITbM2ys7R108Va22bsoKka4lREpFROiZ09x6PmFMhZLUp4hIhEDLIhLFzk/1/mHkNW5sHfd5w3h0r4nCTCT//0J9Ta60sgmEzrP2TUySqbMJ+o83Z2bkZiINzYdA4TPGBESJadpNzs/qprSCsVr/rxvJXwq49ocRzaZwMyqQIGHYXoi8Z2KrP0HFfb/d9bX0+abUGco6hyEae6gthkhwNLTYHLAejFKNbJ3pq6vCrHuMHrkBIwUXTAs1arPHSmZMo2zrrsK1pbX0H9qamt49daoAEo4ANPojuN3g65PRKagxqMnKp/1kKMvmc/B3eng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199018)(8676002)(41300700001)(66556008)(316002)(66946007)(36756003)(66476007)(6486002)(1076003)(26005)(186003)(478600001)(6506007)(6512007)(4326008)(107886003)(38100700002)(2906002)(86362001)(8936002)(5660300002)(83380400001)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7d8DgBNvFJ7yv8aOs0TWnKuX7Kof8N52g3DVq/wZ1qEs8pNbsglSGDe1ivnb?=
 =?us-ascii?Q?dHlWb3FpWtS5CMsHIExNpWeFGfDmZlQ10tjfAkf5w730Yng6NM55NxDVwnQ+?=
 =?us-ascii?Q?4YP38oR7COyTnBVXC9UCPPnGUo9rPkFYkm31P4EniRO1ijVV7fglu+RI0Knv?=
 =?us-ascii?Q?77fhvZ6X6FkADcVM2uqiOcjj8gOBvswiKqsyLJMYQPIkXpoVK5HIuvRhDdSs?=
 =?us-ascii?Q?21Ks/Mikh1dv5n2YJVewwP21y6qai2i9qfuYnskLx2hsli21ISKSOH9i/yPn?=
 =?us-ascii?Q?okQtE0M5AgHssohcn2QKNsa9BPdB2kgqPGzZq89bNVSNOVv7vSv4o+VsU1Vk?=
 =?us-ascii?Q?mJIyxLTLV+BrLFprJkf4Yn6dgNonh75vQfzND1BXXBDMGsS8zRnZfIH1wh9Q?=
 =?us-ascii?Q?qZoPdNbzDaiHmzK+BLUMsEEArRhrG1K+/w912z3G7ObJYz+gdPbK7E+s8qYI?=
 =?us-ascii?Q?Y7K4dAy8CF3Pk+bMAmNyq9uXj9HMU+GFkCA7a6NzadoNCSYs9lTQi6A3eoHi?=
 =?us-ascii?Q?yMp1MQy5zpBWdmTvnOX3zN+qyzH6LDxpbjPwv/NITmtYDIKrHa5xryFswB+m?=
 =?us-ascii?Q?UblxTLWIrVZulLUYXoA0FXS59aHkRYr3hbjTLbbD+BB0cwsovXejN4OV5K/o?=
 =?us-ascii?Q?jaaEfvuiPz5P6pkOcvxMmx/n1nvgi3rSVbA61CSZjO/5Wcf3Bm5xPuZL8jJt?=
 =?us-ascii?Q?kr7YUlzgF7RXz5sqhztBn+LpjutZqOHlrem/Et/PcHswWVtRIOK0/hft+yLE?=
 =?us-ascii?Q?xISBL586tA3m3edSGKdEpd9dsjdyw8CZLtwePIyuadNLbeaA9W2kzPKBdwkh?=
 =?us-ascii?Q?zRUi8t22GjUEGuhL4RoL/pHNwTXn1jlNWCYPzJh/Y3Fln54G6WAYyiWfm0yC?=
 =?us-ascii?Q?Nam/D+d/0eaSiD3MaxIK5gNTHU9v9JuUQMy5nut6XF0xqRgVxqYc4iMXWENg?=
 =?us-ascii?Q?GT5fgN+VxiLKjWuEon+IuWbavuY78RgVrluKcYPtHapLhsoXCZJE+81X8o/x?=
 =?us-ascii?Q?/FHP4BBI/qqGJJFQFDzvKGjEEqo29QUP0vrN6g+T9yFPWefqc7zYK9kvTDPf?=
 =?us-ascii?Q?dHsSa2aRkhunLG18UrzFpm+NiBJhUrextNJyf6guRjzV2r65OpZZnGLdiu+z?=
 =?us-ascii?Q?nBv9/aUvfqyqAPbhzhRHUcF5Zsou/xhgYwNguOk9uzC+YitG+YmI0bO2dF8u?=
 =?us-ascii?Q?iTBIpbpETCd9K9IKFP4YCuO3sZs+g5KWhBuZusvsFHOVCjtAC/EJqF6rmaCP?=
 =?us-ascii?Q?2JGNHsAnllKREWK+zT6uW2lOhoRXKtkzET8xWdwGEKyxjru6/UOTNKVShuSV?=
 =?us-ascii?Q?3sNfehYhTNJvmr5ep9iSa1bT3RIqdB6YtKY5xU/9u8pQGbhnNReh7EMwWjWA?=
 =?us-ascii?Q?3kStjG0j3udgEsOdzvBKugPnlXMF1SYk4cHrPujs09+hnFUicYbCLAqMrcCg?=
 =?us-ascii?Q?JhWJCCMPnj2PRyRWLCxIBe5tsJo0aujPPtXXUSRor0q85KkUztkMf587pWtQ?=
 =?us-ascii?Q?y/rLVdjPdcS0DwxMCylWQqV3xs6c9/lSZsHPJWUCJNQWL13g+5WO8cuWVFFw?=
 =?us-ascii?Q?llfDM3I2PjxJ3rBO3Tvx80dOhq1RuIEud5wNPpMH?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a4eed0e-1d4c-41b8-2497-08db06d2e928
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2023 17:11:52.8772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6PFia00cxrq3wRHRQYvoRSOU2iDdwN6enMpgicnXNNeiuEqbteJxpnDz3ERXxGY22SwsA0JR1uPij6CjaK5sQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB7997
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 02/13] bridge: mcast: Remove pointless
	sequence generation counter assignment
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

The purpose of the sequence generation counter in the netlink callback
is to identify if a multipart dump is consistent or not by calling
nl_dump_check_consistent() whenever a message is generated.

The function is not invoked by the MDB code, rendering the sequence
generation counter assignment pointless. Remove it.

Note that even the function was invoked, we still could not accurately
determine if the dump is consistent or not, as there is no sequence
generation counter for MDB entries, unlike nexthop objects, for example.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index fc98c32e5894..e40a4c275d63 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -421,8 +421,6 @@ static int br_mdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 
 	rcu_read_lock();
 
-	cb->seq = net->dev_base_seq;
-
 	for_each_netdev_rcu(net, dev) {
 		if (netif_is_bridge_master(dev)) {
 			struct net_bridge *br = netdev_priv(dev);
-- 
2.37.3

