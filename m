Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3BE6060F0
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:06:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC7624020C;
	Thu, 20 Oct 2022 13:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC7624020C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=T98fhGBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPXdfk5dUM_K; Thu, 20 Oct 2022 13:06:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 28B0B401D4;
	Thu, 20 Oct 2022 13:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28B0B401D4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B88FFC0078;
	Thu, 20 Oct 2022 13:06:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32083C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:06:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECB10842BC
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECB10842BC
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=T98fhGBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YYtTwr_9p5kV for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:06:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D0F8842BA
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2063.outbound.protection.outlook.com [40.107.92.63])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D0F8842BA
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:06:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JR1JfS0TvlUEg5N8MLRsZz9h7p6lvH8IW96G3HtBvyIvQ/nBhXLynpHSqsoy1SSeCxvP8r90pxtvRGqmk5y+6tLl/y2TQpftPIDHqQwoL45vn1yq31TyN/FiJsWP7YqAeWaeL7wOnoJIbtvGQAew5PPLaXH3ho8tvs0MAIOGHXZrKY4TkbNr0Tm63Gvg5vrys4gygX71iHYaDYXB4ZKuhT3b2HE4Ix9shVmTTgGz2tmUSTL35VjECgY7duNSUty00pM0TtOD0WM0eVb5EhLulcnpc8yju+246c7tWQqjamqWXwpD72i85GgcpLNY5LFv7kYPuQW6A7+C2WrZOpRtWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fyGVuHHKK3c1OMgGpArxlrEfKi/ijp99vW6r9U2jzFU=;
 b=aVXCIZLXGcal/m75LzIaWMq3KOEhJwAYc4a7j2r25+cyyTa0DM0Yycsz7pbwREopxmbQgKlKL1zjuKU3v6GDUHk+j43/6XvDSXj5Dj4jomhWka7be08fCoFlCfGgbKxsqk5hMFMVA2x/tDSZuPtd3k4CPShXkRAJ1RWvZHtnlgel+O3B5yAZjViWnzAYnDUCizQM7IUew3zIH1meVmByFA1XmYSoH/iWQQjRjfGlisPwuuf4FfdDPzOjkhdhXlTJfo4fs0JkFrb/+XjXUuAnySxZg+RR54KeI85OkMiWqY1P13n4NBBmIlm7H7KEMXpLng6M8t2BB0bSO7FkGAapJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyGVuHHKK3c1OMgGpArxlrEfKi/ijp99vW6r9U2jzFU=;
 b=T98fhGBAntfJrhR1pwpRZytDN612QohpQO6RGvdsLiN1TY8xdV8SK/t+kctCLXrptSfwxkzpc0NbCgSkieynORiv95CzqvQauzW9dzG8ep7d4E8DiMhlQA48SEjs/pJdqCXcg2jvhe5dsnDGiOAaD68mwb8WynTLEEH7Dxdm5vkR00/yE3gjusOEtV6//kR0Q6DqarXyTc+hN90ll1Iv3Z7JPNMmn7YSJfKgEpwayf4R7GBoBE7a58NVAJohF7SR4KhXBQUNTa+BfqKNYluNw0DLWETIJWmu9Agf7HDWF8+U7FT7wBJAKbJjDZe+2xgksbXcUdL3ek8dOdl4oL7qqA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DS7PR12MB6165.namprd12.prod.outlook.com (2603:10b6:8:9a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Thu, 20 Oct
 2022 13:06:08 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 13:06:08 +0000
Date: Thu, 20 Oct 2022 16:06:01 +0300
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y1FHuXE+X/V9aRvh@shredder>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-3-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-3-netdev@kapio-technology.com>
X-ClientProxiedBy: VE1PR08CA0023.eurprd08.prod.outlook.com
 (2603:10a6:803:104::36) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DS7PR12MB6165:EE_
X-MS-Office365-Filtering-Correlation-Id: 43955a47-7593-4960-743c-08dab29bda5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6m6p9cKg+Ko0kWVTM7Knod+J7M43VKdLHsCJyYcB3HQiQxvDo1zxvLGnCcrp6x1OaOh9vGvKJAg26aeeYXkOYIWZXYMJgtSVb5+2rY4wWToRlTeCTbUkhY5oUf90jYHcfiQFUH89HLQvaOIgMEayowNQInZOnN6IjEp4828QXMRsKT/0uFxddyiZ38eQluc8pip0jK5LLFlbnQ35+PQ2Uq5oAF21jb2zsygxU3llK5mzqyJbb63p/U6nLMh1xZbQky8dHnVW0o9tKFFN4xArRIfYLlELfThNkwAXeo63BVm0ShzpNJzsY053Hb/fk4IX8Gs9V71lnHC419lfgnvnGPdxoqLSaC6WC4l0nxwLDGWCklMXxq9CBriaC0V9DShyAY1tSUDZu3FYZ0HPlgCKetVs0KzVxE9AghEdvtfrDfbk7QsCcY5M6InVFtekDRdFqvcPuFvuaM/r2S4Glshf8WRkzfI89fnEBREcX8pfqZmBlCen2hamDTpFxeGL/X6FlGi9rkTD1LJx+u9lxhOWQ6lIArIsjNBI417URxmzlBV0WIqKYziTa/lFRMRSR0tgI5FGTnJzNLi2J+1mHJ9yRL+kQY5pFXLff1KAO4/LmQWTKlNRvjxDJCOe7s/X1tihQdK0KJ4djRebSKGmcKQxRwZDC14VDeJ3q6WkWcLtre+g2zsmGQqpKHrtA1UCyc43Y0mQIyvb/gzlkbyULLNyFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(376002)(366004)(346002)(39860400002)(396003)(136003)(451199015)(7406005)(8936002)(5660300002)(2906002)(41300700001)(7416002)(66476007)(478600001)(33716001)(8676002)(6916009)(38100700002)(26005)(4326008)(6666004)(66556008)(66946007)(9686003)(54906003)(6512007)(6506007)(6486002)(316002)(83380400001)(86362001)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wM6/gX7mrhQtOTnUZO5ruqn0Gj/fuigwYg104YPz6a5Wwuv2P4Ap4vhHMtzU?=
 =?us-ascii?Q?o91JufsyQ3PmhcT20c+ikUc/lt/IlTyoiu8Sbj819oYvifyP6DdnMpBZRMnU?=
 =?us-ascii?Q?kDv0JaDOaxI2caONHOz5oORheLaHiSIhbLydKM6E5yHvHkeaqOuQkV/DbRqU?=
 =?us-ascii?Q?u8NtFOqNVwRjyQJTd+TA7eTSpR9uKUntoWoGal22CEOImNW4JuxekqfKOpDt?=
 =?us-ascii?Q?083fk2IeHfhaJyJ2CyKAxkaM3h/FcUcWK7649BcyTQZoyGtIQ+NuhZZfG8uH?=
 =?us-ascii?Q?jlryWDLq1QspCiJ2E0/qfiZHspHwuRPKbmNxZEI3rIG9NPBBK2ossvoN2BVk?=
 =?us-ascii?Q?nza3mFXNTUXiQpTnwx7qL76cdqkepTiA62pNeAodKLL5zMenqtIrTz2y8Jn4?=
 =?us-ascii?Q?NA5s22osq2ssBZoPIVbXXwFvy6oenZ0m3LqM/Mvb0+uUuiobA+CvRDASQil4?=
 =?us-ascii?Q?yr8wJPVjTeQusMgOpYJ8x/BnaQm3T8YoQiWA2e21bYn5LSaBmBddyOHzTf93?=
 =?us-ascii?Q?uiK3ZbbziIle71jBx1cCQujzi/3nWw72i199+veAl6zNWwiqR7/YfDjSgFwt?=
 =?us-ascii?Q?uHNVWmuJZj6zHkPHLjRqxxYVlgoWFLaGk/wrgA+BuF5rG5S0xUHDfTLrjCay?=
 =?us-ascii?Q?4WekIKEjQfo9hH6oM97+9faDtJrqJ6WulYJmOk4GkSDa7rLwtggk3BbwI1O6?=
 =?us-ascii?Q?Wkdfcr3QXVqDZPpAcMwA1imXFLGrUpUlY6b2eStdG+d1WONoAwQmkxvgB3vD?=
 =?us-ascii?Q?vQ0eJWfubOcnUcFVRsQ4Us9HB9vXj14a+i1RNOWwgO+aerjH9EVaaKcxFW+i?=
 =?us-ascii?Q?5zqP7CGsJm3zJphQEsVGRhaTx5AlklyZ5uA2CRVF2LujaslPVeP2YwaRZ9w9?=
 =?us-ascii?Q?Py4Ym2XWhwcvczw5w0QQ5eOKsHOWxkGSwjzQelkPaQ2OthXjoZepPOZNDhjr?=
 =?us-ascii?Q?kPZv20HKUGIAKs/mt5vlGTRWA9eU4VtfOiWTkiaX7bHsBLSh8WU6OkPDusnJ?=
 =?us-ascii?Q?+7m/taiC86oWRBs7Pr9kpw5xjiPDJZig0aTT0CqDLR8WRAQ6TMrPc7jH+ixm?=
 =?us-ascii?Q?2zx7KOLkslN2+24zri295S0Pv/V5gb9ef8fMeULfBF3p/vdj1XDBqrtSYiTk?=
 =?us-ascii?Q?yIut73U+Pj7LLyxyDD9LbjGjcxA9/5umtmaq+JtpkeiR5ndzEyWd0yVg6Jf4?=
 =?us-ascii?Q?kk//Zk+2OZRKkoYW3BqFOAEDSd1TU1j+RVVobI8rbATvr8n8JOFgqNPaQtHr?=
 =?us-ascii?Q?P0IWJAU/DDrNEP+AJo6WNUaq/ZdTl9j6jBAi8bUcywW7ZwOQqhpnOkS8TGH+?=
 =?us-ascii?Q?UXhFkLqYtl+zyHVBDTMt3ztN/0ZIb0V+BIrb/p7D1mRVzZScfYCa97kI7Fg3?=
 =?us-ascii?Q?3vcMie+/avl+OmdpbMlaS8gCqflKUczwx3Kif69gU1WxSYIVryakzdvFsgLr?=
 =?us-ascii?Q?PqTIY8ZXEVsYLA99ZA4dXCGaFw83F870r8XMVvCbbRZxh7IQVrqzrp/rkQ2A?=
 =?us-ascii?Q?iF6AX6UwqoVl7l9UNkcjP696bi1/nIoGZXk48RtAUmydy/pcJIsUSd9UrcVa?=
 =?us-ascii?Q?RgfMxHxbq+UsjDFIVuKnW20wPMkG/k0j7AE2zG9d?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43955a47-7593-4960-743c-08dab29bda5d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 13:06:08.0985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4SOo4f4MvYCw/lSV/OInaDWknZq+y8qmVWevkUxBwWpm/MKlcVXyvYSgNw8NaKfSdxW6vxYEfcYB8qkFNe6ecg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6165
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
Subject: Re: [Bridge] [PATCH v8 net-next 02/12] net: bridge: add blackhole
 fdb entry flag
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

On Tue, Oct 18, 2022 at 06:56:09PM +0200, Hans J. Schultz wrote:
> Add a 'blackhole' fdb flag, ensuring that no forwarding from any port
> to a destination MAC that has a FDB entry with this flag on will occur.
> The packets will thus be dropped.
> 
> When the blackhole fdb flag is set, the 'local' flag will also be enabled
> as blackhole entries are not associated with any port.

It reads as if the kernel will enable the 'local' flag automatically,
which is not true anymore. The bridge driver enforces that
'NUD_PERMANENT' is set if 'NTF_EXT_BLACKHOLE' is specified.

> 
> Thus the command will be alike to:
> bridge fdb add MAC dev br0 local blackhole
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>

Looks OK to me. See one comment below.

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

[...]

> @@ -1140,7 +1148,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
>  		err = br_fdb_external_learn_add(br, p, addr, vid, true);
>  	} else {
>  		spin_lock_bh(&br->hash_lock);
> -		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> +		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, ext_flags, nfea_tb);

I believe the preference is to wrap to 80 columns when possible.

>  		spin_unlock_bh(&br->hash_lock);
>  	}
