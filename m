Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 196D93B1B9E
	for <lists.bridge@lfdr.de>; Wed, 23 Jun 2021 15:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E1B4404FF;
	Wed, 23 Jun 2021 13:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id waZMzpbW5kVY; Wed, 23 Jun 2021 13:53:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5BAA3403DC;
	Wed, 23 Jun 2021 13:53:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0660CC0021;
	Wed, 23 Jun 2021 13:53:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98AB1C000E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B9D6605A2
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id exHUT4HdsTK8 for <bridge@lists.linux-foundation.org>;
 Wed, 23 Jun 2021 13:53:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20613.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::613])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 475A1605A0
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:53:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMPtcj6jSgcTA/IsID9EXW33ZCsEzEe2m1zC+ujnsUxBy9N1XouJKvjiOq5OCN7PDpIEHaHwfy/QeqM36SiGPGH6+G/D87DeOnlz3CVoKdAgHNp5/mH4crqZ9UPKB3WltWnAaFx7GL4dfW8siJp1sLMw6A7+rn/ysrYZOb+zeDjO29U+AFPvwF6uA8At902Rn4GEhLpgj8LmC9WdHLHs3ZTioVRt50SW0DRMjTCF1YN+GCXEiPwDZatlhbINbGIXzl6I86hLo5LDKP3iTHiMG8TOKLAm3hOq5o1DOBDU+Th1ttWp7SKW22oi40ZN7+lirdS+9QyjHoSJZ+UYISBgLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8TikY28p6MkkuEcz2trXOK3hF0Rob1pcXh2UsyjqsM=;
 b=ZgwlP16934Z/XOrHy5D1jv+NKIYlaNHGhMTi079AMOwqs/qMiGfWVjx3H/LY9tQQlSX1ByKdS8azLc/sKY4iuQ0os65+NgyBcxwa22W7s62Hcn8afi6pA50z1KnlaLTAO23HQEtUHR8NUt4I16xMLtxiQiEbozA63xteRNbYAUGZ9RaaItuE6b+u2gerhndh65BjRYb48Do/BnNJQE1+YAxWa+Ix653i/AUmO7SAQSxlg/KlhuodTi2p2PHHcAMni0f0h0DYDnKrVkVFEA+l36UFGIqTgK9TYp+xUsXRd0KR9zbr8Tzg+uv1LlNyNTpEsUXAe1kZxtQSONgrqw5tTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8TikY28p6MkkuEcz2trXOK3hF0Rob1pcXh2UsyjqsM=;
 b=JDxMLEScD4ShgSCy8lLXZ6B7zKeaohx4OC5ybA+DLTeCmMJ2dV68pSEGDcSJgRHf/dSSPbhQd1VFcIwSE6KgUijL5dsdnxVdj5nNROTrcUOrFw4kQx55dlRYDpElZgecjJJA49uWXZXs5QIPD0p3+qUhwb02pOA6UhIVvbiwyF7WtUWeRjxZWrq9HAhw11+sHsw0kazfxSqhGdhzDLagdW86HwZW4AswMyOKGnk5HTlkgXmqrctOrHP8vAk+IlBQydgYjxqUYPdteZuLDt6ZDJE/EG7P6SuEhBIwTH8WRJxbp7pVwQckNoUsYoCHx0GoqqRVs4E2CCcHAKRyUihcJw==
Authentication-Results: linux.ibm.com; dkim=none (message not signed)
 header.d=none;linux.ibm.com; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5229.namprd12.prod.outlook.com (2603:10b6:5:398::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18; Wed, 23 Jun
 2021 13:53:15 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::601a:2b06:4e64:7fd3]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::601a:2b06:4e64:7fd3%3]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 13:53:15 +0000
To: Alexandra Winter <wintera@linux.ibm.com>, roopa@nvidia.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net, kuba@kernel.org,
 jwi@linux.ibm.com
References: <20210623133426.2613847-1-wintera@linux.ibm.com>
 <20210623133426.2613847-3-wintera@linux.ibm.com>
From: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20640f73-c661-5901-f8f2-f4d88a79ea43@nvidia.com>
Date: Wed, 23 Jun 2021 16:53:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210623133426.2613847-3-wintera@linux.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [213.179.129.39]
X-ClientProxiedBy: ZR0P278CA0043.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::12) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.240.133] (213.179.129.39) by
 ZR0P278CA0043.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1d::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.19 via Frontend Transport; Wed, 23 Jun 2021 13:53:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f06d0da3-d661-4759-6f14-08d9364e3f86
X-MS-TrafficTypeDiagnostic: DM4PR12MB5229:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR12MB52298189CEFFEA38D204F694DF089@DM4PR12MB5229.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PpAOYb1SMwYBfsDmnz8YebWQ84JkuzRQEtmgSO3P8stY/zhNhLUvz3hVQa+bZbroeN0+w4yWAZdyiv+N0wlIUxodANzcEWfSS2zN08faH8oGSMiOGWrR+d8tGrCsAbvFmyYepGB4BaP98HTn/6JAIc1Ki0snYNbFeIepvZJtE3c+pqh0B73Ey6t3PcW6iMvo5Ilj0pp/z/j3SKFbkP+kORtO6MT3T4d24/l1JCGNZVqa9WARbFpW7qYCb591bsvzgYqE7updRtMJrOSk5J3dSMcQM6VX1B4nu9zGmXhjq0zvTiGXHeQNIJlqH1PDgYQewZy3Oou5mQ45tVEM3F2gsdxMtvTmuBh8c7YbjQssEvjXQ21pPAYjzu1S1ZUDzslyUjz3dpIpjkCFlcCWW7IwFLS8/1ODadcsvsaGnz/QLMxyl6zhtAA7OMpH042WZreTYSRLN7yT5uKB7Yi4leQEtWHG3vWntErO5yLE6r6tQibXFO97ROtvOIP4ReDDecgg2aDmrfp+2D2P+H2IVwRe5j5q3La2FjvcKokJGylqPTVCNcnIy50gj8rv0ju2kFC8Lf9Raog8TrUCvnuDjLO5taJE/HQuXB1v8EOo/uhup/9jwcSHA5tGKrLxLBEzSOgBYrxUrmB3vzbJttUth2KIZ0/xXkvDYSFpcFVyPwE2iysAztJykZLhSxjtKsvlZTar
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(86362001)(8936002)(5660300002)(53546011)(31686004)(478600001)(31696002)(36756003)(83380400001)(66476007)(66946007)(2906002)(15650500001)(6486002)(8676002)(16526019)(186003)(316002)(16576012)(2616005)(66556008)(956004)(38100700002)(26005)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3FNMllaWXc0VlNGMXF0VEFjR3kvMk16Sjcvalozc1ZabHlLVmltTGIyZDZs?=
 =?utf-8?B?ZjFYVU5KMkZFOGw0aEhiQ0lwMnVUUWsxWlRzYlpOOFpGeDJFMEE5TlJadjBF?=
 =?utf-8?B?SHhiM1Z0VVVFYXVzUGJZdHNEY0ZHKy9wN3Vab2U2QXdBY0dicVZ3ZG5TZ0Z6?=
 =?utf-8?B?aWw4d3RucmRsTU5wQ0l2aE9QNGdoU053MVhYUUsra01FbEFaeC9HdHF6Z28v?=
 =?utf-8?B?amFYYUNsMUl0UmtXNTY5VFNETW4yd1EyVXpNYndzMzRuOE5FQmJWeGN3bDRW?=
 =?utf-8?B?Y3lxL1VQdndTcDdyWEY2a1lBY1MxUXBZNDJlbVJ1M3pDQytuMnBad2VZV1FE?=
 =?utf-8?B?dXB1S3EyYWwxaUhOWlAxQThKWm9wcS9yT2JhN09HWXpiRUV3WWhQdzg1Mnpn?=
 =?utf-8?B?cmJLVWJ6SCtvMlNwQkhtczdoRDlXL1A0TDM0cUFvS0IxTnlxSG8raytLUzhr?=
 =?utf-8?B?dE92UVdrNUovMzZWWmRQZm44QlZzeHVwNnNFRGQyNUtFbit2NTlMOFBHWG5P?=
 =?utf-8?B?Rms5UlZwM3FPOCtWbUZPRzFzbEI4S1VjWnVlNCt4Z3hSS0N1YzlFYlhNb0R5?=
 =?utf-8?B?dStscHJINWZvdVM5MUVmU0FIN3hkWFdGM1FnT09WMGFBTUdwTGxjWlJIK3Rr?=
 =?utf-8?B?bUltZzl5dXRQZFcvMTgxWTQ1VVB4d0trTXRpL0xzdnVISHdyeUNXSDJwcEpr?=
 =?utf-8?B?SzEwenhieGdRV0lxQVNiV3ZkTnlHQzNpbXo3RkFCajFaWlh0c01vM0U4TUw3?=
 =?utf-8?B?L2R6bENiVHgyd1V6ZWVTbVFqd2tJUFlza0hDdGJBTTlKOVpKV1dOOG5WRVVk?=
 =?utf-8?B?aTZOVlFoOVpjZXp3YmZNeWozUjA3OStLWWZFeDdhcTRONlU4V3VKakJ4cUNt?=
 =?utf-8?B?MnYwcjZmNTRZazhnTXVQWDkvWXJMaTNXcWdKUDlLTHlTVk1ET3N6RVllVHpR?=
 =?utf-8?B?NDZrWEhtWGtSVVM3QUNJYmNmZkZITG0raUY5ZHdRTk5RTFFpU3N6cHF5YVJC?=
 =?utf-8?B?cStrNmdjeFU5djdIQWhOclVpVGxuNVVka21IcFlHK3pOeEF5KytBT29MVGNF?=
 =?utf-8?B?S09IN1lzbE9IZE5XTDYrQ2lzU3d2eEdvUit1WFdzZmpoUEFRSCtKc2JJeUNs?=
 =?utf-8?B?VkNSTSs1eDMxTzdtcXNaWk5MM0srYklQaFE4bHB0a1NXcjBQSXlKb3l3NmN4?=
 =?utf-8?B?M3NFam9OK21KNnRnckc0a1pTZktGTFYyT2Z1clRRQ3BxTXdXcllLN3FERFoy?=
 =?utf-8?B?QzIwWFB6bWVtSml0MDJBblE0SnAxSWZXTTRiLy9UZHBtK2pjS0g3U3ZoWDZJ?=
 =?utf-8?B?M1ZVcEdTSGc4SUVlZ3dSc3BmSm9jelplcE0wc1VaZlZhNGZwUFBDcEwySzZY?=
 =?utf-8?B?cmZwT2JQbGhVMW9aOXhLTjhRMWtVNnkwRkVSMTBGS3FrN0ZUaC91c0JueEJi?=
 =?utf-8?B?ZUFvM20xdk9UTjZiVW15ZkhXU1Q1c2R4UHRsSmdiSTBWYmdWa0gyeVlScTR3?=
 =?utf-8?B?cXRCdDV4SFhoRHZSb2I2VFBRVzFRY2xPRUl4aTMvMlU4cTF0czN2bjFIZjE0?=
 =?utf-8?B?eU9SVnNRTG5KQ2d2ZWpmMUpTRDlKbXpJQkVaT3h5QlpzQ21LRVFwQng4Rzhm?=
 =?utf-8?B?ejNTb3BmNnJYU2VBdGs2UTBUMjBkK1JGN3Jsa3hzRTVDWHh2TlV5ekNjcjZC?=
 =?utf-8?B?ZzFFREV0SWQ0TzQxemhLemFOdTc1aDdOTlpaRWZYU3JNU3ZxR01PZmFqRThh?=
 =?utf-8?Q?KPS+TaXTDuT4XSisOYE/3NyGgTQnwvEnNVpK8yF?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f06d0da3-d661-4759-6f14-08d9364e3f86
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 13:53:15.2880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cyXMmOJf1qbLWujgcWzrl8OBxlYrj9ewfugEjRldarbTZb7+4tnpMfnSHdSEVaryBhknnjoxrCKs/XZOrXfvNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5229
Subject: Re: [Bridge] [PATCH net-next 2/2] net/bridge: Update uc addr on
 LEARNING_SYNC bp
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

On 23/06/2021 16:34, Alexandra Winter wrote:
> Whenever a unicast fdb entry is added or deleted in the software
> bridge's fdb, synchronize it to the hardware fdb of a bridgeport
> device, if the bridgeport has the attribute LEARNING_SYNC and is not
> isolated from the target of the changed fdb entry.
> 
> To inform HW, that messages with a specific unicast target address
> should be sent to the software bridge via this bridgeport, simply
> register this address with the device.
> 
> Without this patch smart NICs attached to a bridgeport of a software
> bridge can already do their own learning on the messages that the
> SW bridge sends out via this port. And otherwise accept/flood all
> unknown target messages to the SW bridge (promiscuous port).
> This patch gives the attached HW the chance to update its fdb, even
> when it does not see the respective message, because it is forwarded
> to another piece of HW attached to another bridgeport. Or when the NIC
> is not capable of learning or flooding.
> 
> An alternative solution would be to subscribe to the
> SWITCHDEV_FDB_ADD/DEL_TO_DEVICE switchdev notifiers in the respective
> device drivers. But as there's no HW-specific part in this
> implementation, it was felt that this should rather be implemented in
> the common layer of the bridge code.
> 
> Signed-off-by: Alexandra Winter <wintera@linux.ibm.com>
> ---
>  net/bridge/br_fdb.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 

Absolutely no way, I'm sorry but br_fdb_update() is called when learning on every packet,
walking the port list on every fdb port change is a disastrous overkill.
You already have specified the alternative yourself, please use the switchdev notifiers
that are there and already take up the necessary processing in the fast paths.

Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 698b79747d32..2075b5da6db3 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -567,6 +567,32 @@ int br_fdb_insert(struct net_bridge *br, struct net_bridge_port *source,
>  	return ret;
>  }
>  
> +static void br_fdb_learning_sync(struct net_bridge *br,
> +				 const struct net_bridge_fdb_entry *fdb,
> +				 int type)
> +{
> +	struct net_bridge_port *p;
> +
> +	if (!fdb->dst)
> +		return;
> +	list_for_each_entry(p, &br->port_list, list) {

You can't just walk the port list without any synchronization.

> +		if ((p->flags & BR_LEARNING_SYNC) && p != fdb->dst &&
> +		    (!(p->flags & BR_ISOLATED) ||

These flags can change while running...

> +		     !(fdb->dst->flags & BR_ISOLATED))) {
> +			switch (type) {
> +			case RTM_DELNEIGH:
> +				dev_uc_del(p->dev, fdb->key.addr.addr);
> +				break;
> +			case RTM_NEWNEIGH:
> +				dev_uc_add(p->dev, fdb->key.addr.addr);
> +				break;

... and you can end up having programmed a lot of dynamic fdbs that will never get removed.

> +			default:
> +				break;
> +			}
> +		}
> +	}
> +}
> +
>  /* returns true if the fdb was modified */
>  static bool __fdb_mark_active(struct net_bridge_fdb_entry *fdb)
>  {
> @@ -603,6 +629,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>  			if (unlikely(source != fdb->dst &&
>  				     !test_bit(BR_FDB_STICKY, &fdb->flags))) {
>  				br_switchdev_fdb_notify(fdb, RTM_DELNEIGH);
> +				br_fdb_learning_sync(br, fdb, RTM_DELNEIGH);
>  				fdb->dst = source;
>  				fdb_modified = true;
>  				/* Take over HW learned entry */
> @@ -799,6 +826,7 @@ static void fdb_notify(struct net_bridge *br,
>  		goto errout;
>  	}
>  	rtnl_notify(skb, net, 0, RTNLGRP_NEIGH, NULL, GFP_ATOMIC);
> +	br_fdb_learning_sync(br, fdb, type);
>  	return;
>  errout:
>  	rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
> 

