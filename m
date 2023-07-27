Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 574C976524D
	for <lists.bridge@lfdr.de>; Thu, 27 Jul 2023 13:29:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6489E612EB;
	Thu, 27 Jul 2023 11:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6489E612EB
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=corigine.onmicrosoft.com header.i=@corigine.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-corigine-onmicrosoft-com header.b=j6wgjcPR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRBnGbZEuxvA; Thu, 27 Jul 2023 11:29:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1611A60EB3;
	Thu, 27 Jul 2023 11:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1611A60EB3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C4FFC008D;
	Thu, 27 Jul 2023 11:29:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 52C98C0032
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 11:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 268E483A80
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 11:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 268E483A80
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=j6wgjcPR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V6rkEfmSHWmT for <bridge@lists.linux-foundation.org>;
 Thu, 27 Jul 2023 11:29:34 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2070c.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::70c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CAB083A7F
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jul 2023 11:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CAB083A7F
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxvEXIhfbuju9QH9ry9Fy6C2KfV5+QeNRywLHO3M3G2eE+57Rhq7kfgzwcYDBsZOXJ4sKnHJevpdar0k2yEBSxECn1lTQ6y9npHF6VPqJsiZV5TVfDyLy2OK5tqB9J7kj3xhGBWeJI/ihb5ZEyY5MmeXmBYt64fbNQuhbchU8jAY0uJqP/HTIGcgRheea5eeRMFLZ84hzXkwC9gQg39EL8TNx+flEJECe2ALaZQ0ExnIKa2fWmkovDVfQaOo/kzsE5swM9214B7m+jzkKhel47QgEZHD/Scd6V+jG9Zrv825uistn6aYkYWwROGcJmPfuQZgRyiRIgiuTFq3OxXpLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1At6ayDDP/04qN+Uus/x8mxoTo98nP1tWBSkoOhmp4=;
 b=lmO2vmHGB6QXQzz9Jws3Qktx0fVgm9mJQ0jWoq0dklvyAmBqWtXEo6Xx9bitzSRuILDyLXepSYBMJFJq2q+TJ2CfB4+XHbCCYWbkeFoRaoOAGfkK2JXX63bopDJBXyer8VhpjAOuvWtsylSB/iX3KSKMrrXsls3GZUf8GJqCnuwr7YESCOQgoSODpe4Oc+SlwkBb4yDuCIoLkm2jf2BeXsTucIumpzpMvKXR6KUTeDJZZwYtzCZUxnO53eZvIRnnT4b/nsheqsiKwz5ow5QPNgQPfJyRwaEZsakoDlLm7L6kJPHomxw424vGxD2dcy4JSmcOOnWLqL1u0sCCfP6y8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1At6ayDDP/04qN+Uus/x8mxoTo98nP1tWBSkoOhmp4=;
 b=j6wgjcPRdCU65stXh66CHEyzp6UKpccLA4uCZb1HVNStLk30EQkbXRraGQ8rF8kgrfo+TBGUJymvl0mabAaVcgOBJuG1cIxcKfkHkO9NuewXKGldOaoEQ6OFB576J5uQQbDZtwICLABXRY1TS+BX3HduFqbSAWdLmulRApDEGFU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB3687.namprd13.prod.outlook.com (2603:10b6:610:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 11:29:29 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::fde7:9821:f2d9:101d]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::fde7:9821:f2d9:101d%7]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 11:29:29 +0000
Date: Thu, 27 Jul 2023 13:29:22 +0200
From: Simon Horman <simon.horman@corigine.com>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <ZMJVEjMQ0o/0GOKU@corigine.com>
References: <20230726143141.11704-1-yuehaibing@huawei.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726143141.11704-1-yuehaibing@huawei.com>
X-ClientProxiedBy: AS4P191CA0021.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d9::6) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB3687:EE_
X-MS-Office365-Filtering-Correlation-Id: 4770831b-d895-4670-697e-08db8e94bd70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SR3dH7kyWE4oycc8EZEanF6DeOL2YTLABe+sw84r7bJO4Y9+mkoBrox9k5WrGUMHamZEAvwZrBneQsbbqxTTMwM0g6jWHfLO++/+UHlvY1rfh9vaxX3W+zNfeQjCoXoNaynMGyxyQKAPzFeH/N1n7focqzp3HU6G2SB80CvRgH431YtSVZRHOGyZVd/UMYl7eoGrgxAZnkYyW3L1cmkgdTL1D8sx+aaqy3/pzkNul7iswMTjSd8yXBX+961SXIkSIirktrmI/CMme9d2bPy71zxj1ldTTFKfsId9ONO/sgkloQIj3uSAg1nHCj1wm6RwkfgSx6Ha9NN3fPUMKbfaLmFakeFh0FmTiG6aV7sJtC97Ui0ZzxJUngEqkgJLFkXQRGn0teAM1VtfdQnGqZzzZBmygbLeEqV6yOyD04hWQ5r8si6ZaaDaLokjcsOhpxdZmB8QtN7aku6YmgBl3NYdiQQXwd1S5AzT5GI7aDNoryZ+7p+jULAUOvVrxOPAVqUzbi8gbIhOqfMWQrFbEeyk+C4yKXpjrBbB3cf9NKW0RFx3XRc+aE58nUWePCPn4h4+Nfr4QKOZdwvRbxRheQajKXPbOBxFE/cBNa8EhPIfM8A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(39830400003)(366004)(346002)(376002)(451199021)(6666004)(6486002)(478600001)(6506007)(6512007)(66476007)(66556008)(4326008)(38100700002)(186003)(2616005)(66946007)(6916009)(5660300002)(7416002)(44832011)(316002)(8936002)(8676002)(41300700001)(2906002)(86362001)(558084003)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0VdOSkp8Nu83RxOJpGgn+MqfGMpM6Mb94QFdvwKEl/5XNlGKbNiMEciNzoOU?=
 =?us-ascii?Q?9AHXPGqK9b6baMpNc0joRDBBhPtltvVI2iVqcmnV2SE6tjgYeqjkd3LqOdio?=
 =?us-ascii?Q?pHlYCmgCYioK/1XAU6Y4gqS9dAW7pU99zLb2klKoxuBI14awq4XRO/UzPBkt?=
 =?us-ascii?Q?71sygpVxpg/vkWSUG8iTcvyaPxnYCkLcCLqS9O6nZUKfG47/MncLH3mtBaq0?=
 =?us-ascii?Q?2hM0iH7qokPBp0eOnV8rfu+7C1Yjd8mPZecvjlqW8zjKc5Z3I+wUtNCDpmBA?=
 =?us-ascii?Q?8yob8xbC8bfwROE0nblFB6sTvhaO3aqBZIsvW5+4AjXFTrVzDemB4APOpa2v?=
 =?us-ascii?Q?G5rmsnh97tX2vqGisgtplRf5krs6+EW2d2Q8a4wQp9XGLcMqoiY5fN+itOHO?=
 =?us-ascii?Q?HtKACYBBkQEE6DVD5PohzOS4Hk8ku2eWkk+MP4dF2On6HKU16wGcOOoclu0G?=
 =?us-ascii?Q?ju7WdusO4W8gbxuQxEBSxLZAgl0b6ijfwavG/i2SjOw9bn+xbzi3Wk0bKQSy?=
 =?us-ascii?Q?kJohVCcIPUPZEIZ/IHQm5R9yQaZ1ItaJ29KjRZaVvmhmDswD5ZYwZLahGtqW?=
 =?us-ascii?Q?z+8Hz+Gcd6MteKDLkxIp99MPLsx6LEQ890Bue06o5IjPgFMFo5VaEXulCTGS?=
 =?us-ascii?Q?kRvXGo7abgseQuokfJ5rX09WRsnJNTKTlEUIYjjLfxzEftLUq2c5E41DKXdX?=
 =?us-ascii?Q?cgRbnEI/kx7kNumU5BePfmPyFOCrYCM5WFXQ2UlDieXI3VtjggnbP43fFrhi?=
 =?us-ascii?Q?LWMiA7LiA4TtUsMK2CU+P0RzTcqgY+2wlwusV89/GJ8E51MAdCeBcjFz8zQX?=
 =?us-ascii?Q?pG1o0XBTamurLuSQPfKR4aNOuHdU6ciNsx9wnLriUF7BgrroUgYGp40GqExk?=
 =?us-ascii?Q?ZuRxb97408vAeP5iEphA4CXyWfyfAYMmrJP3qzNdC68hEUhPe/oPI3l42z8E?=
 =?us-ascii?Q?KiUQA7RMuLu2d4HcMDwLIcian8rCt97YfwdUBa5dvUCLnM4K14Qjuj6jg3up?=
 =?us-ascii?Q?Yv3Qirqq9IfivbYAMtRvvD0FElfQLoiuutLl5h2L1f6+Kc7SzqXXr7VzziMq?=
 =?us-ascii?Q?PxQM36GW0/hCwbP+RXoZO7D9ki7gfGMnInce7bSxAPYQ8uSW7l+zSGW3qifP?=
 =?us-ascii?Q?8rhX0EdLAdvwJB420EwNLL0ASFqBzOSQzze1DqD3RQIay2LeLJOgD9rqTJ/T?=
 =?us-ascii?Q?4gCyZuNx4RSXIOk7ylky8+/ZZr1Lw0dMMQck/UbILp0KTtajoozU50SmJZ7m?=
 =?us-ascii?Q?+/z6Dy7xCm1dS6pO/6uVMcUUlI3hNoijJ1n2YYwqLqHZxMF6AgoXP9VEktED?=
 =?us-ascii?Q?V7CpeZcyZWczHb2ImSqkIwjtZdSTVpRa7+C/RAW/zEfY3kHeyeGY9dwuyS7r?=
 =?us-ascii?Q?XaSgUCpEtNsmHWoY+Zda9Dpj0b+3H7JUZ6LYfJWvUvYP8fcb+Apt5aoK+RsD?=
 =?us-ascii?Q?N8HN5ly1yM+auUCrHkDD8lIzwKpnA8QuCyL7denYmlrbmOqGOhEEUB9onXhT?=
 =?us-ascii?Q?KghnUi1tNZPs6HmmUJ3uAmYTxedkJZr9VE587iXCJ2yDqfcfU9gKQ4eNWUOg?=
 =?us-ascii?Q?edhD8UO1asCBacHfJtD/cZA7ORaJMu5z8Dk1r5gNWyJdeyr9caYBhqlxa5xT?=
 =?us-ascii?Q?gulxB523EInKlKhlqXf7NobkwNVV1BoOvAgjb/NnQMBXXSJLBSgEqzwbVv+2?=
 =?us-ascii?Q?U+JaOQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4770831b-d895-4670-697e-08db8e94bd70
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 11:29:28.9753 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rSP8d4WM3gQF4BAmUTUPyAblYRETDlucHWtvFDS1aUU0jYvJu0xMqy8hertaeG4VMACAetM15A4oaHNYNFVYA1tcoRGV2C+8uvLf8yIev+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3687
Cc: idosch@nvidia.com, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: Remove unused declaration
 br_multicast_set_hash_max()
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

On Wed, Jul 26, 2023 at 10:31:41PM +0800, YueHaibing wrote:
> Since commit 19e3a9c90c53 ("net: bridge: convert multicast to generic rhashtable")
> this is not used, so can remove it.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

