Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DF9606188
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6C7B84303;
	Thu, 20 Oct 2022 13:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6C7B84303
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Em1ga+64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJYRfTqoAGy2; Thu, 20 Oct 2022 13:24:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2D7DF83F3B;
	Thu, 20 Oct 2022 13:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D7DF83F3B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4365C0078;
	Thu, 20 Oct 2022 13:24:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 13D0EC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8E8640936
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8E8640936
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Em1ga+64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rGhKWLl8i-rg for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:24:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9C2A40908
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9C2A40908
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:24:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCtLwca6gad8sZPs2LyZxnyPKqqfa2noyp7hyeA/HkW8z6E+mCoBqN3OsO1qrOi+E+HuhPlBVBPM7iduZtRV8xED/gOk0duQ+1hvw0yWrpOIPEdG7HJDF1rI5XGntv73W19NVU+t9n/ZiFu7dewPgcst+jbG8IqTb9VxEkWG9tqTkZ2XSU13QyQ8ZgvaTW9ZEx51v4jXDQ2ftyBH+NjNVzRVfhmGqFXbXprFPENvBApuWxhki9e8wAVYqCDvfvn17ZnqnB0fIVSTOvxqoiEyYfu5WUjNji4u0rNm5zo3MT3ZlfQJqiirI8eNpPqin+khk9GpproNqNl/vz5ky0PixQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiAnkFhTNtZ+cXSzdoH6LBgydFuoZNuEPknI4Ct6Cpw=;
 b=OdjyuD3jHZrhG2bd+yO4qU6Dr3ejTTSJCppI5lUBtp0kAiLXnZiYzDIicqBl9VsJ91oBLEahzCcStrhXNvy4Ha6x6MoimNQNLFVqecM9lI7iJkn1PexjgWIR3BAK26WQ0GooOKANZe5KTLHI3f2bmpYBRlsoU9l0QE6Aq79c5rL3fXXrx414kCP6jq66bwZxnj7TMkUwnYYyvoJoaNEWJylx9pye7KFxbxYWT3tNFWivmptOG8m8UfcfjEP4hp5FUZQeVBBfZtYmJUD2xVQU7AFkrLBW5EldIeUhQ9ruw6EL9rKWKc4wmbq0V7xJ+DcJzDpzJLnkaMSOAD+Oq0iUHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eiAnkFhTNtZ+cXSzdoH6LBgydFuoZNuEPknI4Ct6Cpw=;
 b=Em1ga+64y5dPii0oSfQtbbXnQgt9zNcXT9Ll0TAhoooy3GYoIQyQjWPUFLw6AjVgawaNE1H/zAZ2CPtaUTJiqWL9Aab6K9dHedtr7s6G7W1BqELCbqwwpIGdGF5lofpBU8H52kfNggOKCxoU35ePKbdTx3nz2g98cyhgpi23wQt4DvbezBUeYiWvrHTjGfkD6aTG8EVjCDvSUMd1BlCK/9lEyPEkyd3oxpCrbpGxOdVzuSGcqCX2heGDDFByAw/UcZVNA6HjpnbA/1BdPIvqwjs1OQxR6KudTjOhNnCJP5eNqvfFYwCCQtE3eHKNpWzSIGGVpXvr31EaFTvQctQ+vg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB5248.namprd12.prod.outlook.com (2603:10b6:5:39c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 13:24:22 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 13:24:22 +0000
Date: Thu, 20 Oct 2022 16:24:16 +0300
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y1FMAI9BzDRUPi5Y@shredder>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221020130224.6ralzvteoxfdwseb@skbuf>
X-ClientProxiedBy: VI1PR10CA0089.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::18) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB5248:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a06a5e0-67e7-4668-5fc0-08dab29e66cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oApm/aLaexFTN0dZAP/+LopVwJnuDYGe5+cGNzaFcZBCUIMycCs4p0K3RxmR7NVbOSpaIgvgzPN7HBv8OyxMrnKum8PcrtTTfdExiHzOoCmP/Y784K3G5rCPfIhP4J76mVoiSRZXvMlP5ZWQQ80tmzdJZRYjxLyY/BDfjmypZKKQbn+WsaTFo/xNX8W1WucxiGNLNQ6Enf2TRaoWQIBjj2Aftg55bu5ioDMS8kKiWMq2kRCLgl+v3DVZPZnSEtCj7gcfaU/vA1Q63+SyDQGht0GyBoNoG+hRZKnpG3c/O9V/2iTWu9GaFOyFSfsetRhU0Ev91Jf6MeWvNdcuzqV/oC6/cIevYj2oLx7OvTqep0ajiyE1j9rWRji6wcb13QiPG1/CDH2+/I25VLz7Vl21OVuGVWNVDe+gfSLxQVp4lRthVi/viWRI1w2QnHeOrnkyk/mn6bc8fH87hnqYanTz3TEnjAOaVkmeQWLrB8EYMxUAtMOcJpV+Y6rjxVnxds8Plho5XnSpcbrqelilfEhxl5KyF9TJDtf3eSRj2Q+6en3LuewYEJQo/BX629cbidTC70jRpMnSn5ueQkuAoxeG+UQD1TEM3JWXwwXmtyJDPVySNfenzfO5Qq4LUzW/s0DLs1JHzF6L7MeqbPvhJnCRJ6WkIorC4DENTE0DyQXS5yjAj8u7aAnAmgYL0Si3D1eD948JlPyofuR8YU6iZqdDrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(376002)(366004)(136003)(39860400002)(346002)(396003)(451199015)(26005)(66946007)(86362001)(6506007)(6512007)(7416002)(9686003)(8676002)(83380400001)(4326008)(54906003)(6916009)(41300700001)(66556008)(66476007)(5660300002)(6666004)(8936002)(316002)(7406005)(6486002)(33716001)(38100700002)(66899015)(2906002)(186003)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GYvaq7+1vEICVJEGld945MJ8s5Cnpiqi4g7zDU25LYPNbs9l0ZVZe2M/BKF1?=
 =?us-ascii?Q?ZGxuJOtUh93BMnd6o2L3l4nWsk4J5rds7KbU5jTFwBgyKiMxPK72agSHSgME?=
 =?us-ascii?Q?whPIyUTloCSymcGlZIfvbW0tFqlDHb8GNMwQTWoK+qGlqH0VzQDHQ0ScXJtL?=
 =?us-ascii?Q?LE7mun2Mpxlc1xPECq2KJaoR2DnB6RkrleJsbK7cgM3DVgA4FvPFGSRP3nTI?=
 =?us-ascii?Q?yag3cDF0O/hKto1Gmnf86m8UBGNXF7ElvDlMkXWwj+biswuXNaAfwB3wtGH9?=
 =?us-ascii?Q?XxKZt4kT2OrNF9Xb88OF0wTczcn0AmJ14qWPs9B0w/KlT6o/rexDBOP6JMej?=
 =?us-ascii?Q?FIJQoia8N2YllQzvz1iVGTkyw5HnvaDcICL55tIJuGob8Xreau4tKGBMRtrC?=
 =?us-ascii?Q?Qc8Xlc5bjfAgK4Bm19npTLAc3zL+OrA5xyqR96lgWOYg5aG6fCP4ee7FXpr9?=
 =?us-ascii?Q?KS+Jzsl5ktDQO2oHOyahxDoBpmWI0yRjQxKZTl1UWth99w7bICuf9NpW5Xii?=
 =?us-ascii?Q?519/P/iZBBxUDomoAl/rfua1XjO4GUMgIsgbiQK0G5wB3QFr+o67Hjgx42+c?=
 =?us-ascii?Q?h95Li/BR09tVl3LQerR6f+oWCb11cmcdIvYmhkntIFXWvBDx2EySIvOVx8m8?=
 =?us-ascii?Q?KWEesRO39qQfC0jeGUx9yJXo/i48qpqvDCahKlR1i/0pNHdS/bh30x9Fw69R?=
 =?us-ascii?Q?SvsCl3UGNMMdbZYQGkaxpuhN/ghwAftSHihT7b44V66BpgGg9scL2jbR/0/a?=
 =?us-ascii?Q?gD3detdQ5HiqePR+hRDc9impboUQ6P3yppAOG2egf63rhglMXSCogo25TdeF?=
 =?us-ascii?Q?oKzTPE4y3iAjV3pWohRZey8x8JhR882UNTJ1JZHvZoEZO4wMWt2gYP8Um+cx?=
 =?us-ascii?Q?QBjtHX8KUregy/cnrHVVSIccyclCWIEy7fAVs69ZnQ88m+G3EgbKqLy5OgXU?=
 =?us-ascii?Q?u3IbFOyIHmbxdE4xqMZwpRXe6K2sSUvVdwD1IEmuYdm4Xvwc/u/0xNRfXfYT?=
 =?us-ascii?Q?+YE1xI7PihNsayq1/CRDP+U2oQTqR02gZPF438bT//KrHeljveqU9IxzXGpR?=
 =?us-ascii?Q?mftx/8wV3HDst/Onlnv7OHZItn5TLD0jdFP1rJL8HVQk8PDYm4xQERjPTpTF?=
 =?us-ascii?Q?6jAP/zGDArBU986FPYYsoNARpMHTvLlqYeQQw81On1VGDJ295tojvEpI8+7a?=
 =?us-ascii?Q?AlfIK6I4sGOcmnuHBiiWk097zHOK9IzASbFeRN+9EjAgCX5I7t4OV347Ib26?=
 =?us-ascii?Q?Vj5O/QqieRevRh+/550B7j2rb0i2GxyDjWdT0vZDmGKY1O55MEsQYW7PwYLS?=
 =?us-ascii?Q?MQxhd4Xn7nNp7t43HnHKhaciE+ZsN3WENLSnF3cCEsj4u8Dz1hOQcfLepLrY?=
 =?us-ascii?Q?1sYQJbfzywmiZvPDlC9D295pWl5qtRISkRsj1N6ekZ3mSS0Gg9k2h184rg1q?=
 =?us-ascii?Q?qhWE2j3fLiJ48FH92pcLiILc4+F/Lq3EPQWMUA5LqOdA3GnVvh/f0ofpDLcM?=
 =?us-ascii?Q?hnSZnCnbD7r7Is+c3Pxh/jScpxXpgyrx668e6Jn+XKtvfeFdA7D1U0OXGVuQ?=
 =?us-ascii?Q?TCq40FM8SLkm+vQQ0IPhHR5c1Kvhm4gEFBwRgrqA?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a06a5e0-67e7-4668-5fc0-08dab29e66cd
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 13:24:22.7689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cmQRiMJCc+UZuXtH9Bjoj7voVvaqgXByob+A1ea0PmVqggkngxFOjavpTF02aVI9RGTYGO0HbfkqKi1y6/Q7HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5248
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On Thu, Oct 20, 2022 at 04:02:24PM +0300, Vladimir Oltean wrote:
> On Tue, Oct 18, 2022 at 06:56:12PM +0200, Hans J. Schultz wrote:
> > @@ -3315,6 +3316,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> >  	struct dsa_port *dp = dsa_slave_to_port(dev);
> >  	bool host_addr = fdb_info->is_local;
> >  	struct dsa_switch *ds = dp->ds;
> > +	u16 fdb_flags = 0;
> >  
> >  	if (ctx && ctx != dp)
> >  		return 0;
> > @@ -3361,6 +3363,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> >  		   orig_dev->name, fdb_info->addr, fdb_info->vid,
> >  		   host_addr ? " as host address" : "");
> >  
> > +	if (fdb_info->locked)
> > +		fdb_flags |= DSA_FDB_FLAG_LOCKED;
> 
> This is the bridge->driver direction. In which of the changes up until
> now/through which mechanism will the bridge emit a
> SWITCHDEV_FDB_ADD_TO_DEVICE with fdb_info->locked = true?

I believe it can happen in the following call chain:

br_handle_frame_finish
   br_fdb_update // p->flags & BR_PORT_MAB
       fdb_notify
           br_switchdev_fdb_notify

This can happen with Spectrum when a packet ingresses via a locked port
and incurs an FDB miss in hardware. The packet will be trapped and
injected to the Rx path where it should invoke the above call chain.

> Don't the other switchdev drivers except DSA (search for SWITCHDEV_FDB_EVENT_TO_DEVICE
> in the drivers/ folder) need to handle this new flag too, even if to reject it?

Yes, agree. At least with mlxsw it is not a big deal right now because
it ignores entries with !BR_FDB_ADDED_BY_USER and locked entries are
always like that, but it would be good to make it more explicit.

> 
> When other drivers will want to look at fdb_info->locked, they'll have
> the surprise that it's impossible to maintain backwards compatibility,
> because they didn't use to treat the flag at all in the past (so either
> locked or unlocked, they did the same thing).
> 
> > +
> >  	INIT_WORK(&switchdev_work->work, dsa_slave_switchdev_event_work);
> >  	switchdev_work->event = event;
> >  	switchdev_work->dev = dev;
> > @@ -3369,6 +3374,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> >  	ether_addr_copy(switchdev_work->addr, fdb_info->addr);
> >  	switchdev_work->vid = fdb_info->vid;
> >  	switchdev_work->host_addr = host_addr;
> > +	switchdev_work->fdb_flags = fdb_flags;
