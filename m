Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F6F60C948
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 12:02:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F81F4089B;
	Tue, 25 Oct 2022 10:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F81F4089B
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=D11c5TkP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSjMkKKNTpeJ; Tue, 25 Oct 2022 10:02:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C91EF40897;
	Tue, 25 Oct 2022 10:02:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C91EF40897
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71EB1C002D;
	Tue, 25 Oct 2022 10:02:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 319AFC002D
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C524160BB1
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C524160BB1
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=D11c5TkP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w57cu4yuzLs3 for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 10:02:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03D5C60BA9
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2057.outbound.protection.outlook.com [40.107.244.57])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03D5C60BA9
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgqBJ6AZ5yHW5O0l7aI/RrVggZw+96UWy+s/wkmdG7HKrgHnazaGRRV5qNEqUHK/B8NoiMfJd/qxc0WWcZFP3qxNYAlvsN/ifdScpp1v9bN8iOhQT4ezAMuOWgT0FIw3pQJe2tEHifL0x4fc9yQKUVs4xx8ntp9e0+gihtFcZDMnBhdpli6zEecsmclM87kaw+CIIIF5P0LwGxQkI1C0j/i2BGa/h61RuK3RF/pNfBsiJIP+nD1OwWI3IPkwoSgMWjPx6CIGMTY2kj/Ldl4jLVw7d13K/p+k187pRciVss7odwVwSQKJtz/mFUeGu/0fDXQWyFWgESoqwPMo+jlXzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5RCBGhZYnZU96Kob2gAKPBYvz3k+hQiEoMRcPAQAhmY=;
 b=gICNfK10p5ePM+lRb33o7p5WcKfjvI0cARaZwdY5yjd8ICOiyxQ+z8Ucd8gPPm8djlnr3SsqHhGtQNpRa5jwTnbF7uIfLVIO06UOCCL8Ba2C6y/7R0lQ5vBroNNoDA7yyeVBU6X/54zmRKGzekRL0GGasmSouybpMPGy9zDBxOccdY6lE53Fn0YFAR1aKBOPSZA2I1CQ6usLYc03CS/A8rfoJ5HXxofRAAFGsOXrrf4mM5+qT2Zn+EWpyzJtnt9QRl5SgMvtwZjMoov2Tx+biJIxDqkN2uTR6Y4MM4P0SUQroQAvOmcZzRvvMAj34qSq3+fHEVSwb+FHar1qEXyzPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5RCBGhZYnZU96Kob2gAKPBYvz3k+hQiEoMRcPAQAhmY=;
 b=D11c5TkPChvkZRdkO67pgNYiZKiguQuGd4nLy6VxciwN/0HP/JKEMJiohIXgh1d6lZwb1dvmvM4emFKYa4iQqqTnIuJAteiOlqhS7AvDSgPEPweH8N4GuaZEjluSP037fy9a06P0FnXAHMuUP1yFmSJGPwtVY0XLZDARHvmN1CesNQbdXoD7f72KpTuqz9xtUJqrk561kYAnL40l0oTPhYrWVzTWWdXlykMkw4iO1+igf5k1YXY+YGSWAZQX8po5K7Ue/vvtROXydk0Yhe1OHkXmLKdB6qJoKU3J4n9/K9ufwmr7FDQIsmYhRlIeV8GgNCWi9h5o/eilsm0O5SognQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by MN2PR12MB4270.namprd12.prod.outlook.com (2603:10b6:208:1d9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Tue, 25 Oct
 2022 10:02:27 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5746.028; Tue, 25 Oct 2022
 10:02:27 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 25 Oct 2022 13:00:22 +0300
Message-Id: <20221025100024.1287157-15-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221025100024.1287157-1-idosch@nvidia.com>
References: <20221025100024.1287157-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR08CA0133.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::11) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|MN2PR12MB4270:EE_
X-MS-Office365-Filtering-Correlation-Id: 85efdc0f-8860-4015-0223-08dab67005cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uo17lgtUcVLFyDnqKwi6s5qybqI2hp2CjuQuZbYr241vcmh2+8E4FANG61ijfwYIm0YM6UbFdwGFTvmMsX1ZUM/7SE42xQxTASCZHPtgSt5+AfOGp0eIl+quXFNOn7L3Qnr+Ua/f2E+kNJrRJk6DbL32xfA5HJJN5ttf5vch0V+YDCciawaMCLmwGN1c4jnj5h80deXm+EmERlCSYvHomJxaOj1mTWWmZCo5X9lfKiuM7Mj7HYZvEtLyO4wIAafmH/2IdnyZTA0b/fxxJHJpnWCv6MFP3Yj5rSSmguu9GmfZIzs7jcPZHfoigO4FocrBBwByaB5329mHK4pZ5Zo5dmW7xoi3pvqV9KvXT0kmgJZVvR3GnR9GgZ3AcNUS6JFxZpcg0XNa+iYRIsVeVMQ9sGCWckCp+UNYEOPeF7K3e+9O9vniVyXurQN547Q+LlaE/t2pCULtprN6iK+6HyhgtJ+vIzdlR5hY8q4l8m4TUQKXsLYuUahgv8n0nEIu+bor+gav8sH1yE12R3BuTafp4RB57PoYPUDxEOFWPCcNYvaJ7eKNfwiPOVdqG23eLO3XBZ1GS2GY4xtdhBu0KwVM8sGmSCp3XaCxbQuxqM2gONVClvOXCf84GfpxiFWzrQ+8/CjE4j4gDXqzViTN84g628r1cz9izmcBb6zbLAQST3hOj4CxaX0etjm8qdOeTgCdlDcexGymH8g2uct0aIvjAsAOYu8V73AxVG5uHWX+O6FDs/VZjVU3F/zZ8QFn1wwW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199015)(36756003)(5660300002)(66476007)(66556008)(66946007)(7416002)(38100700002)(8936002)(86362001)(316002)(186003)(2616005)(1076003)(26005)(6512007)(6486002)(478600001)(2906002)(8676002)(41300700001)(4326008)(6506007)(6666004)(107886003)(473944003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n/FytcaMD35lYxZjFAMfPDI5rXw5SJSp5JDgtioNjEWqySEXAzE1aNUWYyLv?=
 =?us-ascii?Q?EapDHbu4knGNtVg9StBJevP7P5RtWMv8xmFW7VATch5UFlUr6e14E4s7VKvH?=
 =?us-ascii?Q?hfF8UDXBkF5bvUaJbPTI0BA61Kdyn3t7GnCUC0PFw4UaF/b7wwqlz61pL+t5?=
 =?us-ascii?Q?ZBsIwvWmKk9TrA9G2gLyfvP66Bk+qw3pCNRPprV22bSsL3jD6gTLZgTM8cYL?=
 =?us-ascii?Q?xqsqZj4AjAyVL+y7Ap6Ps9mTm3LIwylPJj4d1pzGYkKxQQGr4Y8pRp12GYAS?=
 =?us-ascii?Q?QPgrafj/RkjAAJiUyrgR97V9WfsgM2G9g45W65VKJoMMiClLh73yGV//Zw8k?=
 =?us-ascii?Q?FwdFGoRMCx82ZtDuT3zdw/wrUT5lOfcu0wjlAcgY8ZV1EJJ9qCDRiIpmZiTs?=
 =?us-ascii?Q?h29n6xL2nxogr72LjhyfQXo6NaSkZO8OTsIEEYakqQgAlos9TzUepeiB6Gii?=
 =?us-ascii?Q?PG/i59K+2PGknFmYiBm525Pd/4KCee8kNx44unBPcPOxXapoHlz6F9v2kCLg?=
 =?us-ascii?Q?8dZxlXY0CdUUVU2diy2Dlbwg7xz741Sqm/jD5fCRCh1KlF8cXQAhRoGhafx5?=
 =?us-ascii?Q?iOuHsL3U+fCbyINkoHrBNDqvzcAdgHDZWvZZ0IdTwBp3wMmpfZ9Wu3AF/2Lt?=
 =?us-ascii?Q?gj8s0V6h8UUxiZq5xGzOYyEQDCXDfZpr4CiLMxepyiXOqu/+PfWxGmXGEEg+?=
 =?us-ascii?Q?p1w0ACDqUrbe+d5/GZKSBvWEJX4T4BIoqAFLnje8IoSUGGWDZiaCW8H+nujW?=
 =?us-ascii?Q?dE6qEM/LAjIqcfZ5jlUNUEXD542xl4aXmBCpvO9cHpIjP4SGXzhtPTfaID+o?=
 =?us-ascii?Q?6kW1Y8U7njCt5gNIakCwMJFpF+VUPYdsMrkMBgyOyZ80SEoWJzzXNkiKl3ns?=
 =?us-ascii?Q?gnPSoDI/TiMRPN8v2i9eAC7vMIijtDflqsC0vW3/DKe+qhLFldlPmcqGrONS?=
 =?us-ascii?Q?PGHQIkIk5aZbZH/KVBIdoFK7vrWbaJV6Q1Y72UfEqCLOMFMKdE67m1Urf474?=
 =?us-ascii?Q?77US7gy4JYHvyddNI0wccvJaZbA6jwlferX8gbVcErhrqkK6vUBIsdmoSEu6?=
 =?us-ascii?Q?ae6J3HS4DPwOCeIREYEJ0NI+R1f7SP2xfnEJFAaPm1xeEsH+/HFqPUrnBXzr?=
 =?us-ascii?Q?JHbIHqLmu+POdY6C8bdBExEcuBlh6gDGuTaYfucntSIc3nQcVM6gIT0VHsQ7?=
 =?us-ascii?Q?TdClvSWSASLimQ8td8kcc8rTeZq9Z2k2z6JIjB9C5negmqRwNpFut8wZvbRc?=
 =?us-ascii?Q?4X/OSqiaeXCQZj8ojKvyq66/+GOp8XJd4tAjTPWdChNlTK6B1CEe4G73GPgi?=
 =?us-ascii?Q?6mxqDp0Fg4iMbrcTHH1LOOzxmZyx5rOuLp/pFPJnbylN+NEEw6TDM8fbjqly?=
 =?us-ascii?Q?WZZNt9BACG0nW88dDlWpF/VBwU2LCzkkxB/yah+poiMTM1f5YVlITOnl88AJ?=
 =?us-ascii?Q?3UH6FGHXWAmDsOXSaE3R6vVkQuktIPehPvBnYtT9J2oqh8wsXpx2uNqhrP7y?=
 =?us-ascii?Q?FTQeAbYYCNem5qX4LOVWfMDRjuSC0DOJE0Y5LV8H/u2y9Rn/BcUWev6MtQ6J?=
 =?us-ascii?Q?FevThf1aCUqEatk3UggCu76ukicvAjHGb5JaW2AV?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85efdc0f-8860-4015-0223-08dab67005cd
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 10:02:27.7522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hyIry5ZfJB4MR/uGX0e6TLdRMQaUZQ12RfKU6F7mWVVGFyE4ZnyJXHG9a1WTGJC5xuNwwCrXXT+ZJmWNrIrR7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4270
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@kapio-technology.com,
 razor@blackwall.org, roopa@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 14/16] selftests: mlxsw: Add a test
	for EAPOL trap
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

Test that packets with a destination MAC of 01:80:C2:00:00:03 trigger
the "eapol" packet trap.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../drivers/net/mlxsw/devlink_trap_control.sh | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_control.sh b/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_control.sh
index d3a891d421ab..64153bbf95df 100755
--- a/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_control.sh
+++ b/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_control.sh
@@ -83,6 +83,7 @@ ALL_TESTS="
 	ptp_general_test
 	flow_action_sample_test
 	flow_action_trap_test
+	eapol_test
 "
 NUM_NETIFS=4
 source $lib_dir/lib.sh
@@ -677,6 +678,27 @@ flow_action_trap_test()
 	tc qdisc del dev $rp1 clsact
 }
 
+eapol_payload_get()
+{
+	local source_mac=$1; shift
+	local p
+
+	p=$(:
+		)"01:80:C2:00:00:03:"$(       : ETH daddr
+		)"$source_mac:"$(             : ETH saddr
+		)"88:8E:"$(                   : ETH type
+		)
+	echo $p
+}
+
+eapol_test()
+{
+	local h1mac=$(mac_get $h1)
+
+	devlink_trap_stats_test "EAPOL" "eapol" $MZ $h1 -c 1 \
+		$(eapol_payload_get $h1mac) -p 100 -q
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.37.3

