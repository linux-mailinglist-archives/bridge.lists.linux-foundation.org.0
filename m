Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A48615FDADC
	for <lists.bridge@lfdr.de>; Thu, 13 Oct 2022 15:30:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0620460B06;
	Thu, 13 Oct 2022 13:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0620460B06
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=NnZnyY3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 47SakODfiEm1; Thu, 13 Oct 2022 13:29:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 29AE060B03;
	Thu, 13 Oct 2022 13:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29AE060B03
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3181C0078;
	Thu, 13 Oct 2022 13:29:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 63A39C002D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 13:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F295B403C8
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 13:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F295B403C8
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=NnZnyY3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIneMFRTNAco for <bridge@lists.linux-foundation.org>;
 Thu, 13 Oct 2022 13:29:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20A5340390
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2045.outbound.protection.outlook.com [40.107.96.45])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20A5340390
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 13:29:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N799NCBeHwhuQbxVzzdi+gcCIJX45dLncc1qXrm9RJHAewIIIux74hQt34RJq375rRB2vlGeheKO41hhx0Lz9rptCoHFLlbaJu673p1bUntW2Ei8yOQYdLPzYKLKcUE9AwYK1+9Nq1AYrqqtF5TAqg9nH024/JciKUjCtUuLfF/f73jy2oaRmfsLyZImmVDIKjfOoh20TPCaSMonIy1Q6MHYH3ZBcxTPIsn7Kzk3Ag8+AjKtd0n65EhDr2BSmpCCBhbLVbVz60nUM6kuIP4WYMAFVtZ80oQSKqXGziYjGhKDSRjStr//Dgf+pRA8U1xOFR+KCDC1jRc3TY1uvv3HAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WyjqTXnskcfRWQYYTQfpNjb32qwOoO4IhxQhv3iAAXY=;
 b=fLVI5Qfo06D2vFDUOwt+xA8wjLMGsHRweUMAc7pouf0xt5Qlt4rt53jyg2vzMBWPdRUEno58wI6qmaUbRV+tBzaa1bQ1Qf2VcfRJLeER2CTgddfD86ikTLeWSvCviJEv1DAmZkyO7eSViOjlbyyjGI6r51gj/9SHYbD+hhVJRdq+fvGfMZ7RU4537UvmD/fRHz6+VZ5HAAeLNRE2JHeBU8YqBeNF2ggVFCbGV5CvpgVefDDPUtGa8VRhmrWH5HbueqcG2HBDc4Xj+UckTvtz0YjpZ0NbUC6te37qntBEPYa5FR71Xe/IzIqWHkEdJvNhPYeAs69Geq6GJAP8Mv0pTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WyjqTXnskcfRWQYYTQfpNjb32qwOoO4IhxQhv3iAAXY=;
 b=NnZnyY3BV3Bt8xHNlzTznDHMRib6T6KKvRGyy6Xm5Lp/dujUEvWgT2oJ7FpCcJfhZtP7EKimZ6idHL4tjKFtN9FIQMa4/FanuQk80GWigBlju+r/0K2t/TF3iZReNoBqy/nn06LQJwz41HkaQDuw5Er17LF5XC4liN5S02fNpd4tIQWn7WrYo8HfbGyozKK3waoyzahN3ppifq2Ukr2RpVZq2RL7yelxJI1EJI7xzl9uQco+tU/AFZB4HkmU96+jHuqNPDCuYgxELlQcDoGVWCfHmxvY64bUUAMKuN/AeA23XbRZrwkhJ/4GIoh2JthoSZ8Xtx2KMrrFPuuCnOMMJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BY5PR12MB4067.namprd12.prod.outlook.com (2603:10b6:a03:212::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 13:29:49 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%6]) with mapi id 15.20.5676.031; Thu, 13 Oct 2022
 13:29:49 +0000
Date: Thu, 13 Oct 2022 16:29:42 +0300
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y0gSxhIEQD9BC/SE@shredder>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
 <20221009174052.1927483-3-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221009174052.1927483-3-netdev@kapio-technology.com>
X-ClientProxiedBy: VI1PR0102CA0067.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::44) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BY5PR12MB4067:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dc68b83-25a8-4b12-a08f-08daad1f002e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8+Mzbi2l9DRA2PK9rpJp4lYg7tOoNNDwwJ/KiOVWa+BUBHQ8Je0DW9JjGnWSf/hGpXW9ubE5p5hQqT1oIp5cSMdCwYqB9AKD9MgExq9JJ+pPR7ExNlixgap6Qn3jw6LNyl8fy/09PXoKWhIg2ECwEobLh6jbVbXzAyB0arsw6EIXOCoOKDOcmPys/G8x/22+QOd5ZfoDT85XGfB4Rz+nctWhdPeH5gT3utBj63CAuFgNf1HEoB0OSQPYhLWdSbfMMH2j1cYxvWsaN6ZOLNgPjyrowuNDnoRDGNkwHc895niaS0XuHWqnmym+lDwi+ZJVQ9cFz/6X0+ng+Q0zgFJ6GJv4Kz5SJdACA1qtSHOL+ZWDkBRPEYQXlUS91hLK1+Xm0UqDibOvJ+MB44UeyP98z4WolzrttQ+Nqp1ftqDru9r9o7IPX5A5SH+mWDOql8I+x/OwQE9XGTktBihRkCcWlew24FA7zwtEhybrbqhMxsiq9o/6ROfmmE+uOa290vHYFtfoQ+cxGy6G/xlTTG52KmPamGjN+etO2vZfEzBLk/0RBFSNZ1OVrJU/Orpafs3vDrk/iAVQ+KTVuzp4p4T9NWh0h7HACkFrymFbAQ5KmGXuGH/uhAocyeiOaFYOMITDF7Te0/ImB00xIwzfadY098jJKlAw/g8GIYpsQZcQTxlKXiQWpPPuzUYwkDtcd7/tFqek4nfh0ztvKJ3F/VL5Vg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199015)(6916009)(54906003)(316002)(6666004)(4326008)(6486002)(66476007)(66556008)(66946007)(8676002)(66899015)(478600001)(6512007)(9686003)(8936002)(26005)(41300700001)(6506007)(33716001)(186003)(7406005)(7416002)(5660300002)(2906002)(83380400001)(38100700002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?51uv85Z1yMIuGeDBV1Iy42PL93TfLM+2A0hV187Fk19o/2juQBAKKTILP+Wf?=
 =?us-ascii?Q?UL3N+5/wk13E4808c1CcXOdVgbSFXq5Zn8ntLrqbTSfCpaQwENzZD9Rx2zhS?=
 =?us-ascii?Q?UToNtUZZTL6frqK2yHCDU6KvDBEytVrb4G2Ay6Csc82BC9x2uN+EXISExIlo?=
 =?us-ascii?Q?rm+qTcdgGbsNZHcDHc9Ue9vVayt+kCNl7kHGudP6Ufr0sMseliB+c3E2Bgdu?=
 =?us-ascii?Q?NiNGWIV0E0AwIXnYX3XFxK0s4tc5WtqrWAA7skzjGtPUAjWazYtViBsdONuZ?=
 =?us-ascii?Q?tzixaf290+8rVHeCtjUtRE0KPwwyLIpXLsHT1AEKwGDYVm2yZOW0Z53YMmUC?=
 =?us-ascii?Q?RIgslR01xy0MZIYSsOPtsysPZAwkvIkTJKHNnk4x15nCTXC/+WZl/YDbT8Lx?=
 =?us-ascii?Q?fT3cy8ZeW0/g2MYmcaxck8krEO1zf8Ja+qFNEtbM1NZFIvPsY2V3cV8LF4k8?=
 =?us-ascii?Q?jpwUt4aITiQonN3TL/0qry0OzEaOqWzqQnncNAKvARxIOAVqbLEX/Mb0Gmfk?=
 =?us-ascii?Q?LAQQblYcOJYGQTqyKDcMtDwR9Y/r2GpSYWNdW3Oe8Ru6dhixWFg6fHM/+Myr?=
 =?us-ascii?Q?VGo6iWQdLoBsuJX+pi3iN8qux6oJTT9GEO5TyoFKKzb15B6oHIJdMabfNNS0?=
 =?us-ascii?Q?XMBWMa4nsn4132co1cVmIYj2pCxBKvFRuLCqaPcsgwiSG5E8XWkclje90Icg?=
 =?us-ascii?Q?cI1xdmVbiH41rh5gtjAnjPpKnH2wBtuyYGKAiSkqmXts7vr4hbfkf0MTPaak?=
 =?us-ascii?Q?K0BEA03YJrEBZX2cbUknwIhQg0UP+nnvrHy8nr0/NSCpiBntgPH2Ln23r3u5?=
 =?us-ascii?Q?ImMmg7491Lw2BEn0nLBKzpK9bZyzO/TYUHx/w9aryKSXf5o9pLaV3GEWX06V?=
 =?us-ascii?Q?qEw4eP2zz3IxVFhk1nd0SrT1+cNw/yJ541ALVfPQrASi3QcAkVUmrJrEcqU7?=
 =?us-ascii?Q?t7gTAS0GAzLcoFIGBGMJBLe/rWbS3zxaxK/cPhLz6l4GIp7H4r41M808A4Tm?=
 =?us-ascii?Q?xid9ss5cAeoml9D0JhS00yFZc2UJfuOuVEzaYB8O/jZ7UwOlwD8Ly/Hup+zs?=
 =?us-ascii?Q?3wjJusKk2A96La4jCwIkDt+iBQay7V+PWLcTqtI2o/rOWFyHhVV961YR+a2T?=
 =?us-ascii?Q?GJ4Nt92os5G39RTBcMMGKeqzD/zpWG540YYrPldFubms6wCHTYqMDjQFxwY9?=
 =?us-ascii?Q?pVVv4vdD3JlztajG8w8CNQrqAOFDPXp6q9uXrPxERxMRgN0Lkzm/xaeHwN3l?=
 =?us-ascii?Q?S8EYfXLOzK7gFwTjGFnOMWpKH2R8V+FOH5H2OCwfpT84fFeGlM1MW147T2zL?=
 =?us-ascii?Q?/zioV7gXR8522lKpaZRMz/f5UGutbv9FXJZ6QHm00cJXjfRup/RLlcNun5B6?=
 =?us-ascii?Q?ITJIGopa2yXJy113If0M6J7Lv64GKC/U7BePEE2ZKpZU1hr6m50C/ZDvKjZy?=
 =?us-ascii?Q?cdRRfX8mAnrWGo9EcjnfCqWRU2tFnJB3Y2Ae37c4JJfvruWAaAVIp7ogzJNc?=
 =?us-ascii?Q?NBUPXF5ESMaqKl9t9B1vvn4T9V5nbQMdx6k2bcUGEdeQMzwC4YGAKLoafp51?=
 =?us-ascii?Q?XI6W+m69rlq8mr/g8MYSmFRCL/xvYllq3vOqwD7W?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dc68b83-25a8-4b12-a08f-08daad1f002e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 13:29:48.9055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RG1ZpmowQadeNat383r0kgme34Arb1uad/qSQCB9HaidB0ewYeu6oLjf+TMS3mi8moe6ORXdmZKFHH/42kcNCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4067
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
Subject: Re: [Bridge] [PATCH v7 net-next 2/9] net: bridge: add blackhole fdb
	entry flag
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

On Sun, Oct 09, 2022 at 07:40:45PM +0200, Hans J. Schultz wrote:
> @@ -1018,8 +1020,9 @@ static bool fdb_handle_notify(struct net_bridge_fdb_entry *fdb, u8 notify)
>  /* Update (create or replace) forwarding database entry */
>  static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid,
> -			 struct nlattr *nfea_tb[])
> +			 u32 ext_flags, struct nlattr *nfea_tb[])
>  {
> +	bool blackhole = !!(ext_flags & NTF_EXT_BLACKHOLE);
>  	bool is_sticky = !!(ndm->ndm_flags & NTF_STICKY);
>  	bool refresh = !nfea_tb[NFEA_DONT_REFRESH];
>  	struct net_bridge_fdb_entry *fdb;
> @@ -1092,6 +1095,14 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  		modified = true;
>  	}
>  
> +	if (blackhole != test_bit(BR_FDB_BLACKHOLE, &fdb->flags)) {
> +		change_bit(BR_FDB_BLACKHOLE, &fdb->flags);
> +		modified = true;
> +	}
> +
> +	if (blackhole)
> +		set_bit(BR_FDB_LOCAL, &fdb->flags);

We should instead validate earlier that NTF_EXT_BLACKHOLE is only
specified with NUD_PERMANENT. See more below.

> +
>  	if (test_and_clear_bit(BR_FDB_LOCKED, &fdb->flags))
>  		modified = true;
>  
> @@ -1113,7 +1124,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>  			struct net_bridge_port *p, const unsigned char *addr,
>  			u16 nlh_flags, u16 vid, struct nlattr *nfea_tb[],
> -			struct netlink_ext_ack *extack)
> +			u32 ext_flags, struct netlink_ext_ack *extack)
>  {
>  	int err = 0;
>  
> @@ -1138,9 +1149,12 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>  			return -EINVAL;
>  		}
>  		err = br_fdb_external_learn_add(br, p, addr, vid, true);
> +	} else if ((ext_flags & NTF_EXT_BLACKHOLE) && p) {
> +		NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry cannot be applied on a port");
> +		return -EINVAL;

This is too late. I can do:

# bridge fdb add 00:aa:bb:cc:dd:ee dev dummy1 master extern_learn blackhole
# bridge fdb get 00:aa:bb:cc:dd:ee br br0 
00:aa:bb:cc:dd:ee dev dummy1 extern_learn master br0 

Nothing will explode, but it's not ideal either.

Since we force blackhole entries to be permanent they cannot be aged by
the kernel. I'm not sure what is the use case for user space adding
externally learned blackhole entries.

How about:

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index d6f22e2e018a..9257a46544dd 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1100,9 +1100,6 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 	}
 
-	if (blackhole)
-		set_bit(BR_FDB_LOCAL, &fdb->flags);
-
 	if (test_and_clear_bit(BR_FDB_LOCKED, &fdb->flags))
 		modified = true;
 
@@ -1149,9 +1146,6 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			return -EINVAL;
 		}
 		err = br_fdb_external_learn_add(br, p, addr, vid, false, false, false, true);
-	} else if ((ext_flags & NTF_EXT_BLACKHOLE) && p) {
-		NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry cannot be applied on a port");
-		return -EINVAL;
 	} else {
 		spin_lock_bh(&br->hash_lock);
 		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, ext_flags, nfea_tb);
@@ -1214,6 +1208,21 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;
 	}
 
+	if (ext_flags & NTF_EXT_BLACKHOLE) {
+		if (!(ndm->ndm_state & NUD_PERMANENT)) {
+			NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry must be permanent");
+			return -EINVAL;
+		}
+		if (p) {
+			NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry cannot be applied on a port");
+			return -EINVAL;
+		}
+		if (ndm->ndm_flags & NTF_EXT_LEARNED) {
+			NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry cannot be added as externally learned");
+			return -EINVAL;
+		}
+	}
+
 	if (tb[NDA_FDB_EXT_ATTRS]) {
 		attr = tb[NDA_FDB_EXT_ATTRS];
 		err = nla_parse_nested(nfea_tb, NFEA_MAX, attr,

With which I get:

# bridge fdb add 00:aa:bb:cc:dd:ee dev dummy1 master extern_learn blackhole
Error: bridge: Blackhole FDB entry cannot be applied on a port.

# bridge fdb add 00:aa:bb:cc:dd:ee dev br0 self extern_learn blackhole
Error: bridge: Blackhole FDB entry cannot be added as externally learned.

>  	} else {
>  		spin_lock_bh(&br->hash_lock);
> -		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> +		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, ext_flags, nfea_tb);
>  		spin_unlock_bh(&br->hash_lock);
>  	}
>  
> @@ -1219,10 +1233,10 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>  
>  		/* VID was specified, so use it. */
>  		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid, nfea_tb,
> -				   extack);
> +				   ext_flags, extack);
>  	} else {
>  		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0, nfea_tb,
> -				   extack);
> +				   ext_flags, extack);
>  		if (err || !vg || !vg->num_vlans)
>  			goto out;
>  
> @@ -1234,7 +1248,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>  			if (!br_vlan_should_use(v))
>  				continue;
>  			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid,
> -					   nfea_tb, extack);
> +					   nfea_tb, ext_flags, extack);
>  			if (err)
>  				goto out;
>  		}
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 068fced7693c..665d1d6bdc75 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -193,8 +193,11 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  	if (dst) {
>  		unsigned long now = jiffies;
>  
> -		if (test_bit(BR_FDB_LOCAL, &dst->flags))
> +		if (test_bit(BR_FDB_LOCAL, &dst->flags)) {
> +			if (unlikely(test_bit(BR_FDB_BLACKHOLE, &dst->flags)))
> +				goto drop;
>  			return br_pass_frame_up(skb);
> +		}
>  
>  		if (now != dst->used)
>  			dst->used = now;
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 4ce8b8e5ae0b..e7a08657c7ed 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -253,6 +253,7 @@ enum {
>  	BR_FDB_NOTIFY,
>  	BR_FDB_NOTIFY_INACTIVE,
>  	BR_FDB_LOCKED,
> +	BR_FDB_BLACKHOLE,
>  };
>  
>  struct net_bridge_fdb_key {
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index 8008ceb45605..ae641dfea5f2 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -4054,7 +4054,7 @@ int ndo_dflt_fdb_add(struct ndmsg *ndm,
>  	if (tb[NDA_FLAGS_EXT])
>  		ext_flags = nla_get_u32(tb[NDA_FLAGS_EXT]);
>  
> -	if (ext_flags & NTF_EXT_LOCKED) {
> +	if (ext_flags & (NTF_EXT_LOCKED | NTF_EXT_BLACKHOLE)) {
>  		netdev_info(dev, "invalid flags given to default FDB implementation\n");
>  		return err;
>  	}
> -- 
> 2.34.1
> 
