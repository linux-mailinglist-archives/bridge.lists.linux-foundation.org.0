Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720EC6CC83D
	for <lists.bridge@lfdr.de>; Tue, 28 Mar 2023 18:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1F244063E;
	Tue, 28 Mar 2023 16:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1F244063E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=PvUAWzfl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uZmM4KqHnA0e; Tue, 28 Mar 2023 16:40:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2DE214058B;
	Tue, 28 Mar 2023 16:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DE214058B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8247C007E;
	Tue, 28 Mar 2023 16:40:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EDE3BC002F
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 16:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC0D64180F
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 16:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC0D64180F
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=PvUAWzfl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JoSoqpnT6vFE for <bridge@lists.linux-foundation.org>;
 Tue, 28 Mar 2023 16:40:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF1A40978
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20627.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::627])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BF1A40978
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 16:40:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ijjq0m5JNHDKFNUGYmmeNJUPAVrYybndnqXLz+9Z2BDyQHkjml6plh8g0dOVLGNxqx88h0B2CmyXOMiy9pBQ8g934zBOL+9ZpcKCvjGeFxJaWnlHdB7xleUSc/LGducgluQ4CjP1pRBrchNGrZ7bueqZn1HDldgx4ltWbi6+ngaqxPPQg3X7Y1aUsOsFVuAnsnPB1MfTf6pdTfsLRkox5GJqbWLEEEuCFac4guRYuObdGuU9PJo3aYCIRnWXEtsNb3v8b/vV73PM5XAJjurmaS3LMeDDpO+e9Sq26sq2MyfVtZ7jlGlD7SF8vfCtaBBUO58Hvdi0q8sE5BooEMzXig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDev4h0NnBgmjI2bEQrPsQycTtB9XDfUzzJHeIjxhN0=;
 b=VsDtUusT0JMNKzXDDGF5oeibLRN+GzroLgilAKzT+yAp336Tt6lgYeYt91yd0bH2VkytuH9EeGYtZhdKzDpTX2sm4MfiLTEoJMMs4UyIFuHQBB9G2zBwYPM/RfPuUDijWy7eKCjYtnR4oTLynpo6JBYNletUH+S1VIOOHCAVVfrKuYhq1E7QaErZgT6bDe9Wsl0cXYOsLxnGF6UgAl5Fo5+B/tA1Rr2NQ9uWhP0kAXSKo6ivpEbF0u+BXD77mDVHyS/VWXO8pJhQkSof0UOz2+wCaYLynVRvZNpHMoI+h0U+/Trv+XLoL7p23jrDosSzaaUWQpi2mYTYMxJQPEL0Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KDev4h0NnBgmjI2bEQrPsQycTtB9XDfUzzJHeIjxhN0=;
 b=PvUAWzflhGE/Ww2Z4xoPfINUG51Z518rHsfJfj2O6mLRmrjddumPQnHh2yg6Zoj1reTGQx3TVvVNclWMwsCn45CJ+S7FS92LxP1VLgw/B5O2S5pxlHQzPvUwMQlobVqqqrKZ4BNraO6xS3YqbMR8kYJcsj2Q8JZP+c8nwTH5lahOReW9dDqzhjLL4MNzxOtJCQP1L7Ho/u5fkmNzAsM1uvGkclKquAWW5iQk3qNyswA52ZiHMfPB60CU1cE4nZSoQOhTZLibm4Dgi3jCqVKoEtLNtUi4olmHTcz4wnaj2kwCJzNlK2VOLgkENZf7JHEo8KQh6Q+E4qRxBNewztYTnA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SJ2PR12MB8831.namprd12.prod.outlook.com (2603:10b6:a03:4d0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Tue, 28 Mar
 2023 16:40:20 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3%5]) with mapi id 15.20.6178.038; Tue, 28 Mar 2023
 16:40:20 +0000
Date: Tue, 28 Mar 2023 19:40:13 +0300
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <ZCMYbRqd+qZaiHfu@shredder>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87a5zzh65p.fsf@kapio-technology.com>
X-ClientProxiedBy: VI1PR04CA0079.eurprd04.prod.outlook.com
 (2603:10a6:803:64::14) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SJ2PR12MB8831:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f8aff5b-17e8-45b9-20f5-08db2fab1e64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ih+joBs4TqRI9LZRyeiHVGEbFP6wzpzxG0RofM9357kUYtmpGxI8tp4JykpITIDD4DX7z0A8Auyp81+k0ziDU5p/ghwxeNtP0BVtFFaqmIuiIwd0xnTLprmpy1MjsdwNyU2HX2UopVKVBn/9xNvrNwiOFCJ8Nct2PBCil0206RwDuh1Y5+z2vVpagIdNHmrxjXo1rNLewQu3+x7eEHy4tfBlUbmHzYvWtDN7RfZIS1MT8EBKUfZyuwmurQkMwR8MAnr7zDotT0Uj/FSOeo0914pJ4ICjl3EbkA4mWJ1uK7TVTR+Ww0IyYd6UzKQPSQ824NuDrBpDFRqbPm+q7M2zY19mTaA9GxoPdbFUcEB9hqkODqN3zVhEG7l1GGDsHDZHsS5XB29pr5QBmSZUeibNsW8Ftc9OeBNHJy3y8SsSnANj1tXF+PrfaD0EXCnnYFiV7FXurvGSJOdMViuQyEnnfXMfYVPb1Im9mk4IhoubI74AFS82xISiP6jM1FBjYTAXAJJYjhMesqfed+U8X2tLxbq3+TApBuNzkPLGSX698nRZxtSHcsLlLBIbU8Mx37Z+oH2h7O4WzHRWqUp1F73ZcwPQ4u2diHO3zbmzw8NzboQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(451199021)(86362001)(316002)(54906003)(4326008)(66946007)(66556008)(6916009)(66476007)(8676002)(6666004)(478600001)(6486002)(41300700001)(33716001)(8936002)(5660300002)(7416002)(7406005)(2906002)(38100700002)(53546011)(6512007)(26005)(9686003)(6506007)(186003)(83380400001)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lzVoeIUBOrhQrG89RV224Ad5e3602UjhD7evqqKJ9WjHge+p1QBxnQ9yfIBm?=
 =?us-ascii?Q?XHyCsiw5mXnUTuCYVbHhlVY0lc0AMw5kJliQUT2LHwn1VGcPvb7vt0LMFukR?=
 =?us-ascii?Q?7g1nlV+MqpbuJ5jCVf0oyfXxG/3IH3DONjCrpQJ3XdBNYv5oYzBJCbIegmYh?=
 =?us-ascii?Q?IRDTL25S10NYoOTE7WXG71L6e6j9JQdrReWw51UHatuAnszIhkALFRnbAOG/?=
 =?us-ascii?Q?+DN1Dz3VOgYWSm/6i1sbVJmg7ZHPs7LKnyxbSRvAgMjCXbDOAE0mWDoXaisg?=
 =?us-ascii?Q?yvGpbBPvbGbrcEt32uG9MJO1KwyNj4aIexLvxp3LtPq24l/95oA5UYnumpY7?=
 =?us-ascii?Q?sck5JeHJfaVypZRCOuU2w6uwyyA32I6tYGyQgp8K1ZnNKhlTH/sHzI6C60Zy?=
 =?us-ascii?Q?iBbxtke0FWwZUTlZXQ43rBDJdDU5dvDO16R7z9SYn2/zxgKjS8UUuHfs+buz?=
 =?us-ascii?Q?6BvNEL4gVwauhKFmwgYnnNy1mKowytZiFmjZUNQy9XAVPhlx0sWhd1heDXhf?=
 =?us-ascii?Q?Te+SZwOzcreyWWYuFU7uFhIE3ybdHcnVyIpQrQgVJnzm6vzB++x0Gk6WS0ho?=
 =?us-ascii?Q?EKlHX4OCg9yV9odn9J4BXjYEyMHP6oeJFPiQ7mM3MX4tvWuEtRDoxlmBqznT?=
 =?us-ascii?Q?9lG8CwHRgR7OIsegHSTz96YvHpbK7UvAMaR0NQ76iC8v6oXd2QW74/yPhbet?=
 =?us-ascii?Q?HNLCIzFSW5meOAlfmrfchqMqjkuVE4B6lFs6xrA1A+EyhtFqpgyK1LlZe8K+?=
 =?us-ascii?Q?EwWLjmEIsE3DYTlHVZVcJKtKAWGcXrUZe+N5ibea9XEA4iGf5AnsV4okZBAQ?=
 =?us-ascii?Q?8+tfUL3XO5ehkMVHPaV9l6oZA5IbBfogXovSHVy0uV/Cl7if8zMVNlfepS+q?=
 =?us-ascii?Q?25sD5svyd0ZAwLBjYSKEmg6DRv9ZuSQUOLbnEkWTv/01N0Hlv3cSfYq5J5fC?=
 =?us-ascii?Q?H4T0DmTFq6RBIoOxFmrQUlUsJ6qsEGB3n6q8X5JGdijqTOFPqXWy1OL+7mCa?=
 =?us-ascii?Q?CnXvNhbua0VX6EJVal5NegVqhXCgVIEBV4reyN8zxJomNqwB9cYuAqLoCPqQ?=
 =?us-ascii?Q?lPwxQk9KdIQ287Du520BbZKMdW4IMbk0Vz3SJZV+PSVUL8rIA9Y2m1amTIJ5?=
 =?us-ascii?Q?1jqqm2KtLaIGBg8fdiCANX0AH42CrZh4xGy3MbhC4ElOEjs/xr1KcMFvL2O0?=
 =?us-ascii?Q?42aAkIJEpYAtAG8DWacm+RHhGmSbNJoMDjkrvWrKbZftsqEfZbmLfO/YglKu?=
 =?us-ascii?Q?+q6T5y0K4KDjGpJPbkzVc8NVChG7kefAUozQpEJWc9z8N7yFdnx3bdvC7fIJ?=
 =?us-ascii?Q?+gHlHlJzgeDv8qL2vt9C1TgUuN/TjSNUCGyUrkVG5k7Djacgg0ooDbdrY9Zv?=
 =?us-ascii?Q?xowZr+4wU7KBdJV+QyGbKksF15pXuZDPtgDvBoFCc3gE92ak4z98DPcY6K2M?=
 =?us-ascii?Q?iCZc1q3UqCFFB6C/cVO+rlxBe5zlrarEkM8/Lw4ddvoEyzoPlb94k+2oHZ7U?=
 =?us-ascii?Q?1OzeMhQkNlzc3mV1JAaUtSEDO2vVVoX47j6oH7b/JQCFGEd/UCxRnibh8qqz?=
 =?us-ascii?Q?NwSbTKJ4SbEzZGJgwd6uih/BLcI85naFDJNzM83a?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8aff5b-17e8-45b9-20f5-08db2fab1e64
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2023 16:40:20.3379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jvItlc5wiUQprbBkmyPtHPO5okEzmoN6qPCC1eWrqaZzl6rjRHmWpLJY3HYRzgy/lFFENMfVmuyP1sOMRvpi9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8831
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On Sun, Mar 26, 2023 at 05:41:06PM +0200, Hans Schultz wrote:
> On Mon, Mar 20, 2023 at 10:44, Ido Schimmel <idosch@nvidia.com> wrote:
> >> +	$MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
> >> +		-a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
> >> +	tc_check_packets "dev $swp2 egress" 1 1
> >> +	check_fail $? "Dynamic FDB entry did not age out"
> >
> > Shouldn't this be check_err()? After the FDB entry was aged you want to
> > make sure that packets received via $swp1 with SMAC being $mac are no
> > longer forwarded by the bridge.
> 
> I was thinking that check_fail() will pass when tc_check_packets() does
> not see any packets, thus the test passing here when no packets are forwarded?

What do you mean by "I was *thinking*"? How is it possible that you are
submitting a selftest that you didn't bother running?!

I see you trimmed my earlier question: "Does this actually work?"

I tried it and it passed:

# ./bridge_locked_port.sh                         
TEST: Locked port ipv4                                              [ OK ]
TEST: Locked port ipv6                                              [ OK ]
TEST: Locked port vlan                                              [ OK ]            
TEST: Locked port MAB                                               [ OK ]            
TEST: Locked port MAB roam                                          [ OK ]
TEST: Locked port MAB configuration                                 [ OK ]
TEST: Locked port MAB FDB flush                                     [ OK ]

And I couldn't understand how that's even possible. Then I realized that
the entire test is dead code because the patch is missing this
fundamental hunk:

```
diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
index dbc7017fd45d..5bf6b2aa1098 100755
--- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -9,6 +9,7 @@ ALL_TESTS="
        locked_port_mab_roam
        locked_port_mab_config
        locked_port_mab_flush
+       locked_port_dyn_fdb
 "
 
 NUM_NETIFS=4
```

Which tells me that you didn't even try running it once. Now the test
failed as I expected:

# ./bridge_locked_port.sh                         
TEST: Locked port ipv4                                              [ OK ]
TEST: Locked port ipv6                                              [ OK ]
TEST: Locked port vlan                                              [ OK ]
TEST: Locked port MAB                                               [ OK ]
TEST: Locked port MAB roam                                          [ OK ]
TEST: Locked port MAB configuration                                 [ OK ]            
TEST: Locked port MAB FDB flush                                     [ OK ]
TEST: Locked port dyn FDB                                           [FAIL]            
        Packet not seen on egress after adding dynamic FDB

Fixed by:

```
@@ -336,7 +337,7 @@ locked_port_dyn_fdb()
        tc filter add dev $swp2 egress protocol ip pref 1 handle 1 flower \
                dst_ip 192.0.2.2 ip_proto udp dst_port 12345 action pass
 
-       $MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
+       $MZ $h1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
                -a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
        tc_check_packets "dev $swp2 egress" 1 1
        check_err $? "Packet not seen on egress after adding dynamic FDB"
```

Ran it again and it failed because of the second issue I pointed out:

# ./bridge_locked_port.sh 
TEST: Locked port ipv4                                              [ OK ]
TEST: Locked port ipv6                                              [ OK ]
TEST: Locked port vlan                                              [ OK ]
TEST: Locked port MAB                                               [ OK ]
TEST: Locked port MAB roam                                          [ OK ]
TEST: Locked port MAB configuration                                 [ OK ]
TEST: Locked port MAB FDB flush                                     [ OK ]
TEST: Locked port dyn FDB                                           [FAIL]
        Dynamic FDB entry did not age out                                             

Fixed by:

```
@@ -346,7 +347,7 @@ locked_port_dyn_fdb()
        $MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
                -a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
        tc_check_packets "dev $swp2 egress" 1 1
-       check_fail $? "Dynamic FDB entry did not age out"
+       check_err $? "Dynamic FDB entry did not age out"
 
        ip link set dev br0 type bridge ageing_time $ageing_time
        bridge link set dev $swp1 learning off locked off
```

# ./bridge_locked_port.sh 
TEST: Locked port ipv4                                              [ OK ]
TEST: Locked port ipv6                                              [ OK ]
TEST: Locked port vlan                                              [ OK ]
TEST: Locked port MAB                                               [ OK ]
TEST: Locked port MAB roam                                          [ OK ]
TEST: Locked port MAB configuration                                 [ OK ]
TEST: Locked port MAB FDB flush                                     [ OK ]
TEST: Locked port dyn FDB                                           [ OK ]

Sigh
