Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E605C5FD8CA
	for <lists.bridge@lfdr.de>; Thu, 13 Oct 2022 14:06:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8A3283F00;
	Thu, 13 Oct 2022 12:06:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8A3283F00
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=j3jO9JEP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktC6cXouhyIB; Thu, 13 Oct 2022 12:06:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E532783EFD;
	Thu, 13 Oct 2022 12:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E532783EFD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95B52C0078;
	Thu, 13 Oct 2022 12:06:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADC1EC002D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 12:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78F0E418E8
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 12:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78F0E418E8
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=j3jO9JEP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QvnGWo3z5Wuv for <bridge@lists.linux-foundation.org>;
 Thu, 13 Oct 2022 12:06:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 683934184E
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2084.outbound.protection.outlook.com [40.107.220.84])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 683934184E
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 12:06:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEHZ355O9XxOuPmTdSZ/lGt3yvgNmrLTlkUKuaKYPwZeI+ZmbSo11XSUHnx+3HG57GrMhgnxbGO0mG355622uW1Ne8EVheGbt1e+DpmkKjAwxn849LAyP0snV2zf9O4XOO9jvf1OKehygcVcCJgMD0eGUvtCvAdLNXf3XGBtN7FEEoq3kQA84PCY08Oo1kahdm1ZkU9lMz6iAJFRvVtELQtnnku/1SllNjoE71E4K1kNMsi8n3qH6SNyje3oj66ODHW+2auXe5H8OBWFdewPc3VFElmxkRkXskDSASTvLZcd66zA9QUBUlmkrKra1Gkd5CNPLxHrSFTpeO+N+iE15Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GtPFgGKxKZx2Ih8XPr6rK00BO17m4sAboKSqoMuysPc=;
 b=fmXQ8UhA7c//VQed8anqFmtziMaMctDP+MFw7M7XEsDsuanceDmC5IJTh10aHvJOJb+KjlqX3tZ+b6qBFEahxbBV4RrTCD1h9as7VPzQCeCijlidXCDU9b+dwA8kvkf7gf6e83BHdEnKLNXalaCwdor4IYpypvAYENNIb+4auGVGZF0Ua2PvwS4ykbO6jocdbqTdhBrB+RDsd6K1iYFKNewS8BEIxLEiSH+qlamfA0crNr4lLFOSUsK5/HN2iOsmkT2C3X0msf+rR6VcdcIe3KJMCA6IVIOEASRv2vuf2ddbsH7FWYlC/w53WsqkjBE8+cg/hOwBj1GvX9R29MoFZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtPFgGKxKZx2Ih8XPr6rK00BO17m4sAboKSqoMuysPc=;
 b=j3jO9JEPiWVG99AbG4RO3rB86jaqZFqH45qMPdCRE1Ma4jdDLh/yeGZhYcJ/kha13aU2LzIFoUwHohLY3wkQB2Onk1MVdgMnSCG897RssDvc43h0RrRoifapgobtBgOOZXgVKxVX+YBdUWQWb2GOSzmmvY0vWt7MxiWfGT/fCEy6qc3WH4Oc6ra3+i7d0T+tpau2FPuyj0iTBqT16GxtIZCi5JJxSdsMumMigIxSI8KJHzY7RqOwafJHeZPCz8s0v16Pu5nreCjEJ6KTHuGTHJZAMQIfgHeuDknNVQJaAb39RvDNmMONFOzAUAYNVcgdkSFTfqKMV9VkjhIvxXPxHA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CO6PR12MB5441.namprd12.prod.outlook.com (2603:10b6:303:13b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 12:06:14 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%6]) with mapi id 15.20.5676.031; Thu, 13 Oct 2022
 12:06:14 +0000
Date: Thu, 13 Oct 2022 15:06:07 +0300
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y0f/L9IT6dbwlZAg@shredder>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
 <20221009174052.1927483-10-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221009174052.1927483-10-netdev@kapio-technology.com>
X-ClientProxiedBy: VI1P193CA0013.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:bd::23) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CO6PR12MB5441:EE_
X-MS-Office365-Filtering-Correlation-Id: cf2d2518-ae5c-448d-5468-08daad135311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6zoIGfy580bhKpbXHcj2Bhey1BvY7sVzhGoB3FAGYUut6UKQ1eDqqLY5YkKnve6mMEpjNU10IHLS3MH8K+XAwQT0oSIowsYVmk3fSOUGxmS6kTaRKdQNUeM/HMOxpG088L2/q8foinsoIkseqxza5xOTOZN3k2YKxIbRHTBtdL26vlHM+3aYDbV4vOJXrCFv3V+wjrup/Jzi7m09+vVQG/SnLlpxyrZjx1bYXlvzFu7PZlyBHW177pXrD1vc27/EZktFAvvGmC/iS7CsAVma0Z0gxzD1cwN4gFfR2gROtMC3X3QcPCfo3VGACj6VYKjGzv8skMy9hOITSARiGcsyN8iSzK8x2sOdtDv4NfACV1fW6cpl0nETGNk2R6FcVaZHSiO6rREkmBBca83He0pAjrqXChn44y60sXle2WTTGSZT2ZCfY5k+a5IRzDEbjx2K1IbDZNjANYthbiPmPCo3npFnHpxTviVVQq8BIWMacLtvdo9bg7SaH7UQOpprteUblvvoe83O/qvQzScvwiyImZ71F/tXwiu9F12nR5qh8FxfNSB7H6TCGirNJJ09TkkNfQfsF+XN7RYpCwUijfGciLP6q+uCH17mhFLAAQTRyv32b+gBDOYgKgX4N+45tdaKK8U2CLp5xYl4HSsZx2rN49TLsyh186UFS8s13+kOmiJStPkYEdVeX+oI3lbP22pfrwaJ0G35EaNQA9rEPEcrnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(346002)(136003)(39860400002)(366004)(396003)(376002)(451199015)(186003)(9686003)(26005)(6512007)(2906002)(316002)(33716001)(8936002)(66476007)(6916009)(54906003)(66556008)(8676002)(4326008)(66946007)(86362001)(41300700001)(6666004)(38100700002)(6506007)(478600001)(7406005)(7416002)(5660300002)(6486002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hpyAmbVfoTa2xFauLcPZ2ByehIFSxrsU/HpSzrMzO8p/w0PfvCsVez05rPBK?=
 =?us-ascii?Q?SbhbioIfoGc+RHJvcGttIbAA5SpQ5oL3e1bv4cQvztcbEKypzRgebwaxGSZu?=
 =?us-ascii?Q?f1t7xMtTUcC+0ZVZBXVQ0QMPTV4vdDcMb663sFnlb79wab1lffinKqT05pz0?=
 =?us-ascii?Q?jkMWmEETsn2U/jrJe38aajEK4Xwmij39sjGsDO35HhA9yMDOovNM+qoU6/Ib?=
 =?us-ascii?Q?3gXXIfthrDoS2HZmWQpYEIWoz41MtopJrna578Cf6qX/QgljguJ6VcBbwSpv?=
 =?us-ascii?Q?+NDKg4TWY9F7MPsBNbQZbCpg6aXQV3y/b0lAimjQcCrw3sPwVO9YH7S++fMm?=
 =?us-ascii?Q?2qZIShsPmRd+437p/a5Hf/XsW5sgSFTFSE05IzL/hr4dm0bfHWzm9gsO8zjy?=
 =?us-ascii?Q?RW2LW724cPsFO47HzXKnTnZnX2Ws6WAKabMsMV7bEWCoAHm8IpWcng5igIMm?=
 =?us-ascii?Q?V6tkfe6UPJRiki39kACwXxecsQ/TxzetNI05oi0gIsd2kfGbnzAHDarMP0GH?=
 =?us-ascii?Q?ZUgccm/TTWg9Y/sebZ5XxAJYB5uS1VTIy0lNJqRU1ITCWkCGVjAsUyEBupdw?=
 =?us-ascii?Q?pzmOQY5uJFgIx04EGH7m5OG9V/MJPHtUudXd+5IM0n+Xlx5uzkR9YPLsFJet?=
 =?us-ascii?Q?hgqYrTS1+rO6CUBY2D2nRvZ/hG1ImclyyA+9WY1sheWEkx1B/am4THPSSUL+?=
 =?us-ascii?Q?3RdZsyRngZsrZcTlBfc6FogAr/z/bai7arVCV0r6sc6OWOoiHDaqTwulpdZF?=
 =?us-ascii?Q?DfunxhsEuFQknG4h3TodjnX3gFbfpxgwYRTrCCRpvhE8Fuv/Tdln2feFYdZ+?=
 =?us-ascii?Q?8PelYYKxT/nZgHFhbGe8IOABopkCBvw3YkNRA7Y5AYjbFGl/a5IUqhnAD6H2?=
 =?us-ascii?Q?qaNhHpKYtju6zjssNOWUK57Uv5ujXzq722g8qheXrAe4UvlQnbHxJa0VQIC+?=
 =?us-ascii?Q?QPwS8rCmlj8+JFTBxZ1Rk6INbqVtBzydnkblBvWgGycQFPWJNZO7LM19lyWx?=
 =?us-ascii?Q?6C9mDSHbZiA5Qaw5DpYl7uVwgKGfJTJENa0NBkpdckAdgQF1FEDpk08VRKTT?=
 =?us-ascii?Q?Lc9TqvN8EvSMk+yDFhCErwd3vFm7B69OUEVmquvVEo/xf25UNtrVTQ4fytl4?=
 =?us-ascii?Q?7SIABOxfEInTfWnTachoqa3YTvhgs1t256EEgf0VdbqyDqj0uwE+CgmIY8dD?=
 =?us-ascii?Q?SX/4mCDZoZcXMoON+iopPgekYoUsFd+uqf/Xs5BBtLNW1VxBzPJ4hNY5ObWj?=
 =?us-ascii?Q?R9pAfL8DftuAnNfs4VhJw3IDthBWPZ4mkYOL/0jDXgRPuPE1dZbeXnHd/f4s?=
 =?us-ascii?Q?eVY9tsZQoXkG0bO2VyH5lOLpGV0BBT1aUWB3O6A9PfYs2zuIfbkXFuNd2OXc?=
 =?us-ascii?Q?dMBZ3G/J2arVHb/MSQmXpcP3mUOQAZgHRHxrpcO483+JPNZOpVCYCqj4XBSE?=
 =?us-ascii?Q?BrTCVMhVxWytTzAhRxdx4EeirVTrRTBcJA6fT/VcE32fgm9Hi3NT2noUsDaT?=
 =?us-ascii?Q?QBggeYMySSUAOpza5j1ZIFKCPtudj0G2jqbpEzAvasf/Azm1PFJ8uTZStHsZ?=
 =?us-ascii?Q?au6W7JRCpIH99uF1j1ae+0Xw+0bO78OLL5Qyd24Q?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf2d2518-ae5c-448d-5468-08daad135311
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 12:06:13.9411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7izZQMBKP3FaSQShSjJcSAiRWqY0UzlTnoPSF8mm7xLnzp4xmBHbpKlvrbCHKdDXri84xnF01bbX0vdbvrlpIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5441
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v7 net-next 9/9] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On Sun, Oct 09, 2022 at 07:40:52PM +0200, Hans J. Schultz wrote:
> +locked_port_mab()
> +{
> +	RET=0
> +	check_port_mab_support || return 0
> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "MAB: Ping did not work before locking port"
> +
> +	bridge link set dev $swp1 locked on mab on
> +
> +	ping_do $h1 192.0.2.2
> +	check_fail $? "MAB: Ping worked on mab enabled port without FDB entry"
> +
> +	bridge fdb get `mac_get $h1` vlan 1 dev $swp1 | grep "dev $swp1 vlan 1" | grep -q "locked"
> +	check_err $? "MAB: No locked FDB entry after ping on mab enabled port"
> +
> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "MAB: Ping did not work with FDB entry without locked flag"
> +
> +	bridge fdb del `mac_get $h1` dev $swp1 master
> +	bridge link set dev $swp1 locked off mab off
> +
> +	log_test "Locked port MAB"
> +}
> +
> +# Check that entries cannot roam from an unlocked port to a locked port.
> +locked_port_station_move()
> +{
> +	local mac=a0:b0:c0:c0:b0:a0
> +
> +	RET=0
> +	check_locked_port_support || return 0
> +
> +	bridge link set dev $swp1 locked on learning on
> +
> +	$MZ $h1 -q -c 5 -d 100msec -t udp -a $mac -b rand
> +	bridge fdb show dev $swp1 | grep -q $mac
> +	check_fail $? "Locked port station move: FDB entry on first injection"
> +
> +	$MZ $h2 -q -c 5 -d 100msec -t udp -a $mac -b rand
> +	bridge fdb get $mac vlan 1 dev $swp2 | grep "dev $swp2 vlan 1" | grep -q "master br0"
> +	check_err $? "Locked port station move: Entry not found on unlocked port"
> +
> +	$MZ $h1 -q -c 5 -d 100msec -t udp -a $mac -b rand
> +	bridge fdb get $mac vlan 1 dev $swp1 | grep "dev $swp1 vlan 1" | grep -q "master br0"
> +	check_fail $? "Locked port station move: entry roamed to locked port"
> +
> +	bridge fdb del $mac vlan 1 dev $swp2 master
> +	bridge link set dev $swp1 locked off learning off
> +
> +	log_test "Locked port station move"
> +}
> +
> +# Roaming to and from a MAB enabled port should work if blackhole flag is not set
> +locked_port_mab_station_move()
> +{
> +	local mac=10:20:30:30:20:10
> +
> +	RET=0
> +	check_port_mab_support || return 0
> +
> +	bridge link set dev $swp1 locked on mab on
> +
> +	$MZ $h1 -q -c 5 -d 100 mesc -t udp -a $mac -b rand
> +	if bridge fdb show dev $swp1 | grep "$mac vlan 1" | grep -q "blackhole"; then
> +		echo "SKIP: Roaming not possible with blackhole flag, skipping test..."
> +		bridge link set dev $swp1 locked off mab off
> +		return $ksft_skip
> +	fi
> +
> +	bridge fdb show dev $swp1 | grep "$mac vlan 1" | grep -q "locked"
> +	check_err $? "MAB station move: no locked entry on first injection"
> +
> +	$MZ $h2 -q -c 5 -d 100msec -t udp -a $mac -b rand
> +	bridge fdb get $mac vlan 1 dev $swp1 | grep "dev $swp1 vlan 1" | grep -q "locked"
> +	check_fail $? "MAB station move: locked entry did not move"
> +
> +	bridge fdb get $mac vlan 1 dev $swp2 | grep "dev $swp2 vlan 1" | grep -q "locked"
> +	check_fail $? "MAB station move: roamed entry to unlocked port had locked flag on"
> +
> +	bridge fdb get $mac vlan 1 dev $swp2 | grep "dev $swp2 vlan 1" | grep -q "master br0"
> +	check_err $? "MAB station move: roamed entry not found"
> +
> +	bridge fdb del $mac vlan 1 dev $swp2 master
> +	bridge link set dev $swp1 locked off mab off
> +
> +	log_test "Locked port MAB station move"
> +}

Looks OK to me. I made some change to make sure we are using "bridge fdb
get" in a consistent manner instead of relying on iproute2 dump output
too much. Please consider including them in the next version.

FYI, I ran your version and mine with veth pairs and both are OK.

diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
index fbe558f25e44..f0bc0bcbc246 100755
--- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -187,7 +187,7 @@ locked_port_mab()
 	ping_do $h1 192.0.2.2
 	check_fail $? "MAB: Ping worked on mab enabled port without FDB entry"
 
-	bridge fdb get `mac_get $h1` vlan 1 dev $swp1 | grep "dev $swp1 vlan 1" | grep -q "locked"
+	bridge fdb get `mac_get $h1` br br0 vlan 1 | grep "dev $swp1" | grep -q "locked"
 	check_err $? "MAB: No locked FDB entry after ping on mab enabled port"
 
 	bridge fdb replace `mac_get $h1` dev $swp1 master static
@@ -212,15 +212,15 @@ locked_port_station_move()
 	bridge link set dev $swp1 locked on learning on
 
 	$MZ $h1 -q -c 5 -d 100msec -t udp -a $mac -b rand
-	bridge fdb show dev $swp1 | grep -q $mac
+	bridge fdb get $mac br br0 vlan 1 &> /dev/null
 	check_fail $? "Locked port station move: FDB entry on first injection"
 
 	$MZ $h2 -q -c 5 -d 100msec -t udp -a $mac -b rand
-	bridge fdb get $mac vlan 1 dev $swp2 | grep "dev $swp2 vlan 1" | grep -q "master br0"
+	bridge fdb get $mac br br0 vlan 1 | grep -q "dev $swp2"
 	check_err $? "Locked port station move: Entry not found on unlocked port"
 
 	$MZ $h1 -q -c 5 -d 100msec -t udp -a $mac -b rand
-	bridge fdb get $mac vlan 1 dev $swp1 | grep "dev $swp1 vlan 1" | grep -q "master br0"
+	bridge fdb get $mac br br0 vlan 1 | grep -q "dev $swp1"
 	check_fail $? "Locked port station move: entry roamed to locked port"
 
 	bridge fdb del $mac vlan 1 dev $swp2 master
@@ -229,7 +229,8 @@ locked_port_station_move()
 	log_test "Locked port station move"
 }
 
-# Roaming to and from a MAB enabled port should work if blackhole flag is not set
+# Check that entries can roam from a locked port if blackhole FDB flag is not
+# set.
 locked_port_mab_station_move()
 {
 	local mac=10:20:30:30:20:10
@@ -246,19 +247,16 @@ locked_port_mab_station_move()
 		return $ksft_skip
 	fi
 
-	bridge fdb show dev $swp1 | grep "$mac vlan 1" | grep -q "locked"
+	bridge fdb get $mac br br0 vlan 1 | grep "dev $swp1" | grep -q "locked"
 	check_err $? "MAB station move: no locked entry on first injection"
 
 	$MZ $h2 -q -c 5 -d 100msec -t udp -a $mac -b rand
-	bridge fdb get $mac vlan 1 dev $swp1 | grep "dev $swp1 vlan 1" | grep -q "locked"
-	check_fail $? "MAB station move: locked entry did not move"
+	bridge fdb get $mac br br0 vlan 1 | grep -q "dev $swp2"
+	check_err $? "MAB station move: roamed entry not found"
 
-	bridge fdb get $mac vlan 1 dev $swp2 | grep "dev $swp2 vlan 1" | grep -q "locked"
+	bridge fdb get $mac br br0 vlan 1 | grep -q "locked"
 	check_fail $? "MAB station move: roamed entry to unlocked port had locked flag on"
 
-	bridge fdb get $mac vlan 1 dev $swp2 | grep "dev $swp2 vlan 1" | grep -q "master br0"
-	check_err $? "MAB station move: roamed entry not found"
-
 	bridge fdb del $mac vlan 1 dev $swp2 master
 	bridge link set dev $swp1 locked off mab off
