Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BA1709692
	for <lists.bridge@lfdr.de>; Fri, 19 May 2023 13:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C7B6408A4;
	Fri, 19 May 2023 11:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C7B6408A4
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=corigine.onmicrosoft.com header.i=@corigine.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-corigine-onmicrosoft-com header.b=G2WcjxZJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iyj7OXpWBrkD; Fri, 19 May 2023 11:33:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E8DC14029A;
	Fri, 19 May 2023 11:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8DC14029A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86B8BC0089;
	Fri, 19 May 2023 11:33:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EE43EC002A
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 11:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7BDE83A51
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 11:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7BDE83A51
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=G2WcjxZJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ek4s8IjiMBBu for <bridge@lists.linux-foundation.org>;
 Fri, 19 May 2023 11:33:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0715F83A4F
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20707.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::707])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0715F83A4F
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 11:33:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RAAEgnhuTtU4vdcc2Lyfgi2mwAkVENNZgB8xWg5lsuNEI9cJBaCDsE4m4SXWf1m24tFljLEB/3NdT7QmKJSLcBL8T+pBSNuIkNmw5SXp3HYaB2++mjb+GxLj/0ePr56nTmdYfH2PGg9mXphkv49Du1lTfp/RmK70flv9Z9hGYH4EW5ukuKF6zVRe5KhTboT5QFP2XKhVlH5UYgA5YbIFStnVkwjJgt937lM5FMS29ufDZAKLLuoAvVWSgy+HYMq+AlMqI0ObxKV1BMWs+x1xB4aDHRDaotDrrp2qmApBt/hBSrvVNtG5SusKgVmvClyjVqyDn1MvoOFrhsO/Rknjvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LSvYHf7wsItxPECth4BhNPbkGqh0XgM4W31lp0+BBUM=;
 b=e0kTvX8iK6uBW39Wbdko7SGwhkZxzVFiSxvwffmn1TlAvblQqKHDNjXspiBt1dnZhTP4yFlUIvYdSpkgaUpV5YLutbBLmlflI+3mo8wpKCzvoeMVs2Pd/IuYjuaUYyfMexfwg1bRQATphM37VWbQvloYzJ7vDOabb5WpWoseh2ksG91r+b6MlplvQdoQ7S/YGXQ9mn9zzunPBPq+ZUQt0ZXmJamfh8Dc23S4qubYzKghUE+hRAq1S5WTCbP8iL/jJ+bWNMllGaGA2AwSlKkkDK64XVp/qfiynyMke4mHaoqFjG96sR1qlaD9jLfvempllZTyIZi4+hovM8TIMBX1sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSvYHf7wsItxPECth4BhNPbkGqh0XgM4W31lp0+BBUM=;
 b=G2WcjxZJFydJbNA8Yr+wYHu7y9BUZp+LVvGJOJV/KnJI0dROjtTJh+4MpAb+QcHhvrtADzG7TkbxqX+lSLIzpOvt+4ea7GWIqclEQAOMev/YUWzfXae7FW9NILukbIatDcJpndpNG/vJE7k5gw+ICgCBkesF2OErl8Xm2W9hTfs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BL3PR13MB5073.namprd13.prod.outlook.com (2603:10b6:208:33c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 11:33:08 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6411.021; Fri, 19 May 2023
 11:33:08 +0000
Date: Fri, 19 May 2023 13:33:00 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <ZGdebBM8mxGOTovV@corigine.com>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-4-idosch@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230518113328.1952135-4-idosch@nvidia.com>
X-ClientProxiedBy: AM3PR04CA0128.eurprd04.prod.outlook.com (2603:10a6:207::12)
 To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BL3PR13MB5073:EE_
X-MS-Office365-Filtering-Correlation-Id: ae781999-4141-48ef-de25-08db585cd19a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u6nlL3bijtYIG0aA7VHQ1Y/GRDCdanZwcUTNMzS7kC5P6idR7ChrZgSfqVzTz1jCmluNJbVwaG02Y1045ziBQoWdK4GzlBny9EHeD0YbsqLOrfwCwmsyOP49CImJdH3J6Q1J7ZMnJQQ3ADNMyWi6SWg8hN6UGtf6GKGWeVeMAJg0esCEJVV3vTYGl5d72wFN5HMlD9+h9kMNmz9Cggv+huj6dW7VMaEovMACHN7fycMc/1iWJ6Cy+Wtd7zuVCP93XSQQ9Jdei3LTm3FbhL0+NHd2qBhtZEmnMKJGpTAQcIYTcq9JokU60rYpJryAxrDg2fdrHeGD0wNtBoeVtu2VsWNvkl7u1naoJIbKmeqMXAX1V1mlfkptzMwuuw3+KD3Z7OsapmsHlWq5IGFz9k96jrPWuvq7t2CyrsjCC3pZLsrOAu3dIeaZyTpndsY3PW3WKaRPLnp0pU8JvzoR+baZOz7qqqwFsJXveteyRUezEFsURmr73AzzakBySz7jm667sjey/nOXWBpFRX56QjR3fob2BedXLu7+Bl9LeXsMgOc3KSOckePIdJScCXMpjEUK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(346002)(39840400004)(366004)(451199021)(478600001)(316002)(5660300002)(44832011)(8936002)(8676002)(41300700001)(7416002)(4326008)(6916009)(2906002)(4744005)(66476007)(66556008)(66946007)(36756003)(6486002)(6512007)(6666004)(186003)(6506007)(38100700002)(2616005)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HRvy2S5E8VcTSHEzweYlB1h4GUL8vKV7FxSUsbE1/DpuoDe4RAhRDRhL1llT?=
 =?us-ascii?Q?ijr3Fo3SkpWOlck2M/NR9uKHLDY5JY5zkMSg3gfuFIRdAR4JnsxixsS2Z8kN?=
 =?us-ascii?Q?JaYE/t1hchdAJ198bjJV0+4FGhZIgggsGPMJWyx7x0YaRgNbx5RD5q9mdbn4?=
 =?us-ascii?Q?EhqujxL648RMIMOlmSkkZIffktJGPVkFtA3UuuerFMZtvdHjcLDvpmhFZwHS?=
 =?us-ascii?Q?w03CvAomKN9qJTyrkVUQ0kBG94SP/waycUV/y+RU/vrlmZTHNGZFKxmkddzr?=
 =?us-ascii?Q?JgA7LzrM9pKsFtEIwoEZVLSIilq/Iqs0uZwPc5CaS39fQ4OUX7nBenvbtgco?=
 =?us-ascii?Q?OYdxxG2/LgFo2QDDTHoKwFvVi5GwjCZT88U9Snbv9FY67Wk0FYEkV7Y0cVZZ?=
 =?us-ascii?Q?1motb7RU7um0OPDc6aOCkin1xZXQpaPxCTHMlGYPGU2wtDuiqjyQI3haUVVx?=
 =?us-ascii?Q?2OqYVy+cvhFRxhwJMfMZfGzSzdTBCd6WOoklGZ6X8FK4C5iitSdNKIZn73et?=
 =?us-ascii?Q?eJxB12MEERi4GQYFia56HzEj8+keeUMqe5YlFZQZSR0sp4OlQEIAUfq0qxUE?=
 =?us-ascii?Q?fAcXN33df99AU4F7hK7DpkniO4gu9jjI4eiMJgXbiTstWBihbGwxX2MMon+b?=
 =?us-ascii?Q?OzJmw3xnUEbsKO0NWvpTpk9iHa9po0uBcS3GrKLQ33Pnc809bKJ01Z4PoPJU?=
 =?us-ascii?Q?k9wvIGp8dH7ZiDVoI2NM3uI+akt+Z/t4i8QJfjQ/vI0ZgAnPCDT8TAPxOpQk?=
 =?us-ascii?Q?KSZfM5Uqh+Q+U2DewOGzdFLI1Nu49+GuV2iwnsk5FcKMl1ZhlgB0BYj3nfb1?=
 =?us-ascii?Q?qno13y2bF9XC1TeEAMUujJJQdCGzbzLuA50ZQei4Fu3NLCcoP19VwJSGHlwd?=
 =?us-ascii?Q?Uhrat+QLsWXtMnbyeiM2P+qjjMxXbuc6mDKGGu6GojJqy3p/JtLj09oKTgns?=
 =?us-ascii?Q?WlJJC2hO1pE/oM5tLwDKldmZtYgDCrvFIUT+y/hkpo/NNiOZqR+RaiF+gUrg?=
 =?us-ascii?Q?h8zcVbl4cGqVDMZgHAanwdfzMIPYXO94WfNRrJQiPqumofLdOsyNQjWt1ncM?=
 =?us-ascii?Q?cdzyBZ4d4fC9b135GzqYVlkJrPBS2970az4qRG6XEtIBpJsHtLZWgzyRsD18?=
 =?us-ascii?Q?/+7jsNMxoJPscPfolqS4Von6Y+kAkteuzG7F21xMx36lqptF5gTc7DWdD619?=
 =?us-ascii?Q?16/taETJTs64dQC2msoKwHmVcDDkxzXWLC3cNSGQjXi8b/JXp6AR0Sc4JvyS?=
 =?us-ascii?Q?ip9ZUo0ycRHrNdLmJ+knQQg2LVwn+Ovk9eXwV/iEGltocwUiiwx6QlBNNsWR?=
 =?us-ascii?Q?/i5nkSzeVYDjx54IbVdGxBhnFTZZDeLkSLA9QWiNvBbm8OWEmmA5MQuNi+0o?=
 =?us-ascii?Q?x8SkazpIEyo2MSfGXfKORR6O4xDcL7BHZtMh4+vbXrI3YKEPof3d5wxKxRg3?=
 =?us-ascii?Q?9OhpdNTXzJ36m3zZw+/JPCNfn42OqU+9xUHTyeZLKSWPEmNuvuneC8pYcaDg?=
 =?us-ascii?Q?6d5WrlY7tfpkSR2d7gkGe/wPN0QkrvUMbhwCJacgn+XLE+xtnsg015dx+leb?=
 =?us-ascii?Q?BPxpe4T9c6PpUidZ4aeP0bjCsOQul1UhH9Va7Qo/YQ2n9C5bcrb0Lo5OwRgs?=
 =?us-ascii?Q?7R+XGAVLGKqaTHiUlmGTUlRS4/casAEjebCYpBn2jEfgiBDByZ8WSfGwWDwZ?=
 =?us-ascii?Q?AmAbUA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae781999-4141-48ef-de25-08db585cd19a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 11:33:08.1631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OEYF14hrI62pHFrJ43OFro7q/wVxRcbkliHcUrfbZoFBYKkGFJNAZLkSO0AhUIUDkYym7mEuIemAVlTNk5kEy/MWhJYpCkpAFwytXaFfV1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR13MB5073
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com,
 xiyou.wangcong@gmail.com, edumazet@google.com, jhs@mojatatu.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/5] flow_offload: Reject matching on
 layer 2 miss
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

On Thu, May 18, 2023 at 02:33:26PM +0300, Ido Schimmel wrote:
> Adjust drivers that support the 'FLOW_DISSECTOR_KEY_META' key to reject
> filters that try to match on the newly added layer 2 miss option. Add an
> extack message to clearly communicate the failure reason to user space.

Hi Ido,

FLOW_DISSECTOR_KEY_META is also used in the following.
Perhaps they don't need updating. But perhaps it is worth mentioning why.

 * drivers/net/ethernet/mediatek/mtk_ppe_offload.c
 * drivers/net/ethernet/netronome/nfp/flower/conntrack.c

> 
> Example:
> 
>  # tc filter add dev swp1 egress pref 1 proto all flower skip_sw l2_miss true action drop
>  Error: mlxsw_spectrum: Can't match on "l2_miss".
>  We have an error talking to the kernel
> 
> Acked-by: Elad Nachman <enachman@marvell.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>

...
