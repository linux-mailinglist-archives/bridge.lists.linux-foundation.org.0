Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA206BB427
	for <lists.bridge@lfdr.de>; Wed, 15 Mar 2023 14:14:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ED6E4098E;
	Wed, 15 Mar 2023 13:14:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3ED6E4098E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=FHjRjQ4P
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZLN1IvMG3oNH; Wed, 15 Mar 2023 13:14:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DAB0840B69;
	Wed, 15 Mar 2023 13:14:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAB0840B69
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81FEEC008C;
	Wed, 15 Mar 2023 13:14:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB103C0032
 for <bridge@lists.linux-foundation.org>; Wed, 15 Mar 2023 13:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 781BD81E58
 for <bridge@lists.linux-foundation.org>; Wed, 15 Mar 2023 13:14:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 781BD81E58
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=FHjRjQ4P
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86NP1F-AL5WM for <bridge@lists.linux-foundation.org>;
 Wed, 15 Mar 2023 13:14:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0CC881E4F
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2062a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0CC881E4F
 for <bridge@lists.linux-foundation.org>; Wed, 15 Mar 2023 13:14:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J67TnNSPOxocoTps1USv/3HRiZgF/ho5tzLXasqUOyJS+3PNHBEbTqPcs5WTIgmiD6p+fiZtb7j0Lm5Yf1yir5TZSOxT0C8jB3nS3ejDyF8n+517sfQbVL/TLj2XWd31f6Jx+O5aP+mmOoUvyNazCZaiCk+GjSVC/E0rzg8X0cLR/Y3/x14zcg/4T/F+2kfrSkcVJU6UPxvELf72b2xVoXxAzpqqlD1423aE/PDB5Cw+xKnzmkudQbow9xaSZ21Cm16x5hxHu3C+JN8m8rFUGNYkavFFLz4ahouG/a55YkLhaYb6iCkh+8EYFCnxwlvEnfIeU6nBL6q0lTu4TzfmPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YOUdtGq9xtc1Co2TsrYlE83mzjnUsk53bVA11AoKWUM=;
 b=IBJ6dY6bYq1Qfs7bfJYlmtZrBd1ENbk8Xu3V5AGwKrBobtFgE8gNkThoszMYlfdBR8VNUGgjBEDbr3e2mRdLivQW1HpnStlYkZGs8AdGDVf4TEtCBru7L1rR8XO692bvwObdwueBVumyD6+K4MQwkDTxPQtGKGnqNfBfU0PU8WW0LmLUDwDpW9C1XhQRiVtImMm90zJYHuuep51seTdsdzAHU41re3ZIXJHuV6vPL9mweUY4ayJmswLvDBTWdX2F+onF9ACTusslUEEK4A1aASgYtXHE8aVDZhfjpUr/c0FxzZsOZcQV8iYqliOx51qmfPXt/xsVkR+1Bbl8ylsIYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOUdtGq9xtc1Co2TsrYlE83mzjnUsk53bVA11AoKWUM=;
 b=FHjRjQ4Pbtp3GM6r0zaAxTwROaU6QS5TJbqRNDi0kJf+W6p23QqTmHKOwosrS3ts18b1eibopUe2E3hp9jB1rtUEs3OMBViLY6BHn6Czs2WFaG0EgZqYaqO5NINE7feilwEQXPe8d58HpIgESdQiJjTvZ63BWRyPDuETlH87O+ISujSoBMh3B/SuEXsMto2/WKC1z4jKuwkiBVADi+wLwRM8+uBvRg25tBd/6vNB1K+hZpTjPrsQRVI7T+/vVESnMT1M8bxV6ZfggW+lp3QlLWX2ZsceO76Bnl6L2pJS/ZzjW+FK+N6C09YAAdS6DJEBCkxtoBadQfg8rnWTuf1qIQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DS7PR12MB6216.namprd12.prod.outlook.com (2603:10b6:8:94::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.29; Wed, 15 Mar 2023 13:14:07 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3%5]) with mapi id 15.20.6178.026; Wed, 15 Mar 2023
 13:14:07 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 15 Mar 2023 15:11:54 +0200
Message-Id: <20230315131155.4071175-11-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230315131155.4071175-1-idosch@nvidia.com>
References: <20230315131155.4071175-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0901CA0095.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::21) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DS7PR12MB6216:EE_
X-MS-Office365-Filtering-Correlation-Id: a471c4f0-41e4-40d1-4119-08db25572836
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aOCPKcw1IAV4raJHJZMDvBq5JXe+CnNp2UYENbep+hJY7KQVn+v2mKBYILz0nIWFugzagU5TUYxDTAVxreqT4CLHGoL2RmQ1Lj/SRPIs9aqAsMPWizhrjIiLGGcut9bGwru+vEdlhftbTPiyc5a/ko8267JUkFjbbUCcGnk7+krb+mwMH0J3gCe7IdAb18ueSlOArNdJHzXC/Ar1V6/bNR01m2LYRU6vP+lnzYZsbiNfixXDCFsMaqCjR+PLB63yIv5NlVhszBSWpmd5tpX3MJ2yW1mIdu4gMiGwYglqKf+Og4mE6QjHMnhgHubqyFkYfrhZSpDnY31VBOaB0iVfT1/D30sD7awt565784/hExWdbFL1dirSQO+YxflAI7hrUQYhChu9egTNbI52vXofHbxtIrK/tflBQoeLC9eZS3LnYMUmqsfOwDTBoCXWEnceN39wyI9xhghUce8PiHGOu6niZtUSVKxHusAhW5ob7ONspLjVqCBWQTKSkwhHxtnzQ8HUAkQ3y1OEKay7tWkYxhh0y3Ka9fqXUaYxMWhkW8KaDvhzxBFFTeFygELzMWV2mOTj9ESrc1e0AGVpI76qpEVOqCwc2HM+n1leskOTl4RDXqZ3gV2VOJ1kPeBgBMvm3ZuwDKNLKAN6sHxyhrUZWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199018)(86362001)(36756003)(38100700002)(2906002)(4744005)(8936002)(5660300002)(41300700001)(4326008)(2616005)(1076003)(6512007)(186003)(6506007)(83380400001)(26005)(316002)(66476007)(8676002)(66946007)(66556008)(107886003)(6666004)(6486002)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MK3GjlM5zJuku+8fUftJw7NTrwmqlSEzuejYx2Ps/+mt10nb9Bc6rBE/MzQi?=
 =?us-ascii?Q?ByAgvCrSYEtux0wFnoy7YBrvzyTanqvwlAKH2U6e5NoKgObO2ZknyI0FhwSP?=
 =?us-ascii?Q?isIi8zFDIPzc3cBG+xWFvz7WlokS31dVFVkIC2QGK1J/uXC1+dZ7ecVK5fq4?=
 =?us-ascii?Q?hcXNf4VGgqKtuXYUw3hFnuK/8hSVOWUXKnUZ8G+trNoUA8ApU5eN42Hye+mg?=
 =?us-ascii?Q?9cUpnlwT7ijPR74BoO7Nkj1WOd+BzY5ySqFdpH3ztgwPrd1/M/WiFDeonqri?=
 =?us-ascii?Q?fgiSzmEhSiF3kyTGAzOJzrK3yGw/yMRGPHAuPfyZarYF66UMeABZKqmvmGBY?=
 =?us-ascii?Q?E1PxNDjikR8AwW+GHgyftO20gxXkpVV/3g7pLBAKeuvVup6WBQwAX56WBd0N?=
 =?us-ascii?Q?plXtPMWrCsyBg4G0zVE3iCsZ8K58372cc0QhzyNf0fnfagz4StR13kViBr4E?=
 =?us-ascii?Q?FpZROqKLitYmETBBdnt7MCtEBFkNfeIC4cqnHdYSAQjok1S7Vh6aZCpXpywL?=
 =?us-ascii?Q?18Va0nt9jVas65P8vNMMbm2pXHZLxWPvmMH0gR9Jhmiz6w6agC7ze/Wk7X2I?=
 =?us-ascii?Q?1+YObix3qdV2MZthSC47PKDq1RhfcIduuxx9K0iZR6h65lOu13P8LByLHyOO?=
 =?us-ascii?Q?juDbPR6YozfPZQV5paV16Wb2GwbcMfdsvk12/F9J5iivn4jgm7+Sde1HkuNz?=
 =?us-ascii?Q?XN/Sysm6Gd64cXOybi0eRG75Xyrmp/MzJ6f89OBxqpr5xspWejeTcl3pfCyX?=
 =?us-ascii?Q?KSt56wLsegbQ0v5BqpoHA0tGn9b7NwzQyElRrN6Z2HLeBssnG08fLiBpJtH0?=
 =?us-ascii?Q?a0CSOIpIirkOeu/uKhumBWq82yKIavgkGN44OSPSxMT61Gew9Pbj41/AX29w?=
 =?us-ascii?Q?7zVivvQzYGlcYungh7VE8KVojfs47S5p/OAWTwy2DvFyn0PX5MJ4WomaqwPY?=
 =?us-ascii?Q?SUvV58Afn9cnK+yFUbjrVzfPafsW5RsTvDZHrenZN0J6MAysf88fyenaDC2s?=
 =?us-ascii?Q?CZkts05Jq3TybcUy57W6FOLBTKyxO7iMBAPwVKRJxpk57oKRX3Zoyi58zkZa?=
 =?us-ascii?Q?tj9JbxfXx+br9fjDKcQN284DPWdXPujhVBs9NcEzj7f4c6DIFSiF1IxCo+Ll?=
 =?us-ascii?Q?vXfsNG0Ny09ol1I2HRpFM+l5VWfsyJqP5uhHphiWsfrmiXDQWR5lfvn0V8/s?=
 =?us-ascii?Q?5u4ecqWChn7hMWpWieFMtFPuBCV7mtelFBqh+e514eJcVujaKORy1FapnWsj?=
 =?us-ascii?Q?QK7Vg/oMjMrBYFCePd0xL2mwxdY/r+xdax3PEogAKbinRXuIqg1BkJWfBac9?=
 =?us-ascii?Q?ZLVPN0QwQfDHU1hqMejKtnhBXz/x6yqBox+oMd4VC1q6shrdtvnxFv2tA4fx?=
 =?us-ascii?Q?3tsGj4p4K5je5GmQhrfbpRzTv2QjwE+YDJxHPIZulG9a8d/tLKGHcJoG+VEP?=
 =?us-ascii?Q?QfrbND1URXyVyUfvV6vcfn8hQcmPPZyrCu5KDejOyqSYtQuK43wQWKTS7OTt?=
 =?us-ascii?Q?/FLB+BrN06gS9aGtE4CrUf++OkJyp4X/Lr/fKnJOh5K4vK0SpZGQP8GE99mp?=
 =?us-ascii?Q?+mOebzikgKdTr46w2xvNOFqgsuJ3UhQrRsgQjG4c?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a471c4f0-41e4-40d1-4119-08db25572836
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 13:14:07.1333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XGN9pCgtj6vqLtjoMOpLMQja1WEr40qq1+cFCpYnGk+/ZqFjQD4ceYXYrRnvdXBRLuG0i32oTz2OIjd34Zf1KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6216
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 10/11] vxlan: Enable MDB support
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

Now that the VXLAN MDB control and data paths are in place we can expose
the VXLAN MDB functionality to user space.

Set the VXLAN MDB net device operations to the appropriate functions,
thereby allowing the rtnetlink code to reach the VXLAN driver.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 drivers/net/vxlan/vxlan_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 8450768d2300..e2e5f5dac7e6 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -3083,6 +3083,9 @@ static const struct net_device_ops vxlan_netdev_ether_ops = {
 	.ndo_fdb_del		= vxlan_fdb_delete,
 	.ndo_fdb_dump		= vxlan_fdb_dump,
 	.ndo_fdb_get		= vxlan_fdb_get,
+	.ndo_mdb_add		= vxlan_mdb_add,
+	.ndo_mdb_del		= vxlan_mdb_del,
+	.ndo_mdb_dump		= vxlan_mdb_dump,
 	.ndo_fill_metadata_dst	= vxlan_fill_metadata_dst,
 };
 
-- 
2.37.3

