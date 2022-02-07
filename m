Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEEB4AB903
	for <lists.bridge@lfdr.de>; Mon,  7 Feb 2022 11:51:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 791A9813D5;
	Mon,  7 Feb 2022 10:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GmhYmGZEX0al; Mon,  7 Feb 2022 10:51:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EB1AC813D6;
	Mon,  7 Feb 2022 10:51:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1A40C0073;
	Mon,  7 Feb 2022 10:51:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC497C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B85D060B54
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NcZjFqM5ojtV for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 10:51:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on20613.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::613])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D8AF605A3
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:51:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNCct+sOLgyW9MqWlkdLu1Z1nw2G000Nu8Yiii6aFJKDcwn4/X6Wujz/DaQn3RdKgboXOxkNOyfupEgMPDE2cn9wUog05vSZH9c9kH+XNYTioX7Ak78ZydU4skcUm1KD6TKj0GcEg8Txwn6e8A177jC7euexbedgAOtPWPA89IALJZ63hSxSWEwINefMuXbLeZHj06NnICn7xCUx350wlXglgqzMuWPKtGzzc04wUaZz+Y+a13sUByzPNeXZtYvuEDoeT5mzMS2rH8wqpD/sEPxyL0tGWV+csEv2RMx5HCVlKK5c3WdYk4MR9+4Ou85BCweO38ypVu8q7BcprNnFCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmOsTMYoPyt+EMa6/G7D2cBX0asmGes7MTGnDcub4SY=;
 b=N5b8JwJcCPloMh6XP/5oG9DRi8VknisEm0QDF/RIwv4nrEo0IIBDcdX7SY/oV/pZkqr/YhgvqmPbd45ak2NwY+8qyMHO0u04bUceR6pWnwfyUps17mJA0mI1YtAJEfv/lFL+Y0i4Hxngr5pxuxZKVzY7B8wldK+ZkdjeoHtBrekIiCbD4zDWJDLPvCngdOxDQQUf1aC+JKkn1d+bTzRXzOnxpsvcPfNfgwnjnetCo63u8vy3h0i2Df3NFZCWHfRxhLaAyUCuKnyJMqu6jAI8I999hk+a3+r09T6Yyef/I60gy/PcFNYcpqlxWpnSPINkHuVt3xoQusMRh+BkC9SltA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.236) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmOsTMYoPyt+EMa6/G7D2cBX0asmGes7MTGnDcub4SY=;
 b=kpxnpZ2fPtPQnQ1cqaqBBX8je9MOc9WFGeG9tF0SgAGZ+wyO/+TkxmyotMUXFtfnnNI3/qkG+m+CIYvpPH+aajiefVC98makLT+XaBQZiiqjWGiUXnmEPq3rh+1gfrMe+i+2vuhQtWclyP29VsA0g+/zINS9fERTHRltR+sL9b6QQrDCbJoUtQJoJ/9V2P8uS5RV8Q8i9hg4ugn5iB0gdb88IRrH08BPEdaJdWb+mdTkwoF6a7G5yAZInWXUDPCYmOvBoLZ3FVtog+9SvxjgyqMeRMptS2+0mP6r66wfdjJGKiFJQSu9v+/jt6kHHhF65IMKZizLe7fa9579D7t9kg==
Received: from MW4PR03CA0286.namprd03.prod.outlook.com (2603:10b6:303:b5::21)
 by BN6PR12MB1427.namprd12.prod.outlook.com (2603:10b6:404:20::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Mon, 7 Feb
 2022 10:51:15 +0000
Received: from CO1NAM11FT018.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:b5:cafe::b6) by MW4PR03CA0286.outlook.office365.com
 (2603:10b6:303:b5::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17 via Frontend
 Transport; Mon, 7 Feb 2022 10:51:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.236)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.236 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.236; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.236) by
 CO1NAM11FT018.mail.protection.outlook.com (10.13.175.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4951.12 via Frontend Transport; Mon, 7 Feb 2022 10:51:14 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by DRHQMAIL109.nvidia.com
 (10.27.9.19) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Mon, 7 Feb 2022 10:51:13 +0000
Received: from [172.27.26.97] (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Mon, 7 Feb 2022
 02:51:08 -0800
Message-ID: <af122e70-d073-cd83-541c-b3a0125c7cfb@nvidia.com>
Date: Mon, 7 Feb 2022 12:51:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, <davem@davemloft.net>,
 <kuba@kernel.org>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
 <20220207100742.15087-3-schultz.hans+netdev@gmail.com>
In-Reply-To: <20220207100742.15087-3-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6881ccf2-f704-4578-54fc-08d9ea27c30b
X-MS-TrafficTypeDiagnostic: BN6PR12MB1427:EE_
X-Microsoft-Antispam-PRVS: <BN6PR12MB142732CB8F4F383DEBA982E8DF2C9@BN6PR12MB1427.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wu55FupcrmMQp9K0KcbraQ5PypTAYvFoLmyAjD9a3jk0PSp5MtysayOTqzYk6ozHBrC4MBhJdyLC6LKh579k2ej6vUKu5x8jgVdxOM6CD73ZS3S5JlykLkV3XkPOM6u2M+akYoyHbslCncLQRmcFx6X93YMeo4nhmLASWrhDf+XYxnjJf4gCCYvaJTpqRcP15mjnN0Lm832GZUNmJfEJWN26dsHr6nve7WF9gQZcYHC8Hdmq70GLs7A6dtxHLcJwm1ZfaNvxzsQUpjCeR0HtOfkVvSU/FpQobk4lSV0YYI2e72DJXhQCo2bVseWyMvjQKiY25Ji4p6Bc8i5sSH93PlrV+RtOzAJAy/1BotxsSxa7hXXAUKAe+kJS/nHWRocYT8r/+QUfQMNguq24uZWgqUa6M0rzSLX0KFLqIHDeSvKpxoFg9abH7N5vRhR10Dq9eTznPvWtR3f/j8wBbQxHM2zqqx/6dsVy0gWI+KBzfCeFseUtIpNxn70jcSB7xdYJirBEnCMK2CGYufbTXHEZ4w21yWtpNs8N4iayBJqpN9KnnWFhmvLBVl4FjpDDo7miCqyf0RMAzdJQTRUaDV9j79uHbOCd83ebGVR/I+DUte42rXsr+xt+8S3ZRv07qW9C+KNpL/9zu71EwKGi8VLF3UoF5ylwsumjRhvYpJyVQ82+UjDCSVLUt8hTXSRn9+PXgGDCbSIPp6Ev4sYw7EVrk7wfb7ccw3hMgm7jJwtCfRD4FgpGuoKSpaqYEcwF2M44
X-Forefront-Antispam-Report: CIP:12.22.5.236; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(31696002)(16576012)(336012)(316002)(6666004)(53546011)(82310400004)(47076005)(426003)(40460700003)(86362001)(36756003)(2616005)(4744005)(36860700001)(186003)(4326008)(7416002)(31686004)(5660300002)(110136005)(54906003)(83380400001)(8936002)(508600001)(8676002)(81166007)(2906002)(16526019)(26005)(70586007)(70206006)(356005)(36900700001)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2022 10:51:14.5466 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6881ccf2-f704-4578-54fc-08d9ea27c30b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.236];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT018.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1427
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next 2/4] net: bridge: dsa: Add support for
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

On 07/02/2022 12:07, Hans Schultz wrote:
> Various switchcores support setting ports in locked mode, so that
> clients behind locked ports cannot send traffic through the port
> unless a fdb entry is added with the clients MAC address.
> 
> Among the switchcores that support this feature is the Marvell
> mv88e6xxx family.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  net/bridge/br_switchdev.c | 2 +-
>  net/dsa/port.c            | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 

Hi,
For some reason I still haven't received patch 01 which adds this new flag,
so I'll comment on this patch first.

These should be 2 separate patches, there is no bridge: dsa:.
Please break them into a bridge: and dsa: parts that add the flag, it also
makes it easier for people who have to backport patches and fixes later.

In addition please mention in the commit message why the flag is
added there, i.e. in order to allow to be offloaded.

Thanks,
 Nik

