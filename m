Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE3E69DB9A
	for <lists.bridge@lfdr.de>; Tue, 21 Feb 2023 09:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA4DC42CB7;
	Tue, 21 Feb 2023 08:01:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA4DC42CB7
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=mUw6Xn9d
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Qfmgh9g0wdk; Tue, 21 Feb 2023 08:01:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E15B342CC8;
	Tue, 21 Feb 2023 08:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E15B342CC8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0A455C0084;
	Tue, 21 Feb 2023 08:01:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7A6B5C002B
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46DDD4159D
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46DDD4159D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hJ9YfgfSztXl for <bridge@lists.linux-foundation.org>;
 Fri, 17 Feb 2023 13:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 444B841061
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 444B841061
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676641722; x=1708177722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zhk0/abzQCEZFdUsDh+NPfhazJaX1xSqFI0JqkGJHiY=;
 b=mUw6Xn9dSJlDo/NxtaQAk4APVCXt8leb/THdBduAw50ydXupK0/0VXjo
 xTggIMa1kin38RK7NYWC9ePRDWwH9MMcluBov1bcqiF2lxr/QtyiZIPQj
 dYDkZNz2gO3HXqyiOL7fETDGonHOPs3s0XPbzEVs/2Tolv9jQzSUFnYPI
 T3+E2/k15nqhM7KIj3wSWnG+louPi+HsVl0XMPRy8ahxmqqWyNPYsVKBF
 rFp/MSApzKFPjXQjREu1lU5L9QMgZ22hCBcXNB+CSWc0XlSzTk/dDj9i/
 oQOxiL1A/L4QOdewFf0dVYSsne8a2lGAayVK8BeiQWs2d772Fo8Qd7n/t w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311620061"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311620061"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 05:48:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="739266606"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="739266606"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2023 05:48:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 05:48:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 05:48:40 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 05:48:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HcVWNhbwZzNYTvNBL2gQvzl79+9YhV5isrc9jDFb2Pu0Nrm5aqjRex7cCyg3PQaH5jLbKTxgLB7okZyKiD5gKTLvRnLS9lQnW91d2Lj7CA4xQ807NyJKgYG+BRoliheqbhe3q+21LWUIL6ezzTy2/qh3k+BlQSrIgdzCfr1jpXLusmo7kSo/hW1qbnQ5V4GyFNf9ejlSeCI5DamMXzA7fBcH8T1WjK/5ImsRwn1kasHiUQOOlXUnkVJVtVuQENxAvPZVav0X4pUWkGPFf4SGG5RxzSjRj+Jy8eedXYhzD2LQ5umKEfOOrAdYEjobleFH+viTBx9sxtHU+JXWEK89xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lhm2jycWwIrZQoy1Rt50KD/uoLCLi6xKAVplnG41/M4=;
 b=DmKRd5mV0TxS8I6iDTpmaBp2T/HX+g/UEZCjTvD1/wvIJI1IajEsF1ckd7O2/w7t2jDiVlQUB1x5x/F1FOqcAqVryCTrWa3KlDlX0Spk9OloIfQpbHiuvc/gWMn1mSy3LWA2ayRFsGGMNmFACh61EMnxQkvwxkHyXSZaNjGl2/OO4qlFui/ZGvfzhg1GQqQgDJkQNrjGqPAOOro1GHTaMzP7X8iGmf9fQ5/ru49Oij2liMFSkrIw5InMW4t6tvxRJfyalVeX+YjYaF9jgwQRFO/9MjbeDLpziWNKxTdy3Ki5+yM6hOC8tvlADKulMrpMp/BIO42IYqYHnbKCnv15SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.15; Fri, 17 Feb
 2023 13:48:34 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6086.026; Fri, 17 Feb 2023
 13:48:34 +0000
Message-ID: <90adc80b-15d4-0938-e05c-a231991f5b77@intel.com>
Date: Fri, 17 Feb 2023 14:46:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Alexander Sapozhnikov <alsp705@gmail.com>
References: <20230217131657.12649-1-alsp705@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230217131657.12649-1-alsp705@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0028.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::15) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY8PR11MB7828:EE_
X-MS-Office365-Filtering-Correlation-Id: 48bb6c47-a171-4e97-88db-08db10eda990
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mQwCm7Su3owvFrWojfMpQFjjb5+jEEDYJ8I1e7hHUbFApROgIBwxM67dAhBhzcr/c3KZQ6+kQqu/S2OGbEqGJBFj2ltifaQANNEYHUqZEZBoPapAnoikcxaYJx0kUrkEmluKtBAT0s5yOD9x7ztA6gSvS+gsgyv/pXpwO6AF6lwS4B9lz5608rQ+ekZuJ6LN7ubKVmmKQx+50hVaej9OjAisM5GeE8Sus88q4Rh5ORnoULhpuz2Jry/QkEK2LFpMRTub+j8oJKRhdcsYJW3mRyx1lhyE5xR5ODkH92vv5qlgzIjjYze5/6JTwNpSX0FkN4qNfBMCRB3GRCyIMGDR5QaybXjXocpiSVhq80UPSQj8v240WXgwJCcTHv8XruuX3K6VTqusai5zj5nXd5OsxNP0WhQrTGVFgWw8A9Q8ugau7EYdHLV81wtrBtqRuP/zvYRO6+iSmMDDFrRFPdYhux7ABIaMeKJXMSr6FX6wGqoeo52HvPS4AInv2xRf3fZke1jgDhJBa3ObPKcKYNKiKmMcqLYhxKCJJxkScoEZ2GHLnjo9E8VxEiAzj6fmxBO5n2StJy+CALFx2QMUni2uv3v00eq8jWN9QiIUacqHH0n+lrlnoBWdv3lN7BF38oQf8jyBIw3SGH95ly9cokJQZPCStOlGD/3hFbX15rJ54t94VUu8sODX1zovBE+8sLI2v5F/MIL3gpiR9FeSHGnRmtDn49vVBRBqLKmimJpcusQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199018)(86362001)(31696002)(82960400001)(2906002)(38100700002)(31686004)(6486002)(6512007)(6506007)(478600001)(54906003)(186003)(26005)(36756003)(41300700001)(316002)(66946007)(6916009)(66556008)(8676002)(66476007)(4326008)(83380400001)(6666004)(2616005)(8936002)(7416002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkphZ1JaVDUxL1F4WVJydVA2WjM5YnZndGkrOTZyc2s5dzJOQlJQWDZwaDdW?=
 =?utf-8?B?dGs3YU43bE5sNVdGZEJvUzJKelFtdXlOY0RONGpZTGswcGRDTnE4SVpYdHBw?=
 =?utf-8?B?TlVUVllOMThTWmJnYzZvaTdEWlI0QzRKWFk1T21vdHl6UkE1cG9zZ0pLM1ZQ?=
 =?utf-8?B?UGxvbVZmYS85WkFlWU92aUM2WjJmdjBlQUxiUkxOTGsrclc4aGVlUFo3blY2?=
 =?utf-8?B?WlpGb1dlcEdYTDZXL1RuNUhyOFVOM3Y4aHpNaHhsQXBZclYzWTNFbnZncUxY?=
 =?utf-8?B?L3lSSEo3YzAyeHpXNXhnbWE3UW83YWFGWXZEQlJTZERVK2pTaDc3a1lEVlg0?=
 =?utf-8?B?cFU2OEM0SjZQUVJFU2xxTG1PN0FGTmhoMGFCS3pBTGRBd0NFTS9URXZCRk9Q?=
 =?utf-8?B?Z0JKQWd5SDNudjUwRm13czA1blZqMDRocVRWZHcrSVNqOHMyTktOVXJPdzJD?=
 =?utf-8?B?Z0hjeVRYejdQN0tuQXJzKy9icWI5L1BNSjRYVC9QZFpLQXh6ZE9IY2QvUWs3?=
 =?utf-8?B?ZW1oT0ZZTjM2VDRLN2ZLN1ZmdTlKM1VTZ1A1eXRBVklrOGRHbW56WTZ4Mnl0?=
 =?utf-8?B?STh6ampPNGswOHN0cWNwOG5XUkdKV1dTSTVqOVBFR0JnbHJsUHA5L3c4RTdS?=
 =?utf-8?B?OFRJZUxBQW42Qm9lNDVFaGJtaE53MS82cHhNTm9Hdk5qVEJ4dkYwQnJueVhO?=
 =?utf-8?B?YVZDbGNZeVdNbjE0bFU3YlV0SXp2elRTQndaKzZqVCs0QlVWeEZ1QTkyYzVx?=
 =?utf-8?B?amlIaWw5cDNSeHVkNHdSRGZQVTc2TWtCbGlTU0Y3NHRyb3VwZ05vaUVkUmpB?=
 =?utf-8?B?K0plaW9BQjlyOEdqeTdJQVRndWJtMU5QRWdDVjRlKzN2WjFuVVY2QlhXaEpB?=
 =?utf-8?B?dGNDRVRLTFVxZUkrMkdjVG5IZFR2NGtlaFpieVBzRGNVWStMTUFRc3JiSkky?=
 =?utf-8?B?LzVOalBNUXM2WGJ3Vms1c3RIVVROMFZBLzBCRCt1RE8wYUEyaHozbG1aWm4w?=
 =?utf-8?B?bG96RGVRMXU5TkhHUThnZWtqSWFVNkZpN29DYitDRDdXMnNZWXRRVEFZNHlO?=
 =?utf-8?B?SklxOGVWN3A3V2JLM3pVb3dTRWlsbXBWb1NBT0UvKzdKZWxVWmxsMTA4ZTZw?=
 =?utf-8?B?Q1p6MjhGY3JSaVBKUkpWY3QyaXlDMmg0eVJxOUxGbXZJWmcyTXhJM3RzdTZm?=
 =?utf-8?B?YktuWWJEdnFJcnA3Wkc1YnU3bUM0SlM3bFgraGwySThUT0RHeUZFZnRjdlpt?=
 =?utf-8?B?S1RzL1lxVFFDOVN6cjMwV0VxUm5USWZBR0JTRFpaeU01WkJDWUIwZWNnNGgz?=
 =?utf-8?B?T1RScnZvelFJdlE2N1BPanhrSlFSRSsxRkpjbmdWWmxIMGExQ1ZCbHYvdzZm?=
 =?utf-8?B?UEhDekFyZHBQTTdldGhyUEFLZkNCay9GUXVtZVhJWnQ2V1lBS2dLaFZ1MUph?=
 =?utf-8?B?M0pHKzErdzRTcE9lZnZTTElyOFZMZUx6aVBSRnpXZDB3Q2daSEUxTFZ0cTMz?=
 =?utf-8?B?VURTYXlaVHJlN3g3YWZQWUdnZ2RSaVNsYko0NnJmazk3RUxkSWRqd1IzcjI1?=
 =?utf-8?B?TGxQWFg3Wmo0OGVTSWV6c0hZR1ZFNEpYV0RlSkhSeDhwbHZCdjNrZWNTeURh?=
 =?utf-8?B?dEJ1c2lCSnZncWpRazVCY29zQTJxSDh2V3lJL1c5YUFSK1dJTGkxMXZ1ZlZn?=
 =?utf-8?B?bDFWejdiakdvVE1KY1N6UGZFWlpJaUFDOTBkQkVVQ3Bqem9Dc0pDRmdhYUJB?=
 =?utf-8?B?azF6aGhJa1BiQ2pMNU0yMTA3b1Y0c2RIQ1FYSXZzWDMyV1QwcVhBZ2NLSGEx?=
 =?utf-8?B?d2NNTWJYczczWExpVGY5UXN4L0RiK2lUaTExVWc1TXBYTWFmWHoxSThiTW1Y?=
 =?utf-8?B?QXhLaXFpN1FzYkVCSWlxcUt1cXJiSG94K1NHa3RPTk9ZbXVFUHFmUEFwK05T?=
 =?utf-8?B?VUVXaFAyN1RUVDArRVd1am9QdWx4c21SVDBoL3kwd2FvY3pPaXNIMHZnQnpW?=
 =?utf-8?B?UVhZQ0krL29wU2M1S2Zic3cxUnVzdm1lcUlUcTV0a3RWK2ovZE5uUC95dHNO?=
 =?utf-8?B?a1RISVI5RHRqZnhoOXVka0tudGVqTlg4bXY2RTluUm5PNHo1UE5WOFVUUHhk?=
 =?utf-8?B?S1FpVFpMZC9LdEFBNS9wWVZPWkx5TjRlOXA5N2hlQm1CSU96ZjAvVTB0SXhl?=
 =?utf-8?Q?/LvBLfeuUFcS35M5YOuiGvA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48bb6c47-a171-4e97-88db-08db10eda990
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 13:48:34.3047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: siJF76Kj2+ncTNrqpl0ViysXKJj5/gW30VZhVA3th8+8l/6uxoYFCPjtpfz4AZdGoXnwO9p7xcyrlCxcz25QlWoaK4DiVmYpZmSkb9Ip1xQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7828
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 21 Feb 2023 08:01:44 +0000
Cc: lvc-project@linuxtesting.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net-bridge: fix unsafe dereference of
 potential null ptr in __vlan_del()
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Alexander Sapozhnikov <alsp705@gmail.com>
Date: Fri, 17 Feb 2023 16:16:57 +0300

> [PATCH] net-bridge: fix unsafe dereference of potential null ptr in
> __vlan_del()

Must be:

[PATCH net] net: bridge: fix unsafe dereference of potential null ptr in
__vlan_del()

> After having been compared to NULL value at br_vlan.c:399,
> pointer 'p' is passed as 1st parameter in call to function
> 'nbp_vlan_set_vlan_dev_state' at br_vlan.c:420, 
> where it is dereferenced at br_vlan.c:1722.

Do you have a reproducer for this or it's purely hypothetical? I'm not
saying it's strongly required, at least I wouldn't require it, just
curious. And sometimes without a stable repro you should target
net-next, not net, but better ask the bridge maintainers re this.

> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 

Here you should have a "Fixes:" tag with a reference to the commit which
introduced this nullptr-deref.

> Signed-off-by: Alexander Sapozhnikov <alsp705@gmail.com>

You have 2 copies of this patch in the list. The first one lacks proper
commit message, this one has it. But you didn't marked this resent as v2
(it's v2 in fact).
Please mark it accordingly next spin and don't forget always provide a
changelog between versions.

> ---
>  net/bridge/br_vlan.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index bc75fa1e4666..87091e270adf 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -417,7 +417,8 @@ static int __vlan_del(struct net_bridge_vlan *v)
>  		rhashtable_remove_fast(&vg->vlan_hash, &v->vnode,
>  				       br_vlan_rht_params);
>  		__vlan_del_list(v);
> -		nbp_vlan_set_vlan_dev_state(p, v->vid);
> +		if (p)
> +			nbp_vlan_set_vlan_dev_state(p, v->vid);
>  		br_multicast_toggle_one_vlan(v, false);
>  		br_multicast_port_ctx_deinit(&v->port_mcast_ctx);
>  		call_rcu(&v->rcu, nbp_vlan_rcu_free);

Thanks,
Olek
