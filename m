Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C90AD4BC731
	for <lists.bridge@lfdr.de>; Sat, 19 Feb 2022 10:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D62160774;
	Sat, 19 Feb 2022 09:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 45KOXnaGp1rj; Sat, 19 Feb 2022 09:49:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E9E2E60888;
	Sat, 19 Feb 2022 09:49:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 62CE5C0073;
	Sat, 19 Feb 2022 09:49:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2DE00C000B
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29AC260888
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7G-vwtgq0PRy for <bridge@lists.linux-foundation.org>;
 Sat, 19 Feb 2022 09:49:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2060d.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::60d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53EA860774
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:49:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hR3rxcdYgcMxyAAOXXnyFp4PHzQ4gLSr0+8q8fXwvWvfGu+YjJW9I62hOA+ln+dY22U42wEV4zxf4zEr8wu0KgK8KSXPeQz1FWRwCe/NcJKsv/S0UM8VXVbds/sTfQdDxAwQVzqwjAF/nTYmAYTKd2WaTAgLelTfqRO7MzHUQlzMgU8O7S8hdlk5CUY5JarNoOxAY88zryrNY8l9JtjXiA466qd9b6AASSWPH+vDI8YZapHktvkEL1kYfzjZxQSlONzmRGCQeKb7a/KazLHh0szsRONqfX9mWhEqMf8BgEuCrsaCVChuge7guflU4h6O/EcPswuN1Yme+E/29w9vYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jSfc5UBhPz1PAJ/uMQbOHNfHywtqk085tV/RVc0QDA0=;
 b=SehJArcM+JF0Ix2UayoJm+01/32718j1FOWqsItl2TtfBWcKMJNTfDVAHq60foAsw2hnIDX3nzyiggNxd6wRCTYKu5x82KsxwQz5xYyBTWe4Bv+BeIPXXPRklvPosicD7EVeGR81WiXhpiVIIvohaRp/vv+TUCNQYI+JCUV4eYwHFkjBPa0sAkf9djSnKlPHG/zIkzaga4ySQ+7IdGnrSA+Pt3A5j+YA4paU9smM5h96lcEAXXChxhnXjuKHQdroJCmo+3tjBR2yXGtxd6MeE9NWK6+Y2oV5SajKmeY8mixhwJ4tS0+UzrRiKSZ4M/hiwT0HI8Y2zccOggyBsT0tkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.236) smtp.rcpttodomain=lunn.ch smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jSfc5UBhPz1PAJ/uMQbOHNfHywtqk085tV/RVc0QDA0=;
 b=Y9nbT4cJp0S1LiXPnwE4fvEetRLPnv5YHrEnw2fQvZyKN+Zudlcr48DKgfauFsrG3iDoh+CL5GyUAunDe+9asko4tEkOesmpaGzaAzUgbw6XnyOxdTZrOIC3Pc+/SYZJx4mO2RNtCUVHly3o9Bcn59hWZrIF6wQbII9DLVljZZa1tcBOOIQJoPopyA0zFK/0x4ip3ehB7Gqdxti3hVwNAtNM/kRAgLhPAiDQ3tEjOwLUOoP05+5J8hrI4nayEdoP7ETWC9+cIusKfMQlALFXDBnGOYFV/+2KSgCbdcgCGlU1P5eBvOWtqGgEm61DNL+KBTQGn5nx7rIk0xeANLkaWg==
Received: from DM3PR12CA0069.namprd12.prod.outlook.com (2603:10b6:0:57::13) by
 BY5PR12MB4308.namprd12.prod.outlook.com (2603:10b6:a03:20a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4975.17; Sat, 19 Feb 2022 09:49:12 +0000
Received: from DM6NAM11FT021.eop-nam11.prod.protection.outlook.com
 (2603:10b6:0:57:cafe::4a) by DM3PR12CA0069.outlook.office365.com
 (2603:10b6:0:57::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.15 via Frontend
 Transport; Sat, 19 Feb 2022 09:49:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.236)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.236 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.236; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.236) by
 DM6NAM11FT021.mail.protection.outlook.com (10.13.173.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4995.15 via Frontend Transport; Sat, 19 Feb 2022 09:49:11 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by DRHQMAIL109.nvidia.com
 (10.27.9.19) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Sat, 19 Feb 2022 09:49:11 +0000
Received: from [172.27.1.59] (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Sat, 19 Feb 2022
 01:49:02 -0800
Message-ID: <9ffcbd18-bc50-cc82-3582-83b1f10e31b6@nvidia.com>
Date: Sat, 19 Feb 2022 11:48:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, <davem@davemloft.net>,
 <kuba@kernel.org>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
In-Reply-To: <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0aa2f904-fd10-40ce-dea5-08d9f38d1523
X-MS-TrafficTypeDiagnostic: BY5PR12MB4308:EE_
X-Microsoft-Antispam-PRVS: <BY5PR12MB4308446EED6453F6E132EEADDF389@BY5PR12MB4308.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OIcmmWyCSVA9XLSRqxVH83/sItjoocpUFHl1UFD8sIwON+mFwLCDtdk+K+mHBsBsvGIg/iSc5CXfddjQOh70DQqohVRiCff3JrngebHzXR2THBkplOwLCBrU0uNjAqqwtebjCclWHCA/ln20RVPhrTOcYFfZiPf2B1To1zeS/varIFA0X6rmSEF4IRyIddwK63+MERKFHk6txpK12Ci2R1KKwiE2lo/J3uJTWS7iAn8ORnAj7XrThEdgq01I+zFPy3u6pPRVVWjnJKIH+0ogomczNggqaP5HaI2WEYLdL0GH9dyQg6+joZdf/xaUJfa//uohQRgeM8RA6ZGW2leSD+XUIcBsVxVBnzAszEzRfc70q0gZ01DEFujgCF+IE0Qj5ZM3Vb2xI/UBjmGTfji1HYZNlpnDp/la/+uLXCSYMbR5j0z2y5gahe0ZXUvgPwdzR/IwfPedPSN4Qv4EnaBW10v6CgQttpNoDdm+5zzU3LZf4legRSKDENjXSd5Gs2e+bYu6WJsgzPabCaEZyD9jsRmxn2B28YCsdmexFFrzTRA4n/bF6iZh7QbNeOCJHgY6cMMfo1ZN+DeNh4kw3WGCLHwn/kHRXfEHJslcDU2rt6SMltEBCRGZLif1jYNndQ44j/05XOGf2gJsFUULqAKXvSW0OyZ2vp2yy/sKP1XOcPsvVn2ChPYH/Bzph+11uL5r+t/lBG8WK70eLv9GXXRsMcz5ddfSen/MSQqYeIfe+H0ifRSRP2msKtYsulaXqKCk
X-Forefront-Antispam-Report: CIP:12.22.5.236; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(36860700001)(2906002)(70206006)(70586007)(31696002)(81166007)(86362001)(4326008)(426003)(508600001)(36756003)(2616005)(8676002)(83380400001)(6666004)(40460700003)(356005)(8936002)(53546011)(5660300002)(82310400004)(47076005)(54906003)(110136005)(336012)(16576012)(26005)(31686004)(186003)(7416002)(16526019)(316002)(36900700001)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2022 09:49:11.8996 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa2f904-fd10-40ce-dea5-08d9f38d1523
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.236];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT021.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4308
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
Subject: Re: [Bridge] [PATCH net-next v3 5/5] selftests: forwarding: tests
 of locked port feature
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
> These tests check that the basic locked port feature works, so that no 'host'
> can communicate (ping) through a locked port unless the MAC address of the
> 'host' interface is in the forwarding database of the bridge.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  .../testing/selftests/net/forwarding/Makefile |   1 +
>  .../net/forwarding/bridge_locked_port.sh      | 174 ++++++++++++++++++
>  tools/testing/selftests/net/forwarding/lib.sh |  16 ++
>  3 files changed, 191 insertions(+)
>  create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> 
> diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
> index 72ee644d47bf..8fa97ae9af9e 100644
> --- a/tools/testing/selftests/net/forwarding/Makefile
> +++ b/tools/testing/selftests/net/forwarding/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0+ OR MIT
>  
>  TEST_PROGS = bridge_igmp.sh \
> +	bridge_locked_port.sh \
>  	bridge_port_isolation.sh \
>  	bridge_sticky_fdb.sh \
>  	bridge_vlan_aware.sh \
> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> new file mode 100755
> index 000000000000..d2805441b325
> --- /dev/null
> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> @@ -0,0 +1,174 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0
> +
> +ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
> +NUM_NETIFS=4
> +CHECK_TC="no"
> +source lib.sh
> +
> +h1_create()
> +{
> +	simple_if_init $h1 192.0.2.1/24 2001:db8:1::1/64
> +	vrf_create "vrf-vlan-h1"
> +        ip link set dev vrf-vlan-h1 up
> +        vlan_create $h1 100 vrf-vlan-h1 192.0.3.1/24 2001:db8:3::1/64
> +}

Please use tabs similar to everywhere else in the file.

