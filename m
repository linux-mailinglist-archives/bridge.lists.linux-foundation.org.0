Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3062A4BC72F
	for <lists.bridge@lfdr.de>; Sat, 19 Feb 2022 10:47:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0F9E60BF7;
	Sat, 19 Feb 2022 09:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64x8-o-6_sgg; Sat, 19 Feb 2022 09:47:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 435E760888;
	Sat, 19 Feb 2022 09:47:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED67DC0073;
	Sat, 19 Feb 2022 09:47:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0350DC000B
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2D8A60BF7
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7INIrW8jlanJ for <bridge@lists.linux-foundation.org>;
 Sat, 19 Feb 2022 09:47:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20626.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::626])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3215C60888
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:47:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2fJN17J+1cRf8mERGmZXMYx4NXdpxzTQh2hNRpiddw9lSIuDrZeF2JkFw6Ov9Jye93zdMLtMNJWkCi2nGpNxB94yxPE82X/8PTkRQc+r1mwpIJE1cWHuzkxbro12AfwkMPSAQPCTRWJQstoSkpzhdX+7rTvj0kPtoj5LawydnG4bkwL+0oVTLytl9W4E8v8NEojUOa+bvevewys6AGAMIv/1ODQT8TaX/Q+I+bvgjkCn2nBonidb7iy1qprWtYcuKbMw4kM7RKHG5qNN+TUz1MFNmsfHsfEfGuMKoxiROOdCdDVqP2dlAB6lLFV2pBw0TI/zFGcI/tTO3VEV7WQxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wWBpbLaaOVGpC0chISbecg4jxQMtvFYsdgIyHL2pnGU=;
 b=EGgNfBQ1i6sr1t3nbku3h+as8yZzpW+Bpt2ENAJVFVs0hGVnI1ApNawsA+N9+HxKvpEtEugI978OcpQQxX4JKy+eZLB7g9Q3joJvPqtUm7+M/QWS+w23xkketBGhlykh3sWPiYXkR2RVXCFDdqXd16CahaRmRX0Hry+c+Q8dV5jVagblBnzqc3+HOQI3PK+3z/rxRRK/CAlALN1KQk3cpRb2zb8D/h7yGArdI4HPPTg9p2FTjyA2/qM8StQTAvrmEHLQCIAjEd35d2vud/QKT44NGO7G+dOuLT9+Bn4d9FQuuTfM8Hnrjd89z3c6I3cTej9+2zmwgPwRRJz1JKLu9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.236) smtp.rcpttodomain=lunn.ch smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wWBpbLaaOVGpC0chISbecg4jxQMtvFYsdgIyHL2pnGU=;
 b=UxcBmms+tY7y08BN0Je2z1lcAo7Od/pQOzmCRoqsK5Qw7FNjqE3llKYbeO8J0wWD6PFxHi8cvyIAGGT+kkTEBE+3zuwnL1LUCR2EucPZUau8X716EaSZBpN5xY2paskJwtWzMbpPneZrr1qoPaBPSIQN0pePjjnYlXhrH2l2EjiFUGOP3HJojV4vsQ6BJVZtdTstzk8XvhBTdeehqxLykocgtOKTn81qtTOiIMv1Si0psHfLwwyANndRWdJZsbSMSa78FwN1dGqNBbdle1BiNfWby4wL5YOEEz7y3CQwADM6tbvCQgG1H3teQv2igE1zLbss3aXlFHBYWRSfdmgLOA==
Received: from DM6PR18CA0023.namprd18.prod.outlook.com (2603:10b6:5:15b::36)
 by SA1PR12MB5615.namprd12.prod.outlook.com (2603:10b6:806:229::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Sat, 19 Feb
 2022 09:47:22 +0000
Received: from DM6NAM11FT014.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:15b:cafe::f0) by DM6PR18CA0023.outlook.office365.com
 (2603:10b6:5:15b::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.24 via Frontend
 Transport; Sat, 19 Feb 2022 09:47:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.236)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.236 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.236; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.236) by
 DM6NAM11FT014.mail.protection.outlook.com (10.13.173.132) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4995.15 via Frontend Transport; Sat, 19 Feb 2022 09:47:22 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by DRHQMAIL109.nvidia.com
 (10.27.9.19) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Sat, 19 Feb 2022 09:47:21 +0000
Received: from [172.27.1.59] (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Sat, 19 Feb 2022
 01:47:10 -0800
Message-ID: <34364248-5c07-6fc6-59e8-ff1a0faf69f3@nvidia.com>
Date: Sat, 19 Feb 2022 11:47:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, <davem@davemloft.net>,
 <kuba@kernel.org>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-3-schultz.hans+netdev@gmail.com>
In-Reply-To: <20220218155148.2329797-3-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a4a8f33-3e5c-4800-ff19-08d9f38cd3ce
X-MS-TrafficTypeDiagnostic: SA1PR12MB5615:EE_
X-Microsoft-Antispam-PRVS: <SA1PR12MB56155F1F1FA3DB08399E19E9DF389@SA1PR12MB5615.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6l52sEWB8uLgulN/Saj6RIXk0piAQpzTcwG6Kjl9Abs5sqZR9UVzB9fi18V8oxLJ3J2H4KlstIVksYEQS/jAoj+zx08kXA2N/Wb3QTsTmIy5PEmgFWqNMFV1ckbiGm+lmrDMUPP6BzC/MK777Zn2Qb+bOM6eZDWurwY82y5bewrDPipqqzjNZxwbcreiH2ZC7VQUEUicxZ8K+lWzO3P+bxm1iemjhTdM9+6fxrLcY/BoZXXH5JA5+CWSCEaRi28I4YPiEBWfgCAHPoAr8IXj18Fck7FLDicMFVINfir6Bv5IAHckkumUAw98/kWzzlhFTpqMz/HhdoxFZWEtN3Wc2+KgYxBeoYrmRN5zPjr9A5N0ADNFl4bgDcE/VI1iVTUJ6ivz/Cr+v6b0MGzt3RRE9RlkpTOExOMdg3BveiA0UIlO4o2Bpsqy3lt/KtYuiJHJGIbEcE1rPadlKV0U4HF2Gm6hnvxPRRY6yEIZcxntMbE5q0Ns2MZ12tJplV5kA0hFzyvPphYBDFv9EDXwdqix6TCXrOQEZPwE3KKxSOfW3xVi6GQFKdkRpqhr1gbgzCZFjDrQsaxa1n9CTP/541Gk+kkvlQ2NvAcAw/IFhPu/UAQswfnRLV4ra/lCcpR0Siei4D8dvVlSPdj5HEdnNY9ZM0x3TCoI4BVC2y8120tdKNXumfn7v+ATTN+ZrL0wyrLlRff8zJeK9cd2Gex+hen/v8XkCQxX0i/LORoZ+r6N2vlIaX7DCZIMGQFAIJEVSEN0
X-Forefront-Antispam-Report: CIP:12.22.5.236; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(46966006)(40470700004)(2906002)(31686004)(4744005)(54906003)(110136005)(4326008)(70206006)(70586007)(8676002)(31696002)(26005)(7416002)(5660300002)(316002)(6666004)(53546011)(82310400004)(16576012)(8936002)(40460700003)(86362001)(186003)(16526019)(83380400001)(47076005)(36860700001)(508600001)(426003)(336012)(2616005)(356005)(81166007)(36756003)(43740500002)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2022 09:47:22.2758 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4a8f33-3e5c-4800-ff19-08d9f38cd3ce
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.236];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT014.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB5615
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org, Ido
 Schimmel <idosch@nvidia.com>, Stephen
 Suryaputra <ssuryaextr@gmail.com>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v3 2/5] net: bridge: Add support for
 offloading of locked port flag
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
From: Nikolay Aleksandrov via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Nikolay Aleksandrov <nikolay@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 18/02/2022 17:51, Hans Schultz wrote:
> Various switchcores support setting ports in locked mode, so that
> clients behind locked ports cannot send traffic through the port
> unless a fdb entry is added with the clients MAC address.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  net/bridge/br_switchdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index f8fbaaa7c501..bf549fc22556 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -72,7 +72,7 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
>  
>  /* Flags that can be offloaded to hardware */
>  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
> +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
>  
>  int br_switchdev_set_port_flag(struct net_bridge_port *p,
>  			       unsigned long flags,

Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

