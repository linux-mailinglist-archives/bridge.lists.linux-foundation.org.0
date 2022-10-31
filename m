Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5171613933
	for <lists.bridge@lfdr.de>; Mon, 31 Oct 2022 15:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD95780C97;
	Mon, 31 Oct 2022 14:44:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD95780C97
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=LYHWC4Et
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YE7IggxQb6lj; Mon, 31 Oct 2022 14:44:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1DC3C81987;
	Mon, 31 Oct 2022 14:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DC3C81987
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0D18C007B;
	Mon, 31 Oct 2022 14:44:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9FCCC002D
 for <bridge@lists.linux-foundation.org>; Mon, 31 Oct 2022 14:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7275640099
 for <bridge@lists.linux-foundation.org>; Mon, 31 Oct 2022 14:44:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7275640099
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=LYHWC4Et
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J_LRCUCq2PVf for <bridge@lists.linux-foundation.org>;
 Mon, 31 Oct 2022 14:44:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FD2C4089E
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2054.outbound.protection.outlook.com [40.107.92.54])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FD2C4089E
 for <bridge@lists.linux-foundation.org>; Mon, 31 Oct 2022 14:44:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dhl/dMRnyDrqFZyGNdxgUwiNNgzbeS76t3QF1h5v9EoHoysOkNt7R2Qyu8UU32iY4FU5uOW8tUZV8Qu1ZWME54qZ5cRfzkUrbCW/jsItgFsASVhmP1/xBhMeUZmEzMNzLQ9Der/dM5Px2GDEv5WWJaIFtyLK9JqUAXrKiAsuICwjModREzrobev257IDx7gWvrkVqQMFZaLXkPOHjf0oTGJPzmSMugG7dQzLSrn5XlvnSB0IIZqiy2su6NV27a3Xk1khN8XkNpHdLowuTcV6EWf5Q0GCxOmGu1u5OktdNxP9zoS7Ta1SM+lO2KPEj5x1GxAd6NeAnBdnj9Z3534i+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dkQatsE1ytNRBoxF3qJXgMBtKMQgZX4TomXa1frVOlg=;
 b=YJJ3uNBq45FQjrduKQouokKpL6TtcD8HqWPjN4YYHz/pD4CSUsZwZEJ115xw7LVcN6Yks0qvWLRZYBR2aGeMIq7o537N0sLA2Lkbrsj2wWOkp7ENd48zj+tMQUog1VPDDjrLSdOzJDq8GyW2edsIPXE7yRqEBm4RzPZEzxTycRWyHoMD9goiKqyrwwKLuZMlTsAmBkqExhZb6iTc8iOpXLhk1jClIBJz+XNoOyOkD/mDQytGjZpjQrZL0oucyGaxuXV9patrQrwIOoAP0C24nC9H3xJskTjgYUQkRAoC7OSJ7qN+T9xkm8U4Y6BFXrEWC24jf1uiAh9YfxYWSTxthw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dkQatsE1ytNRBoxF3qJXgMBtKMQgZX4TomXa1frVOlg=;
 b=LYHWC4EtiPnASf5DgjbNDZ0Y7wMSj/Wf66z+zCWKUAQYtl/NCtJDVTKzF0tF6U3t2HZKB+LnPLwtYZZ1X7zCLE6ZfL3iXoVwtYnFvflYFd3f0yuRkcLpd9uDPW+6mNikoGH21mAkuhg0o3EJAkigw0eNGtk1fNESbzjY18SHjFquc3qJo4mSX/k6L2iwOdOEmdtilYwjkn3+f0Ly9xk+HYZlDgsOzbb38q+XTjv7MX+g6EU1NJPY4ob45AKRFxZfLYctsvYnJh6kc5gnb1tmmgo+q8NBnHQBa8PB+/hxdP1FJyBDT5sXJ+pB8xd0NVx0PF7+8YJU30/DAlZQQB5L1A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH7PR12MB5596.namprd12.prod.outlook.com (2603:10b6:510:136::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 14:44:03 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::3409:6c36:1a7f:846e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::3409:6c36:1a7f:846e%4]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 14:44:03 +0000
Date: Mon, 31 Oct 2022 16:43:56 +0200
To: netdev@kapio-technology.com
Message-ID: <Y1/fLCe3xApcBXCE@shredder>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-2-idosch@nvidia.com>
 <0b1655f30a383f9b12c0d0c9c11efa56@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b1655f30a383f9b12c0d0c9c11efa56@kapio-technology.com>
X-ClientProxiedBy: FR3P281CA0119.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::19) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH7PR12MB5596:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b8d4646-5e5a-41e8-8fac-08dabb4e5adc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hlOaAAgOUPQYEZoGpLmojMhZPj0wQfIpvx5HsDVOz7TaVrN4T3DUQ9/Wule4y5Ef76HPVjrQc+1liS3BHDSwoCFiP/7wX57stHlgPXQrIzZb3tugDtH6Aryqc6QQiHshFyQZBaWYGzGYalf61hv2fnY7P2mloIziiDpSjXSY+bJBzLxwFW/0K5RcCVe5ep6SXYrRkXJgTZ8agJ5m/9VyruHJwqAALHRTCjXYSR77L5ymZ8I3eLdkTJtP1UtCqw4G1L1pKTez+IhFsOf4wecpbnVT6OktUIv00+kOtJYxHHHiKeie9o9kn9s9EV4ZpRaEvWyMhIpnTkzgXS2CUlcitG0Su6GD8lgs+Fi+ArWjVbKctXLSFaJJYuNl0JGZKt5v3VkdfwKvOWM46iE4UKdGe4yFTim9EYAqQfXvb42v8P+b7sOnOxmrJNtKdTY2c3juJU/GH5clER7BYaxRIPsSECJcZzdEk05zMoOlTAJbJW4OqE1JVAFAepVgEq5u0CjRsUgYkRBK7IfC2bwXZxgfRsepjjSG9Sqo2ro10Yg1GQZ3ZTnuAyYmlTWKPWEO6wtV2XD5vv0Gnziw8d21r6L2qumQi8/uI8geHZliu1rs+XMa+QnyUpyM54xAY8LFdd/OZ40Upw7/x2xHG1YHGduSx1CcTL1MUfBhwnpUKo2lUh0d0LhQbHgEf/HZ5t/jxZRgb/M67b2pNWlBw4oaubVxUw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(396003)(39860400002)(366004)(346002)(136003)(376002)(451199015)(26005)(9686003)(6512007)(53546011)(6666004)(107886003)(6506007)(83380400001)(478600001)(186003)(2906002)(4001150100001)(33716001)(316002)(6486002)(7416002)(8936002)(66476007)(66556008)(66946007)(8676002)(5660300002)(4326008)(41300700001)(6916009)(86362001)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hgdqItPO5XxGo66/GkMG7TZxC4pVHrmQyS0PZT7ZC0xydVISow7Hj2iFGmt5?=
 =?us-ascii?Q?wP9i/mzrRjKsQNquB/UnwVMJHaeZt79/BJVKtWvsLispR5NhRx0DaogV7mfD?=
 =?us-ascii?Q?o30BwyNJytaZ5yUUAFkicqIR1PHmOtEJ2CvcdslX83A4rpZ5oaD452oiuTfW?=
 =?us-ascii?Q?rkQi7vckoR3fOq0D9NRV5df6f2bAznlMuPTKfTaBmdrwfQU6DQdIJM3d8peO?=
 =?us-ascii?Q?DdYSo3De/Dnm/9xrpK9oIIefQWXLBvFivPpYxqrSyZJ7HksgBalZCF68Y9Vk?=
 =?us-ascii?Q?TjhztN3sxrte/BnORRaMplEa0OHaJnWKUEooc+MCHU41kFKwzxmB3mnPuxcq?=
 =?us-ascii?Q?G0WEhULTfo9K3+UuFBneAWHWArrkvY+xoYcU1Jy3zwllGbuwRQNjo8Yj0p79?=
 =?us-ascii?Q?8+LXWbBRbRHrx5AwUO9IGBRdH2pEiDtkjUPAHNvi5/KqqlBgKTcQjG9Fr0/n?=
 =?us-ascii?Q?vCX5FkdbOC3Kd9Ak5bbM7bKc8tIsxERVKp1SSnrP/xD9F9dqR4a4R0L19w9G?=
 =?us-ascii?Q?I3nkAYmRyVPlg52ffkSKUswfbNkdnGQ5vXqlhNXKHyZoQCb76WDw/IRh5SO2?=
 =?us-ascii?Q?8Iq+yNz12meDUvZNC9GBfIbMkIyoh1uHdS+ZjiSbHhSFx+ytkJWC5OKKpKYz?=
 =?us-ascii?Q?CWpEPfHmVA2ow/3H9VrxBEoaATu2U75AExpcKOaPkaZ0oA/xhYWflCbfr14h?=
 =?us-ascii?Q?f7yNw0qlGFYz7OAnRofT5x+JjWQ9WAVLTbvoFA3z52qGAUA+O6U8fJprEn4i?=
 =?us-ascii?Q?qJJWiXNe58QY4nkHA2TRtnukpFfxg2uk3psADWppyWrTQW3ABUMgH4EZwKkR?=
 =?us-ascii?Q?gF26fdH4QPsxchAvyOBmbc2iTwNLkOwE+2wmp31IIAnHj4GXp+fMQxeINP/Z?=
 =?us-ascii?Q?T9npoCT8DGDFgmO/7vzx+o7WQo7/+7H67drmYYgk6O6vy5EdmC+q+2Omfgj9?=
 =?us-ascii?Q?mB+K6WCNGXZ2yEQG10E3DwNE/VJUCVLHo1t8s2D05TtDrbc2lds8+xKzWkoX?=
 =?us-ascii?Q?nu47rPcc31lyEvJ5LTEKmApbsZhgy9FgCL8cT3zxO1xd4X4JOdy02e54axKX?=
 =?us-ascii?Q?K4+uWFdUFdaAgIvM0DtbNFbPINHrpVTG3zas2/5T+6xtgXuwci8I9wSnLHsz?=
 =?us-ascii?Q?wWADNi2mP6LcBT4ZY91YeoPBD5jcpTuj/vaMsgMWRlzFfVMCs/0IB55bDT9c?=
 =?us-ascii?Q?5y4N1hYnroCofsCWY7l0BJeeHW29pM7hEAO4IIFHVbHHA+2GjPeM6ZiNP1IU?=
 =?us-ascii?Q?et9DM1QrXD+sT5dqCCtJI+yS9jvuTJNVlICqGImTkLXRZKgevQVFLwWWb/z6?=
 =?us-ascii?Q?Qi57D2u4nxzk7qy6dfGY9vhsRkF9mxQMWkiyLcEq/EwbqNUBtj/RShXLeX0L?=
 =?us-ascii?Q?rf2v0CIJY/crJfSJb5B+XSY7AYEU3gwtK3z7F3cWmia/XNRrc93AP7FHOYOy?=
 =?us-ascii?Q?k8ZoV2VO67DGglRGycOZzi63x254CFMNnzNxOvzn3641k5ob8dfM7fQMN6Qn?=
 =?us-ascii?Q?+1ZSaQSRc6hfE5CoZSsn7rfFqimC3veKrzipPAOyDsCjBTl3Wwq4YADxWA7L?=
 =?us-ascii?Q?JwDVTdHHA9Gwvxn5uAe3d9bechBbApaFIFFsNmVH?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b8d4646-5e5a-41e8-8fac-08dabb4e5adc
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 14:44:03.3999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tAi513ekNibceE74WGP9ylmR0M8vypir/82sNndBJF2Ng4p5UvV3bBc662MTq2fjXvU0f0H+czGOLsjWbecYxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5596
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 01/16] bridge: Add MAC
 Authentication Bypass (MAB) support
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

On Sun, Oct 30, 2022 at 11:09:31PM +0100, netdev@kapio-technology.com wrote:
> On 2022-10-25 12:00, Ido Schimmel wrote:
> > @@ -943,6 +946,14 @@ static int br_setport(struct net_bridge_port *p,
> > struct nlattr *tb[],
> >  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
> > BR_NEIGH_SUPPRESS);
> >  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
> >  	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
> > +	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
> > +
> > +	if ((p->flags & BR_PORT_MAB) &&
> > +	    (!(p->flags & BR_PORT_LOCKED) || !(p->flags & BR_LEARNING))) {
> > +		NL_SET_ERR_MSG(extack, "MAB can only be enabled on a locked port
> > with learning enabled");
> 
> It's a bit odd to get this message when turning off learning on a port with
> MAB on, e.g....
> 
> # bridge link set dev a2 learning off
> Error: MAB can only be enabled on a locked port with learning enabled.

It's better if you suggest something else. How about:

"Bridge port must be locked and have learning enabled when MAB is enabled"

?
