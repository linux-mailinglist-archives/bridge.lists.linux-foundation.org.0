Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBF73088A6
	for <lists.bridge@lfdr.de>; Fri, 29 Jan 2021 12:55:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF40786A11;
	Fri, 29 Jan 2021 11:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pr5BlCnxemT8; Fri, 29 Jan 2021 11:55:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73A1186A02;
	Fri, 29 Jan 2021 11:55:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 587F0C08A1;
	Fri, 29 Jan 2021 11:55:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80745C08A1
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E9DE87183
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPHSpE88nlQh for <bridge@lists.linux-foundation.org>;
 Fri, 29 Jan 2021 11:55:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com
 [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E67A187031
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:55:33 +0000 (UTC)
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
 id <B6013f7b50003>; Fri, 29 Jan 2021 03:55:33 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 29 Jan
 2021 11:55:33 +0000
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 29 Jan 2021 11:55:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nmmwdGSMtKFOrjASX1EH71l7LQjtuYIZuL47nZIwnYco7yaNr9HhdfhkG23JNxhDv5CqmxrGF0nHExjDjO7ss8aLGbWP0hRtx1Rlrss5ow+sOx0gOhLLVgCO67qdMMnvkg/z0jAjUCxSd5ptt/+kCWqS7sTu2d3QykSlW93wM6bjRPBH3g3bHftJMVCoQRCa91K2BExbQEtTmBKcN5lD81uKR+UQrL5xnr2BFGps2lHLxKnctVzUVQWL2oFEGB4+4GfCdhYHMxyl6Vyxpb5VbG8UDEobYaMDPXKDpzboIDWIlhW1q4gl1vQtsKTm5RD0Jr4hx2cW6GoZniS9AvwhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuxAtOt9LJPVIPTspQUGnvDsLt+MvgPqr5yMRjXX0nQ=;
 b=X0cTqsuCzgiXDRsFfEytLfbY4MsvNL5ZGrAe+d7nEjU4BcoPBFPn7k8b1ZHpS5BqgX2BwEyyqORadLozjPPyuEwTVm/jAovt7j8wDSxQOgxRH/AiFNbSfrTco8/3cmkIsGgGcuukdFEVkHW6Id9sgAVGSgRMJXMheqYWbvFdtjGqsoXW41ndU4ctjeskMWZh+7IafiNqgXj8zpXatiPexeXudombnjrhgcJKMITFLyRzgf9p7f1B3rbinJlxQpcgzZ/fGWhhDzlbaKyQC4uQwZ+lGyxa7drZfSzO/dKgCNVX3NmmyyIRaeyxVkQnbh1t9JHEuxwXI3Y6n5EWlK7CnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none header.from=nvidia.com;
Received: from DM6PR12MB4403.namprd12.prod.outlook.com (2603:10b6:5:2ab::24)
 by DM6PR12MB2683.namprd12.prod.outlook.com (2603:10b6:5:52::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Fri, 29 Jan
 2021 11:55:32 +0000
Received: from DM6PR12MB4403.namprd12.prod.outlook.com
 ([fe80::edba:d7b5:bd18:5704]) by DM6PR12MB4403.namprd12.prod.outlook.com
 ([fe80::edba:d7b5:bd18:5704%4]) with mapi id 15.20.3805.019; Fri, 29 Jan 2021
 11:55:32 +0000
To: Nikolay Aleksandrov <razor@blackwall.org>, <netdev@vger.kernel.org>
References: <20210129115142.188455-1-razor@blackwall.org>
From: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <e0c38c2a-3e72-2ee0-c48d-900e63227528@nvidia.com>
Date: Fri, 29 Jan 2021 13:55:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
In-Reply-To: <20210129115142.188455-1-razor@blackwall.org>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [213.179.129.39]
X-ClientProxiedBy: ZR0P278CA0067.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::18) To DM6PR12MB4403.namprd12.prod.outlook.com
 (2603:10b6:5:2ab::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.241.50] (213.179.129.39) by
 ZR0P278CA0067.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:21::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.16 via Frontend Transport; Fri, 29 Jan 2021 11:55:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a617843-bb4e-4335-96b5-08d8c44cc7a1
X-MS-TrafficTypeDiagnostic: DM6PR12MB2683:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB268339E05DEA03E0E1A15E26DFB99@DM6PR12MB2683.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iyYABdoMhMZzR9oeGK2FD3QOn5Tx32QOZvPK2jiFe1EGdYkDVJj3hqzqWM6BydW3had90hy2azZ3eUiWgJNrOuRWvncdFdm5pckuxf7y6CauO1GEUIV9JKY4sO5em7MFJqGiF1mM0b/4lfMCVfbFMxEX2nxyV671RYnfdA6JVViLnE36uDQJ/AbVIe0PnkIOL6vSh7Rt7/gqwnYAr9fOHrIYD0i82MYjEBTqlYNGOWxah49Lbn60rSk7D2S5odCIsCvnjNGPC31KaVd7fmCQ9MgDQNTm5600+6WxD2Pct3zYqrcFM/Hzut0cXf7HAhJ+AV5af2uNR7sTbQr1qSTXMtjuNTm17xlNvvF5u0xDxfvvKzmzMBvGmGfzZRaZMkAkTlWkm8jAkrHeTNpxjLyuy59XLuBY8b3XFyKcm8tZjhihz4ybyoycZN8VIQY+vWN5TH4IVaaZy1jrnolacPwk3+73tH6E1GFw3UYTDSXgaTY6N06mKTqIBn0WVVxK9ZcH1C9Uspohn94rrOxJLLFEJx7o0ZpwVI7LdV36ppjO0mep6pfxHZa7YkBaqgEnt3Xdnk3WMY63tibF2K/Z89Bqp5j52YR3VtNnEAoRwJmxf5rX68k2h0eXl4WLidAuMfMYt1I119TERH9oJHWuZTcaiAzz/uPZniSdfD0IQxxDaUiUZ6pMOdBCScv45BpAdzA3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4403.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(136003)(346002)(39860400002)(316002)(16526019)(186003)(31686004)(8676002)(966005)(26005)(8936002)(4326008)(2616005)(956004)(36756003)(2906002)(6486002)(53546011)(478600001)(83380400001)(86362001)(66556008)(66476007)(66946007)(6666004)(31696002)(5660300002)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?cWtSNjNSTFIyNDhCalh5T1ROTUViaXZqWkxuRE1lbGFhQ2RDV2hwclFldmNz?=
 =?utf-8?B?SWhoRkMrN2p4Q0ZqMW1KRjdXQzBsZFpYQ3lPVVNDY2lWZjF0UkZobkRLcU1V?=
 =?utf-8?B?bWFYTXdHWldFelQ3Z0t3UmtnZDk0UVRjY1ozN2hXTDNNREtIRGhqbkg3bFRu?=
 =?utf-8?B?ZjZsN3BaZVFXRUN0QXlvWmZDcmxWNnU2MndxQmt3cnlnbVZnTjdoZVdvYXhC?=
 =?utf-8?B?V0JvdzNNZzVzRjBhTHNzQ1BEMHVBU01iSzBQRkhTSXhZMUFOTmNNcDh0b0VE?=
 =?utf-8?B?VURnbFpFOE5GYmNZbzJpUVNnbFJHNlNmazNEMGZodUV3dzR2eWorYkE4dXVH?=
 =?utf-8?B?YStkTXZxM3ZrcUd4RUVkUldNYzFTQXJhZTJFWTB0YUw1Rjh4NjduYW5IZHM3?=
 =?utf-8?B?UjI1eGJabW1adUE5UXc0MnE5Lys0bXdYTytDazJTcGt2VGl3dXBJT2ZyTlVH?=
 =?utf-8?B?UHUvZ2VaN2RuZzJPUVc4aE1pemdIKzZIdDRlTDVINnJZbXVzTkhBZDlTU3hY?=
 =?utf-8?B?cHRHdkhlYWFBQW1wQy9pNnRDSVN2TCtYR0tPblo5SmJhazFJc3p6R0NWK3lp?=
 =?utf-8?B?akJ5TmhFZ2lIOXUzZ2VuRmpQdGtEY2dKakpqeHN6RTA0N2QwV0hRK1N0bTQ1?=
 =?utf-8?B?TnlxRmVLVnphbCtlSWsxanAxd3BMUHJCL05zanZlT05wWXRXWlB4bHpQcmtW?=
 =?utf-8?B?SktWQnVhWHRqdVMzai8xWUpjc2NId3p5cDgvcFR6M3o1MkJ3TCtXSTl1RDZj?=
 =?utf-8?B?YUJLamJTdktoTGZTV1FaTGc5VjhLUHpkZU1FYjdpWGlHaDhOa3M2U3ZBSlU2?=
 =?utf-8?B?enBVcUxSWWgwUEkwTUdPcFZYZjZybDJTUDk0YjhYUlU3VXkrYXQ2WmwvdzNm?=
 =?utf-8?B?U0xNaWpzY2FsZkV3SWJJVWI5czhrU3ZLdEZwbE1ybnBBK3pZQVlVTk5lQVYr?=
 =?utf-8?B?N2RXL1FVM09DT0pyQW5Ua25jNy9LSEdWb1dQVHJELzZKU1J2K25PZmNaV05O?=
 =?utf-8?B?U2lUYVBHRHVOQW1YMVhMQUViWGcvak5Zd05zTE4vUm9MYWExMDdnOFZUd3N3?=
 =?utf-8?B?OXV3WXhmQnZxei80K1VLNzJYM1JjTGxzMEl0V25XYWVOeFlVR2xRNyt0M3Ux?=
 =?utf-8?B?MEsveGFGUUs3Y1JQRzBwV0FjVTN5UXVwUEd4cnp1M2twelZUTEg3a3dORTla?=
 =?utf-8?B?WDd6TXBiS3YvNUJWUVQvRXpaZDlIdEZ1VDFCQ24xYlFYMHJKdHNvYjkwZ1Bl?=
 =?utf-8?B?WlExa3l5amM2QjRhUVBMMC9FNzVhTGNmNjdlcmpOSFozeDU4Zm03dCtzbHFR?=
 =?utf-8?B?NDRaN1RWYzlDbWNuYXFVTXF5YjA3WmxUdzFZc3N4TzI5Y3gzb2NUYXB5RlpO?=
 =?utf-8?B?eExWTUVvS2NpeGpEK2hnU2xyTHMvVDlnSGdQYklrU0tMWVpnOUFpSnNJK0tp?=
 =?utf-8?Q?zqFYpb22?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a617843-bb4e-4335-96b5-08d8c44cc7a1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4403.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2021 11:55:32.0840 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0p4Zh1R0T9GQtCsP3KRAsjdUUiMJib6SNRqw43ViX4Fas2FiH38bM04u9j4S0V3/RPiVshpuyiPtVQzfmU9lUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2683
X-OriginatorOrg: Nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1611921333; bh=wuxAtOt9LJPVIPTspQUGnvDsLt+MvgPqr5yMRjXX0nQ=;
 h=ARC-Seal:ARC-Message-Signature:ARC-Authentication-Results:
 Authentication-Results:Subject:To:CC:References:From:Message-ID:
 Date:User-Agent:In-Reply-To:Content-Type:Content-Language:
 Content-Transfer-Encoding:X-Originating-IP:X-ClientProxiedBy:
 MIME-Version:X-MS-Exchange-MessageSentRepresentingType:
 X-MS-PublicTrafficType:X-MS-Office365-Filtering-Correlation-Id:
 X-MS-TrafficTypeDiagnostic:X-MS-Exchange-Transport-Forked:
 X-Microsoft-Antispam-PRVS:X-MS-Oob-TLC-OOBClassifiers:
 X-MS-Exchange-SenderADCheck:X-Microsoft-Antispam:
 X-Microsoft-Antispam-Message-Info:X-Forefront-Antispam-Report:
 X-MS-Exchange-AntiSpam-MessageData:
 X-MS-Exchange-CrossTenant-Network-Message-Id:
 X-MS-Exchange-CrossTenant-AuthSource:
 X-MS-Exchange-CrossTenant-AuthAs:
 X-MS-Exchange-CrossTenant-OriginalArrivalTime:
 X-MS-Exchange-CrossTenant-FromEntityHeader:
 X-MS-Exchange-CrossTenant-Id:X-MS-Exchange-CrossTenant-MailboxType:
 X-MS-Exchange-CrossTenant-UserPrincipalName:
 X-MS-Exchange-Transport-CrossTenantHeadersStamped:X-OriginatorOrg;
 b=TRLVy/NGYkyuVICUES8gBX2dLKeV/mtbyxlK0N+VJjvd/vZZcwMCZ9vWu9SB01vHr
 eT6Aq/mE3C5y4Lqr9X9TxmDuVEKb5IYsdtj675x4ynt6TI9WKJwd+Rc1TTy0sWD5qU
 qS5ZNwAjrqKrlER90rJcXQ/JlTgUO6cPzRyP/lSirYq+7Zkjx2118MUEO9aoN7EORp
 S+Rh3x8ck6w7P7fBIzyJNRGS/ZBRNTAMv0/5P/s70j6lu+5/GhFNbvZEGpGl6uSByN
 dCKF+tOSAg9gM/JZ9ZQiTwP0C9TNgmdRmAmaJ6AihWi4J3MJLn+okdq/xMcBJrnCQj
 mwKL5Mn2B+Z3w==
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org, davem@davemloft.net,
 roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/2] net: bridge: drop hosts limit
 sysfs and add a comment
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

On 29/01/2021 13:51, Nikolay Aleksandrov wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> As recently discussed[1] we should stop extending the bridge sysfs
> support for new options and move to using netlink only, so patch 01
> drops the recently added hosts limit sysfs support which is still in
> net-next only and patch 02 adds comments in br_sysfs_br/if.c to warn
> against adding new sysfs options.
> 
> Thanks,
>  Nik
> 
> Nikolay Aleksandrov (2):
>   net: bridge: mcast: drop hosts limit sysfs support
>   net: bridge: add warning comments to avoid extending sysfs
> 
>  net/bridge/br_sysfs_br.c |  4 ++++
>  net/bridge/br_sysfs_if.c | 30 ++++--------------------------
>  2 files changed, 8 insertions(+), 26 deletions(-)
> 

Oops :) the [1] addendum should be:

[1] https://lore.kernel.org/netdev/20210128105201.7c6bed82@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/T/#mda7265b2e57b52bdab863f286efa85291cf83822

Since this is in the cover letter I don't think v2 is needed.
Please let me know if you'd like me to resend.

Cheers,
 Nik

