Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8684F7CC172
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 13:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 814F041B80;
	Tue, 17 Oct 2023 11:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 814F041B80
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=MM8SwEUg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gabdZ7Utfq20; Tue, 17 Oct 2023 11:04:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EB54E4161D;
	Tue, 17 Oct 2023 11:04:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB54E4161D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 998D8C0DD3;
	Tue, 17 Oct 2023 11:04:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3E80EC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 11:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 066FC60F9B
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 11:04:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 066FC60F9B
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=MM8SwEUg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDGQ9KrCulJi for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 11:04:05 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20600.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::600])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8A6260F94
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 11:04:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8A6260F94
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLbMPaF+2Uqbm/Rj3JW0BoVCLb43avQ97APz9Qn+YWF20IYwZ7WMIjNvSw+gqnX3MOHUuaFkSjOiciiihUK/pra/xivMiFnj4SwLDFpUVfcoT1jyxcMPUlSAq1R1aWF2z9vao368nCN5tiQh8C40SqL9/xWOY9YTg7mRxpuRPYJOJNF7ShQziCuMbSUor3vmaExFl01lcAXS900K1HZUnOGGnlEH4ZZcpFwtmqwU4iwiR+KKJqapeMNr04DKH9kaQIi5UkbwlKk+WGepyL3cP7lu7nvqs81m+xQ7HXfI9n5DgFngQnXLeGq91yVdqBW4JCb1iQRrCVUnrZk4iALO0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55mdjusYF663YzVJ3TgxUcChKRycUmG/jhJsxCN9K3A=;
 b=HYMMOtcjdIu8L+2O9Zy3S6hCbAPv8xGpHdD7/pGAdNJigOoLAWNn2/hzoI1aAr41y23fk3wO9tAGg3RvDKYLHvl65xg0Cs0IGzVez/43Fx0tObTEDPDr/INAIoIRvQPudzqvtmCPjvQjDXDpRr88Gm7oJed005LDzuhOMJQBRCI6PMkces9WtfCiPfia+BlV3bg+VIEMZoohCvfA1Lp3xE4gRPekv17c7mWdQZt29L/OOe39ntgOFMqWPaVj0roAyJ9PEGNykP+Ol2oFLmMNuXFayR5pXfN8Xd6dyAZSO8g5zocjLCIyrkmaF0Pg7iuNSg3NgcA4ey35JAGTFakKbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=55mdjusYF663YzVJ3TgxUcChKRycUmG/jhJsxCN9K3A=;
 b=MM8SwEUgxK88ADOUhPhkzS3Na/tiLgiE+VmTpmZzqiHR83U9A384EvpcDFYCRpcWpm46LDWC9RcQ/mUM59YBFTYFALSy2ok/8HUVqjl5HSUL27nMQwpVngwZYDnJ7euBSTMmzmEDqnHRge9W94bXh6CdkDtdjjjdIwTI0ZMTZPtiJ8cPIHk8Id7utDblgDcIR1Ks9IwJnaa3d0WVCZqLtrvuVKg+Bwp0AieOlXa1pz65FOhTuXQXFBBaaojKWq0qKGQMgnXbHvgDaBeGVK5tVo2u+DhFTlqF8jqZUSo4JnCbQuaP+8/HhfS47koCMV7vPs7JhNuew9aCbPWBQ7r+yw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CYYPR12MB8752.namprd12.prod.outlook.com (2603:10b6:930:b9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 11:04:01 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::628c:5cf4:ebb2:77f]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::628c:5cf4:ebb2:77f%6]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 11:04:01 +0000
Date: Tue, 17 Oct 2023 14:03:47 +0300
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZS5qE3ou0iceLsp2@shredder>
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-10-idosch@nvidia.com>
 <141f0fc1-f024-d437-dae2-e074523c9bf8@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <141f0fc1-f024-d437-dae2-e074523c9bf8@blackwall.org>
X-ClientProxiedBy: DO2P289CA0007.QATP289.PROD.OUTLOOK.COM
 (2603:1096:790:6::11) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CYYPR12MB8752:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c60e06f-fb29-4439-265d-08dbcf00c4f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OxsOC6uXsRJpLalDig50soqI7vRaHVlvm4mKUIgxwM+agSKObeTUW3QVWEZ4GB+AcXdFb/pNKA8vQeZesqmZ5av/DDCdPEL0FfxAUbLK7KzevvYNkJlEL+Jbcx1SG+u65w0LjrxT/gj3Nd+rWCWl1UHr2Bt/P+N2vDXTY5unC8aD4I+NMHtKY1kF7gr6fSrN2sH9cCaAURu4svDhk3SL1ydQi+nTKf1sNy8U8z58Vm2fu7udjZJ+UkXxOiH6r/uZ+qcSF+OwXTNGKI6QwASkbHiKPUWZ3cp80PdGqx3wtT7DpSI/FJEyEOX3bXttSZIGM8nEXiWbqAP8mz1AT20wGgiHiHYnl4VOrCyQBfSqKO9kYmyNlCNzk4KRwHsmN+bobsg0BtgIkdZ46RuxsIHSGyv3sqY0nxsysgYGbSEaUEFqdvUhUBt1Te/Job+U1GRT8jA7erz/tI2Vp8syioteq0jyyDh9IDOsm0vOqmQTuUHxfshTiICWGssrtOfe30OjTq0djx7scv6XrzwnO+0Or3VP2vfc3x7YBrmyo8q2WqA721VClRM8Bsg/Ygt49olT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(396003)(366004)(376002)(346002)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(33716001)(38100700002)(478600001)(66946007)(66476007)(2906002)(6486002)(9686003)(6666004)(6512007)(6506007)(316002)(6916009)(66556008)(4326008)(41300700001)(5660300002)(8676002)(8936002)(107886003)(83380400001)(53546011)(26005)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dJVuRETniEcwBIMbcxPQ9VnPvn5mIvBbHqPDj13sa2NstnfH1pdFwg5ewd74?=
 =?us-ascii?Q?PKS7MaSnwRYmLJauXjPayX1pr5UUTtosCYgMa/OLt1PwQJYgetzaIaPWqM24?=
 =?us-ascii?Q?SS1lDWSnUJt/OvxthrW8l5vLv7ds0qATxPoJyF8GV7FR8XxizhXNMXbgsK6q?=
 =?us-ascii?Q?KzRPY8UEJ/1Y+ZTcFWHAi7e3nj4Dcv/377bqSYJhnd2+1CuVHEn/aU27DZW7?=
 =?us-ascii?Q?Pwc+IDxXDJp1ozt4lb7QZLtXj6smFl82YLTxJM+9AACX6HWGQaE9oEOKUUIj?=
 =?us-ascii?Q?ENXdyz3DqNGIAUtcWDm3TjkOipmNfsdtmzFjyogHtV/RuWgIX+AqO+jisA53?=
 =?us-ascii?Q?t3jz/Kr0dDbwNqpB+UERjMS46yS1CyDbVIei3oCvRHJhsOI1gxsdbzFHM3gJ?=
 =?us-ascii?Q?n90NrtAIX0c1uq4TvDdA4Oa0jisBlC7swIi+0VGOVGrRfOS/lYWqZ4ExHpyd?=
 =?us-ascii?Q?bBzhmzGQrGL+qIqxN6M+v4a0YZuTHmJORrHdptXQCkrydDZSKHZ6bPpzhj+D?=
 =?us-ascii?Q?HDDncodWIJO1REiU2PTCzTluJaCY8xmDWZu2wSniJ+sZ74syxSD51VP5S/Et?=
 =?us-ascii?Q?0Uxm/9060YCyvnR8zs0gxQdi1+7iS3tJc/bNEE9emA42R35s9TbbijldgJ8L?=
 =?us-ascii?Q?QhuyxuWqn2aj8KfhKPNZQd+lC8Qt1ss1zuUeVOREEGdcJnHJ3EvFrYCoqnf1?=
 =?us-ascii?Q?ckj/3UHtRegXoEy6XJROFNfVHyPY3d4Uih/WDT/llbcyVJ6aTln7T3WzP+y7?=
 =?us-ascii?Q?7mxneDPE0Fg1ykwEjUwAY8SWGxfJOrA+wMx5/GFb6VTgJQIaEdEfXwWuUM6I?=
 =?us-ascii?Q?IRIR4Dry9h0FpNdjTXrHHVhHhnSNfbrPo6fYV1b296C0XHOvnr1GxY0KhHR7?=
 =?us-ascii?Q?TkyPj0PGRUXCccwVzShWXryFvqiL7Zj8T1eRtpb28wO1KjMTnZnNGeq0urSg?=
 =?us-ascii?Q?XLWfSkqrddyPu6PVqHluJbdRrVRC+zpY78gZE5sCISqvm9s7qPWEYSNJnPlt?=
 =?us-ascii?Q?+4yi3qKOHuCg1jy/BW4E9v10LhsfzbR5ODYEUFq/6PzPPWtOrcTZP+CzvpjY?=
 =?us-ascii?Q?XvAjYJuV9PP9GIauwFQVnzCYw2ur7M0pmCCqMbN/PuS1ICItrZV6il2vv2C3?=
 =?us-ascii?Q?1SfKabV7FmnGykvPzzMYA5xdqiD+x/bpd6gtd7HzrinCo+YSryjTrl5dIpIx?=
 =?us-ascii?Q?EGeSG+WLdEy5g4xMvXX8lz775U79I3QA349xKvk20W2ACxT59820KIg1E+aS?=
 =?us-ascii?Q?mKJITBmzjmzwANu2fHbLP6Rf2jekh31o7jhTfoxDN+HIYz49DMn/zxcTLux/?=
 =?us-ascii?Q?X40sR5iiUcotxl8Hm58zXKxAz+WXNpjn1mA24D12quXUkVdIFxOq72HT7i3D?=
 =?us-ascii?Q?mFlbz3oHDwj+SnjbTjAQ4yJPvz43TpwQ25tSbNJm0pofpawiBFoigRDRflkp?=
 =?us-ascii?Q?P8xFDnFblFZUCkThSFcYhLQh2mUMSjIqlDTV7+YhPH9b1Gi4x7RkylzjC/7v?=
 =?us-ascii?Q?RRy+vhusb/WwDdmKV/qkHX1nbM0yQrfWzxc5O50d2h3q69XO6OiHtnhmVI2V?=
 =?us-ascii?Q?BSXKZf6DsQNrZEEc7AnJMtmYaMcdiMtZhKtBZNcp?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c60e06f-fb29-4439-265d-08dbcf00c4f7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 11:04:01.8359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P9RN/93qLvIV3owzi56tWmtUbVBYWhFeD9YH28f7c/VmBrTenxXY+sw//Y3tfRQoXLkcXxnDJpgTMj1F2MfZ8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8752
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 09/13] bridge: mcast: Add MDB get
	support
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

On Tue, Oct 17, 2023 at 12:24:44PM +0300, Nikolay Aleksandrov wrote:
> On 10/16/23 16:12, Ido Schimmel wrote:
> > Implement support for MDB get operation by looking up a matching MDB
> > entry, allocating the skb according to the entry's size and then filling
> > in the response. The operation is performed under the bridge multicast
> > lock to ensure that the entry does not change between the time the reply
> > size is determined and when the reply is filled in.
> > 
> > Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> > ---
> >   net/bridge/br_device.c  |   1 +
> >   net/bridge/br_mdb.c     | 154 ++++++++++++++++++++++++++++++++++++++++
> >   net/bridge/br_private.h |   9 +++
> >   3 files changed, 164 insertions(+)
> > 
> [snip]
> > +int br_mdb_get(struct net_device *dev, struct nlattr *tb[], u32 portid, u32 seq,
> > +	       struct netlink_ext_ack *extack)
> > +{
> > +	struct net_bridge *br = netdev_priv(dev);
> > +	struct net_bridge_mdb_entry *mp;
> > +	struct sk_buff *skb;
> > +	struct br_ip group;
> > +	int err;
> > +
> > +	err = br_mdb_get_parse(dev, tb, &group, extack);
> > +	if (err)
> > +		return err;
> > +
> > +	spin_lock_bh(&br->multicast_lock);
> 
> Since this is only reading, could we use rcu to avoid blocking mcast
> processing?

I tried to explain this choice in the commit message. Do you think it's
a non-issue?

> 
> > +
> > +	mp = br_mdb_ip_get(br, &group);
> > +	if (!mp) {
> > +		NL_SET_ERR_MSG_MOD(extack, "MDB entry not found");
> > +		err = -ENOENT;
> > +		goto unlock;
> > +	}
> > +
> > +	skb = br_mdb_get_reply_alloc(mp);
> > +	if (!skb) {
> > +		err = -ENOMEM;
> > +		goto unlock;
> > +	}
> > +
> > +	err = br_mdb_get_reply_fill(skb, mp, portid, seq);
> > +	if (err) {
> > +		NL_SET_ERR_MSG_MOD(extack, "Failed to fill MDB get reply");
> > +		goto free;
> > +	}
> > +
> > +	spin_unlock_bh(&br->multicast_lock);
> > +
> > +	return rtnl_unicast(skb, dev_net(dev), portid);
> > +
> > +free:
> > +	kfree_skb(skb);
> > +unlock:
> > +	spin_unlock_bh(&br->multicast_lock);
> > +	return err;
> > +}
> 
