Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AE87098C2
	for <lists.bridge@lfdr.de>; Fri, 19 May 2023 15:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8E95611FE;
	Fri, 19 May 2023 13:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8E95611FE
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=KEMaKlIX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSPGxgdC3NOn; Fri, 19 May 2023 13:52:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E5DFB61200;
	Fri, 19 May 2023 13:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5DFB61200
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93D5AC008C;
	Fri, 19 May 2023 13:52:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DAC0FC002A
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 13:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A130783B3D
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 13:52:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A130783B3D
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=KEMaKlIX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LAOIbUKQYsRU for <bridge@lists.linux-foundation.org>;
 Fri, 19 May 2023 13:51:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E80D83B3B
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20625.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::625])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E80D83B3B
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 13:51:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rj+doKzJdpy9eRLEqMtdIsmxe18+g7KpsfP0d/s8pPU5oJzs7rfxsFWBnbiY3aVh1/VwbOjkT2x3hjeP8/AEcNQknRR02PecUtA1rewbAQBqRqKwDHhj9C5e8gDu+Hbw7AYhqjSn/8SSmLoZdyFOG/+6iDO6z8toRlTIy8mRqfDUwYgX8eTdK5KLhP4IPIxhVo14ew2chM5hI4USsT+YusXnJTj2omcSE7x1KYvuZHbiEIBm0kFZpqTqMcEjW0Lftl3VFoV4OUIaYw0r5cYuR9Ir6L13WEN0bK1fIJZ7ReR3fbBHoFgKOgOfPnAYpqL0ZTOlVbV7dgyA6+3E4iOjKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LejE3WAnl9Y6W66fvDvFQkIFnGTgR2dh7xS9sL2n9N4=;
 b=cZ0lcIIFb0SoDA7Ef8kTT3OkL6UfJEz38433L1SMWzhLV3099rnT6peLpr7z5wbLY1b4oiIUWc3hDgTiuqwTVh6Z+aPe41UknWTm33rywxtavCeNhMb+Wd1bxhHd+KmohGzo4yEhT5CFOAH3YRTxZyXiEkW3HjnoFA1sr44zTu9L+vpfmZmgwGLZA/95ZWdyY6OMathiOd86eS0AhnIWJzAGdvb9xLfkw+wXVKQ2HT5RB9dVTAc7gJbW0frOvp5TjvYm2lZJZmZeU26s4mPONf+Hps66qlx2YU1Ar5XwNvuT9b1yHOvA5wYDyM10zb1MAyXBYRtoRTpxaAXDqu6lKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LejE3WAnl9Y6W66fvDvFQkIFnGTgR2dh7xS9sL2n9N4=;
 b=KEMaKlIXUHu/9RKNdLPUTL65so9GWtu2T/ncG2N7pCPwCO4PbXhM1US5fD/7YKgsb+ZWbgKfVuU9l66mEYedFi7fqjt2ceOGErysCx1U0wKrKPlZOwsSLR8I5WfD4woQkoFaaUNqAOgZU4j7JRzjV4Nh4GCcweNyYexNyWCF007mmUI4tsaQe/i8IyLBXEY0uEWH3274I5FG42HVgX0AhTeIat633QQpWpNwdy7k6CDeqir2SKCCXaPCutezH2R6QGsaIvfUfZq2jNwH/tMx0Bs2EVbitFL2zTS8J34HcGnAZpMaiRQYZjnrOMbzN5u6QfLBZxEh873zjXyrZ7BpjA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH7PR12MB9067.namprd12.prod.outlook.com (2603:10b6:510:1f5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Fri, 19 May
 2023 13:51:56 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%3]) with mapi id 15.20.6387.032; Fri, 19 May 2023
 13:51:56 +0000
Date: Fri, 19 May 2023 16:51:48 +0300
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZGd+9CUBM+eWG5FR@shredder>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
X-ClientProxiedBy: VI1PR0101CA0066.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::34) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH7PR12MB9067:EE_
X-MS-Office365-Filtering-Correlation-Id: dcab9c70-15b9-439b-6b36-08db5870358a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RYNJgc4GT8HXqsf9FrRMhRQKAWvZcQRPVKc6ZHno2LrcfbW7jNe1sEn14ZhSZ+Xe7RRFjkGzO1HgcU7ttezdWWcT6M9KbpVSCcrFrWSPGWbTZEW00+ETZOXho2VP4vqa6yVISDtFTRB8igbrinzp5lenUe+W8DEYv8n3uR1i2QExmw+3PxmTK6Kc28iBuMQjRJ/FG1bjv+IrQyX7NzZIq6XdNYgDtQykxuCtKJ9/wa0dcJ6ClCfnggpXGswViS00v6d65qYqWKCpPq7eyQX/9fLiCwMszLM+gdpcxjTbpcETgKD9x73gZ+A7IPIw8+0UVIKhSDFdS6JlBcYvq2bXU3Pye0KJLOmKIr1XDuGm/9zkUgxOfB3z7kX5E7MqyLwZRU5bcHu26DAA7krhZuhMVDy3pJQ+WLxwzjNPEDYl0d5rN8pTNxZyeTVP5L/j5i7UPFusyr5hF2kNXXnVxXZV/+Ba6lzBf6zTSPea7NvMptCLPSEHkVIyZc73pjWmRpZxRhclAMF+xN3SSm4uQLN5ytPQP5SVgjNZw8gytI2GawJXS76Ete9jAJl30+LxHfYr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(136003)(376002)(396003)(346002)(39860400002)(366004)(451199021)(26005)(6512007)(6506007)(9686003)(107886003)(53546011)(83380400001)(86362001)(38100700002)(186003)(33716001)(6486002)(7416002)(5660300002)(478600001)(316002)(2906002)(4326008)(6916009)(8676002)(8936002)(41300700001)(66556008)(66476007)(66946007)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kR1ux3tmR7kOCXIqSlu2vtMJUpUVC1Ggx0i88w2SU9fvrWSFUHT/iFKiAaz4?=
 =?us-ascii?Q?ZLIs7avVSIoCQAw78EwCn4JEE77FVDkVRh0nePQKq+kHV2Gv2f93vwxDNpkV?=
 =?us-ascii?Q?00VCNxhoTXVrpXOGHx+O8gjoqDRISqbKXIjuXV51Wyq7IJtzvUATje5m37Hm?=
 =?us-ascii?Q?S876o8cOjvF5fBB+N11NRDR1sy9OqvboTUwo+b3swas3pPZsChv5TJdckUyb?=
 =?us-ascii?Q?bhLxIIg9S9bKCCwQ+5etffFbMAaVlPAKzx1TQus/uf/EFRTyNseB8l9YUrRc?=
 =?us-ascii?Q?i/FOOQ6lXBeKmkH1z2tkgimpM2mNhkVAbxruuccg/IOHem9I6DQTaYGqs4bL?=
 =?us-ascii?Q?8FNvEcEZzn4xwk2DO9VkVLQvCU8vriGzVppD9YDYfHpbcB3TSGBRzacBaMIC?=
 =?us-ascii?Q?l8Wkp/i6KuzR1apv3AK76tmhjVTWvGsOnpPfO5GJWZ4fzHLpLWwqNAKwZL6L?=
 =?us-ascii?Q?fhljjnK6yD4RVMGfO1cUFIu8HhkK7huXz5JTqVwjcT2RukclyrhWnOHdnZqn?=
 =?us-ascii?Q?aylEDgJB5JlLo3lRcPX7RhsnL1Yr5chxJohLb2flahz0m8XlJdVfa4axOGvO?=
 =?us-ascii?Q?+coIvh2ypA6c8jD1C3+7EiamemHX1Iy+ySfinHbz6G08DcOOJyF40yj7VsJ6?=
 =?us-ascii?Q?RTFT2uUlSYN3Y5IBTwvTz6duLzzq6f+7hx71mn03AZuLpZM1GPnx2n5hlV3v?=
 =?us-ascii?Q?4qfioUhiBuOWOjUTzA1VDb/ni7BW67wDkSJYv5ctrmWNv0nFp50XlhjYOLh1?=
 =?us-ascii?Q?Tgfq9nzrRa3bk8wMut3XTi+50RxBCsm4LaJNLiEr7e4LP5w4Q5+VskY6TEvA?=
 =?us-ascii?Q?xOBddXTMv2Kcqb7ohvtFIM8BIyuEdObt8NfeEhfUpOqtouWQ8wsi9ml160Bo?=
 =?us-ascii?Q?QU2w6/raVPLkDqFc7gvpk0huBXoFhNDb4fQucB/MEiH7r6NdfaVWOUayZiM7?=
 =?us-ascii?Q?FVhfaYesDY9cQlnRxKBgy+4VnkapjiunTxDkzWY5eBr8E5YzERJEOfsCe6wI?=
 =?us-ascii?Q?ebrYZcud+ajSPoXSJ7S6WVpIrQ2zte2l59fvP1EQLcPWESz7LYPp5RGoYXQH?=
 =?us-ascii?Q?AzPhD5TWEAvJKn0NE6nXNfCbLsPyB7U1pZP1LCgCMpLryvWWHFHXJUwq9Vl6?=
 =?us-ascii?Q?oaAy2RSkDc3Tb99hIFYac+5cZkAhKFTMtkPTZfKVxdPk+4VC/yG3a6Vyt6Ia?=
 =?us-ascii?Q?tjZLi+nEoJNVcYyRkmGozqnGZBcGT79yBWKh18UXVPHfKmY7Sq7PMsdmEfah?=
 =?us-ascii?Q?MH1C4EE8Y14fqdx/cIHJr05UVGbgGUh5Ji1GTnaAJCfL0FngKA/ahH5oGC5S?=
 =?us-ascii?Q?35YOVfh1Rs5WWpMBQYPGIHGsMvIJh7FnV/2OdOQlTFfGot/Gdjo5VOMfZi2m?=
 =?us-ascii?Q?J/+kS6xZXiS75dwsxiC3BpCcBFW1w5Agdt0ZbBNUyE2zin7Mc1PUNQv6ojvL?=
 =?us-ascii?Q?xO4QdoW6ESV6o2ufAwbDB1o2uaPxNi3VHPOEvLmtPnYeg6TOD9TJJh6Ncju5?=
 =?us-ascii?Q?KWW7qsteChxzPmIPuqtG39RDtvhYFNi89JFnJPzJGVJCpLi0RvF8lksarCZf?=
 =?us-ascii?Q?opzep+8k+LyzQ6Bt7iUPSCYnQoweiUKFB/cl/Uxa?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcab9c70-15b9-439b-6b36-08db5870358a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 13:51:56.3147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4iI59Dbfgo/jnURs9jW0acnpjk+Uaxizhhnej6y2+9YDqxuNvQRkA/yLwX8kyZVjSwY+ZovwaFSLja/B83CJxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB9067
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 bridge@lists.linux-foundation.org, claudiu.manoil@nxp.com,
 UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com, edumazet@google.com,
 jhs@mojatatu.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] skbuff: bridge: Add layer 2 miss
	indication
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

On Thu, May 18, 2023 at 07:08:47PM +0300, Nikolay Aleksandrov wrote:
> On 18/05/2023 14:33, Ido Schimmel wrote:
> > diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> > index fc17b9fd93e6..d8ab5890cbe6 100644
> > --- a/net/bridge/br_input.c
> > +++ b/net/bridge/br_input.c
> > @@ -334,6 +334,7 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
> >  		return RX_HANDLER_CONSUMED;
> >  
> >  	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
> > +	skb->l2_miss = 0;
> >  
> >  	p = br_port_get_rcu(skb->dev);
> >  	if (p->flags & BR_VLAN_TUNNEL)
> 
> Overall looks good, only this part is a bit worrisome and needs some additional
> investigation because now we'll unconditionally dirty a cache line for every
> packet that is forwarded. Could you please check the effect with perf?

To eliminate it I tried the approach we discussed yesterday:

First, add the miss indication to the bridge's control block which is
zeroed for every skb entering the bridge:

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 2119729ded2b..bd5c18286a40 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -581,6 +581,7 @@ struct br_input_skb_cb {
 #endif
        u8 proxyarp_replied:1;
        u8 src_port_isolated:1;
+       u8 miss:1;      /* FDB or MDB lookup miss */
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
        u8 vlan_filtered:1;
 #endif

And set this bit upon misses instead of skb->l2_miss:

@@ -203,6 +205,8 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
        struct net_bridge_port *prev = NULL;
        struct net_bridge_port *p;
 
+       BR_INPUT_SKB_CB(skb)->miss = 1;
+
        list_for_each_entry_rcu(p, &br->port_list, list) {
                /* Do not flood unicast traffic to ports that turn it off, nor
                 * other traffic if flood off, except for traffic we originate
@@ -295,6 +299,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
                        allow_mode_include = false;
        } else {
                p = NULL;
+               BR_INPUT_SKB_CB(skb)->miss = 1;
        }
 
        while (p || rp) {

Then copy it to skb->l2_miss at the very end where the cache line
containing this field is already written to:

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 84d6dd5e5b1a..89f65564e338 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -50,6 +50,8 @@ int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb
 
        br_switchdev_frame_set_offload_fwd_mark(skb);
 
+       skb->l2_miss = BR_INPUT_SKB_CB(skb)->miss;
+
        dev_queue_xmit(skb);
 
        return 0;

Also for locally received packets:

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index fc17b9fd93e6..274e55455b15 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -46,6 +46,8 @@ static int br_pass_frame_up(struct sk_buff *skb)
         */
        br_switchdev_frame_unmark(skb);
 
+       skb->l2_miss = BR_INPUT_SKB_CB(skb)->miss;
+
        /* Bridge is just like any other port.  Make sure the
         * packet is allowed except in promisc mode when someone
         * may be running packet capture.

Ran these changes through the selftest and it seems to work.

WDYT?
