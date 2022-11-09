Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 697EF62254A
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 09:26:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BA0E60E82;
	Wed,  9 Nov 2022 08:26:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BA0E60E82
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=ZE2w6Fvx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpSMsKPds4FP; Wed,  9 Nov 2022 08:26:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id ACBB560E83;
	Wed,  9 Nov 2022 08:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACBB560E83
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E6C0C0077;
	Wed,  9 Nov 2022 08:26:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21F7CC002D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 08:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A14A6607F1
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 08:26:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A14A6607F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DOdtC-K_TD5p for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 08:26:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43F80606CB
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2047.outbound.protection.outlook.com [40.107.93.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43F80606CB
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 08:26:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDfiTuVn0aTBSdXI3wNT9t/hD9+8Va8jk5GCcvv/HBB0kb/eZ/v0MM9wuEAhh3cg2RqbTmMvUujTSVGJytDrYIlXaJa2wnAbVGe4nBXbzwZM8Me18V7G3lz0BvL4UWaXxn5lMadbAUAIRLzqxgjfTMZFexiGBXg93O+1jogfuzPK5kTnI96VdUbT4ATgGNHkoqZ1QmRr/T33nwneDXckFQfwzR9wxwENbqKOwY9AdWCIA7TCVdP2YXSbfUm6PnSZgZUlpY77rq1z/3sr52DCaYUg+4SlaHiE5R2RuSYcDXNgm87sp7xDqXZ6li6h9MbxkcHKmquuUSZpBqW6+v5lKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BJYNp6B4RIkw2Wy5U9y/S7bx/F45jNEyySKuYSJBQiE=;
 b=dmmLI2aqUk2X1cCTGvre2yP+Wv4bsQyV7SYx1H9wYKUsUXZIyaGjL4ntnAEnrcAVFAzGZATj9/LYsKTMkf7KMd1YYGsPZuNIL+YCO5+YCX7mJ+QrA1ljQbQYVTjH2rpmSQEmQ87+ffTAGh7VeSTGbktzobP+54NZ3OyV51g5XI4YbXKenoSKap5G0McjP5cw+3MAKC+kEPg2baEOWsFbTlW42CTORcXlHVBDe2+ZJ3RxcRXRlBqzEyoduiq9ZB4uZREDdm3YZU4F3aTpPnUexj2jgAfP2kpBXq+GwrEtp7TfG8r5tmlOMzjQn37ZJgP6wU/NZwLSb/nt1IV3UsAvJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BJYNp6B4RIkw2Wy5U9y/S7bx/F45jNEyySKuYSJBQiE=;
 b=ZE2w6FvxcA1h8W2BLsvX3XfnvB5z21Mwgi55K0PFztVTACMfDy/AX5Dae5zIW4bXmzBcL7sBrEfblfmTF9lqtn+OJwTq7GYfcc+wCGwAPHDP3zYEqXzEAgDyz38HFUnyLCTQIdHBGBbPejLfKTr4iF1RmvQ63AbBmWxOUs71WzNwYwJzdH71/bHGQLpsKhH2k7LaBeJtC/9/884oHPDBU4joC2xRdv+qC92ozm3yomXl+2XRj2NgBmTnU4XlE0I1eNz2ViQE/QCyjMwdq1dYtSS8W/vOuFAdJJKBIwdn0wp/OxkfCpmDUaRThkM0Ck0xLycRZvdPbNhLiadQHLmIKw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB7599.namprd12.prod.outlook.com (2603:10b6:8:109::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Wed, 9 Nov
 2022 08:26:34 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::3409:6c36:1a7f:846e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::3409:6c36:1a7f:846e%4]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 08:26:33 +0000
Date: Wed, 9 Nov 2022 10:26:29 +0200
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y2tkNa7nnAdeD5Nc@shredder>
References: <cover.1667902754.git.petrm@nvidia.com>
 <f433543efdb610ef5a6aba9ac52b4783ff137a13.1667902754.git.petrm@nvidia.com>
 <20221108145929.qmu2gvd5vvgvasyy@skbuf>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221108145929.qmu2gvd5vvgvasyy@skbuf>
X-ClientProxiedBy: FR3P281CA0088.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::16) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB7599:EE_
X-MS-Office365-Filtering-Correlation-Id: 91a9c0ed-9dd8-47a7-90f5-08dac22c1c60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 48DDH1MoFaIpQ+xtrBZQ34MNpTltSVxCXVPnJzcRgsWQcKeyvuVGJKyiXP/9NJLNC8FYB+TfrV+5b0Ljc285jwhSuYdNz+/0K64uSRKdr1YemdUsC0ZWrUVTmHgXaHUR4jfH3g8v0f9xa9vbQmUNRwTu2Ad912MDH19DbUBQl1R8jlWfhoy8y7IW9Mg2FVGGiGEEUMvhMi7kYzhC/om1V5UKZ5l0gqG+gqwRGkINfmHhJ4Eyo9NeS8CSXBS6w/RBCNTyUx4H/KhrvrFTzRJMf7rXNTmmqpzsF0dEHKtSl25Q3UQs1a0TTcWLZ1Cipq74xVQsmNBde4tYfY5jBPhkxiorxyqUiVJqRKXefKsA06i8VOLaaHC0cNEL15b95XDwLmpp2MzFr9Q5j8j4n1HKicX8dNNM2mw4BJ5wijJmjJuUQu++pQ4GWvB4SoXBqcPxDSvbz6+ncf27DVZAX0Qi+pphF+z7LEUkFZ2in5tHQY3/o7oIpgr/ljlEnEEIod/9CPeh/ATk9muTvXtbuOlOnWlCFJ5iF9V5xTW1W7/u/rSxnzOqP2ikH75s+z3vzdM+t0YgZK/1logWsno6g+MKCLjm/GyJkwWuHGkTMZq27ECy4OmTQVKvC6Hc066EtZ2VP+xLpMjp1+eywm42etBIF/8k4QlA1ROAAK7qYsBzvf8TCrQCGDguz1uu0aLlbSpnCaZdOQ0wudx2A535h5omhg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(451199015)(86362001)(33716001)(8676002)(107886003)(6916009)(316002)(66946007)(6506007)(83380400001)(66476007)(41300700001)(54906003)(9686003)(6512007)(26005)(6666004)(66556008)(6486002)(478600001)(38100700002)(4326008)(2906002)(4744005)(5660300002)(8936002)(7416002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GNWWxYtGQz1sg39oOaAKKxCWd+CqZmrDqqZ+zf2Bbk3iJh6/YtBvdzznF7BM?=
 =?us-ascii?Q?Ew+zcJu3JfEC40IR0tg7AKNe0zmhuT4mmrx0/sO/Lbo3kOvLN8anvRM4kmXy?=
 =?us-ascii?Q?XVz3O3xnp8Epjn7NXPY2/5jpgoiOAj87pjGgtdaQiyoYB/tkaIIrWPAkxMvI?=
 =?us-ascii?Q?nsE0nx2etv0PyQRj+BMUDnWJaIVEZgHANaQtE7Y1cha1zJk9oyFgmz9LRorB?=
 =?us-ascii?Q?h2fKd5EOJXZGqRulMwDrbKGHzPs0EqwZq2Ins1rY9FWgNmIyLji8/xu3GwV6?=
 =?us-ascii?Q?gWkWCe6E6QJmmlVRrAzOF9ET9lk5drifU5JBnKyjL8rjNBZ3kLhjRE8IeTl1?=
 =?us-ascii?Q?NeBR0p9bMd2QYyIPULJLbLLaUDuLox85Nccf/pXj0BAS7wKJ4OX9FXMikO0S?=
 =?us-ascii?Q?KLe8XhPh/SjWk1ALa75REJO5+j9uBnm7mSOnt6EV6wNdqcKbIAFrFKNUAz1M?=
 =?us-ascii?Q?Ul4dlaNocr+CTrfdoi4QE+Z4W3nA0gozUBZrulD/1jDUMv2gpMHmK4an5B4p?=
 =?us-ascii?Q?Kd2zomE6UiOuBQOnlVd73cjLayu9wkcyQNK0HJT/PQihvaM6a4WmGgd0i608?=
 =?us-ascii?Q?HO4Vz9ErlKr8vKd2zn0I1akJltWgGyoIrsZQ+3jXv8/RoGD4gRSSYJbRcu0g?=
 =?us-ascii?Q?ldbN79RLZadSr+3Bze5v7cnA6xPHGbzzRrESccFv8HWvmIxFHEndTnX0RXJ6?=
 =?us-ascii?Q?+egGScEsnLTd2QmofuKn4kjsjvbwTKYshm6OCBZUnY5YMgcWJ4zxxvZ7vH7h?=
 =?us-ascii?Q?lF77iPDP67Pz+LTR8+3aePEV5l28x2+NNu9E/4KyfCuPm+Cv6YUIvHEnOsXo?=
 =?us-ascii?Q?bf3fTqI+rk8OyYAAi6Z5+gQISMjXS4w8K9dMpWpveA7Ip+hLJ6oP2pAzsyLe?=
 =?us-ascii?Q?OTIrmviEWLntIBErkUbiqZlyFNgR4OKtxDWf7CmCSKb3TgP0tjxptWRCHNIJ?=
 =?us-ascii?Q?Fpn//nYSp1AMaLtpFiMVEVNpFd0aQ5a4rw4zzyGszg2Z5Zk6HKK2Fyzyh7mN?=
 =?us-ascii?Q?qnUWe69gNV+v0lGetTjuqcRcpEqmZgX7VUeDLmePMUM3KFD0qGCtzj4Rs2a8?=
 =?us-ascii?Q?tspHJfBRx98Os3PsDmSWd9hGoRWjjtuojhhnwyCOrNEC4QuAMln0oEFqd1JY?=
 =?us-ascii?Q?jg4sIMwYwCWNu2NWctdysXH1eNLmE8xKncHQGKM6V6inMqrsjYbOnwnmgkaM?=
 =?us-ascii?Q?TAdR0slNtf2UudU/CWy1c2rxMhEByZebbVr2sHlWuLOimd1b59fU/wJ//lfF?=
 =?us-ascii?Q?8pmIftuo1J3+mp6OlhLGeGyunMbdup4g15jNYGfzVm/jbozgtsEVH+vtwtBf?=
 =?us-ascii?Q?nSRKgRbGN4XYubsIt6nLWrZqxFoCLwZ+NV2Ls6xKDu6QPbxbmLH7c5FLCmh+?=
 =?us-ascii?Q?aoOTSJbUurNlgXr3oLdmDz01elrCXH6vRcICglN7eTQmHdo2Rj6rMfVApe/+?=
 =?us-ascii?Q?bu2N+9jATm6RzRkmUAse8hdjU2BwiVzq02Q5j1esSM2K6AO8+hE7dcJlqtDm?=
 =?us-ascii?Q?B0AEpk+QXRmk4ZXdeOOVUFl8HiUlXeOWWJx5VsyS16ZR+eGDFYSiue5qAPeQ?=
 =?us-ascii?Q?jek7C2uhAnaCuJ4Q/GrnWlnO+slOOg3i5CYZ1+So?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91a9c0ed-9dd8-47a7-90f5-08dac22c1c60
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2022 08:26:33.8661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iVILKGMNvGLsQSj/scGY2mWIFZKmPfk73ZDRkvwhigCOVQNIl/xG1iRxOOh889DiR5fhhz/jDE4hyNpZPuycQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7599
Cc: Petr Machata <petrm@nvidia.com>, Ivan Vecera <ivecera@redhat.com>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Jiri Pirko <jiri@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 11/15] mlxsw: spectrum_switchdev: Add
 locked bridge port support
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

On Tue, Nov 08, 2022 at 04:59:29PM +0200, Vladimir Oltean wrote:
> Can't really figure out from the patch, sorry. Port security works with
> LAG offload?

Yes. It's just that port security needs to be enabled on each of the
member ports. FDB entries that point to a LAG are programmed with a
lag_id. When a packet is received from a LAG the hardware will compare
source_lag_id == lag_id instead of rx_local_port == tx_local_port.
