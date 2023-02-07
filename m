Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A566D68D2BC
	for <lists.bridge@lfdr.de>; Tue,  7 Feb 2023 10:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C16B81516;
	Tue,  7 Feb 2023 09:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C16B81516
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=S56lhUA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0kqnscRBbYdS; Tue,  7 Feb 2023 09:25:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DDB9B81442;
	Tue,  7 Feb 2023 09:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDB9B81442
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 880ACC007C;
	Tue,  7 Feb 2023 09:25:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26D56C002B
 for <bridge@lists.linux-foundation.org>; Tue,  7 Feb 2023 09:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B165041754
 for <bridge@lists.linux-foundation.org>; Tue,  7 Feb 2023 09:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B165041754
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=S56lhUA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id guNNXPa9tT_0 for <bridge@lists.linux-foundation.org>;
 Tue,  7 Feb 2023 09:25:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3118C41751
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20600.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::600])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3118C41751
 for <bridge@lists.linux-foundation.org>; Tue,  7 Feb 2023 09:25:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hx1smbOYjhsifrNYSuS3zcAv2a72mRQxMyf6xZDNrH3Ynq+53ap0dRVUvx2fcw63T2WK02s3hmrofueYFo5JZjLWApyacHkxu4rEVg7rRDmCg9I8WOPUUh2rkIrIHMIWs6DJMeBrNNaN7OpUsTLWPkTwiObk4Jd00KjKe+masyuC8YOtYwxBQjW46UlaCrhoA+f+h+QcMgFZpUVhPFKygwWg1ISUJVzBqJYAjaz6MpuvzfsRb61OKfrviV+3RLcn+tpZtYKtz0FHxTUARDJ0dl49wDQeX/0aKaNQzxIbl47Qv+MI4nSn6ZvRcMTJ6kEFAQ/iaaHVbSJJMjAnhT69sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WOa+Kqn1wIq8P4WE7dtQrdMzw4uknucIa9WP/8Ju2Hk=;
 b=GA4EUQxoRJNi6Srx3ygz/bhfiQdtcKg3+Q9JdujkmpQk34X0TmIoHwPKm7FOiKGmqyiczshcYBt6Qc0cO/LMYbax1Ng4ifjtrktudmx7dwwMdUuMMiPYIchD7gUgH5ET2Cr/ORTp+fEbRypx5jJb+/G7gHdu5IOWQRVA/IUUcer1GqQzQUqOgdP/tY5unwQtlsYCLocOp9jyVNXSDNS0j9zM+4AWysFaSKr7wUqvrdoXO0aU/AUe5k1UuN1GFlCzj9ReL/RErL44YmFbeYSKRyHFrWNUZW+cypGrV9CjtpAfrOgPsxwvTHVUJERr843VCkVMkqdjgZHA3R1XhlAeCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOa+Kqn1wIq8P4WE7dtQrdMzw4uknucIa9WP/8Ju2Hk=;
 b=S56lhUA0tACEC44J6CHhidIAqcGL9Q7kRMOecJ/FdMuCGx2wp6x44f4335Fl+PjBredbmJy+2jHYGyNQi5bMuKt8DEeC0Ll5GqUcAc2zzbkWLy5tTP1YyNbdQgK+ygAgV0oScIkqLlJjQO9hZglQUH4UIWECZcv+v+XLClSJ94GGog9onSfaAOyH0rbcfo+o/Wdx548ggcXW9/C0IXqLosdR3IMBZFGOGV2VsJnBDVjJuo+jCXaV5kruCNYbUa5V3MA9WXH0hS4JcE/Mu96UYkr/MIjNylLrJzj/fmIxVG+kbSOGKr4h85AU0OTHRczgYIJTQ5joZVzc4UGei258Jw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SJ1PR12MB6073.namprd12.prod.outlook.com (2603:10b6:a03:488::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 09:25:44 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.035; Tue, 7 Feb 2023
 09:25:43 +0000
Date: Tue, 7 Feb 2023 11:25:36 +0200
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <Y+IZEJSwNZLH2aXN@shredder>
References: <20230204170801.3897900-1-idosch@nvidia.com>
 <3d7387d0-cff6-f403-55fc-1cb41e87db1a@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d7387d0-cff6-f403-55fc-1cb41e87db1a@blackwall.org>
X-ClientProxiedBy: VI1P18901CA0022.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::32) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SJ1PR12MB6073:EE_
X-MS-Office365-Filtering-Correlation-Id: 15a96d08-8f22-4722-0b64-08db08ed4973
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N88KtKiTSRvWm+xSRGF3k/9jWhPgwhLwm7Q+POiTraXxeZ615cpXzFhh0AtLfoJy27QRjnUbtKtyWqAIjiAODJvOKLbBh+H9kdyJARyGftlR3eylkUNXUqY3lxJlwSqcKwP8gVVLWB2pV9aovWIIvaNQkf5Ztv7yQ0BeiILsmESK5Wp7J6t3WhPXkbqBUYcAr5HOExX/84kylS6zcYC9YLiqmbVjJJDLmiM7SXAHV9HvwsZAR6l7qFdrG/fuwM3J10GUdO/vb34kwjNjo62GQg66Z31jIHaaJIG2NGoVMk9EbQ7Lr1eydGA60aKCl5y+TnbmHQahy1vp9XfWoTKSGI/Eylk27a4x0cA2XdUMS3+k+x18HDP29lkqj1JurW9t+p8M4KDno4X4ICEmUoCs1RksnIe6qTqmeC2ito8lwa3lEraIOUuHiNmik0g7oS8rt3BA3LL8w6EJ5rh6lGUcram68NyiMHwIPZSRMIDlkGJyxIQ03KgcXkOesXxNzt1KuurR3o0o9p7F+3zdtcQCqjeO78LdfBVPsC2h5GLB08uJY0VCdchDnVE5Yv9gMYyD5w8JhsMTuj2RO7UMniIfPTE6Jw4qhPpEolLJW87j96UoCwhQoLEWGvMzWannIw20wfOu1qdYUTNM7i3qwaAeRxJ+5Mpv0nYjqACFK4wfcBAWWwYrUcXinENIOXRdJ8Jc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(4636009)(376002)(366004)(136003)(39860400002)(346002)(396003)(451199018)(86362001)(33716001)(38100700002)(478600001)(6486002)(316002)(2906002)(66946007)(41300700001)(5660300002)(66556008)(4326008)(8676002)(66476007)(8936002)(107886003)(66574015)(9686003)(26005)(186003)(6512007)(6916009)(6506007)(6666004)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2BQLZhS2atqSJIwrRP4oSsMVVqkzGsKtQyPLCrKaPm/v8tH+jCB94STKJy8W?=
 =?us-ascii?Q?KNE9IYqOktQy09ckpNcecPiQjMq+9t/Fd4ULoA65AJ4LPMgGAF2rB1zbR+mm?=
 =?us-ascii?Q?nURYhEO8263Cta9ErGiBaCDJqZHtnv/jh0/IlXtvqT6mnPTTsjHJiv1X7abW?=
 =?us-ascii?Q?dQYI6YePeeNTy8v68fO0l8faKSm0K4J0MACxFL3bKsBe44OTyePMV+aTjMqL?=
 =?us-ascii?Q?pYs2z4RpKnjICdC7PszpNXa7ad2yrft/pZUOFzi37qGQc6/ReFBVqJCfcLxi?=
 =?us-ascii?Q?xRYU4/TxeIUIQQ6tXjUe96Mdh9v28Q+nPGpoHXjrqeG2pqMBiQ6pgp11xmIl?=
 =?us-ascii?Q?rfEJ6krRAfquwcFGte5JocJwaVFynNSRAK5qLbRw+nlDW35wm9bLjN/QiV0x?=
 =?us-ascii?Q?dSpaBtJHnwGQ4hr+cONZ764/ICiv9j/B609w5S8GU26aooThpALSoPt+or6Y?=
 =?us-ascii?Q?BsAAX5GnuhtmofpCeWrc0bq1f/5ysiiqRZokpyr60Ug+0+53TuAISt4mYwJY?=
 =?us-ascii?Q?PCHU0TsVDbClED7U9tmyysk/Nh3FsTJX2XnIumywP4kadtbe18G8UPa5o8RV?=
 =?us-ascii?Q?kHBudXSmLbq8XZ2bNuPTlFXqPWQuHpHloGJNVb+b2DW5LFF0yhfuaAUZOLHa?=
 =?us-ascii?Q?+hmgwNzPA+/PkZ7/+joBxW/7rM7ZokWETihJvvUR6+mMhZMANvJA018LlMc3?=
 =?us-ascii?Q?QUhxA45zKjEPXQnRZgpYTiTmhp3KBAzkWcrq/W+TIQNn3K0ajqV4LuxhwlMf?=
 =?us-ascii?Q?X2nSLG6tudsA/LnADiOjdiL7w897FcYE5yva+Pat7WbMn5TD9RAg9xW+blgA?=
 =?us-ascii?Q?7s9Hy5zT52X5XmfOJptyrBC1L5CWf6PS6ylyRgpuJ/dfEA3yHyb1lw8tixgZ?=
 =?us-ascii?Q?rSsA42itWB+g8brLvUH6zrEf7PNVE90U+tCHqQOcrOon/KjHXBaf/fkaVnTO?=
 =?us-ascii?Q?tGhgexjh0OtVMsaThyouldnyio1XWs1d9LThe9qZkIw6iScDHtk/0CW74dgx?=
 =?us-ascii?Q?sZlZUVhh7dQeDAdBbpPXpXu8uW3o6CTx8woGttdd7Y8xpFpuVW8I33SK2y3a?=
 =?us-ascii?Q?t0SeL5mIk5Hj34K0elCx5Fkq47MJAj4cGtweFRj6ENjdw0Zjaw4JkbS88Prc?=
 =?us-ascii?Q?fxogOW8JoUU2D8hPlNdmCFsl595/4WvtD8lEuyVvYU1v0C9Vf93cJEami5DQ?=
 =?us-ascii?Q?ItAmLtmAvg+jHEG1FVgi3qbNA1MXtARwnxhmwD1BWled+5V1v+0wa6BoZFic?=
 =?us-ascii?Q?BIkWdZeKWFAyYZDwNhrswdMYyCQFPeMJ0DUYgUxf+gshEGV0Lq6MXZdaUz2+?=
 =?us-ascii?Q?YqWFccWfYwp8u7F9VQ3mF0d3Bo7smnXjgq/Zz3AZIbzNKomshZtKtPEB4qcr?=
 =?us-ascii?Q?PWw/64+BMwCUAIs2KNZM7isxyCw6HJYJh/2f5kdA+eSB1wRECqrf2UkCd2rK?=
 =?us-ascii?Q?JbtmKVmiyCzoPMH83eY+R9OChqedp5K0Wn036LMtujGBjno46JfWssMV13c9?=
 =?us-ascii?Q?lf474m7lmQOO87MZ/4jiZEA+SN3HucL8vHJ6wxkWGH+AwUfxucuWUi2Pl4tC?=
 =?us-ascii?Q?RtXxovhFpeaE02fwZxOCd6OczndmJDxtwY+l1u6s?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a96d08-8f22-4722-0b64-08db08ed4973
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 09:25:43.8273 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bHWEwrVaCorH+u4Xolz3Yc0UixMu72KS9OqACdJUaYBPl1lgjVyQNlibUj3kXMeRpQBzBPleoRKAejmQSkAkog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6073
Cc: petrm@nvidia.com, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 00/13] vxlan: Add MDB support
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

On Tue, Feb 07, 2023 at 12:24:25AM +0100, Nikolay Aleksandrov wrote:
> Hmm, while I agree that having the control plane in user-space is nice,
> I do like having a relatively straight-forward and well maintained
> protocol implementation in the kernel too, similar to its IGMPv3 client
> support which doesn't need third party packages or external software
> libraries to work. That being said, I do have (an unfinished) patch-set
> that adds a bridge daemon to FRR, I think we can always add a knob to
> switch to some more advanced user-space daemon which can snoop.
> 
> Anyway to the point - this patch-set looks ok to me, from bridge PoV
> it's mostly code shuffling, and the new vxlan code is fairly straight-
> forward.

Thanks for taking a look. I was hoping you would comment on this
section... :)

After sending the RFC I realized that what I wrote about the user space
implementation is not accurate. An AF_PACKET socket opened on the VXLAN
device will only give you the decapsulated IGMP / MLD packets. You
wouldn't know from which remote VTEP they arrived. However, my point
still stands: As long as the kernel is not performing snooping we can
defer the forming of the replication lists to user space and avoid the
complexity of the "added_by_star_ex" entries (among many other things).
If in the future we need to implement snooping in the kernel, then we
will expose a new knob (e.g., "mcast_snooping", default off), which will
also enable the "added_by_star_ex" entries.

I tried looking what other implementations are doing and my impression
is that by "VXLAN IGMP snooping" they all refer to the snooping done in
the bridge driver. That is, instead of treating the VXLAN port as a
router port, the bridge will only forward specific groups to the VXLAN
port, but this multicast traffic will be forwarded to all the VTEPs.
This is already supported by the kernel.

Regarding what you wrote about a new knob in the bridge driver, you mean
that this knob will enable MDB lookup regardless of "mcast_snooping"?
Currently this knob enables both snooping and MDB lookup. Note that I
didn't add a new knob to the VXLAN device because I figured that if user
space doesn't want MDB lookup, then it will not configure MDB entries.

Thanks!
