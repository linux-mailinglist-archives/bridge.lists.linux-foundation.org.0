Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8026E79F4
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 14:50:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B79B4094D;
	Wed, 19 Apr 2023 12:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B79B4094D
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=qiZPqYbA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ud9q7GFqvktI; Wed, 19 Apr 2023 12:49:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EA6D840905;
	Wed, 19 Apr 2023 12:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA6D840905
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 79EFEC008C;
	Wed, 19 Apr 2023 12:49:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ED7E7C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 12:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD3BD6165B
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 12:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD3BD6165B
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=qiZPqYbA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-oG7joWFBZF for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 12:49:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C879561656
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2060f.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::60f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C879561656
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 12:49:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dL1i3Htem2ZIeSpyp186f4lcpr4PtblzTJHCjl351sVkf5fz79qBfVRQ+ly7G9c3takk3cn/goy5jDBWA/KRo0F3jcaORLSJqH5bD3AT2rE9aEG3Ro5UVFZ4XFzi3xEe7wE02LzlYXHbctloz/pW15eu5k5ySyVfORdSdsc2QYehtfyokP9RDXJ1aHPfm1CqGeI7qsk6zFeBKtFas7dqtzmAI1a4j4FPJpVPQ8ywoNh2npY7/r3Ut6lT71dO5fnnGPMfwc9xon3JK1MhYw9Y1LOZDHSFqgDUPwMFpHnhTJ9hbO0aWbEEBpOoGSY3MckJx3nZHJV/bfclKYuGdxQ0og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=idQAA3su+OjiYiO4q6bH1uj+J+94UC8KjOQwOLnM8q4=;
 b=lyDXcrOULwYDANajTI+QzdewhNCKnRM3X8eh38O1ctOBglkxzybvjg5OpTQ28dyDObMm7Dcc3jO1u5s3yXzLuNtf3MFi3rHQEq/IIVb323s9rKBshzeoqseTzT1QG6cr+v2Dj4vc4jLtvyZdaE+bIUb30i34w6r1+RPSpdnMf/fufnh7f958mI0hYYF8zkhc1XzafUSKK39jcOpi5hn2aiEJatI0n87EtY4agkNmKWX3UE6cpFEmJLSuD5g3FN3CMZBqqWmIkkgxkcbk6PBwgBu2e972TPqv+JB5Bc1JSuyWPRmyeLGIST3JlMG2Iy0JoD2bIWE5A+1j23BAAWrMqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idQAA3su+OjiYiO4q6bH1uj+J+94UC8KjOQwOLnM8q4=;
 b=qiZPqYbAf/xyR7k2sZ8pXfy1JYHj3nKwWteMhG5cM2TZBhI9DrWTsN+rrx9Ufdj0PE/4p5Y6nWr/fCKN4PHVfSsDgFGEUXb/J6n69yfcDevZSXf9YO5qoRLk1uY414n+vmsW+H4PVmgqnItgQ6PJZNJeA9IGfbK2JkTVDnzcjJWURpg+hWlX8aBh7DgB7Dz0HSRVqp8hR1i8cy84mmGp+Wyfd5zz2CzjQZm8lQGuqYuNcT1Y14ZzHz2EHmxSjeRXa2RJuUq9QWHeFsA26vvVvFZR4PSMInGGQ3WPfPWQfixd2n8SRWKo9hyJ80wQDbrf+F1ou8vzA6UagB4f8sb6/g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SN7PR12MB7835.namprd12.prod.outlook.com (2603:10b6:806:328::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 12:49:52 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 12:49:52 +0000
Date: Wed, 19 Apr 2023 15:49:44 +0300
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <ZD/jaASktd2cBlnI@shredder>
References: <20230418155902.898627-1-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418155902.898627-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR0202CA0015.eurprd02.prod.outlook.com
 (2603:10a6:803:14::28) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SN7PR12MB7835:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b604d04-f8c8-4568-01f5-08db40d4916a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mDfj+gKEJ5yBgXSY5D1SwOolcRqH82e1Di/78nG8KWlSQ7vPIzeg6rAuCR/2U69z+WL8i9KuZB+hP86OU+w8qSCeBSzU/jog3TrgXmkOj6dUQMc4Dbr8gx5YC/lnV+eRg+WdHruc8ZzlyapXxMZlORiKjwb7i21nz8jdJnWu0PJQ1tAAx8b4fjvc5opkV8xxzZ7hwAgX5zjK+Saqoml1sbV1EcGGX2NSNerZC9ccTUbZaHDgKBqizNvXDjJlrn3UfyDu59jkE3dk2sPtVhfa1PYCs7gHhj3kLCHc9VtCKa5ckezBE2+LqKdt09Mp5JoI25zaN0rTua5NpnlZeJHm9bDSde7B0UfYawATZFfyYC1jhHivv5V4f6RWzTswoto6k/u9yq/fQeH/Qe538OqfvPNiB92ZlWJ1x5b+cFchk9KCBvVtOp6UsflQ/4sK/106ngOzU09AJYz8WchPnxEP1Vgg+wksEeWaPLNot+ofQYpH8XALjMd3u6IEaTaC6dnp56vDPPsSPUCy49GNHT7UjNC4NxM3Z19MRhc8aGAunNNzaQvf184LGfkww/W2B+2l
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199021)(26005)(186003)(9686003)(41300700001)(6506007)(6512007)(54906003)(6916009)(86362001)(83380400001)(66899021)(316002)(4326008)(66946007)(66556008)(66476007)(2906002)(8676002)(7416002)(8936002)(6666004)(6486002)(38100700002)(33716001)(5660300002)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Szv2TJjo9HYHZS1wEvTQjPFKkixZtbRfm5lddE9NVyiH9Zazn7YzFSWcYMH+?=
 =?us-ascii?Q?vYzfR3fGKVF2fIAqrfslqZyygO/LkMgHFZlDHKx/brqSb4waKHcwkcok2cn2?=
 =?us-ascii?Q?GdRQeTzYamPa9KXvOqDYORQvZvMscA7cxoLy2ujbarl5jysH2qH16a7ye36n?=
 =?us-ascii?Q?djiYLDLqeGfF6jaLRFCdzaFOyV8NVMJFkx8c00TrofXuXEgicpvwMGa/VrY4?=
 =?us-ascii?Q?vOFV2YsNmlvD8aqG5x28mgy47qWG8+1Z+uULmcWVntc9gt6KGCdkopWX/Xqg?=
 =?us-ascii?Q?KIY9pXEyOir7NjWLr1m6lapN9lmP0rEhf+1eu+b/W6HoNLXGQxzSXj8JHryY?=
 =?us-ascii?Q?sVOsBXvshgeYDX54Xg6xDDMUhj+P2OQY2EmLehpH4GyCz7vlwDFNmOdy1gtv?=
 =?us-ascii?Q?0GxPET4MWefOPR1Djdt/GIhhBq6rNINt9Aoa//m/7KHbZ9Qki1StuaxtqFE8?=
 =?us-ascii?Q?a5EvHelmfjtFWwXAx4NbWzGhn9akzTEHJKelHeV/zrwUnAoaxklt5RAKHKie?=
 =?us-ascii?Q?m90o/4qwqYBgeeEmymi9g5MJZO0PkHs2Ms7/hn9eRpcdzvQmk3pVkLyzzro9?=
 =?us-ascii?Q?kBSDMhg3XugEyRsVnH/I+hkuCmxFGJQUTmh6zu8QvmCM8WaVueVB5A4Ix6vw?=
 =?us-ascii?Q?2SWwfgMjTF4rYYYDuO9tH/RCtRXd7jxcukVXsIy1564ku7QpqLX/qj4Musfk?=
 =?us-ascii?Q?Wfm7fdryKIx9mh9o3PsMR8IwDWTvcTRffa/CZedSMRYGRMcR9z0uu+AybXp4?=
 =?us-ascii?Q?mzUaGbls8y29LwYOKoQci4GLxXAQCFhl4NZ4Sdu/Ima0ka5QNr3WYjTvpqjU?=
 =?us-ascii?Q?BAxhYbSSzSMgIcQdeMgBQkkaBPvUFd9IBw+TsW0TmUELm+iyXS12vPNQCCvZ?=
 =?us-ascii?Q?8chpLp3us1KmjtqSUCWXwwLYVp0voD2tg6H/AMGsCI81SN3G1p73rzoRO/nZ?=
 =?us-ascii?Q?UqNqaA7ISQcsoQhSAG8UCYgHexV9ihQaiAP4QEBlRVgGSwGxxJt6JKPg8Hye?=
 =?us-ascii?Q?+XKElMQo6PfNU4/GCQ6f+Q8+oTQOrJWraQFM7AgZcVl2PDKP0hGD/pmei0ds?=
 =?us-ascii?Q?Aq4AkTWLbNMyDaSOWleiWCF49SGMFPcWnDmK8gzDl98Py7yrH4qdMtHEgPHy?=
 =?us-ascii?Q?CijE4trWqc8mKjhikT2dkaQbTIS8LcdYYmQKh6CwLVEDRTzAKknSsw8OroZv?=
 =?us-ascii?Q?jcYLcG8RaISmXORpwc2k3VPnr+X/u7XeeGjTloJ6aCIEvbTHMbOyzKH6WFi6?=
 =?us-ascii?Q?JavUVrBjrV3IeWV1r4toeDnjhuNnJUq2GA1ael/NdcbALeKcg07eaPFaU4ao?=
 =?us-ascii?Q?Gotmsyjf6hzJ3kJTAhqkLCTxI5aITccNYOF/9i7SgRYgUEQcWV7NSEjDa3rO?=
 =?us-ascii?Q?LgF9+Ei2zYE+Mw39a1uu4rgbIEuoI1rWHsIgfFvFXDuI41y8QZoW3fiKf4BY?=
 =?us-ascii?Q?ivNjnQhFz4zXC2WaiwMjhVZFT8+HksJ3wlx1/dZenDY85l6HjcXfNwcHuDaJ?=
 =?us-ascii?Q?z4g/pb1moxbjkta5h7KfHyC+uJxxCXDjKh4BrksPZy+05S/jzWK49F2toWsP?=
 =?us-ascii?Q?3N/T4nvlxPwHEbo7CukDys+mtKLCuDLDL71G374f?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b604d04-f8c8-4568-01f5-08db40d4916a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 12:49:52.2983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jbH3YO2xEU14cGttEv3yINThYs0iRJ5oUjLY52Tq16BZHj1UfVlIOUWRacQSbGHPmd7hRtbS/7yIc62Rvym3tA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7835
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: switchdev: don't notify
 FDB entries with "master dynamic"
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

On Tue, Apr 18, 2023 at 06:59:02PM +0300, Vladimir Oltean wrote:
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index de18e9c1d7a7..ba95c4d74a60 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -148,6 +148,17 @@ br_switchdev_fdb_notify(struct net_bridge *br,
>  	if (test_bit(BR_FDB_LOCKED, &fdb->flags))
>  		return;

Thanks for the patch. Ran a few tests and looks fine. Will report full
results tomorrow morning.

>  
> +	/* Entries with these flags were created using ndm_state == NUD_REACHABLE,
> +	 * ndm_flags == NTF_MASTER( | NTF_STICKY), ext_flags == 0 by something
> +	 * equivalent to 'bridge fdb add ... master dynamic (sticky)'.
> +	 * Drivers don't know how to deal with these, so don't notify them to
> +	 * avoid confusing them.
> +	 */
> +	if (test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags) &&
> +	    !test_bit(BR_FDB_STATIC, &fdb->flags) &&
> +	    !test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
> +		return;
> +
>  	br_switchdev_fdb_populate(br, &item, fdb, NULL);
>  
>  	switch (type) {
> -- 
> 2.34.1
> 
