Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D390B60D2AB
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 19:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3DA540190;
	Tue, 25 Oct 2022 17:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3DA540190
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=NoK9dn2/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpN33tUsvC06; Tue, 25 Oct 2022 17:43:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 15FB4401C4;
	Tue, 25 Oct 2022 17:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15FB4401C4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8304C007C;
	Tue, 25 Oct 2022 17:43:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2C4AC002D
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 17:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7CA6480FF8
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 17:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CA6480FF8
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=NoK9dn2/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOu1ldnfmeAe for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 17:43:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88C7580BD2
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2060.outbound.protection.outlook.com [40.107.94.60])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88C7580BD2
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 17:43:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U894bB6soCJlgwE2TOs/S8hy0ddh5XIA0bNxycKFLvHNOM3wkQym4hpOp+QxUdBGldUsq+j8IzloIdZPwlaaPHL5ZMer7sbBi4wU7kv+T/69jEncH2rjcBEgvVQdsunQAJPSqee58P1wp0F5Ksm8V+RX2UloZQ9jkhrSLt+PgkBV7NqXQZZDymVZZWcgv3YdKFfrBuF6/2pueBkn4dCz4EXkMTNR4Fhru9Q8RUx3X2SDWXudAIEjXA57dCs2YbiwQ0AJG/XwF7B9la919g/38wb6H4A65L8IOrqjZ+RmlrwjgRu8BdsGGhOnjBpOHe/uS0LOImeAZbulSpL5cICKSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OA5hlBQ8BCBgj/lgFiRnY2YmuqbtG5HTekJ3OpyagY8=;
 b=W7qMdRbRi7p5o+6FPIiXm817Vp04/V0COXbnLdsWTi15DTN+hCBp+rr1VaLFzlYD3PtRQwcgGI8U8j4WkhU1wPdDpSoXcKEdfBE98gT84jp3pp8/Gbv8BpwCbJmx96ZtijTz+xc8U/BHepu8GzhAHYCkiD0jiRPWhoxz3lujQTyso23TyqsNJsYTR8VweE+0JWfiXsEt7ELs83rqyDDVSdE0qJfhacKF4VodjJVcYDZNm5GGhM7ki+Im1bSATLr0kSUfPF008hsFMo2tG1apYZS85OhDRpt5U1y1hFHc9xJwuYW2GS6AL939647XsubQXF6a2nIO9qdnKY3//dvQCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OA5hlBQ8BCBgj/lgFiRnY2YmuqbtG5HTekJ3OpyagY8=;
 b=NoK9dn2/GxH6FMwBWxOwPKYqguPczk5W5LuycTVxHOyycwaTyYY5yt+YetNwp17l8Qvx7iQWjK6qYrf4iuS5MVar3gJZQ7bhNa2Ua4z/LOo72+t7edow8KR2qEE5f2ojgBJv39E6229k27SJTQ5OOr2GHLDzZG44KGY9FgbEuznVJ00WSVI1xcNoMvh41Mzx1DKJE83TRgBrFNhONogC/kX9PnoM0uqO1AQrWrhQxc3/ZBg4xQPhjpV4pBnwASylHrm9nJTo6dQYyg70izv9oUbVrgSdZfTIe2ZCov6E3O0qVYMbs9u7tlr+mH32i8YuqctRCMAtm0Zc52TT07ZPeg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by MN2PR12MB4125.namprd12.prod.outlook.com (2603:10b6:208:1d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Tue, 25 Oct
 2022 17:43:24 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5746.028; Tue, 25 Oct 2022
 17:43:24 +0000
Date: Tue, 25 Oct 2022 20:43:16 +0300
To: netdev@kapio-technology.com
Message-ID: <Y1ggNEXVAMhtmMFR@shredder>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <274f1bb19fbf00ee053b042abca0107d@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <274f1bb19fbf00ee053b042abca0107d@kapio-technology.com>
X-ClientProxiedBy: VI1P195CA0077.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::30) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|MN2PR12MB4125:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bff2c77-1382-4a8c-1740-08dab6b06a3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qakVQ0m9VSXOzptJeR7Hkk3JbVwBMW+wIkCslu/KCj1RKQj6pfYVME8FPLkQqsmSn/Zj+7xovHHABHXgUFrdAKEBr1uNlS3BNzcfJKJNutnRFoK1Jp9u/f0rSry3a8e/9Ng3gSDoUsWDspuNLrvEiD/05DtYasJsb+8rbIhyPUfHmeMmBexN4R3eIzuMqcUs1aubcB984bfTWLsJ5/epmopXOWDW2MNPES1ju9OsBk9/8/4SOuJS1aInAugreOUwwxZrMbek7n/uKu3taJO3xeNVDurdL0NLXpQDNuJPTrHmxT0OSs48kwtwh1gsxxFzJc6l7P/hfBbZ82ZNB8hMxV1Zinb7xstSt9P1NLkP+AqWXEFgY8Vc/9YmkTjNrQdDRHxtfsVrTm8TGHzwD09I0bD2nKRUXaXRGSccSgvFKU/D5lxFIk2xHOgKnzRshX2ryFilZReoMfTpxdKSFZT97Xgu/NZOcXuDG+YglVT/a9KSMDeBXB81hb04ZqK54n6SXqUmQP73vTCBQ2ySYY/DWbeLY61/dI4FmyzF3eCRHZSMKFxJcOD9YSuIEaQQEaoMFJaYBZPuRhEYR64wG9I11ltbVhxWANMHfr8k7n7eYok36plnOsiFQ+BUz54UT3sM4bNUgjY8EVCik1FYounTx74u+rvP1MFIL2xYr9LJEvtgvTcctInNuzp/JNHzLXCzQjHMzdwMu6K+7OdJNBqlmA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(396003)(366004)(376002)(136003)(39860400002)(346002)(451199015)(83380400001)(33716001)(6486002)(86362001)(4326008)(41300700001)(8676002)(5660300002)(66946007)(4744005)(316002)(7416002)(66556008)(9686003)(6916009)(66476007)(6506007)(26005)(6512007)(53546011)(186003)(107886003)(2906002)(8936002)(4001150100001)(6666004)(478600001)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IeFbVRQyTL3ArceBUlvOkp53Zm2ghaxrAAoPOrvh/Vf8TKDFK7rnTFLdkqp0?=
 =?us-ascii?Q?Qi0KsMmRVcBNM5Fde9N9QgrP1bPfXrL37I7r7Tf8aEAJHpBHhVpvU1nljVlZ?=
 =?us-ascii?Q?7PZ1W803sVSfCTmbf0d0ghiU8BKKttcOc+Nw9jzPeiJbDDePcHLoI4FRNaVR?=
 =?us-ascii?Q?qVcXXu0zjzdEXnNXAFuiFLxcgplO7YupE4BxxmRcEjaqxvnucXXt+6cALwwL?=
 =?us-ascii?Q?l6GJLq9y7mejuzE9vngpyRb/9SEZ1mvxnddUpHvCDjw4Bhsqf7ErQJoP8ucs?=
 =?us-ascii?Q?gOVA7O1v180ks7Ul6UWz+4I6AuuxtYn9xHo87C2ejJr2vSeDx5d3cK6ymNwl?=
 =?us-ascii?Q?dySfNMK6Q4XKYbkuQE/CP3nyY5Ov5UVKcMhWxtUkjZGHJYcQ1juplYWH2aol?=
 =?us-ascii?Q?sFW9xHcFLGl2Lyzpx26AQb1Qs4no+3XVSE0VS/6JTHtT8IrByLxzbniobkl2?=
 =?us-ascii?Q?dHzwKlcLjogJfkzKCeF6Xhl2vQuL08JzXujNuzRzgHUR9RWaTq6RGDoL5MBI?=
 =?us-ascii?Q?kjHBd615IDPUdx6cdKZhED3yfaUXCgPrNkg+0yGKMBLt/QSGSslT58nxVXZB?=
 =?us-ascii?Q?9N4voWPhoW9QOnoTlI2MVMRfUKzqHZ1Hb19BGyVsyu6sLp6u7JtoK+Y4jOb6?=
 =?us-ascii?Q?QdQdz5KmkbYukrFmuu3zxc/JYrb2tJ++4qamBxE3K/x6ZGKfGQcC1F92PTPL?=
 =?us-ascii?Q?KkMXVeFegg/UlRm/KyMBg6YfcssIHkHg9S+iuJrSG5vfRfI3+bMsLq4AcdFf?=
 =?us-ascii?Q?hEx0w1GL9ugYrKr8FuJzvL/EcoSthyKZJSuBZ1JiGrVBIifBIsxXZTMFSsLf?=
 =?us-ascii?Q?vdSE5yuJ43x9gEEuPrqBu6XnsMoUQiPWyt/U4XuWipkF0FbEKMk+S2OlTkQ9?=
 =?us-ascii?Q?6CwxLL+wK928zJHJRxhNK33FJ3JLFKNHHwbo49Hw6PHdOFtvsEoKOHJ73KoS?=
 =?us-ascii?Q?dpfllpDSy9m2z7dXbQfSIaKnT0IOyiH03thsrbfeD+t1GH2Ma1yeuAz/jDQ0?=
 =?us-ascii?Q?XZ0vsf//5UOthEtkNq9ZHDBrKx7oynrym6BR9+KRBHtV13CRHQxKHfECKxdY?=
 =?us-ascii?Q?16JR1cAaCArAaiNVXiuBBa2uiyr0qI83s+eG1a8obktjkiHd+CX03lyPYA0D?=
 =?us-ascii?Q?t1ZNjSCnXfCBtiWOf3rNwtFRaFom5pAY/WGT4YNsw2ZzdqyKpSGjSHOJwJ9/?=
 =?us-ascii?Q?czyMH7w02tMyXUFC4ltCYntYLtespSZtfM71R0neCBY1wtafHmZURb3IZVfK?=
 =?us-ascii?Q?WALCs99LG30Z67csVQj7SKOWz+HkBiQY1POPL3M+HsWCMk5qrqGMwGjEJpWu?=
 =?us-ascii?Q?3Z1fEfcGChqRhXNjM8gcf2UXshiQUsJ/eDqwRT1oSdQbgFXh6dQalDRhCsUE?=
 =?us-ascii?Q?e4bpH3G9trvT+KEo0i5RP9KPAp5tExp2oEamM6Q+gXg8xHaERhVcioUaPDFc?=
 =?us-ascii?Q?7x/09eKdaPkwNIJJCuaO3trkwz6ERbMsbq7+orEhuVDd7hppW9QwLfgMVIP/?=
 =?us-ascii?Q?SoQA++Z6CUNZA1hdvy3XkYuUVotZ0zYJXL413KBYpUe7/WqJozIpi1K5kBKv?=
 =?us-ascii?Q?SKAWulhvtaIfuZqKh7VhoV44WgeW23Z57yrjk1bD?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bff2c77-1382-4a8c-1740-08dab6b06a3a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 17:43:24.0444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N/I+VCCI7ddInFTnKpQaegFxNIYyX4q8Bd7VtvoheoCdcdK96wy6jYa+Qp/FIFvDCpAt11gjchW3Vj1bJ14dQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4125
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 00/16] bridge: Add MAC
 Authentication Bypass (MAB) support with offload
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

On Tue, Oct 25, 2022 at 04:09:07PM +0200, netdev@kapio-technology.com wrote:
> On 2022-10-25 12:00, Ido Schimmel wrote:
> > 
> > Future work
> > ===========
> > 
> > The hostapd fork by Westermo is using dynamic FDB entries to authorize
> > hosts [3]. Changes are required in switchdev to allow such entries to be
> > offloaded. Hans already indicated he is working on that [4]. It should
> > not necessitate any uAPI changes so I do not view it as a blocker (Hans,
> > please confirm).
> 
> The dynamic ATU patchset will do changes in the switchdev and DSA layers
> and in the driver of course, so I suppose that confirms what you think
> (e.g. no changes in include/uapi), but it requires the fdb_flags towards
> drivers patches of course and MAB driver changes, that are part of my
> v8 patchset.

Any comments on the merge plan and patches #1-#4?
