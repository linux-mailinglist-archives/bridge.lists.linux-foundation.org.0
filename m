Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00A968AB90
	for <lists.bridge@lfdr.de>; Sat,  4 Feb 2023 18:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F7DD405F5;
	Sat,  4 Feb 2023 17:13:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F7DD405F5
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=T3e1Zycb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kghSs7agD7wB; Sat,  4 Feb 2023 17:13:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CA69740614;
	Sat,  4 Feb 2023 17:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA69740614
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D7E8C0078;
	Sat,  4 Feb 2023 17:13:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F2F8C002B
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEE9F405F5
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEE9F405F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-0Qa_VaHZ6X for <bridge@lists.linux-foundation.org>;
 Sat,  4 Feb 2023 17:13:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DA13405A7
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on20623.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7ea9::623])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DA13405A7
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:13:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8MtjQz9akSxoORBF5k2MdGvWNz05mWR50wUTDYP+ePW009yb9f1BgBdTfdpIxRi+SQ6Ofz3G9Nrb6znyyxBN7652g4cxDgrhONMAHOyDBDuRDDfSd5VU35Ql8RJP4vcOobwVUEc+Z7rNDTguHQFsI9UIj+A6Ehj4vBBiZmMFn3rXaHwenI5PGoISAfCPakYC/sdNAbWylTv0+nzi2MECuouJawecddQK5G8V6TSvsoi36HnEx92zBp7Ar9LBVZ5+7uHqt61ioMnH0ycrXe9YGeJFeKGj04Fhj+2sL0knygl5hqDRGbaEHCjLzHBZzrJW3YhTSanjuC3Hcp4kNFXyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWAS9sy8p3oKjwtrl1G1L1zE48uknaQb+yom1/wew44=;
 b=dr6wDYPrvX+32D1RSfPYE+LKPs3VRLK/v6Lv+HL5yDC5qjMnJsfV8DI9PRcHSZzUQl57X3ILjc24d1Yu/JV1Zw8d5xRsX+oYullnUNhdv1qBTwo1lnuHqbBwgUqdCOdnFqbv7xnknQ8lX/+gKr+rf3zZou9OICAD97/7SYFr14c2iqa+cE3sd/jA/+dRxc8fEPo5tjvCrpOu/GIDBFDMuTyaSPraVyWCEqMYSXCwo4tnl3TP2UcBbxA3BfCnVycrSYDVMPHgyl85OihpBBvKReDTG9aKi0f2BHBos0OzpASrlmEJzfUYlCQa528s0UJuOsO/jLk69atd1oMfVm5huA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWAS9sy8p3oKjwtrl1G1L1zE48uknaQb+yom1/wew44=;
 b=T3e1ZycbrtUJHb8l4UMg8FCf3UpjhIZ/BJZLunxiEjYF+BtyJKfV3VPxxWQu8HUvmxYKkBD7YMuXlYq55buUs6cSdrJnloUkI4LNuS4fR9ga6vSziWP4LX7yJDGlDT/88iFEI/Ti+UG5VYbSc3LbObkh1x7VY9pWgvF6/VlmD6NkwqgTOGLgHctEpu9BMw5EpDzUU7jIwg5g3/bpW78sEhiQOuJP6OQjFxa30Fmx9K1eJ5XlayzqdFzsV+M3fkjg15e+AYCOYHkIFMi2MHm77P0VG/C8CL45FKjwRr2O8qxpaUr1Xjn1XXnpoDJGFViUacLYbbyNm1jCCgRS2YmERg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SN7PR12MB6816.namprd12.prod.outlook.com (2603:10b6:806:264::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.31; Sat, 4 Feb
 2023 17:13:18 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.025; Sat, 4 Feb 2023
 17:13:18 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat,  4 Feb 2023 19:08:01 +0200
Message-Id: <20230204170801.3897900-14-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230204170801.3897900-1-idosch@nvidia.com>
References: <20230204170801.3897900-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0102CA0071.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::48) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SN7PR12MB6816:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b5592aa-8eba-409e-95ed-08db06d31b79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yxGz0CU87kaUC8MSu1P4VPJfdDPqQDvULYfbJB8tqatHMf6WUL0OMAb/usdORbsuot2ASG/Y773Rhz6M+tcVLX5vWwba4AdeslNFsDx9TPP7XogQZDqjkmoX9BQjhp7SzR0wQXqVEy4H3K5GXN92bevAJ+2QCAESyTE60/mM7V1IspMtpsqueVZGMz7tbNL0Sx5JlHbaAOs7EEMkGRYtEOpFPVUyo+vH9OsW3huBZ3PsBlbCjg1TpHPJ9ld9r7+zLScJoaVhMnLqT/W11j+lyt5WTHAclGusXDegwUfXjoTvBlcdLsBCnlJLEIuqyc4V7g1fxHBTSNbHqqz47Fir2IamWTJxtik4RwE39R3BUTMAhnIEwapRG2RzXvr8NN+A5xj2BWZvR5l1aDq8QEKaobvafDPeKTyh30bdVNoUo8qDKCh/D4TKF/6GumqpIKG+1ap726UooQQFtVDEYnq4amAWtkxPfrEgSUiaOzK8VD9IHGIUw6EQ7bMhhaSdkuZohPzi3X2rAs4FprYtrY6JueQDZgJPAZwp3HsQqtQqFOkQ5YW9L9hXGNx0Zxm+lP3b/zR9srQkQkoWMUxraqt3yJ9V+EKOAmbs6/wUUhh4aIBU/R56qbRSwc6e6sehtwtQRPq2hPP3klG/73okTO5uCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199018)(4744005)(8936002)(36756003)(5660300002)(107886003)(1076003)(6666004)(316002)(6506007)(478600001)(38100700002)(6486002)(66476007)(4326008)(8676002)(66946007)(2616005)(83380400001)(66556008)(41300700001)(86362001)(186003)(2906002)(6512007)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cuPR38JNI6DFwEQQvkRXeTL0fzrpKWMkMSGs8cLhW5oyd7t1Cspa4T4ggas8?=
 =?us-ascii?Q?XzoZE+Hdz4sZ82cwEC41QndoSMDCXNKQnj7oM0GczIhsl5qFizHXwBpQnfnp?=
 =?us-ascii?Q?YMLxbNLvYGuyxBKhAhUw9rLclXJHWkK8/MVZqCD6WT0JUEmpwepg+grE2Qud?=
 =?us-ascii?Q?PTYzWMvCVfbXn8enaV+9h40BIvF5M/oZma2UXQzYqC4vCTlxI8Nk3z5v0fSN?=
 =?us-ascii?Q?e2AbZ6/hU+3UuOjA1p73hTMJJlfTeghfwGoMpqNswmPWYhUnZX9kIRJlGR0N?=
 =?us-ascii?Q?ydFmBSWibQLAbuHlBNuq4sTeisv9C4XlRPdf+lCf3OkUSwuAq0K6EIUbTdQH?=
 =?us-ascii?Q?3DAt1DMUn37DH7s+qdfTc0RAhRxzgjlQUNUh8XyhJ2Jb/3jJgh7UVw3eIOXQ?=
 =?us-ascii?Q?3GyJUudo+HPI+WQTpgcb5UQUgwByQ+8NzkLRdcHEWkEVzkv5O0I83SaqMv3S?=
 =?us-ascii?Q?m3DZ4ucaHDezMgjhnU1CEC5xC9ykqt9HunPAgY7ORVqFAM+kDOk4/Ju59x47?=
 =?us-ascii?Q?gItrVCZRY0mCRAQtjBMcWoFExeq1zAEpyrw0WzjbyZwGRYEcnMPxIErkmG+Q?=
 =?us-ascii?Q?dKUtL8RKW4Ptd9TQ8qn6eZuUFMrCZZS9EnUm0+evyfSW+zrtlh7buY3T816d?=
 =?us-ascii?Q?W0odXlNJ8YUmedUqKc/GG1eDp9YI5K+4+VIxzl2NhPsmtrjbu7XFgYYuQJkc?=
 =?us-ascii?Q?CnVKCtcMnu6+nBrykzE6V9zIobMxo0c+5A4JdfvLwpqsFSFeropd5pKmHKXc?=
 =?us-ascii?Q?RUDuNXj5AVtlUDAxHQc+2bYPd1DMSMFdVX1oWzJIR7tgtCV3ZOHwd55k6iJg?=
 =?us-ascii?Q?TmnIKLrpo2dPj7NR0AgVYh+cB5u0/qxzZIU6RMUc6AcSoFGTZ8cIOyklqVBD?=
 =?us-ascii?Q?5yWpYoDpI1ffM4mRgU68FvD3Iyx6a7u1V1KnAIuoWrVNGAsxIEMkOjK4GBX8?=
 =?us-ascii?Q?niNObojrPZ2pyKB//M9l5dUAwgdexODNjUupGfulfQ5we559mP1/xAgZpAyI?=
 =?us-ascii?Q?y3pnsbi0LiZFsDMHSZk1ay4+lWZsCkB1dLhs37JUuJRxZI/i3n8hnilRM2D6?=
 =?us-ascii?Q?gUw9wfbPZICeRr2XbXq9THfotKmuhtwSpobXYpOeg6fCXf7Nvregbw7H/v/n?=
 =?us-ascii?Q?5JHJkwGgUS9b+I/E8YTVaUNsXtWIgPX4gi5JKLKI5HsIVfoTHIY0wq6s1C2U?=
 =?us-ascii?Q?pJ07lJWPY2lIX5t/Cp7L3TuR1AK6Bj1WpS/j7KH4t+dqe+Hl0Uvb7wQ1A04U?=
 =?us-ascii?Q?FDTO1ooV/ulI5Cb75atb2Hz5xW3PHDqItzu7juGa5Q9Wdg8oV8go8QXOAdnq?=
 =?us-ascii?Q?ckjgZvRb97fW2e7X25pgVANl0f9ZUc5ztZw/w2XxVmp/dXqJ3akUN3c0UbC+?=
 =?us-ascii?Q?kX80OG9+yy3FKg4MPc2wnmxiR36mwCtxcb8kjLlSUTkV7iW/UeSP+N0aDB0h?=
 =?us-ascii?Q?RWiv4cGy5ERl8H/Y2+4DOAPdS7OUjJiwmlOOynY6c8rZz89SSqDptJZuXUiK?=
 =?us-ascii?Q?9EKOGE49xJtFff2K9ulTo0cCu5u1Vt4GPIFJ/ZY6dlvGrF3yubvkqds+qUlg?=
 =?us-ascii?Q?QKufg9a8j1VcyFr363TmlCWPMRMVQTAsp91f5qd2?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b5592aa-8eba-409e-95ed-08db06d31b79
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2023 17:13:17.2813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bIlhksTlyYnClfNWhhP7p6hWQ3aan1nL6IZz4IpWO8A235mBIOn7cPq36IZDLlEIvY/sbwN608BmR47oh0Bgeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6816
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 13/13] vxlan: Enable MDB support
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
---
 drivers/net/vxlan/vxlan_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 1e55c5582e67..e473200b731f 100644
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

