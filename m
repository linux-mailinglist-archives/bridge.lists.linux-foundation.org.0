Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9A6CFBBC
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 08:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05B0140932;
	Thu, 30 Mar 2023 06:37:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05B0140932
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=dHAGnbvQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S7rxEGbD8Okh; Thu, 30 Mar 2023 06:37:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3C9374088E;
	Thu, 30 Mar 2023 06:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C9374088E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9561C008C;
	Thu, 30 Mar 2023 06:37:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C538AC002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 06:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 696F7615A4
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 06:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 696F7615A4
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=dHAGnbvQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v2jDmE-hDr3K for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 06:37:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AAB461599
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2062e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AAB461599
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 06:37:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cV4iHn2E5WAUe9ngtAgPKu5PBl1OzW8C6LpwIZV3XdyJ0sIo/XrQIWNaROjqgjr5iJ9Tyu6G4qB3G32FcWhxWJKRBuVxGaV6LlxD5rb60W10MS1V0IiWJScx42f+9NLBgFk+acUkctr0wTJibL0waP2a+RGv+HR/nnPFIOdN1pRZp0btyTl2rHpJTytS027ETgnCBnIejElAs/e4Ei0xnYzBJYnoclz7lEhfvQiwUpCqV1oLZr5J4HRcscIlsoNUjL7OionzudEbRUzgZ1b+nsLfvv23MLBIVhYEa1GCO0tIL7mlCJsAb/4VRIe8IKhhEBjs09wxv8jDijpFSp0MNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+5Ce3dsplq5E+KC2YuITorNi4q0ZqK+gZ6XyNtH+Gs=;
 b=QRDfxgFvtADVYERG+QOKCLOzt4qVM1slNnmuEIanW7yg3E0/gSkOLBTNjG8mEICj9jIEr44WIPrerZN1w8WFihW0GKxf1nPlVkwL2OWjT9nEOjvA3kitvq2xg9lm6nMYWfE4WrXfW2bHLK5UMu2m7VlTVAJSQZ8x0asJ+ikPVcEjBh7J902ccTmjg/9l3mY3IstkAYSx3UhwMf437eI3aWZldorN48KcFpa5gwukNUfsYRpfiRgIfcxPlmoqYjdwIFjtC/2YmK8tiLPD9a7LLHro52WiGFkjvxyLG1bVSGkPFgzVUO6rRGBQvAFc8LqB5JwCdOnP3Wspl02lPZAASw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f+5Ce3dsplq5E+KC2YuITorNi4q0ZqK+gZ6XyNtH+Gs=;
 b=dHAGnbvQIkUnmQRPQSiJyYQiDtuOYPl8GdjgbrAZXTtstAU7KsMd7j6eAU92i3djxs0lAca92Ddb48ztrluW01v/4XIYbZ1kMi2TGqFv/Pdj6U9/Rp6ahsNW8zNuTBD77r37GFPpNSEgtxj49+aI67PdQY1+mFLKg9VTL/c4P9DzsB1pUN4d6Gam1cNgDHSxraw7h6GfPIhwa7kLAJ20EgzbO7ndAY6XEfgRLvtNrtViZT1/u/SYf6lLysrknfSDYEERV4SYmQmg1kzrdGECYCJSFS5JFbdB2AeCxFQHCrTfJKqeblSSgPpN5Jwy2Cg4l0pLgIZjtarHXy6FutMFjg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY8PR12MB8242.namprd12.prod.outlook.com (2603:10b6:930:77::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Thu, 30 Mar
 2023 06:37:46 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3%5]) with mapi id 15.20.6254.022; Thu, 30 Mar 2023
 06:37:46 +0000
Date: Thu, 30 Mar 2023 09:37:38 +0300
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <ZCUuMosWbyq1pK8R@shredder>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <87fs9ollmn.fsf@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87fs9ollmn.fsf@kapio-technology.com>
X-ClientProxiedBy: VI1PR06CA0168.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::25) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY8PR12MB8242:EE_
X-MS-Office365-Filtering-Correlation-Id: 42bdf03c-4ae0-4df4-df09-08db30e945c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nypkjg9yPrf+u1khZqsES/mLbBXBhbdErDSjpfxQh3a+oGv3B4q4w1j/zOExzeB85XSkyevQFP5x7YV9AmKbcZ5zWY9ef+I5GQnAoNkp/MbmmAVpw4LwB3FkkxxtBeBICQWgNaBUypIBILMPLNxU2bSuovqn/uJTRPAF3eUSizQeAef52OhpI10+RNz92d9wUaUQqKxnjZ1nk9cgk1aT1Ee51hm0rKw/0WOgXKKLO8XFfEbGYIc6xfrHovwc1A/GH6DJWb4oBZpcMRvUBQ2rOtGdMWvK1VB+BVF8E2AK2QheIybYoiz5T1BWWRA2JqqAAZExZRJDX1HCfcUoGVjjmjdQzUtHKZZHuR73VksuImI7MUU47SK9BOtC2AYjds/uFo1/NIw/ThtJW3lTniyvDA61MUAOoaZ4OgQNLYmnMH1R/qVu/gQ3RLCdCDan3cVD0An6d1qdHtgA0yFMDcd6F1VH34zFA/1f92VS1/U0SC9/nHgi4h5BXRZJZUCyAS2BMrl5Dzsghdu/CMRrjT+oIdGecKGSaZJBO0M4Sti8JPTMRT2azAeORkIQZeLICrVT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(376002)(136003)(366004)(39860400002)(346002)(396003)(451199021)(83380400001)(7416002)(6506007)(53546011)(26005)(6666004)(54906003)(33716001)(316002)(478600001)(8676002)(6512007)(66556008)(7406005)(6916009)(4326008)(66946007)(66476007)(41300700001)(86362001)(9686003)(38100700002)(6486002)(2906002)(5660300002)(8936002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n2R/2z7Q8xgZdfEhf8hfHxYRnSkIFbbEbjTWMDjCH7KpCSp07Di+/b/JPpn5?=
 =?us-ascii?Q?EPAYpIZa738bFljcYS21QOayVg5bzdnH+qhW4N/yZlSFg9Prn3T+Ljc8P5m+?=
 =?us-ascii?Q?5VT+LIVgAIkpKuLYWIl8g3WfdaDqocl7iMmfqyuY3uEOh2cGFVHjzIJIJ5mR?=
 =?us-ascii?Q?JPCapid6V3Nq8xQFNdg1y3k7mYxy4bjRbPvOrPjv+DbILNHvi0oT5AmUsnTa?=
 =?us-ascii?Q?UgUY9z7zxsIsUN1ZwkMqe2HK4KlosTzjy/HdwFEypPL1IPi0BafzdEpInsdr?=
 =?us-ascii?Q?9gqcQrV5f7E9csmFwwPLcvu2l1Jth7z1iOkGGN7wBI0kOLTqa/DxJXmGDSGW?=
 =?us-ascii?Q?3tkX4gpBhCfZVTK7XSuwRNG5QdwgbjZxmx2W7R3JNHCrHrfJGMB5yP+18bXN?=
 =?us-ascii?Q?mGzmzi2wvut5ISomzTg7Jz6BORSBX+wWmSlmvyYo8OoXsUJxy2YXOPd6z64q?=
 =?us-ascii?Q?TCvN7hciwL+CyM6wKQbjJxS73wscmYD7O+NiPBtjimwyRRenIdRG7bwXpddx?=
 =?us-ascii?Q?XecD161JhytY8jU8pRT9Ow6+NDU96+NT8hL+kJlcEwLnHOujyRchMzAeO6z1?=
 =?us-ascii?Q?xKjvzy/wTL4YHRMM4X6HnT9JDlhRLZGs3zsMHgcka6i49rmtGTgde4A8R2er?=
 =?us-ascii?Q?respFvpUtxuyE02ZHnOEcKfVjkPN26yHkc/AiyrTFm8jQZmQ7OHkNloBGj0E?=
 =?us-ascii?Q?gZAiPzCSSEDeXYFOeg06nEVY1ao1OcgSUjLSS5FJd/t1u7zuyo77Q8ucgL6D?=
 =?us-ascii?Q?o3Gu3joD9CBwNF3m/3eADWhveNyv2LfsXBPRyWexyYDLAw8EdSUgGbKKlyk4?=
 =?us-ascii?Q?/OiOTpq70UXgNpNZKysg2htWnVApcCryZuyeKsQ2pVS7a3Xmt6nRUFYXfBP1?=
 =?us-ascii?Q?N6R/3aFgOZzLBp9dTac8AOuMWpFl0cB+sEOMRzHf9i0Jj5mharbYSAU5eSY6?=
 =?us-ascii?Q?8YRjsHseHR7KRpVwUawI++ukpifEJrrM4R5b/WjfziTi3HVAWk6oElWiwEqi?=
 =?us-ascii?Q?s9d3XyyqftS+d27VXNXbzYDwQeZp/EUC+pAF0CZW8Nu+jaJmg3rMbIRay/sL?=
 =?us-ascii?Q?IGkl4Whe/6lU2wcGR/mPWV7D1V4Mcxv1DK+X4hC0BUJ/+SjEqd3h4+xeo/4Q?=
 =?us-ascii?Q?jZpwvT+Ks3RavTmxfLa+B32LcKpSswcKtiLvkJhAtzLSgSnnYxyhGQPMukQk?=
 =?us-ascii?Q?qIHmcYy0X6YNnDwbE6ZrZlNK4d7fZ0IQDXeB7hIDlR0Kvlr7hm+iqN08QwUP?=
 =?us-ascii?Q?geiPwYwx01QW6HNU7/Mzxz+i4klepKLZNd7IzUBvPGqGKKo9XWBQaDG8pasb?=
 =?us-ascii?Q?zL5unPOItHUZCR/YbIWcZe/XSFGh6hcBNk3stSnjJm4Tpj4z/+u9e/begpvh?=
 =?us-ascii?Q?F2slwU+fsRVDD6HMypp73BLZtYD9e8ck5O72rLiYOSFBqplJpwzjQ+3/Xg2k?=
 =?us-ascii?Q?rXXnV9W2HtNVh6T06I6xa+6vUIWRY6l/cV9br07QS/9WTO8XAuGwjlox525R?=
 =?us-ascii?Q?pgvzya2iXL5eZabPhdmtoI12uhC8neDBBsIzoFN+VTUmbQwJSsQ6zTbhEr59?=
 =?us-ascii?Q?Ii/6mZ1w+A4d3lMEGJFpEWez3wLdJr9Z42cDEkjZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42bdf03c-4ae0-4df4-df09-08db30e945c9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 06:37:46.3646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EQbZj3eb60T8pnYJQH6DesNiWenc6pBFlWnLRYa/JXN88R9j6SEodb9Q0UdREPoyUdMlohYgS4DFbf1HGyCKgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8242
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On Tue, Mar 28, 2023 at 09:30:08PM +0200, Hans Schultz wrote:
> On Tue, Mar 28, 2023 at 19:40, Ido Schimmel <idosch@nvidia.com> wrote:
> > On Sun, Mar 26, 2023 at 05:41:06PM +0200, Hans Schultz wrote:
> >> On Mon, Mar 20, 2023 at 10:44, Ido Schimmel <idosch@nvidia.com> wrote:
> >> >> +	$MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
> >> >> +		-a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
> >> >> +	tc_check_packets "dev $swp2 egress" 1 1
> >> >> +	check_fail $? "Dynamic FDB entry did not age out"
> >> >
> >> > Shouldn't this be check_err()? After the FDB entry was aged you want to
> >> > make sure that packets received via $swp1 with SMAC being $mac are no
> >> > longer forwarded by the bridge.
> >> 
> >> I was thinking that check_fail() will pass when tc_check_packets() does
> >> not see any packets, thus the test passing here when no packets are forwarded?
> >
> > What do you mean by "I was *thinking*"? How is it possible that you are
> > submitting a selftest that you didn't bother running?!
> >
> 
> Sorry, but I have sent you several emails telling you about the problems
> I have with running the selftests due to changes in the phy etc. Maybe
> you have just not received all those emails?
> 
> Have you checked spamfilters?
> 
> With the kernels now, I cannot even test with the software bridge and
> selftests as the compile fails - probably due to changes in uapi headers
> compared to what the packages my system uses expects.

My spam filters are fine. I saw your emails where you basically said
that you are too lazy to setup a VM to test your patches and that your
time is more valuable than mine, which is why I should be testing them.
Stop making your problems our problems. It's hardly the first time. If
you are unable to test your patches, then invest the time in fixing your
setup instead of submitting completely broken patches and making it our
problem to test and fix them. I refuse to invest time in reviewing /
testing / reworking your submissions as long as you insist on doing less
than the bare minimum.

Good luck
