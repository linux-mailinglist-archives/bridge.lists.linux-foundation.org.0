Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E882681538
	for <lists.bridge@lfdr.de>; Mon, 30 Jan 2023 16:39:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4312881442;
	Mon, 30 Jan 2023 15:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4312881442
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=fcz0CUAo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aDZFMEya002w; Mon, 30 Jan 2023 15:39:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C4CF981D47;
	Mon, 30 Jan 2023 15:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4CF981D47
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 85FD1C007C;
	Mon, 30 Jan 2023 15:39:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4B3D6C002B
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 15:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1488840A87
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 15:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1488840A87
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=fcz0CUAo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3QlkF0SzUjz for <bridge@lists.linux-foundation.org>;
 Mon, 30 Jan 2023 15:39:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F2BB40A81
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2080.outbound.protection.outlook.com [40.107.244.80])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F2BB40A81
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 15:39:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFba/0xjdIn82ITGuf7nl6+qNfS6ytQRvAAqWevI7G0jJoYOEjD4v75BCPT8RT377xSFYBbp++SFKrftcUM/kwOmjVSlfuP+OfV4yBBXgnVcHoUdFHiMtE45T6tHhOX5ahoZpgt+efK0xBnII05+dKYsmWUnxy16Gwmbht/vgd89kyXMx/caTW1rSxqpuO/6BaEaw85LNj/bGvCoE4iNrMZUPYMpT0iPF+GC8sMytJ5qkCxAKksoxVa1CaQK/7b3K6P7wdwv65QwVdB3GRjeyA48TJgiUCRRytWRdpSZs8IrhXu3j+tnGQPtItx89bOK3YOZRFRf8EAQepPUSxl6gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H8Yav8TprwPE5vEOX+8fXpawYIpntoyZathbapLHXgI=;
 b=KYBTX/1o22VxBTdz8knH+g32vVgPEN2vC5abFHSTCgOpDrUpJ3heDAY+bBVyX0OlliweRSIR5pkOy9wvLlhyO1Pk7/vL7y0FwFeEq3orOL6eiXJSSXRVUqF1ovsNwAaRt0W5aNebpU+r9NF4O8jhENGiyhuJ/Ain6xd80MXoloYaQgrOGC/gHGJ667xVtpY0OtwfA99IcA2SmsOSCgS5BJISH91h7axv0Kw3kWDSsS7sKcsSbuL3/nagKszouGIcPrHPK8I7x/xcIllVWc20kxIo+29wJd7jZaWj1P7tnNaqhgrojNYf/kK3FKqnTr2sgPtU86zFU8r4Ts+34iOInQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8Yav8TprwPE5vEOX+8fXpawYIpntoyZathbapLHXgI=;
 b=fcz0CUAol+7tpmxZN7shACqj2vW3N2hWoguALnJ+7adiFqeJ0tQWWUjQtUF1cbAmDsh18BokJcnkDXPzK6iEbfxWfmqr1qIEBSCYyBPOe1iiIdY6O9W+vcB4EbAOrShoKS4XSyFVuAhuvKnFCNTOFxjIoulfi/PVgq9dM6weUk6GEJR1UdGl3SmMaDJriPmsUG/s5Pt+DkFtS5o83C56Cje+1WSs1FydX0OS5IS2aaE7r2iFNUfHEiew9qi3bz/5GHTX/h9thXHucyrlZ/ucEI/k37nCNXMNiESgAFNZ07kX2N8PABGElUJZGLH6rCpTq5yWWC6ZH0dFq7TTff7t6Q==
Received: from DM6PR06CA0082.namprd06.prod.outlook.com (2603:10b6:5:336::15)
 by DM6PR12MB4941.namprd12.prod.outlook.com (2603:10b6:5:1b8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 15:39:13 +0000
Received: from DM6NAM11FT115.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:336:cafe::f7) by DM6PR06CA0082.outlook.office365.com
 (2603:10b6:5:336::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 15:39:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT115.mail.protection.outlook.com (10.13.173.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.25 via Frontend Transport; Mon, 30 Jan 2023 15:39:13 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 30 Jan
 2023 07:39:07 -0800
Received: from yaviefel (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 30 Jan
 2023 07:39:05 -0800
References: <cover.1674752051.git.petrm@nvidia.com>
 <1dcd4638d78c469eaa2f528de1f69b098222876f.1674752051.git.petrm@nvidia.com>
 <81821548-4839-e7ba-37b0-92966beb7930@blackwall.org>
User-agent: mu4e 1.6.6; emacs 28.1
To: Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 30 Jan 2023 16:02:07 +0100
In-Reply-To: <81821548-4839-e7ba-37b0-92966beb7930@blackwall.org>
Message-ID: <87r0vcf2w9.fsf@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT115:EE_|DM6PR12MB4941:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d11b17f-a69c-43d9-0a39-08db02d823ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PKCJ8QodSBSenIuW4dMh6Xdyv5LFtCM07ADR9o8W6mR334U/IXeuS06bR3E6BSrPF7oevgOYMAapMRcnYjQwX50xglpWhAsy4jaBpS5ITeV/kAkh8XePn6wTEa6RgScUwHPj9ygAF9pBQZE4hdpnnxUdWWBApeSEMyhw/2xH9YzgL4h3ZHz4+OvK7lCtFEnRUiqHfyRviyQx0P+dwqpqERMk8AhWRmra7UWANZXF1bfb6QQ0XO6n7NQmnQGws812Mp3FiRbH5yuFDRydGGRUysV6c2PtT3prT9oTH3qk1OdRuNhg1idF7pwvgcKZtnkyBiFMtgu5OKKwh4eVHoYAEfvpRqT8l8/OHQlOxUiOJn4NES1FXeheupGpIv9R7aedl3J1gW+BbqGLbu6aWpfWiygN7GDyd7FCuZcF3E1y+rCRqyex9+p2AXSK2QUPJQK/vvWStsMWByws5DYoMGh/nPDAUGGA99PegZ844lHLoKx1FsiRzEV+oEAhZPm0clLW7AVn3km1sq/Urr3mk7o+9qfBq9YZU57VmhO+I7fBVe2F+BIxOHPKUx0ChWxWCew0heBXciqUPbLGcW0k23g+q9AUn4Peg2EYMtH6Md26/Amw/ww4E0mtFMF1GqGkUj0LHVz1iWAf8hoXbvtqh9HXfy1u71oJ/ARgcWFaNAea9ThaVRh50TanpMN/TSbHPgth1P9P4R08AZH3jEgjaeezdQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(396003)(376002)(39860400002)(346002)(136003)(451199018)(36840700001)(40470700004)(46966006)(82310400005)(2906002)(426003)(40480700001)(47076005)(83380400001)(36860700001)(5660300002)(41300700001)(8936002)(26005)(107886003)(53546011)(16526019)(2616005)(186003)(336012)(7636003)(356005)(86362001)(40460700003)(4326008)(70206006)(82740400003)(316002)(478600001)(8676002)(70586007)(54906003)(36756003)(6916009);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 15:39:13.6098 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d11b17f-a69c-43d9-0a39-08db02d823ab
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT115.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4941
Cc: Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 07/16] net: bridge: Maintain number of
 MDB entries in net_bridge_mcast_port
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


Nikolay Aleksandrov <razor@blackwall.org> writes:

> On 26/01/2023 19:01, Petr Machata wrote:
>> Note that the per-port-VLAN mcast_max_groups value gets reset when VLAN
>> snooping is enabled. The reason for this is that while VLAN snooping is
>> disabled, permanent entries can be added above the limit imposed by the
>> configured maximum. Under those circumstances, whatever caused the VLAN
>> context enablement, would need to be rolled back, adding a fair amount of
>> code that would be rarely hit and tricky to maintain. At the same time,
>> the feature that this would enable is IMHO not interesting: I posit that
>> the usefulness of keeping mcast_max_groups intact across
>> mcast_vlan_snooping toggles is marginal at best.
>> 
>
> Hmm, I keep thinking about this one and I don't completely agree. It
> would be more user-friendly if the max count doesn't get reset when
> mcast snooping is toggled. Imposing order of operations (first enable
> snooping, then config max entries) isn't necessary and it makes sense
> for someone to first set the limit and then enable vlan snooping.

If you are talking about mcast_snooping, that can be disabled while
mcast_vlan_snooping is enabled. So you can configure everything, then
turn snooping on.

If you are talking about configuring max while mcast_vlan_snooping is
off, then I assumed one shouldn't touch the VLAN context if
br_multicast_port_ctx_vlan_disabled(). So we would need to track the n
and max in some other entity than in the multicast context. But maybe
I'm wrong.

> Also it would be consistent with port max entries, I'd prefer if we
> have the same behaviour for port and vlan pmctxs. If we allow to set
> any maximum at any time we don't need to rollback anything, also we
> already always lookup vlans in br_multicast_port_vid_to_port_ctx() to
> check if snooping is enabled so we can keep the count correct
> regardless, the same as it's done for the ports. Keeping both limits
> with consistent semantics seems better to me.

The idea of requiring max >= current felt so natural to me that I didn't
even check what mcast_hash_max was doing. Sure -- let's be consistent.
This will incidentally make all the rollbacks go away, and happily makes
sense WRT locking, too: since the relation between max and n is somewhat
loose, we don't need to worry too much about sequencing inc-/dec-n vs.
set-max.
