Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B293E114B
	for <lists.bridge@lfdr.de>; Thu,  5 Aug 2021 11:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CDF460648;
	Thu,  5 Aug 2021 09:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rdOODyC4K11w; Thu,  5 Aug 2021 09:29:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 89614605DB;
	Thu,  5 Aug 2021 09:29:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B8EDC001F;
	Thu,  5 Aug 2021 09:29:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6A389C000E
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 09:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50E80401BA
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 09:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlbu8IutGb0W for <bridge@lists.linux-foundation.org>;
 Thu,  5 Aug 2021 09:29:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2085.outbound.protection.outlook.com [40.107.92.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F593401B0
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 09:29:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5sLiRrVMM1vlKUfpGxJ6+mSDlZv344n+0a1RJs4L81h5YYnsmquGOs2YqVG4dmID34DF85kOtXbfzb4kKU7nvDDUW2jSa2kBGwGE23v9U9/SVuChFYDD8MzPjgYMc2eGTA9XBq8c4Wt6YCBGpFKh/zmQRpKYzxGcrsDFjQcpY4Mxhjkl4P1J+YrR8JopflfOvRKNJft7E0KTd1JNR/F4jHJrix89AnJg2MNKgLBPN/BmTuCfMB9gEvgZPqg8xhgW1VRNWJ3XIwYcdcfFS4BR5PPalbYCoawhVoTik7mA8BbVQWE26G1Vqi0jTLnn3VAAqZ6Y0DwwFTz4DuUj9YAMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zAqOag5PAh66I8vpti32dYOZs6rrHwP+fodCPAXcCOM=;
 b=aCTnKSKMPZEdADNiIZTMaYBZjguLCEufEPI6YTvNc+7uoEr5vDUZPOtWMH11cmBT5gdVGsN+4rY32OuGoAe5m+GsO5tWzxorbBcWGMylMNQhwIHUlXpfwpVGLjX1aHPZ11CnNFe8cEjcOdWf26U63DfjkVnXXuq9NpK2qdOnFAB+RQKM1L536T/dxVpS7eNBFEfSfHw9cm7/nqKY18dIBWEMxXcuP7uFs7ez/1/aKBUqiEqEAmhYnCyRhsh8I8eUuRAAgUEEiFh+p45dCZCA6qTy5J+LXMkon/HTPwj4dr/FigMLiuZUIOTkwFzLWiGbpTQFO4FActpGiZhfmzhqBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zAqOag5PAh66I8vpti32dYOZs6rrHwP+fodCPAXcCOM=;
 b=GJWF4U0XO4nnYzt+m9BjggFBUZVi6irZV9dtbrv8npKa9hZHJPRA3Dx2imTYytQK8akIl24XrQuh938wPpPLo/Hk9sIbEzw5F6dizbm/HPvPcbtY1yPVY92pFTc9acjqhioYcEuRtgCXQ4+lIZZfK13jbVVPcXdKrmufdR5RUd5CpF8FRQf/h+vlJsJQMFxeRELE+FBjY4LmfH7xpiAE4qc+8mNTMu5y9i5RyO+Y+VUMj3/46mTIf/3EYrOZKFVeCpPkWNITTcoceaVeHgvZQoCwCX3tF44KbDIe3PkXg/MROUuSSu4c1VcR4BNiTsTC37gpYINPTvkwV2j3V9XBmQ==
Authentication-Results: sina.com; dkim=none (message not signed)
 header.d=none;sina.com; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM8PR12MB5413.namprd12.prod.outlook.com (2603:10b6:8:3b::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.21; Thu, 5 Aug 2021 09:29:41 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287%5]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 09:29:41 +0000
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <20210805082903.711396-1-razor@blackwall.org>
 <20210805082903.711396-2-razor@blackwall.org>
Message-ID: <53339ad0-1028-2660-3241-58ee70d8247a@nvidia.com>
Date: Thu, 5 Aug 2021 12:29:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210805082903.711396-2-razor@blackwall.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0135.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::14) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.241.206] (213.179.129.39) by
 ZR0P278CA0135.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:40::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 09:29:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5764c86-78a4-47ed-5661-08d957f38d9f
X-MS-TrafficTypeDiagnostic: DM8PR12MB5413:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM8PR12MB541325CAD1C63BF1C3735CBFDFF29@DM8PR12MB5413.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H5m9C1/oJcMaz3hHqA2inhdXHpvlFB/7txxtNErMbPplPNKmwHmdvL4SMpelJ8blF4IqPlLJDBtpWBDDxlVp/SW4hlyf67F7W3yNieFKHlUNT/zW7o2j9g00cDn4WgT+ZSK46bZ4Qx4dN3946+0k2zbJFyPes7HL8KqygqUkpWA9M0UtKDooCD6yCd2sozyVVK4SGCggKjfXUBgx5vFioYncdh/uKFATEL3Cmz9MOTz2ZghypOu5HTuhfeUQjEBAl2V0PAsuzIWF0X8AcdHfERYWRLNaDRp8gF7Oi/otyUGMiEO/mPVWZ1ZG+zxy9hjglXXk0u2sCT8mEIAsg84ZeltAhOz4ncHbmGy8iuyfCGgjZIPMzzY+qGtbft/qqEyeTkGbD6W2rew6TOXXhjnKa6g5xG94vQ8ZjgTPJSbgrPlI2vuXqUpKi4AXsRtRZbj0FUq3A9sr5ZKbYrGpo+qzwm2GXZcjTXYWxCTa0N5NI//nqFGeBAbjbGVp44hfFxtdN9MI/tJ/kvxJXq0r0XB1yueRZEThDKV87uySzqu7aTGNZ/UVEW1CXs+B4SQiuyvlthtxdwCY8bQxIuLeblSfmutgQGh5ppTc8p1H39se0Wlz7f5f9dRlF9I8i4lka68zRgqTlEQq84WJmMYkg45jw7UIJklBxMwXtrcN0jpiO8ObTgyIqr1qu4cBxpa2HqaJ84+73swQ3+yZ5JK5kOCUFZkerouVdv6jgUTlWibTKn0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(66946007)(86362001)(8936002)(66556008)(8676002)(186003)(6666004)(36756003)(26005)(31686004)(31696002)(83380400001)(66476007)(4326008)(316002)(2616005)(478600001)(956004)(38100700002)(2906002)(5660300002)(16576012)(53546011)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3pzc0NOV1lRTjI3Z0pEOTJKSWs0ZUx4ZVFiOGlveEZKK0pYLzdOdVFzaWVE?=
 =?utf-8?B?ZFMxdmY1Q1BKWDU0Z2FDVkQ4QXRWQmc0RVFBME1mRDFPcmtkQW9nRkdsNXRF?=
 =?utf-8?B?OE16Zmt0L2oveXV6TDdYcE9Gdkc2VDkxOHRGSFlTMFdtZ1VydDdyNDNRQ3lL?=
 =?utf-8?B?ZzlhWlBCTFg2d3VQZkpJRG02QVRHRytNck1aNGVJelJrVFEyNUcvTG9sOVBR?=
 =?utf-8?B?YWJaY1RqdjMvTThLUFU3RFk1OEx2TThMZXNFQXc3K21iS1cyZG54MGNjTDVU?=
 =?utf-8?B?OVR0YVhNVFpYdlc3citSUUQzQ0IrWmtMbXJjOVNPWEFaY2RjeXRoNlhpZmhr?=
 =?utf-8?B?WkcxbEplQ1M3VzA4M0hmV1dtcVo1SXcrZDZoWWNrcUVGa1p5TS9OTHNHL2M2?=
 =?utf-8?B?cG9TQWNjOTVOVmg1ZEw3YmVxVjVlNnpTeVNhUVJuNWRwcWc3Y0tYdlZkUWlv?=
 =?utf-8?B?MUpXYmY3ODRtRjUzcVk0OFRkUXNqL05pZTFOdUhMcVJhdklmVjJJZGVRTG05?=
 =?utf-8?B?c05LRFdUM202Tm14VXplekhoQTR0Y3l0b3ZZQkQzMlQ0MzU3YnlSZG5qRDE0?=
 =?utf-8?B?b0psV2pha2JpKytROTM4Y1VPVUI3VFBoallLQWl5QU5rNkpzTSt0WHBUdFZU?=
 =?utf-8?B?TmtlZUZFd2xPRElIQXRaakljblN6NWFsNzk5dzJuWkdvcVR4Z1g5cWc4UjJQ?=
 =?utf-8?B?Q0RSaDhuYm1wbmFCRm42QzhNampmNFE4TE5kQmk5NlVSYVltN01YemZxMVBt?=
 =?utf-8?B?WG92c3g0S0ZnT3krZ0VWb21manQxc2l6QU5SSExiTjRETm1hdUhmb2Uvc2VD?=
 =?utf-8?B?ZXhxYSsyQ2lNUFhQeHFTa0cwM3JEZjdSYUNsSStjcERoT2VtWmd3eWIzaHgv?=
 =?utf-8?B?bEl5RnZwZlo2TjhOOXJ0UVU3NGhaUzBXYzU2NU1JSTNyaXpQaDlNTmRHSDJX?=
 =?utf-8?B?WitkK012ekZDblpMTDBXN1NOWkQrU3VtWExDOHJHOTF3UHlhL1NJZzMvajJu?=
 =?utf-8?B?aUF5T2hsVzdWK3ZiVTVRb3ZGYS9NR1k5U05tREpUcTJwcitjNXd6UkVSZlZv?=
 =?utf-8?B?N3NwUjRvQmVDTGh0UkdSNVFKblIra0VRR09MbDI0d3J6NW82M1lJcDdHWGhx?=
 =?utf-8?B?Y0x3bFlWUUpOQzBOZXRZZTN2VE10dTFuZDljRzNpenNxVGRWcG5HWlVwRTZp?=
 =?utf-8?B?V2Z4NmhQUVAyVWIrckFoVUpkUDZjV1p1aFhDVVdibkJDeFRxM1pvK1p1QmNi?=
 =?utf-8?B?WWcrbnRGclBoU3F0ZGNhV3NlTEIvemNhaW41U2ZVM0s0c0RTeGhZbnZ5SlFa?=
 =?utf-8?B?YUVRWU5PS2dCZk9ldjNGLy8xbElMOUR2M2ZscUNrcFVlbDhwdUlYcjRTSzFu?=
 =?utf-8?B?dmdxdzc1ZjkvQ2s1OXFNRDhGNHdGd0NTajlTWG9temphcFRzN0RyRFFtUFNV?=
 =?utf-8?B?eXNxK1llMkgrcFM4dmV5OWlVUUpBN2UxVHBjbG1jV0I3UmZkL2g1VHVranY3?=
 =?utf-8?B?eHJkTXhFOC9ldHNlN3c3dVRzK2x4UVFBL1JxbXVOYlNrOWU1UTJTWTZxbDlu?=
 =?utf-8?B?OTZLVU1iNjhoaXc4UTBoZzhtOVRQc0xoVTBvcHA2NmhsdlluWGJ1cEVlMmdz?=
 =?utf-8?B?dGNSeEdwcU41djhUM0szQ294NnNpTUx5R3NWT21EVmw3TngrS1g1a1AzNVRB?=
 =?utf-8?B?MVUxWFBTejZrOEZxeVdDV29Nd0tIVnhrbjR0NGJZaU1VSjJIZ1ZvNmRKMFFX?=
 =?utf-8?Q?xYXmTgRxH+b4yWtRSaR+ByO/1yJZGl8w3POuLR1?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5764c86-78a4-47ed-5661-08d957f38d9f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 09:29:41.5430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 56FfoV2hlhiCYrPBydGmrwzLrFK/SOGllviPr8+CqRo8cKicFekIh8KNeP5W0JOBso72UEtE1ztQB7kXVdx4SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5413
Cc: syzbot+34fe5894623c4ab1b379@syzkaller.appspotmail.com,
 bridge@lists.linux-foundation.org, Hillf Danton <hdanton@sina.com>,
 arnd@arndb.de, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: fix ioctl locking
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

On 05/08/2021 11:29, Nikolay Aleksandrov wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Before commit ad2f99aedf8f ("net: bridge: move bridge ioctls out of
> .ndo_do_ioctl") the bridge ioctl calls were divided in two parts:
> one was deviceless called by sock_ioctl and didn't expect rtnl to be held,
> the other was with a device called by dev_ifsioc() and expected rtnl to be
> held. After the commit above they were united in a single ioctl stub, but
> it didn't take care of the locking expectations.
> For sock_ioctl now we acquire  (1) br_ioctl_mutex, (2) rtnl
> and for dev_ifsioc we acquire  (1) rtnl,           (2) br_ioctl_mutex
> 
> The fix is to get a refcnt on the netdev for dev_ifsioc calls and drop rtnl
> then to reacquire it in the bridge ioctl stub after br_ioctl_mutex has
> been acquired. That will avoid playing locking games and make the rules
> straight-forward: we always take br_ioctl_mutex first, and then rtnl.
> 
> Reported-by: syzbot+34fe5894623c4ab1b379@syzkaller.appspotmail.com
> Fixes: ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---
>  net/bridge/br_if.c    |  4 +---
>  net/bridge/br_ioctl.c | 37 ++++++++++++++++++++++++-------------
>  net/core/dev_ioctl.c  |  7 ++++++-
>  3 files changed, 31 insertions(+), 17 deletions(-)
> 
[snip]

I fixed the bridge side of things, but the unlock/lock suggestion was made first by Hillf.
I forgot to add:

Suggested-by: Hillf Danton <hdanton@sina.com>

+CC Hillf

Hillf, since the rtnl unlock/lock suggestion was yours feel free to add
your signed-off-by

Thanks,
 Nik
