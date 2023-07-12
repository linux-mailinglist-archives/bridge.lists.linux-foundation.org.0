Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7E07503DF
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 11:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3435241E81;
	Wed, 12 Jul 2023 09:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3435241E81
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=du+8bNNV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V4uZ0_3kxrfG; Wed, 12 Jul 2023 09:51:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1600E41E78;
	Wed, 12 Jul 2023 09:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1600E41E78
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9ED02C0DD4;
	Wed, 12 Jul 2023 09:51:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 99D68C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 09:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61B6341E5C
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 09:51:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61B6341E5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_TY4bUWDbcj for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 09:51:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 046FD41E69
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on20616.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::616])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 046FD41E69
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 09:51:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6xRDH6WWqpa5Y3/diPIOMP6qjDCr5xKs3gxAeOVCV8/RK5/rKyY9F7jwjnP1+9P0GdcoP5fBF9zNzJWSZ3sZNp6mzF/xQTuSSQQ3apb1rMIwcodCfc60yfIJUbtHzRmjDZQxHvZJ7GbhrrK8/BBoMIM2X0Ll2oi8dUeJV3nwoeRb9h3rTK/rs5lW7ym14KjLmqhVMRnZs7NMMUts0OOXBzmDPjeGqCVZ9ZwDAb1iMLJtmQ28eFXfiwcuC90/ha0DwcZ/EpH4s01E9Blv566Dkua03HOzUZMNYO1HeP93ZJmkUD0Al6kQrDj7s8BuLIj8SbgbovL9RyfVpsptc8U3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xrgqyvCsDQ90YXqCp0MESUdrqOEqG/2gN1pMFaaJBUM=;
 b=Mg9R12Mmh8kzQrJ5TIkoGsQTDmpsVFKrQzha2goMUikuHvVfroV/Wy7vSb1+dcGYif3DXN6yPLrOllFs96XSJsoEBXFxp9E0Q+fHUiaWMritqDE/i83GT3voCK8+FiYMirrJDQXALB51PGvOUvyBKlYK+PB7rn0izUPnhjTBGnySs3sARPn88Xv4h20q8gZF0JN4nX8r4g0P4VHMwPGfeJdf+jgFCIliywEdacwkrM740AIil4k7ax+3e0UpVv4S/e8DAwrsA45nkeWSq/kphSSgoEtHV5mhTSaFUSdhsUDh69pQYABa+NjJgIFL8/lGMuI+cO/IIPkE5GB4CqYbMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xrgqyvCsDQ90YXqCp0MESUdrqOEqG/2gN1pMFaaJBUM=;
 b=du+8bNNVmBsjJ0R4PxRIh8ztdAr1OIG6kIILgGSsAvmiRVZtWOUUFPmvRcBcHzU043QHe0yeuPqdvFSjcnAG5Bh/5MZeI8Znq3WIVqKO3TlK/p0/M6vDLSMlTEglfluO0uwdBlyBn3duEn263OLvnb2WnWTfLdg9yfbECaPjZwqJIEgOcKUJjaGCEW8fg9CHbcEeJB3moDUlzTncA6tvQXnulyB1PFXKd4yuRCHzzx4ZuJ6Rb2RXivQ9DwhH/oZBfTDCmGjcfTzkOBlqSrW4ReiVIcz8ZAjQp+fp147oYbjCw3fVmIfymtUSijjUCzaKKV7tcx9fyRsWKpN9z6uEuA==
Received: from DS7PR03CA0043.namprd03.prod.outlook.com (2603:10b6:5:3b5::18)
 by PH8PR12MB7025.namprd12.prod.outlook.com (2603:10b6:510:1bc::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Wed, 12 Jul
 2023 09:51:05 +0000
Received: from DM6NAM11FT087.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b5:cafe::df) by DS7PR03CA0043.outlook.office365.com
 (2603:10b6:5:3b5::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20 via Frontend
 Transport; Wed, 12 Jul 2023 09:51:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT087.mail.protection.outlook.com (10.13.172.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.22 via Frontend Transport; Wed, 12 Jul 2023 09:51:05 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Wed, 12 Jul 2023
 02:50:56 -0700
Received: from yaviefel (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.37; Wed, 12 Jul
 2023 02:50:55 -0700
References: <9190b2ac-a3f7-d4f5-211a-ea860f09687a@quietfountain.com>
 <20230711215132.77594-1-kuniyu@amazon.com>
User-agent: mu4e 1.6.6; emacs 28.2
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Date: Wed, 12 Jul 2023 11:44:12 +0200
In-Reply-To: <20230711215132.77594-1-kuniyu@amazon.com>
Message-ID: <87wmz5v4oz.fsf@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT087:EE_|PH8PR12MB7025:EE_
X-MS-Office365-Filtering-Correlation-Id: b376877f-55d5-4602-5658-08db82bd826c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bK3/SJYfQF10KxgFMNbiJSfzELI12znCe81SJrX1KKn04VSQziXWmDSwQJ6ZzLGpf6V/TqTybuc7S9fm9hJu8wUsP/zVk8wHuvExql+IVruyBlz+eAXXnLalJTUQzV8BZMgfCbeHhMn3q0PZj2cVBAOBPp7XpnOcy00ZHaB4QPipu+e8YcRa2ENlgfVZMELnNrR38xpMedPrsphLmfjx/ueWMTaQs0AwPNjHIJ49l0Hu0YwAFEmbqsv0j/yEu4jse9I2F2BwxlYFz0Oi68oTbkijsHR0SK2TH9y+1ocQg+sid/VbCGW2XQnXLwRyWxEOwgebLCAf1iFNPJgaikGPrRMfwV8VKK19iH3tszwIyNrOmE7WKV5rTVD4nv/BRRoCdd9yKl9hm7GfSXLTnwUFDdC6w0ZlfN1GDoQ5qgb7uVcCAKhwXltenyTuzc2ogNM9zZ6aNIFS1K4RHTqHuX05/0ZFzO+vL9cDag+a2+F/xpiylbYKN1szDxdgVHICeggVJv75Bw3IHcBSmzAauq46d5625Uh4GihSbCKhiw4gYwoTvazFGD5VfDNV8hGDKWrsVBzX2QSfJw+P+nTZzH1kRWTqkjDxq5xTZcLDEjtfhozf/ksx5/tnEwonsU7LRqEYnK2Rubs97+BLT+bMJl4SDTIS1o6htGF/9dyH6OBoVY77FQyZOvNRPPvh9hNUWYHR8tuelsyNkckBbkisa2qzkxOV1U53fRu3/pEs74lLU5pIc9gzMN3m0GUaWu0v+62F6Ob3/4T+2LN0ab0EF5KcAnbsr0Eckfshh32Vqz8FCdA=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(39860400002)(346002)(451199021)(36840700001)(40470700004)(46966006)(26005)(53546011)(478600001)(966005)(40460700003)(40480700001)(6666004)(8936002)(8676002)(2906002)(316002)(41300700001)(86362001)(356005)(7636003)(82310400005)(5660300002)(82740400003)(54906003)(186003)(16526019)(66899021)(47076005)(83380400001)(36860700001)(6916009)(4326008)(70586007)(70206006)(36756003)(2616005)(426003)(336012);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 09:51:05.0062 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b376877f-55d5-4602-5658-08db82bd826c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT087.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7025
Cc: bridge@lists.linux-foundation.org, hcoin@quietfountain.com,
 netdev@vger.kernel.org, andrew@lunn.ch
Subject: Re: [Bridge] llc needs namespace awareness asap,
 was Re: Patch fixing STP if bridge in non-default namespace.
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
From: Petr Machata via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Petr Machata <petrm@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

(CC'ing bridge maintainers.)

Kuniyuki Iwashima <kuniyu@amazon.com> writes:

> From: Harry Coin <hcoin@quietfountain.com>
> Date: Tue, 11 Jul 2023 16:40:03 -0500
>> On 7/11/23 15:44, Andrew Lunn wrote:
>> >>>>>> The current llc_rcv.c around line 166 in net/llc/llc_input.c  has
>> >>>>>>
>> >>>>>>            if (!net_eq(dev_net(dev), &init_net))
>> >>>>>>                    goto drop;
>> >>>>>>
>> >> Thank you!  When you offer your patches, and you hear worries about being
>> >> 'invasive', it's worth asking 'compared to what' -- since the 'status quo'
>> >> is every bridge with STP in a non default namespace with a loop in it
>> >> somewhere will freeze every connected system more solid than ice in
>> >> Antarctica.
>> > https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
>> >
>> > say:
>> >
>> > o It must be obviously correct and tested.
>> > o It cannot be bigger than 100 lines, with context.
>> > o It must fix only one thing.
>> > o It must fix a real bug that bothers people (not a, "This could be a problem..." type thing).
>> >
>> > git blame shows:
>> >
>> > commit 721499e8931c5732202481ae24f2dfbf9910f129
>> > Author: YOSHIFUJI Hideaki <yoshfuji@linux-ipv6.org>
>> > Date:   Sat Jul 19 22:34:43 2008 -0700
>> >
>> >      netns: Use net_eq() to compare net-namespaces for optimization.
>> >
>> > diff --git a/net/llc/llc_input.c b/net/llc/llc_input.c
>> > index 1c45f172991e..57ad974e4d94 100644
>> > --- a/net/llc/llc_input.c
>> > +++ b/net/llc/llc_input.c
>> > @@ -150,7 +150,7 @@ int llc_rcv(struct sk_buff *skb, struct net_device *dev,
>> >          int (*rcv)(struct sk_buff *, struct net_device *,
>> >                     struct packet_type *, struct net_device *);
>> >   
>> > -       if (dev_net(dev) != &init_net)
>> > +       if (!net_eq(dev_net(dev), &init_net))
>> >                  goto drop;
>> >   
>> >          /*
>> >
>> > So this is just an optimization.
>> >
>> > The test itself was added in
>> >
>> > ommit e730c15519d09ea528b4d2f1103681fa5937c0e6
>> > Author: Eric W. Biederman <ebiederm@xmission.com>
>> > Date:   Mon Sep 17 11:53:39 2007 -0700
>> >
>> >      [NET]: Make packet reception network namespace safe
>> >      
>> >      This patch modifies every packet receive function
>> >      registered with dev_add_pack() to drop packets if they
>> >      are not from the initial network namespace.
>> >      
>> >      This should ensure that the various network stacks do
>> >      not receive packets in a anything but the initial network
>> >      namespace until the code has been converted and is ready
>> >      for them.
>> >      
>> >      Signed-off-by: Eric W. Biederman <ebiederm@xmission.com>
>> >      Signed-off-by: David S. Miller <davem@davemloft.net>
>> >
>> > So that was over 15 years ago.
>> >
>> > It appears it has not bothered people for over 15 years.
>> >
>> > Lets wait until we get to see the actual fix. We can then decide how
>> > simple/hard it is to back port to stable, if it fulfils the stable
>> > rules or not.
>> >
>> >        Andrew
>> 
>> Andrew, fair enough.  In the time until it's fixed, the kernel folks 
>> should publish an advisory and block any attempt to set bridge stp state 
>> to other than 0 if in a non-default namespace. The alternative is a 
>> packet flood at whatever the top line speed is should there be a loop 
>> somewhere in even one connected link.
>
> Like this ?  Someone who didn't notice the issue might complain about
> it as regression.
>
> ---8<---
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index 75204d36d7f9..a807996ac56b 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -201,6 +201,11 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
>  {
>  	ASSERT_RTNL();
>  
> +	if (!net_eq(dev_net(br->dev), &init_net)) {
> +		NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
> +		return -EINVAL;
> +	}
> +
>  	if (br_mrp_enabled(br)) {
>  		NL_SET_ERR_MSG_MOD(extack,
>  				   "STP can't be enabled if MRP is already enabled");
> ---8<---

