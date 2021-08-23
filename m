Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC6B3F4817
	for <lists.bridge@lfdr.de>; Mon, 23 Aug 2021 12:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8004E80D00;
	Mon, 23 Aug 2021 10:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmtTBil8Q6Tt; Mon, 23 Aug 2021 10:01:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AEEB480CFB;
	Mon, 23 Aug 2021 10:00:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7158DC001F;
	Mon, 23 Aug 2021 10:00:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E31A5C000E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1310400D2
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iITXVhuXGS05 for <bridge@lists.linux-foundation.org>;
 Mon, 23 Aug 2021 10:00:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2062.outbound.protection.outlook.com [40.107.223.62])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3712840122
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:00:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JhexweTq5EwDbZDeY4Ts6PWwmgYUOgvDDXn+bZAhi+xvnBpmWIp5tPb/eWyR+00h5Ks5DGykb3Z15piWo7u34cCLO4kd4L9TYDnxolLuMnVphvfBdX3KBSCNYaQ7LIFGRP9bqVJGwSmbPY6IwlaKXnpOe+2kFyb/Cz2zdxN7tDXX9NygFmwwQ59lmQK6bhsIM+5+8TAKzkr/Ju2fk2/bLk+bs/1npCVqq5F2LT9uEET8EMu4rvI/kbfEXO8EN6DvWmH4cIwCTyW3qa+t5ngz/mbqsXpwj0FkcRSUoZB6bW6C9Y9x425t9iUHM0ei5gdvg21FgF1MQfhfkZl7X1qbNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AZx1KcCIKqQAlRdNQ1/QgDdRGixQy54Tpue5wopCAGY=;
 b=UUtIQ8VUJtuN4BNb3Ge+lB72GnrrRgKzb37AZDtFRv7V98vKDLlMFD350gPMw28ZCgoGDlbJgl62obXG4NJxFoySwaTT6QuW5TO+eT1nrfgU0Tz5uDOjndbWpdNU9PRVEp1q4VLfpUfgleRJDZLX0jK+3xIFAHPx4Nzqgg9Tqzzoqm7KM2u1cC44Gi5Lv+YF+BUapSbh8f76mblGO8xrM1hMeuJd9JMahi9taiHbjK+QGhWhSFAAIRTnm8ZPcSIaXCK7CKwZQJfZWfsWujg/1YuoWROfEv//TnODcBkKTtigzF8CsYAepxw/tPEVQnYDKRVh8kewNkyYpJZJGqYWqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AZx1KcCIKqQAlRdNQ1/QgDdRGixQy54Tpue5wopCAGY=;
 b=tICiiC8c7SODty6ZnLfqseYng5Ou785wgAQEaOVNw3TXR/+BssKSgGEiJX0Iu8acj5VDGhEZbfh3q7GzgFqbJhEerx7Mkb8vw9LdAy4MQYPaN7t/Oky+jL3rsJvWPHkrnqvKxiIgIej3Hkd+Y1hciHRzHbUzIxaqvLX0ASqGQpF4bAq+fGTO75Gfo91Mu5yutwQan6qJGDCGiBRJWIwkPSfKGCZ3KP05KfQ/BQ0zcR8PnD5iaxtzZDSDJHRtR+qK9Es6IQj1ePIHGhu0/IR0pYNExG/6R03+65VTHRE17tw0024XWSfcBne10ZETEvy87cOWV87ytEoKrrGuxrPNlw==
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=nvidia.com; 
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5312.namprd12.prod.outlook.com (2603:10b6:5:39d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 10:00:48 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287%6]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 10:00:48 +0000
To: Kangmin Park <l4stpr0gr4m@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20210823095634.34752-1-l4stpr0gr4m@gmail.com>
Message-ID: <d7931059-4841-a39f-4272-0053d6b61bac@nvidia.com>
Date: Mon, 23 Aug 2021 13:00:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210823095634.34752-1-l4stpr0gr4m@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0066.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::17) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.240.23] (213.179.129.39) by
 ZR0P278CA0066.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:21::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 10:00:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 37bb7d1a-e50c-4621-860a-08d9661ce1e6
X-MS-TrafficTypeDiagnostic: DM4PR12MB5312:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR12MB531264BED826B02EFD41A7E7DFC49@DM4PR12MB5312.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:294;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q8prGnIw1lLqungoqHch9TT5Xc1qZw9BKmYZxzmKrzqUmkLdvrg5bJ8icEiJLtlHlhotzx41UvCX5I+yRJS/MI/yVIwH6QxVOIvZJte9X7otgEkV2O0/p8GoEB0Bk00aoSnXRa+ggtOQcqWfrr18iFl0maI4BlVbOeyKKt3h4x8nASm+79IThz90IyMKDBwF6wHuUp5PN6D/io3MFp/TFFpjlcClLWqL8kWJa6U9sPKNpowdJhbt8rhkO3eIixHiNgGOschDlpDKtoSMxxLvl6nm+KsnEzGEplmgCW+51He+mXLJRVyrY2hsZLDZFO267Zl4G87dE2koLmvvnp23y2bMvOyTtEMDJDp6E56uJdfS1XOZzant6OTUodRTXh6e3IYc1Uel8/hWZ7YKKCD8yBSv8PpXI05aBZRSwu4Gp0VSXs74j9iZ7lMdVbuNWM4fVGRp5+g1EEp2xFhNXCT1LXRxYTf4g3ADSyi5oKXOSWIxwZwtoiuOxpXVLvdLZgGx5Fs3+aB9DfJbyPb1LrZRXfyMlW2Qw9YLoW+jTQjw0BMYBA19V+m+h1jCAqa42Kuk04W1kwwda6vc5hxOSQ53nSvD06ilRrWVfIw1RZ2MgO5xDhyDnva7UawPVxjuirrqcPdWOiG7o1kHOFgirY7KTWHHvX66uYIUYCIbFXjiwsQ1+ok5Q3RRe8mJNhWvyD3AjTKgbZEuBp6O874jeFnyc/5E6EfhmqY5N3r4Vl1mBMs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(136003)(346002)(376002)(6666004)(4326008)(31696002)(478600001)(86362001)(5660300002)(31686004)(54906003)(36756003)(38100700002)(6486002)(956004)(2616005)(8676002)(8936002)(53546011)(110136005)(16576012)(316002)(186003)(83380400001)(66946007)(66556008)(66476007)(2906002)(6636002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzRreUtzT1ZYYjQrRThyQ0FtV3EwOHBsRjFrWVNzaC9OdVREd1g0emlRM2lP?=
 =?utf-8?B?WmRGQVpXMisvak1lT1BWV3JZR01vNEQ5S1RJNXZMTi96bFl3Q0JDVk05VUtX?=
 =?utf-8?B?T0FocFh4L254ZmVYU2ZFZFhCcDgvaStiZURCaStqZG5mQnJRVzVkTm04Rmp2?=
 =?utf-8?B?U3pPTUNESitNajNkLzhNWFZkWGxCUXJiZHM4YlZORWc5WVVvZG9yZEFjeEFp?=
 =?utf-8?B?RG4zU0xXNlByY3c1eGxnZHNmazZVWGNFalJXNWFiMnk3dUNiYmU2UVVzdVNt?=
 =?utf-8?B?K3R2emFpVzVOOEwzN3IrNUZBaU9RSXlzN08yZmpIRCtURkRUZzBGR1hHUWVa?=
 =?utf-8?B?S2E0aDZkYUhjRjJ2aEVOdTFHMGR5MlZSaENTZU5hSnBBRmVZcDc4eklmV2Nm?=
 =?utf-8?B?TmU1NlZLMjA4a2pqcFR6UWxHektHOTh1S0Jycm9VaExYemE4eHh3NHBrcEls?=
 =?utf-8?B?TWo2aFRDdUhoY3pEeHVIc1hDUDcxb0s2N1Fkcy9VMWVtdVE0dXI4VVU3ejJo?=
 =?utf-8?B?L2lhWFgzYkVwOVk3L2FXb3lsQlUxdit3cXJPUkhoOXdwTGpuTEQ0djFmeXgr?=
 =?utf-8?B?WnZEWGUwREQ3V3h1WE1jejdYbWFUN2V4R3ZiK0hjQWs5S2EwY3dBQSt6S29L?=
 =?utf-8?B?SDN4WFNuZ1B0VG1PWHFtRkwrNDFzL2J0M29xMWZWSWlqbmh3VDhjaFM3YUdw?=
 =?utf-8?B?T2VOQThmWDFUaUp5UGlmL0dFaUtFOFlFYlhXZWNiRm9JSFB6NnE0MXpROWFm?=
 =?utf-8?B?NDFDVVUwUERBbWI3OVB1c2pkeEhIdThGOXVGYU5kdjFjM0ZCSnZFa0Urd0Fl?=
 =?utf-8?B?bGhlMCtPNTNHMnpXQ3pWM1J0TXU1YlFaQ1cvRktITStTSHA0aUxNQmxEaFpN?=
 =?utf-8?B?eFljdzRRQ3REMURYQ0pjZGFLcnN1a2R6VEw3VGJ6U0hVRzJJcnRnMHJzRVNI?=
 =?utf-8?B?aDNiTlp0TjRzZmYwY3RITEI0Uk5aVHRTM3VlZHQ0OGRZZ2ZTenZEMjVmWDJs?=
 =?utf-8?B?cjhTQ0N3eXMwWXhFb0c5T3daVUxBb09aZXd0emlNYWNOTTRsR1NmOEVuYnl3?=
 =?utf-8?B?Vk5UOW85RGFQSWJob3NRbFoxdHZZUjZxeEdadVVhREgwQkNRZ0JpT2tVWW1J?=
 =?utf-8?B?bDNhRkRhRG8wb1RRM1RjK2ZIaWRRRTFvOHdTeXBkSnErenNXOVlKVUd5bnFI?=
 =?utf-8?B?WmJZUHlLS3czUEVCaUtIbTF4UnhhT2E2ZjhjY3dDbE9PMzhRZkhvQkRKaEZN?=
 =?utf-8?B?QjR0Ylk0NVhCN1NwVWFUQVBLS2JlSDViUjQ2ZmdPNlFWSGpQdWNwaklqbTNK?=
 =?utf-8?B?UXpLN2ZKQkNoZFp6S045SEpwdEhFbkdBZkRBNGl0RU0rY2g0YXFZTzlKbWh4?=
 =?utf-8?B?Ly9pOEpVSVlpY2ZUdnM3bVJFQitIOThUNW00NUxvZVZVMFNmUUx5K2NrVU5D?=
 =?utf-8?B?Ri9vb1JoVXJQeVVSdzlWMzNjZStsc29PQTBzVnRENnFXeUxuSWs1cVp0MVF4?=
 =?utf-8?B?VmJFV3hNdFA5M200THkvNlZ0dGlReFA4NGJoc0RxR0lYNjRkY0VaNnBXUHo4?=
 =?utf-8?B?d3h4OHh1U2dIOFFMYXdnUURjZjJwcjZGSnRrNWMzM01MelQ5a2thVzEreEhR?=
 =?utf-8?B?bFJ2WWxGVC9wRllvaU1DMnpoNEdtYjNPeElaUGRRVm1USThvbjB5dCtUUHZw?=
 =?utf-8?B?YmZsejIrUnlMeUtNLzUrVlpkRlhoSFh3YWI0QkRIb1kxbStEY1pBWG1YYXB3?=
 =?utf-8?Q?LtHZT693bWwoyXY2zlHy9r1lX4twGX3a7lYbWEb?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37bb7d1a-e50c-4621-860a-08d9661ce1e6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 10:00:48.7173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MUcaoUFkZu+q9jyTEtuOkibXopvsQwjlbHP7b/7/3Bh6TJnka8KORCTbs0CNgoAVMVUGg7DfsShtDL4n2YXp+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5312
Cc: Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next] net: bridge: change return type of
 br_handle_ingress_vlan_tunnel
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

On 23/08/2021 12:56, Kangmin Park wrote:
> br_handle_ingress_vlan_tunnel() is only referenced in
> br_handle_frame(). If br_handle_ingress_vlan_tunnel() is called and
> return non-zero value, goto drop in br_handle_frame().
> 
> But, br_handle_ingress_vlan_tunnel() always return 0. So, the
> routines that check the return value and goto drop has no meaning.
> 
> Therefore, change return type of br_handle_ingress_vlan_tunnel() to
> void and remove if statement of br_handle_frame().
> 
> Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
> ---
> v2:
>  - cleanup instead of modifying ingress function
>  - change prototype of ingress function
>  - cleanup br_handle_frame function
>  - change commit message accordingly
> 
>  net/bridge/br_input.c          |  7 ++-----
>  net/bridge/br_private_tunnel.h |  6 +++---
>  net/bridge/br_vlan_tunnel.c    | 14 +++++++-------
>  3 files changed, 12 insertions(+), 15 deletions(-)
> 
[snip]
> diff --git a/net/bridge/br_vlan_tunnel.c b/net/bridge/br_vlan_tunnel.c
> index 01017448ebde..7d42b2a5be80 100644
> --- a/net/bridge/br_vlan_tunnel.c
> +++ b/net/bridge/br_vlan_tunnel.c
> @@ -158,30 +158,30 @@ void vlan_tunnel_deinit(struct net_bridge_vlan_group *vg)
>  	rhashtable_destroy(&vg->tunnel_hash);
>  }
>  
> -int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
> -				  struct net_bridge_port *p,
> -				  struct net_bridge_vlan_group *vg)
> +void br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
> +				   struct net_bridge_port *p,
> +				   struct net_bridge_vlan_group *vg)
>  {
>  	struct ip_tunnel_info *tinfo = skb_tunnel_info(skb);
>  	struct net_bridge_vlan *vlan;
>  
>  	if (!vg || !tinfo)
> -		return 0;
> +		return;
>  
>  	/* if already tagged, ignore */
>  	if (skb_vlan_tagged(skb))
> -		return 0;
> +		return;
>  
>  	/* lookup vid, given tunnel id */
>  	vlan = br_vlan_tunnel_lookup(&vg->tunnel_hash, tinfo->key.tun_id);
>  	if (!vlan)
> -		return 0;
> +		return;
>  
>  	skb_dst_drop(skb);
>  
>  	__vlan_hwaccel_put_tag(skb, p->br->vlan_proto, vlan->vid);
>  
> -	return 0;
> +	return;

Please drop this unnecessary return statement at the end of the void function.

>  }
>  
>  int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
> 

