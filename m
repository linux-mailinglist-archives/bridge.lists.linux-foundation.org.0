Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED685689BF7
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 15:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43E664018E;
	Fri,  3 Feb 2023 14:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43E664018E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=TKeGkwMm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 41OMJI4bKu4G; Fri,  3 Feb 2023 14:36:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 664BD4018F;
	Fri,  3 Feb 2023 14:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 664BD4018F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F0515C007C;
	Fri,  3 Feb 2023 14:36:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18848C002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 14:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D364B60ACE
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 14:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D364B60ACE
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=TKeGkwMm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id shv0_mNcsUMJ for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 14:36:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09D2760AAD
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20613.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::613])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09D2760AAD
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 14:36:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TlQjXWy4QhkPhfyOfY8MtItXnLtWDga64VEIJozJEkMfL3HuXmDb4zdcTZN5FbDpFG3e+g8KWr31/mkvOoaRdXhSdy0rLu+aJ9AckAZlEEZEIIJlzrIGMwH6HydlAK3cz0HKUsRW21h3hMnRPQ6B+CzcLC6XTPvtScWBrxzoUYBBIPOdgcw32Avw9eoIA2xuDbh+3l2pX0QYiuobOuqP+bL46Mxr+o1WxG3NkGH9RPBWtzcxa+h3LV760Zp84S9sKlqBlcEDjq+nLpQW8mBbrWKDIDHSLWDMy/EGb3jncRGQ4xujDC9xezsgYIyhSRIKzdy0cvz6sgcR47A/hQgAUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/lmLLloHhsdEfQXRcg4PVn/QIW5TJiGcR+O5zx1K0M=;
 b=hbJWhHHV4Zmbb91ZfTc5AjrG00G//jWCrExMxd0djcv2B5vHmO1GjyjnD0gKmkiCvWWUtgj0S4pEZc6ATTgm0T3eR+NdSvuuekxynoPTYQwH0z/Lkw7DUNCpktd/u+ycoKCWi7FgWs/NAFl7zUin30CGmFxhAxKNzlL8w9nCjm2PG63oOIpBuEs1ujOx96Y39QXe5BhOoxc2LPSuVCDCBIBtHcrCwxZLBv7ZZkwRzIRajvEeorr4L/2egJ9HYs6S4MeOqAeH8LqG1awL6l5YsRGjQIf1BqX3QRlcDOPOzbYn1Ut3gk8a27I1L55REw6jLj9I/YYKCbzys2etb75wfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6/lmLLloHhsdEfQXRcg4PVn/QIW5TJiGcR+O5zx1K0M=;
 b=TKeGkwMmO9v2lh9AN8VoyGTLsyes326bgHx3DywPd4MrmkaKPz7TvAV0e4d7GbuBp2w7YPcq127c3/b90uo4v04xJ1buxWUTlxuSGj9xb8AdcKfgljQjFT6gzn0BiMUhik5+gY6jQuwGiw5cKmriCheDBGvTuNG1U7jBR2HgRsSCfWlKO9e9vDG5vak0fPyCCicRSVlKAZ7sLbO1mKutqmMcNnIY0+fXiRF4ior3f3at7JOVDasaVlmINA0wlTE40b25RwBfIvrkGbQHq4uu4OJqirpwUfb+ab15ZCBCH+vxSGX0Qtj8WgmrgnBo7iR000B1sBBoM8ggQX2n+2DTvQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by IA0PR12MB7649.namprd12.prod.outlook.com (2603:10b6:208:437::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Fri, 3 Feb
 2023 14:36:41 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.025; Fri, 3 Feb 2023
 14:36:41 +0000
Date: Fri, 3 Feb 2023 16:36:33 +0200
To: Petr Machata <petrm@nvidia.com>
Message-ID: <Y90b8QvITvsIiYfS@shredder>
References: <cover.1675359453.git.petrm@nvidia.com>
 <8bd6e90beed928790059134471ecbb9c3d327894.1675359453.git.petrm@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8bd6e90beed928790059134471ecbb9c3d327894.1675359453.git.petrm@nvidia.com>
X-ClientProxiedBy: VI1PR06CA0130.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::23) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|IA0PR12MB7649:EE_
X-MS-Office365-Filtering-Correlation-Id: 9db2b362-d946-45ad-b379-08db05f41067
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lge+9zHnMVe0BOAqH3t7cNr4UC4OZmHlS1Zt04VeQIwkW4TtVHc8LjnthjOl9Q+1YT6gX7QZovF/EQyvnrkxQxpCSC/P4HziynnkkYgA0WMAVxJ70Npm177mZ6Y2CfzXwEhp/+sBby3eYjwSGEJcKwxFaRUrvr7G94QzkdQJDkugsIcnUkYE1QqWfZiB+ZuAftubXyj3QMPKg5fYQfU7hqTnzvbXKtM39aTVkeTIwXrjXL+tT7c+cC+Yu2EDG2BHQRafaL00ylyVx77p02HJAB/l/6iDoFEExCPFnwB/cwPcAzA2DIfSAfAqR2Sd5B3Yg8cUzMkcN5kNYBHMR+WjOu8tlyQjSpMWOei6p+6u/Fs94RzXmbUd9tJiVlKkNkSORC3+nb5/c+8W7x11ZumucdkiM1uk+MeVbecXZxaAEJxZYO50XTaq4LvAm3y9Z8WgpSp04zlb9h26PfDXdxkdermNaYKwFpPxGxOSOp/UE7mtIh2xWrBI1WcMb0jFaJef0mNpVV4A5ooVe3DAIQfYEQzPAemj3IRhE5EPd8vfPdbJUXgclD2plX0MwqycyJ03ragfLuslZvxFQ6ZYWFcEkLFdGqyV2TWzkRowei6bMMdfmqo/704WUd6qMWv0AKOxJn9j6hJOso1v0MM3GqyowA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(7916004)(376002)(346002)(366004)(39860400002)(396003)(136003)(451199018)(2906002)(66946007)(4326008)(5660300002)(478600001)(6486002)(6506007)(33716001)(6512007)(6666004)(9686003)(26005)(186003)(83380400001)(6862004)(8936002)(66556008)(86362001)(41300700001)(38100700002)(8676002)(66476007)(6636002)(316002)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ux84cB8Jwo/IOF+hI5aeKwTth07qQg6/Z9WiYNOxhkvKniWWofTOeG/z8fE9?=
 =?us-ascii?Q?8NbmWy3oaFtFW5ulgyg98d9kEJZl8RCcXpTyVNz/UXieQkX1dMuvt0fIYQ9c?=
 =?us-ascii?Q?C+GY2+LShWu31nV0RS3OAx0AgrKpLbx6s4rVUjkhrwlWt1P55B2YfaJHg75P?=
 =?us-ascii?Q?iTVQKkli0wksj/s4wfdcyxemAab41kFrZrSKCi7kO9Y9zSUMQRdr0z8vdfmj?=
 =?us-ascii?Q?7397JCFC0ed9pv/YBpDamzsEdTTUYXHA3fAAJJIniPIFmQvN6H4Tn3rO15ZY?=
 =?us-ascii?Q?vFbqitTyc9WLc0t2cV3H/QO/R74ThFftY7/Sap9Wuws20tUx81HTewEN9/+w?=
 =?us-ascii?Q?RS3Z5qZKZ87hEajZEHSX1J3T3qx7HGtw8TEkeFEuHFZYfpbTd4cZQGrK6iYV?=
 =?us-ascii?Q?b+T4AnWcct09LwHpk0qRXHvkxvyXtzz9xZnkfdG5e6my+b+R4rbMA6QORYJd?=
 =?us-ascii?Q?5Qc4N52R9RAvlFmFZAmhY72RFeAr83VxC/GMDe65BFLXDzE8dNjhrxIRZfJX?=
 =?us-ascii?Q?2D8HKM6XgiyYoQO99fuNtSlHKffp0fnzUpvmgCF5auyQCAxghQJ7P7OgoHkW?=
 =?us-ascii?Q?oRNhkVHRSBB8qI8DaolnMq0op+P5C/IeS/X1EWgESadvkue8JYI2c5PZrav/?=
 =?us-ascii?Q?+0YPluSJwlPGJrBqhZmbeYt1EA/VOBaZNYv0RNcqsrQToG1K+R1z/YeDkahE?=
 =?us-ascii?Q?qPzA+0ySk/OSMZItGBcDToQa3wbnM7hGQyGVunIo4/f/Tse5ub9CmZyhNMXK?=
 =?us-ascii?Q?bKfduk1ztdWGklNIYZmjDl54WKvMbCP2+3UCMU1ejtV+/Ao/sENHeIULzs75?=
 =?us-ascii?Q?eX6kpfguPQmUcFfVEW2V45P5ubrV4Xxic/2tFjN05+fR+LrCi65McbeUu60P?=
 =?us-ascii?Q?hDHOgC8y/CL38INX8eVKV0iYb/ek84WgpvHXOMVJKnjixX4WiZiH95Mg+6xP?=
 =?us-ascii?Q?AU+r9h4qpAYKPO0HmL208FL3PY+TlWwnnPICmiiDEFM//HUaDw+rGfwFV05z?=
 =?us-ascii?Q?gNV4JlUvxKYZCaPY5LjR/1tA97jj+h3BIgZxiA0PpVzp5FFVOxH7u7jTTORu?=
 =?us-ascii?Q?jBxmW620x58ETeRjU6YWsERIpyCcI/BNP+Em+IWRmjZ58j9G9bXxBgkJpFMB?=
 =?us-ascii?Q?/fPr8AzR0RQ3+TFJnVbyLYx13Ads/CEimz/tV8Tzb07nh85rNDNlPlBnx0Wk?=
 =?us-ascii?Q?c2V4Ws1jtyDxjEffFjK/vL6GdF4UTtGipAB3YtY9ZxrLu1Zn+qB1NV3o3/09?=
 =?us-ascii?Q?4NPtDjpH0JjLhZISETf1ayR4G2UE7uI8AFX6R1fjwDVrPyBNVNyG9CDTzPdB?=
 =?us-ascii?Q?ZdxsErLRL+y+gDK1iVjBnpYQNzUn890bv7Fn4EWPmC7tgrQtoATKo5st0+3Q?=
 =?us-ascii?Q?KOPz3XwvviXmjEflmaoK5vhR1IJDsAwLXjsGwB3J/frmSqFc3MMpdNGAMqRL?=
 =?us-ascii?Q?rlkoIYkiUw8zzPidjN6fSFrgP80ii6SK1Be3onRdB8iClSDSZtfyOPkpFTKH?=
 =?us-ascii?Q?6Rau4RaBKZgtnYlIKftjNBUIN8Dw4ysm5XSMWIy/4E39EYjtj7JthPP3/qUK?=
 =?us-ascii?Q?i3f7wzZBULhA3fY/EahItRGbUtXFT5rsU0mWD5oI?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9db2b362-d946-45ad-b379-08db05f41067
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 14:36:40.9853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fg0dJDlivN4EoCEGAH2Y6TFtZQZyAXI5JfxJP24Hvd82u3uoykC+XtLNIvWOSs7E8hiXbM+FfQxILl75A5g1SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7649
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v3 07/16] net: bridge: Maintain number
 of MDB entries in net_bridge_mcast_port
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

On Thu, Feb 02, 2023 at 06:59:25PM +0100, Petr Machata wrote:
> The MDB maintained by the bridge is limited. When the bridge is configured
> for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
> capacity. In SW datapath, the capacity is configurable through the
> IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
> similar limit exists in the HW datapath for purposes of offloading.
> 
> In order to prevent the issue of unilateral exhaustion of MDB resources,
> introduce two parameters in each of two contexts:
> 
> - Per-port and per-port-VLAN number of MDB entries that the port
>   is member in.
> 
> - Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
>   per-port-VLAN maximum permitted number of MDB entries, or 0 for
>   no limit.
> 
> The per-port multicast context is used for tracking of MDB entries for the
> port as a whole. This is available for all bridges.
> 
> The per-port-VLAN multicast context is then only available on
> VLAN-filtering bridges on VLANs that have multicast snooping on.
> 
> With these changes in place, it will be possible to configure MDB limit for
> bridge as a whole, or any one port as a whole, or any single port-VLAN.
> 
> Note that unlike the global limit, exhaustion of the per-port and
> per-port-VLAN maximums does not cause disablement of multicast snooping.
> It is also permitted to configure the local limit larger than hash_max,
> even though that is not useful.
> 
> In this patch, introduce only the accounting for number of entries, and the
> max field itself, but not the means to toggle the max. The next patch
> introduces the netlink APIs to toggle and read the values.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>
