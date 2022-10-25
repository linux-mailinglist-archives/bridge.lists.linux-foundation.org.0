Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5743360C94C
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 12:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0AFE40463;
	Tue, 25 Oct 2022 10:02:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0AFE40463
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=aOemcnlF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MCsNH_rYAROd; Tue, 25 Oct 2022 10:02:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 466194044D;
	Tue, 25 Oct 2022 10:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 466194044D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F0381C007C;
	Tue, 25 Oct 2022 10:02:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB7E3C0033
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD2A960BA9
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD2A960BA9
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=aOemcnlF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MhjVWpJmSwLA for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 10:02:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AD9C60B8C
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0AD9C60B8C
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TC6JuyyfmqNpNOKo1NtOuq2zVVgBW+PjbyPawXipfSguTnm+EcknhJXAWPU/hFn8bd/HifU0tzoqZecY5fUhUy+cN2Olz8qx6NWTmz9pk3ajaFg24BSZOnDRBWZmN27woYOqI+Ulwy9taiyWTGq0X6YqQuw82BMd+zQmCt1LPQAzVvj1MI6HJ0BARxNi0Fg12saw+0CD93vGEHEaFis/3fvPh+wRVBAZlqlirVpIMdU4ysWNpY7ddgjx2LEdZ0tYCF1VxlnjKuxNsjHkbJrmb5fJb3cWtfb44lugwFVuI/O9rJtxlF/OnMKNXVZB+716XMR1ZPEYWG9l2fWKlhusUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hBOHTW8PIE9V9aZiY0HibJZMUFbqyh9bIF2wNJrx5uk=;
 b=M4yeO2uhAbHQRDq07k7G1tshS79M+Dz9orm1Y5mmsujW1moImYJTjt0lIlCIkc8QM3GKhiL5Nqpro9F7Cy7WW6sxKOlGXBK8Gms8aGWJ8YLCvvc3KD/ZYplYukZqyREfFLgdVxSCgWqyqCBX+RfPBp3kYmFGS3Hckp7BgUmQfnU+egxhGOygxF4FhKHBFtL5zv5KXLSawcKtkJpmDXy4F9g+eAOahdTEW9xqocJTXB3N+qxLh95G0+hLiM08HCG81hbWI2a24HIMQ+QNicC6mcUCI513yOS6LXxiM7m3zIdomXKhVFXmyueiWLOz1IYIMghDC1H2aeof/AclLghOaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBOHTW8PIE9V9aZiY0HibJZMUFbqyh9bIF2wNJrx5uk=;
 b=aOemcnlFmWNH4WAAIGEiL2Ckn4tlTAtequ1S1o4amiey4jX7zk+2xBJjOmOfjnANFvm9PiB+Q13YrfLjnqVC8kzns1hHYrxJfJseAawh4NQWTDiRkGe+WQT8KtBP3vbPGxTNtX7UQtS1eqBzbcceeVrsqJFSJyBmSId+WfIH1rWrbz96JQIKPzC9+/txU2RVlbCjkfb2YYHYTnuJfhhb+5H+638YZUtXbWqskJzGF2aG7afsqQiUXKMd2mUw5v3cOl8O7FG2ItvHbqniRzSI8ccXHoYB8Knhijq2ksmSl7CiMSweqmfe1kbCXmenQOjjuAr9PXZe5CsTNFLnzWYt+g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by MN2PR12MB4270.namprd12.prod.outlook.com (2603:10b6:208:1d9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Tue, 25 Oct
 2022 10:02:40 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5746.028; Tue, 25 Oct 2022
 10:02:40 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 25 Oct 2022 13:00:24 +0300
Message-Id: <20221025100024.1287157-17-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221025100024.1287157-1-idosch@nvidia.com>
References: <20221025100024.1287157-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR03CA0057.eurprd03.prod.outlook.com
 (2603:10a6:803:50::28) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|MN2PR12MB4270:EE_
X-MS-Office365-Filtering-Correlation-Id: d11ade53-3146-463a-94ea-08dab6700d92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OPvpCgs5W494Jnl4FPCyb/AyefIucaucngOknTs4LgwreS0VUlxSVVibb7W5Litq9N+MkIvSAOWCH6oe0qanGtv+5XMWvRZ7rAcvhohMixwSk+hopzmRRHOP37xE/2cxzdUZyxmv0XDO9UKIs9M6pcT/pSe6oUQdv5ZGEaaGdCavwyVgRKP8RVy3I1uLul1qz5JKIyqguadfAFIr2TdXZHjbCiTzjcCugZqF59M3ESO31eCR0swuMbGPJuVC89C4/kWOXQgXl6rDxVOJkYyCKyInKwU6tVkjcx2yOS8uexoaURyosaHdMJ9+FWyorZpy5o0IUOOkM3ZB9CN1y3ljWs9XeshtpcHMaIUS/cDnx7NgnJDo1vhqmq7OLC94nkX+Ms4v4/KiLb83mwiuM4E8i6G8wB6dG3CnA9zCApfNmbsJu52LnsD4vNTND4UQPIM4GIq/LUuH0nOh55cE0mNLtvPxKssNpvdHkWZAOY92Okm0TsL54ddZ8RRjmehjIkwSX+u3Qk8i741ED+jfKQ6xtPJKOzG6PkbLlTKP/ub+oLSSkIUwXgRRDeq0Cd9vVg9m9mrLj7Bqf5+UpeLZAWZXMIM8d2hgL8g4TLMffFwzKFnkN35LHSQs92pHheabamWvZ5gYPh2Tvb/ifamzADG9Say94+rV18PI00eV3hhNjslW1utyG7Pib+RT7uW5ONp+2iBmYRVFVCnr+yJ029hPyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199015)(36756003)(5660300002)(66476007)(66556008)(66946007)(7416002)(38100700002)(8936002)(83380400001)(86362001)(316002)(186003)(2616005)(1076003)(26005)(6512007)(6486002)(478600001)(2906002)(8676002)(41300700001)(4326008)(6506007)(6666004)(107886003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dKfvuZI1A3izymswWAV99DRCqX5t2yrEgK4+uGIqrQk6FLYYSct/vBB6C2Dh?=
 =?us-ascii?Q?1Gi9YCekVc8Jbr1Y2hnYhTHrEnzREc5G4YVmAJyeaPojSAY8c6+Aj/1ApMy5?=
 =?us-ascii?Q?3Sceyql/lJetXJnpTIN4cjj6GAZ3nvlMb3V0kOXbKWPqJQq+pQCUDZTpACil?=
 =?us-ascii?Q?dfD+sGtvyxEnjlaRdefBHJ+1DxlBMVBbePlrJzT49IjWApWI/Grp+ZaArqbe?=
 =?us-ascii?Q?d18Dx9hxQirgQVPNL9W8CgqiFKQ7occz9g/9pPYgAJZ1eWjG/rpa32u1+m5d?=
 =?us-ascii?Q?vboG7upkbTI8nv1+i+StC6SMSsRTsFujmhhs45N5cmCL3LMCe68vNr9FQBMe?=
 =?us-ascii?Q?QfrzJaKhtIvrqtKGP19nM38LZyP0RI18VlnWSA07zlVJc+SOiqkNwi5h5qKE?=
 =?us-ascii?Q?8pkYEUbsQHpM97SMi47Jy4QGPKBGDurXReCO5RlAyhESg5Yy/F2POsLt/8W5?=
 =?us-ascii?Q?EssxyIX/GbM0LJBohPbqV3iGx64nRAcEU2VjeKbpLwUCdfgow6gdeDYaXSzT?=
 =?us-ascii?Q?ZD1MH0skLyHZf6cv2vPg4P9uBPx4K80fvJTgWX0T0wCuRxkDDqqfGhGuVh14?=
 =?us-ascii?Q?H1sSyXea7e8bRzTFe3PDBtZQ7NCOG36XuXEJnUFrkGBPOE7+ZtCW+IFAfQrE?=
 =?us-ascii?Q?H+DrJ3+rLkDftYvcyP9CCXPhmoiGka/abuwz1an1cxEBZnlUOuYljqTHYFrI?=
 =?us-ascii?Q?Tre1qfgBXD8d9l6/SGkVfod3kIqxlaVJjkQNkUOnRRx346K7pc1RKjNPhnam?=
 =?us-ascii?Q?TsKY92yVEFbv6QTH+RAZbzQ8AoAlpqSKCgIurfxsxeOOSgHi5ZMK6++DroaS?=
 =?us-ascii?Q?6qGuMATQ/Y/YRvOmq1YMeKHVyc02UQkEdNevXlh8SBplg7gMMntsXCw95rYd?=
 =?us-ascii?Q?njzXD7d6P1RovaS+P+srpKY8JPMRrLdH3ZSRcVDm0NZw1vjiyTVIA4IXrEoe?=
 =?us-ascii?Q?JymXVi0EVoNrW9X49vKe/kCoiT6p90mr70PCCSTAT8gQAPsyNYJxGDE3PUE4?=
 =?us-ascii?Q?2bKsGr4s8Cr0KBvBxrZfNdJK22wFcA22sb4Yun21wra+U3xHRfdOWM+N+BC0?=
 =?us-ascii?Q?Y7iBfnnwRzENmm9NesZJPn6+mno7PjULgK5IroObPS9uczEdvmW4Qjf+JH/w?=
 =?us-ascii?Q?D+6/PIQ52uoBnR/wMEU3fiRm+hUugdHaSQ8uEi3hYoUI/yL5PGFB3PTuorxf?=
 =?us-ascii?Q?lbgOVT047knyWt4TQQMcXRp6VhPksEkKIX6KPPiXB+1m89WPPsjj6sRPcz3b?=
 =?us-ascii?Q?0kwwpEvyeLJSYoG3ZmZuU+pCEjiDV1FxAmuUCyG868tMOz4nrfuyD+GzVZ8f?=
 =?us-ascii?Q?AEgqJR1NELp4NSs9+3u+1TkXwNWR81MIa0mwJDGvqV8+QSGVJ1yvcgGw1ris?=
 =?us-ascii?Q?OfdEvVnBX4VEYAw+EcC95tQdSm2yjUItXxHfJulmPkkDj+7MmVUxImIMb1Kx?=
 =?us-ascii?Q?vNhwd6fVM9x7vlR9id3Ew+n7WJbV/Ljk8C6AHvB/9N6IHY9ybHbT4MRXIbm4?=
 =?us-ascii?Q?pJPiqXhVfDBA1/Lhq6ltwYUA6R3XNy1HP84yLPxidIhORXvRysTQuF/HOXxQ?=
 =?us-ascii?Q?fsgAnu6q2rNbq49U6I9tGt7ROcRDOq2b9jyFHY+e?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d11ade53-3146-463a-94ea-08dab6700d92
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 10:02:40.7586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B2erYX2QBC4gaF4L4Acai14AfXSGQgkjwOz+9eclUo0e3KMwqMDmpL9dkYBNO9bW/fzLBamgdk1YmIOUcF4ECQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4270
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@kapio-technology.com,
 razor@blackwall.org, roopa@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 16/16] selftests: mlxsw: Add a test
	for invalid locked bridge port configurations
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

Test that locked bridge port configurations that are not supported by
mlxsw are rejected.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../selftests/drivers/net/mlxsw/rtnetlink.sh  | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh b/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh
index 04f03ae9d8fb..5e89657857c7 100755
--- a/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh
+++ b/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh
@@ -34,6 +34,7 @@ ALL_TESTS="
 	nexthop_obj_bucket_offload_test
 	nexthop_obj_blackhole_offload_test
 	nexthop_obj_route_offload_test
+	bridge_locked_port_test
 	devlink_reload_test
 "
 NUM_NETIFS=2
@@ -917,6 +918,36 @@ nexthop_obj_route_offload_test()
 	simple_if_fini $swp1 192.0.2.1/24 2001:db8:1::1/64
 }
 
+bridge_locked_port_test()
+{
+	RET=0
+
+	ip link add name br1 up type bridge vlan_filtering 0
+
+	ip link add link $swp1 name $swp1.10 type vlan id 10
+	ip link set dev $swp1.10 master br1
+
+	bridge link set dev $swp1.10 locked on
+	check_fail $? "managed to set locked flag on a VLAN upper"
+
+	ip link set dev $swp1.10 nomaster
+	ip link set dev $swp1 master br1
+
+	bridge link set dev $swp1 locked on
+	check_fail $? "managed to set locked flag on a bridge port that has a VLAN upper"
+
+	ip link del dev $swp1.10
+	bridge link set dev $swp1 locked on
+
+	ip link add link $swp1 name $swp1.10 type vlan id 10
+	check_fail $? "managed to configure a VLAN upper on a locked port"
+
+	log_test "bridge locked port"
+
+	ip link del dev $swp1.10 &> /dev/null
+	ip link del dev br1
+}
+
 devlink_reload_test()
 {
 	# Test that after executing all the above configuration tests, a
-- 
2.37.3

