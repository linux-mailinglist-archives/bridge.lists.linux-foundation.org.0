Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 351CB704B2D
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 12:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6059260BEC;
	Tue, 16 May 2023 10:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6059260BEC
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=HqWpCL7x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EsyDL7QpLHJl; Tue, 16 May 2023 10:55:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id F418C60A98;
	Tue, 16 May 2023 10:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F418C60A98
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A234FC008A;
	Tue, 16 May 2023 10:55:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5001EC002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D8C540A55
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:55:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D8C540A55
Authentication-Results: smtp2.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=HqWpCL7x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ZcLZD1azDCj for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 10:55:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60D7C409A6
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03on2061c.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaf::61c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60D7C409A6
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:55:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLTV3eFM5kgf/7AQxUAY/0DI+fW9wTt3JAyCY3YSP3ZHnKsYtwzDy789Oz1ZTu+VUFj0FFDTVAYTF52zXc4ykous2ZRWBQptvJ7C8Q5qMFt+s9lHqmx/cU6k3zGjpsGvwUhqCHGCdBYqRCtNMRZIDQhgeQQHg4uUsMP1FyBUYTbNzB8KCqsajG1DhGl92aCCKiM02ZXFh0lKl+6rqBxmvF+UtJ9BtCr0FDmBVhOfGHKuc8nJWwCZiqx+MKrFU3O2ilMchLk7r1dICtf60539RnhzQaGKjCvT5TIhQzY9ClfvpWQ65RAN3IRW/AA4o7hDAztJhQLZE0YlDHdAlGkVZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2eATHDWfBwliiKsDwyEf6GdLM9NZxOFrZgpWe1cZDo=;
 b=I0NXyMfWhm8IvIUnROuwTTXhkx5MzeWp0RnmwsEpYVtugs9zrHPhlyl0mc6KBAVbxh+uOR9694EiDeeOBLuYCK7MKwhIr0wi4bg6z52omiTB/u7kFJ6YlI1yHNCvuvFKnD4CnJG3i8cbPRCSgNn5CuZMNXrMgOePykPm2XM8aw0qbB42RGkDu2j9Gkb5+rPaJtbSBWD4gzbCekO7h9AOgWtxWYTWRKPFpAPPB4ctf5eiAoFM7eJzPBq7EBkGHujfNwIAxlEYEzYtmC74c5CX9AHT0ym5kRIwGT70UA5yVw6Ngk0hlkhuTMY8WDXtRtnO2qpaTawdSDF4/jJ+BPVB/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q2eATHDWfBwliiKsDwyEf6GdLM9NZxOFrZgpWe1cZDo=;
 b=HqWpCL7x4GGoKPioHC2l5lJueLj0EESgmvqsNWhF7hlkzK36JLRU1spNaYpHh4T2KbCShPfebFQqkEOo9Qiie18iwVnKnkfckzB6Fmw1rGw57DbPpU5hjyZhK6KseKHqCRw4fdt9/gaSuYSfzQLq/3zIQfGjrD9Tg/wZmix5j28=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS1PR04MB9697.eurprd04.prod.outlook.com (2603:10a6:20b:480::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 10:55:13 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%5]) with mapi id 15.20.6387.032; Tue, 16 May 2023
 10:55:13 +0000
Date: Tue, 16 May 2023 13:55:09 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20230516105509.xaalfs77vrlr663u@skbuf>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
 <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
 <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
 <20230516102141.w75yh6pdo53ufjur@skbuf>
 <ce3835d9-c093-cfcb-3687-3a375236cb8f@blackwall.org>
 <20230516104428.i5ou4ogx7gt2x6gq@skbuf>
 <c05b5623-c096-162f-3a2d-db19ca760098@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c05b5623-c096-162f-3a2d-db19ca760098@blackwall.org>
X-ClientProxiedBy: VI1PR09CA0112.eurprd09.prod.outlook.com
 (2603:10a6:803:78::35) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS1PR04MB9697:EE_
X-MS-Office365-Filtering-Correlation-Id: 49676d59-6857-4a19-c261-08db55fc065a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2sX0auUT5ixcF+hAycyQXywXMB3LDWfvR6l7j5cDKSgD/8/BdbTEdlfjYliaAGpcyBDtzlmfiFFNSi8+JQCv7FaNYQRCl4ujoxKjSAmadYQG08Tw0SqSicw9l51LOhlf0f4iOH129VSW3Kp91efgaS5waIrNhn3btu+EvtS3QONZod32D3JeP0jmceK49Ruy8dxJuuYVu2LFSyzBQsWqyPDbvrzWzyfLV2pCyMeCXTXb4NDCDvlseF+mpSAv23MV7ra0knuxG42AopQ5dc4H0NW49NPCvBZlB6in5kBNXaLQ4G4P+wzTqytQLcgfxLLR6xQX1MMfY85y36e+39EVGuXNI/feqNvmazrwepoj4jALPoaAJtbytIkc8fi9pIQcjG4RQ+fOPhCWRz4epfIRFr1ZboGv95es6WWnHekYdOU7uaXlapTjcfnJIhocKJaBIYJ5LMzB9U05sE1yEYLQXkUd9LFb+SCFGNlwzUoXKXNjUGEev+0VH1ZZ0IS06ClqL39bPDzqB3wjfMT3W5/9Fbl9k9h0sR2i+3yNasXjnUaiEXm+zgw8xA8QaK9DczIA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(396003)(376002)(366004)(136003)(39860400002)(346002)(451199021)(478600001)(38100700002)(33716001)(9686003)(83380400001)(26005)(6506007)(1076003)(6512007)(6666004)(6486002)(186003)(316002)(41300700001)(4326008)(86362001)(4744005)(6916009)(66556008)(66946007)(2906002)(66476007)(7416002)(5660300002)(44832011)(8676002)(8936002)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qHpELZXPH+GoNZYxuJWhJSU4mrE8V+GACFoB0AMdroTKg/29NUDvy2UDmIyZ?=
 =?us-ascii?Q?7EfwU9ueJLUBuEvFp/gZcOM38v6dDDh4dHDS5DLTEuOA0PhjahbRj9Yn07qa?=
 =?us-ascii?Q?yNb5mONvKaQGCgYCBFx3J011W3pB7Otv2im6jqj6r9uBdCOT3fF3Bh5aOw8x?=
 =?us-ascii?Q?30XvPTJa44RJWZF+qwzkNbsQkAmDLethgIspfXH8KQKpUdRV/6zpkj+a+762?=
 =?us-ascii?Q?GYldnfnf7ASZD/fndMYMa5xH3Rg3ro/1sKBV3fjjdXt4jNwd5ZBhjBUhAHfw?=
 =?us-ascii?Q?0pZth6on+DxVHZ08FFjV5wYuWC0yqyD6KS9jjiKs7LP81xTj5Ol8yFwnfqS3?=
 =?us-ascii?Q?a4BV70KamYcqniBg7SNnlJXZ/qdEMubH77RZoT2mlGQR8GZsgPay0DlOjKuV?=
 =?us-ascii?Q?GDWFtV03vmXXUg71Msn+SkM/VXTF1y/8bEJmUkY+5nmn15+CAhdlUduJD4aH?=
 =?us-ascii?Q?sirRTLyW4PS2UrXpiuvLzlkr79g1SAcwBtyrjgZGSIKjOpWQy2iDklYYvN+P?=
 =?us-ascii?Q?wEUJA6HmdjWTO7rGwuX4KnUCiq4iRn82ZvygQeF9UFu8v5SKJ4LkjYpfasXL?=
 =?us-ascii?Q?aWubR+hDLMcz22O1otCJ1ApmslP0mzcqwn8Hmz07lBCQ4PB8gN06EyFeWtjf?=
 =?us-ascii?Q?gxWQJOI+PVaVlsLE57u4Di2uzaDFKDYGDxh7lwxMymX6gj+H2Wbetf3JWHvP?=
 =?us-ascii?Q?izZaN4m14z14kytFvuNPXh4EmbguNoBHwQsLdmtCSzGpfhg2AgZYT5leGNd0?=
 =?us-ascii?Q?a/XeVkHr/+XHwy6Fsh7tyC1ubZv5ib8s0cf6Zqmm72U+dmg/hozwdPeSAnoN?=
 =?us-ascii?Q?NBRDpUHYQ2FRfzglD30Z7lBCSsLgRbJKZZlSuBj/frfNriAes6YeUK+9P2yN?=
 =?us-ascii?Q?K9ZDXU6tC7pDp26MYBCy5OQ6OtX/1ljsk8larKMGbObpLVOIydsmSUWZ5udc?=
 =?us-ascii?Q?CuGEwRBO5ZUQ0e8kzX4YtGjFsxqIRfpFqhMn9QaHOt1oBXEmxOimZgGr3KH2?=
 =?us-ascii?Q?jq+ykOT5jcWt2sH5+hXDGN2X65UH9aCaCH0mkkQNO++Vp5BVXSg2J6ZGAMnr?=
 =?us-ascii?Q?4nCuBqfCv8y55eA2Cuwku/2boT4Qm4hiaD5LIvIAzmdBsxvkPCRWWQYtEIvO?=
 =?us-ascii?Q?GR7zGZA139bRuFhKIQjl7cseM6H+g8P7k5904sqL43xGZhv+X+7AUERRe3Z5?=
 =?us-ascii?Q?JbtHx3Fn7mLhwFaDMnzyawdGDhO8fKx/Td5oIbEpXUr6F7gp+ZJej7hwBLic?=
 =?us-ascii?Q?sH0K7dzk690uRcc8vCkhSI0mhcDxZYVimyREErkGON7x0Kw5oAc+byMaFGhM?=
 =?us-ascii?Q?aO/TT4OqjS2psSv9LzWU2zPBdRUNzFgSw+DQS6TfxDL6HLFLOvAdgGCsZb+4?=
 =?us-ascii?Q?yXMZhIgZ8rXeDRXue1iYR2d/5mq20qKLcfU9COTpl021HuL94Q8cfb/Faf+f?=
 =?us-ascii?Q?x2EbCHAKNofszXf6SeklCtKmkLi8PL/lXBbGH/7OMtliAf/lZ/lRPvVWnXMc?=
 =?us-ascii?Q?pxnvh0qCAwj3Hvt7K/IK0NEQygxBTTbJ0UCkjnwAs9NxpTFJx3FyliM7ogpx?=
 =?us-ascii?Q?aD8c+VuzZh7FnsaVCxJGxaUtIekWOBUN0gKkORhWLu7Wj2Ua8qo/X1CSYjz6?=
 =?us-ascii?Q?Dw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49676d59-6857-4a19-c261-08db55fc065a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 10:55:13.1320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /yFb3Tizt8PiHaxPR8e6ZnlRGT+ui3AodmxOR0meg4u4Pn3RLR5R2gLrX3HChtiO1x+RJjD7rFtaUmkp3eaujQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9697
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

On Tue, May 16, 2023 at 01:47:47PM +0300, Nikolay Aleksandrov wrote:
> Having the current count is just a helper, if you have a high limit dumping the table
> and counting might take awhile. Thanks for the feedback, then we'll polish and move
> on with the set for a global limit.

Ok, but to be useful, the current count will have to be directly
comparable to the limit, I guess. So the current count will also be for
dynamically learned entries? Or is the plan to enforce the global limit
for any kind of FDB entries?
