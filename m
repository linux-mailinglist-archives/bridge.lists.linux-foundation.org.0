Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2EE56195B
	for <lists.bridge@lfdr.de>; Thu, 30 Jun 2022 13:38:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1732F61330;
	Thu, 30 Jun 2022 11:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1732F61330
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=BiNzjnGL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHIYshjjePfo; Thu, 30 Jun 2022 11:38:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0A99F60B02;
	Thu, 30 Jun 2022 11:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A99F60B02
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9CEC4C0036;
	Thu, 30 Jun 2022 11:38:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AE49EC0011
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 11:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C615607EC
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 11:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C615607EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ainpmrAdwKXn for <bridge@lists.linux-foundation.org>;
 Thu, 30 Jun 2022 11:38:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C6C1607AA
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2059.outbound.protection.outlook.com [40.107.95.59])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C6C1607AA
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 11:38:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pv/MrnU/LrYOZTd4cC/4ZooyB5G39qwbNjjlZ82jsScTxbaqOdG08SeV2qj0uvPVlOmQHwGU/icKrgKjiKkNJZTKj9IFM2UhOo122bAVVEhB1058mIfykru3zLvCwWm5pxgFxLyC/mhqzICC2bDIhPbyoUsLUWoZm3XoAaIcWpe6gcieLLCwYA41PhdGieDS/iWB/+VPozKO1DZXsmgLrfgMU4QyNhD23otP9nfpnC6K8TlD23mU4f8IYsbN9lcBuw7SpaN9v0q9Iepmn+6q6Z57i3q3CC1ajXTlDQgxvQMn/N+W7PNuwrbZiX5MMqmUOpXQckFyI7GQszfs0pLuwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKujan2IbH/dDqQkS1tM31TozdGPb8fajbOCPRIL1q4=;
 b=dS/7qxOVbEpmGrRxG1odZqThv5TNPnZIblbrr0HNS6auRgs2QirDWo/d+5SCXOgSRAEpFD1km5iAoR9/rS5I+V1Nry6hzAGeRKf3+/xPfOgitIWgoYbxepb5tIy5KNHseH/XE6Lopd/yeLkqmd9taPEVemb7MHZhso62DyNlXt37V1Eo3nqDaBj2G7rMj7EXFvvu181wEha8Q5phsPyuUqKk8hrHozBiRi1IWp7oIY24ZhQ/onF6bwwrwmGrlFDrji/9jg3Mo6zpwhWH3uNYHUCQSutcj8101kMPa8WG+wuxcCxFhdk70Vh/q32p3AZ0h+b++2AHX76JUx+adNw2fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DKujan2IbH/dDqQkS1tM31TozdGPb8fajbOCPRIL1q4=;
 b=BiNzjnGL14vJE6QnbJ5LymQDSqNPZMIEwenj54sE2rgl8Z0H1w/7e4kMAR/bQ4oXq7cmeaDe3nkvDkOGjmUy80qHPJuknPKUKf+i2ci+w/6IbyGt0iYHi4CJ2Sm8Kg4GSj0zJ8PEv0VpLIKiwSl8ajH4RPhtHDoH8jbffesCgePzdaSgx1ovJD55W2HPcdaltHpwUGmbPhWl9VGHGuqM1PDp/jPUlFkrmutlGO9VMoz2Q4vkHJidZjjDk4LJV7vB8ujeiYfx/efTZww+phK0TFrq2T9zFoig+RKwxQ5+0iXUM3vxXPBusncg81bquthq/XTUiKVciau1+gMQ88NMWQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CH2PR12MB3894.namprd12.prod.outlook.com (2603:10b6:610:2b::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Thu, 30 Jun
 2022 11:38:02 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::611c:e609:d343:aa34]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::611c:e609:d343:aa34%5]) with mapi id 15.20.5395.014; Thu, 30 Jun 2022
 11:38:02 +0000
Date: Thu, 30 Jun 2022 14:37:56 +0300
To: Hans Schultz <hans@kapio-technology.com>
Message-ID: <Yr2LFI1dx6Oc7QBo@shredder>
References: <20220630111634.610320-1-hans@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220630111634.610320-1-hans@kapio-technology.com>
X-ClientProxiedBy: VI1PR07CA0169.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::17) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e244c5ad-d3cc-42e2-c0b8-08da5a8cfd98
X-MS-TrafficTypeDiagnostic: CH2PR12MB3894:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ovOyiMWS37MK0N4CAAa21kBUArr7Cs9NyTpBfvtToyLQLNYN8aB73I1IplmzUM0hfF+dgidnS4UZul5GLFrjseWO6pf9KrNXpa7i5c4mtT/+Xfht6SfWWRULYaB5kn5D3M2YL2tBemvu5HeEZhqDR9JneVIyibfZgo2smrB+op/2C5oY/cSZV2KULq/dClo0w78UbJ6Mh6Mqkd+LunMZtmLsuAV5wGOD76U166me/QjiorTN/rRFwAS211+bd6vzi8Uhb1lJhgiQHNxXS66tGHlDHVZe74j5prme+oCRfuIjDWKhpY5Z4GihOQk8ZHtkJMApHFtavp1MXgK9lnaWS1gBmMS6dpxM5z6NMBdD6kJeBPsCxOZFkKLR6k8st10WHHE/wThqCR0S/ZcqGT2AgQzCXwzR9B2HlbBsW/Kb+vO1fxWk8d7yyieQ5h3g6hTLFCYdlDIzebv8PKpG2Id3S8vv9eFkroTpJOnwYLuY1R44r2VDQlTR4CRayDNH8Q2ju13R6v1XKYRzI8A5L/BwA8sXOA9+/fTBgHiIkYI6N3qcbefN6yr7ZpCZRjR9JFnGZPXTUAiyhZ3vuatlJV92XCyBFcel7D1++ju+oCnykoqf/ga7stAPixTfsf45CTmcHh+QaaQiILgZ1tGvFI2NpbRWSRofEDaooT1cNOWDHBHm7PyhIn5KZWmsbZSIF4mFP1mhbe3PJek7+f1HDpjt+7/Jh+rwFGrtlRQ3/jm7H/MQuCNf41r0+w+g1iBW0rM7v1fZmDTCdpar9F+qDq/5TQT5s5ezA7TACiFI8K3LcGTpSN+WVixtBJoU67DbN49HQh5FnZq61RR51cZkMSQdAQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(6506007)(6666004)(966005)(38100700002)(478600001)(41300700001)(6486002)(26005)(316002)(9686003)(54906003)(6512007)(6916009)(7416002)(4326008)(66946007)(33716001)(5660300002)(83380400001)(66556008)(8936002)(86362001)(186003)(8676002)(2906002)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lWHcmdMz/IBOxaGM2iAVoKoyHNlyQYQAGrRph9shcOAHjCAZ5c3t8dH2yvkL?=
 =?us-ascii?Q?XRwmqVXs1kQphrWj1njPvE1j88O4In25E474Zac3KD2I8RFnkXXmnzfSxNTs?=
 =?us-ascii?Q?87aeGoE7pIQNl4EMjjC3vilgl9AWJwi8Elp04MYro0WeZWx4d1XkBo7JQ8Nm?=
 =?us-ascii?Q?x0MEceQmxGoMinnTQqLknln+TSVVZRnUenS4vXMRsxp8TnhVZm2vXQhiB+rF?=
 =?us-ascii?Q?lv7VHmd4frUoYGHVvvQNF2MohCtV0c1gjLnhdcFClsi9maBAmk/TcWIHd58r?=
 =?us-ascii?Q?jlWJwKIUzzOmdUmmTjaeB9VQj0OBBrj+XuN8CgAGHq6MEDrsuurJf/00Hr1l?=
 =?us-ascii?Q?bBnCDY/YysYpbZpijn4JFb6aujoQ5X/krrPv81QU6ckvyp+oXfuRUl4pLN7e?=
 =?us-ascii?Q?0GZv0ddctkER7bF/vOqsm73AW1oeIasWnMPojMz59bZ7k2AQC0dvmssu4ez2?=
 =?us-ascii?Q?/KUQSqJ4xMkJHTKQAXIJoB/VYP1sYgS2g1U6uptuO6bg0LcYMz+EXt/t4ifG?=
 =?us-ascii?Q?sZWOCqE1pBD3vdqOEV6lg82YBX4LJftz5VkwJqWlX/328jO6C8tQFbLsp2Yn?=
 =?us-ascii?Q?ovL772le4GxHTUSDG2v66hSKo0SkJapPU6paLj4gtjrDTGg03DouVQUDGFPe?=
 =?us-ascii?Q?qlT/Hd97wmmUQ83AiTSkH189i9E2S5cPuqKsmU2VV4bj1NjYUu4XTlZJ8qjc?=
 =?us-ascii?Q?fyAC+H+qFwJ6p6MJyPXsHN7NeTwf0rSdMAVyZ5fc6ZwnLlOb0YuYa0oeF8Xo?=
 =?us-ascii?Q?GkRv3IVbPy+CChPtqKTy+cce2UzJRQIosaSlUCyXWDyk5hL9rlHKQYQDGw6C?=
 =?us-ascii?Q?+wrZvvKkyVxb5CuzeE1Dl5LWCe1o2Lc9Ez0MEHjr0fpcom+hh3mFID/x/7H2?=
 =?us-ascii?Q?UP2nbmsvqP2ii9GssLtP/+2U2z1jGO39ON81yTTnG/uMiyFzXoqLjGGsG1bl?=
 =?us-ascii?Q?X+DphnZftYHgEqhIAdpmJg8ChxM3tI46Ya2bocFz2lIO+wpw94ZcbkZQR9k2?=
 =?us-ascii?Q?w7qtzL7OBhwQBAy8r6DqgVo6poAi9TzjEiN6L7EoKol/wrDTrN5ykPwO7hz3?=
 =?us-ascii?Q?n9gj6cJcm9DAnr00cOh83Nag0L5kqmfjhPyQISr/PJgubFK3FgfSGiaTifBH?=
 =?us-ascii?Q?KPqCpbOorrOrY8ouByClFP7I6+13NLMwHffcEXxgPc6AGXEpntLxbHidT8wb?=
 =?us-ascii?Q?2/8BIcu7xWboptpUbKUVULDz9Q9PIXDMJ8J1KPLv5+yEk5ec+q1//IGhprqJ?=
 =?us-ascii?Q?vPZro2ptgw5I+mXjzqoCmI8sFnDkwJ8XvhxwSWGQEPKxtOtaEA7dpp6KKV7I?=
 =?us-ascii?Q?x9G0ZyVFNQxKuD7eR/7cxE+ixZm5dWQ4EBgDRvX9/yR/+S+Syaw8EDHynv4T?=
 =?us-ascii?Q?mH7IpHZ/A5I+fGtc+qdmTM2osb/gTEU2OoHRBtycQuOS/UgyC9HG6G0voyez?=
 =?us-ascii?Q?4sNrA+LB9ERbhpMvxg6asRzKgxWVpw00shZycfQDqDqSwnKXZ16wMBkwYNma?=
 =?us-ascii?Q?wO5bUT4f1RKQFxUwO8a0sB0lM/sb4dgZK0tfg+WFT65s38CiVnMCJkCbIpDt?=
 =?us-ascii?Q?Gp76T/mVrsZ5sMOGsdWBhWztD8R+dgzFeelJjY+2?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e244c5ad-d3cc-42e2-c0b8-08da5a8cfd98
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 11:38:02.5257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1HzybaR9/ARgc9OYYyyGFvFXgGQckcRkqLL+IsKfer/ZHkDoPs2tDLhQTDO6F2XvQgBGJJTp4YKP7LRp7M+SyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3894
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

On Thu, Jun 30, 2022 at 01:16:34PM +0200, Hans Schultz wrote:
> This patch is related to the patch set
> "Add support for locked bridge ports (for 802.1X)"
> Link: https://lore.kernel.org/netdev/20220223101650.1212814-1-schultz.hans+netdev@gmail.com/
> 
> This patch makes the locked port feature work with learning turned on,
> which is enabled with the command:
> 
> bridge link set dev DEV learning on
> 
> Without this patch, link local traffic (01:80:c2) like EAPOL packets will
> create a fdb entry when ingressing on a locked port with learning turned
> on, thus unintentionally opening up the port for traffic for the said MAC.
> 
> Some switchcore features like Mac-Auth and refreshing of FDB entries,
> require learning enables on some switchcores, f.ex. the mv88e6xxx family.
> Other features may apply too.
> 
> Since many switchcores trap or mirror various multicast packets to the
> CPU, link local traffic will unintentionally unlock the port for the
> SA mac in question unless prevented by this patch.

Why not just teach hostapd to do:

echo 1 > /sys/class/net/br0/bridge/no_linklocal_learn

?
