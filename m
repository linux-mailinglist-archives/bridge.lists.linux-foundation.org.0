Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 940D5609189
	for <lists.bridge@lfdr.de>; Sun, 23 Oct 2022 08:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8159A40298;
	Sun, 23 Oct 2022 06:53:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8159A40298
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=O87urIu0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DvRtQc6G9VNY; Sun, 23 Oct 2022 06:53:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 158E540259;
	Sun, 23 Oct 2022 06:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 158E540259
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8862AC0078;
	Sun, 23 Oct 2022 06:53:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 048C0C002D
 for <bridge@lists.linux-foundation.org>; Sun, 23 Oct 2022 06:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0A2281A1C
 for <bridge@lists.linux-foundation.org>; Sun, 23 Oct 2022 06:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0A2281A1C
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=O87urIu0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X18x6rlIUD2T for <bridge@lists.linux-foundation.org>;
 Sun, 23 Oct 2022 06:53:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30F3481992
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30F3481992
 for <bridge@lists.linux-foundation.org>; Sun, 23 Oct 2022 06:53:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FeosdJJUb0JuCFSRS4JePzRwqeoQulktESq2VDh4ivg6lS3z3HoH+PNbi18ODGODdYK1qof9/A9JzYd7PkGKN0lklFNAhqKRLOhvG90mGhrQz30zT1k0EicwkxF05a7Nsin2hbgrJOO6EPn81juWp3qbTcVEC8OOKoZTft/AMtDSTP8FlQ7Z7EMzGhpiq5ao3h0hi5BmGbJxEiENqN6X722I/6qzUPBX8YFQL5W2g6A6uV0xcknq8QMYq5JEjLUMrNo5Y7YppEiDGGSMRoA2fPvqbj34SFxeT5VFVonBnc9peWABUD9q4GVx8pKcEYdByhKXFugJTfd0thw79oN/hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kgkDohZ0nafHK3GXt9H+hoBpyjI6eM+OL0s3t8zTxNg=;
 b=gQ8Y3je6/lFuBv5LZ4c3rJTxVr/9ygd+lHtCEiT9BAEbfdKMS/H8RNajK49Vortnww8QnvpBiDt7mAzLc/qpP0h99s8UJls9a9OfQ+L3Od3BmqlDBFbhyWmdudzhQg1cFq01z/wDi1tKqJLvcBvrR4TIuxKlgfIrc3wKpWCpSJCAYpQaSjc2P3MPB+3LI48TutDQMsLujMVjoKcCm8vyKZS3yau8/NSBvgukI/t42QJTWUmSMuPxo5YfyTiYOEqgJBXX0U9kvJXwzfal/iNJ1r3qEo/dTSzoO0D2iwILYyhZQxZGGD34AG/XZhCc7FjQLmJs4TfuXrR9j1eEHzDgrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgkDohZ0nafHK3GXt9H+hoBpyjI6eM+OL0s3t8zTxNg=;
 b=O87urIu0OD9N6iqYTJL0pe6Bz2BuX74Pyv1VvVeudAnEtbk/q11TgwWEAoHp8TVA+RCgz2cif2wcvHcjr74UPaZlUY439sVCmgMYt133aQizaA0SW5tbyYeCHD5lf++2eWmaazRfJKY03TIsdtJkogVspCd9Dj2Jft6mqRnl0t4XfiW1ih7RQRQT1Ml9WLXedf2SDvbcD+3Xvgwwrk+4NJB0M3TCQMgXOzVDw4+Q+7z4vKDEZ2LkmuU0YcIXL8+eTnZANa419oVKepQ6rUfUUMSFuwnGjEbbAFLq7BwCVtu+nd3KObVN6xma86SzzVqMG78WknJprByS4o4b2hckeg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY5PR12MB6273.namprd12.prod.outlook.com (2603:10b6:930:22::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Sun, 23 Oct
 2022 06:53:15 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 06:53:15 +0000
Date: Sun, 23 Oct 2022 09:53:09 +0300
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y1Tk1eTlLI6ue8IA@shredder>
References: <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf> <Y1P0/gYdvrk+W866@shredder>
 <20221022144951.v2twgp2lcnhnbhrv@skbuf>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221022144951.v2twgp2lcnhnbhrv@skbuf>
X-ClientProxiedBy: FR0P281CA0115.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::14) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY5PR12MB6273:EE_
X-MS-Office365-Filtering-Correlation-Id: 06bf7512-a81d-4ca4-0259-08dab4c3420b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P2s5VdPZBKPE+9MuFac5N0B5/uDO0ggbQhUQsGobAedomuM4mshn6fhqEjSP+ocOxJekeQ7dNn3skSPvjjHUd/BzYMTNxoQZ+hMTFwrVukaevISNSJYsqFN61/HTzuhsedEP02LU+f5YjZhg/p/Mu+ub+ssTUZzIVe2yOgpmToCbTZPMgpftuaOaSy7d4iyWq76NDmqJ7FaQqWbKlrTS7ywlBEYC3ADUczD1tQDWUA9vQXFVn+jsJFlLJz/UwEoKIUGdbWAJ4QbjwlRtvzr5jO3RRpxF30AZcgqZ9tJg5sNcjacPzoTFedFtrhUJrYS7ujO/s614iWTgYKfwP2PXSm8GvcrlEBxKAQNLSOh6gP/4TYzaA/THDSoValOhpBqqo/g40gBDy29LbmlZpCF/REVo5n931pDGpUG8Ysg6HsD0WQQV5i13cOCvGPTEzYwEt7LnUHEWGhZRXGcBNpAUiS3w+KX1lwhp8Ye2yFdbmJnWsp/t6bBBrBKGsmA1pBWFnU4ZNkcniy6PEw0o3IEcyE5dwdM8fduQVRXdK4syeniJ7RR+fdoQIf809Ubxgw9KC1SoQoD9gh87ZAX8dFKbhEFO3IGRoUn5b/itgtDDaHNVshlBSOHbSw5kLeq0wjssfHanI12cQ8QvrynAQN0gfD7sXdMOgaPtb+DOwrqbGC9Ekj7OHOwxSqgfCNmg/6OfHRaI6sGSsnW3gGKU5Y5Z1tzw58lbPni/cZXiI+V6VNzhbBEXuXn5uq9eqGCRJvFL4wn2p6unNiqtY/bSiVTdp8uZvbmD6Ow5RVKeuD3xcYRQFnUv3FW5ziphEhir2YXSxdHEuuP38z9dvcb5rFaFng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(38100700002)(86362001)(2906002)(186003)(83380400001)(6666004)(6506007)(6486002)(966005)(26005)(6512007)(9686003)(316002)(6916009)(54906003)(66946007)(66476007)(66556008)(4326008)(8676002)(5660300002)(33716001)(8936002)(41300700001)(7416002)(7406005)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AoefoeGVFYlYReLrOOSeQyzJithxqa8+F+zlKShZTmZqVP5FnJHHTsnA3efr?=
 =?us-ascii?Q?9NQBKZ68LKyoXlMomb2NvUOT6KxuP0oTVWvY8eiJvMB0QaXtI81yg0RXRaVB?=
 =?us-ascii?Q?1YJsm6xuOxgj01WYvcV2q2z2CBXGIN75wRhzeb4J8uxN+m0KjlsAFxni3VpS?=
 =?us-ascii?Q?SHMeTuqfCFdB/1cTUNYu5Qc16W9fdfd9j4V4qM7ZUCoh9TbS0nrs0FQLU5Ai?=
 =?us-ascii?Q?w24BeKH+WmJAmC90LHpg3PMzOnog3aHm7wOhBkm1jxAXuw9YZcEUAgpPujNd?=
 =?us-ascii?Q?1kMaBA8K7v2ma95ZXGc4g032MP0kvjMyR1KJxv7DKK1dfuMhfwAr4o+Bofoc?=
 =?us-ascii?Q?u+wJKxdYgafdIklF92/ItLarLQdgd0h8oZFqQ7vDjtHWyuAvNVMpGZXVgp/K?=
 =?us-ascii?Q?KUyQEru7O8p4QWXH3kRBgzMoo8XHtXpmzv8IfYJBn2LAORjyob8wq5s/eaDd?=
 =?us-ascii?Q?KgWyEH9xm753PnXoyOeTaCkoXxCC9Zc4o2QBX9v56Yb7PrDPmyoWk+ty8GpW?=
 =?us-ascii?Q?g967pmrs6HqxDZJUSS9cen+YjI3gA+MRwiQOwizjm3db7YW31Wwc/NQ8mr++?=
 =?us-ascii?Q?cvGdF3CjNBLMrvgnF467KlgaIlM7Q8GV8RH+d8213hBvBpiwXKslBturNh17?=
 =?us-ascii?Q?bRnsUgG+3HVdim2w9VMRap2+jSc1Vtk0PdgPWY8QNCU4UtDLGP2JHBFNoj0D?=
 =?us-ascii?Q?FYws9C278NA4Gv5+9+g7ZONbiaMIbSMYglBJY23zaAP88E68YkGYuzJxA5TP?=
 =?us-ascii?Q?nY/SKHvzidXyAx4hxVgXywiKflJ29g0uOREqRaWGHwSNBkfnP264Q+78CP6r?=
 =?us-ascii?Q?mmp7qDW8k2zxwh7py//dyZrxGXsduJJvXJEVf7JhxE0GngL4a+76a3dfPWMf?=
 =?us-ascii?Q?kS/Kf25FFkX2MpBIRnuLeDvB1EQOnxNEj8GOBi3Q3EhIwqpeK4+d8TYwtgGx?=
 =?us-ascii?Q?O6qXxL72U5x3ToDRVLdffiAGp3ExHEkSoqIQPy6eCfC0rGPsOES+valRWYua?=
 =?us-ascii?Q?XpEOF8i3LYxOlqSQ/cAalWvwNhKTQ1VjPH/cWNqJFDebnUzaiUjORA3OTJUg?=
 =?us-ascii?Q?1R061PY1gSdyahmYQXuEqhoyjyO5skWJPIGYds1RblHZoJCwoYspXLSBUgWx?=
 =?us-ascii?Q?ttWFMh9s6lFIs0ArmU+TmiV9IIRiqKNLeYAzctsRGDtJ5WKpfrTshi46W0Ww?=
 =?us-ascii?Q?T9tvBa4oc9GkjhaL0m2S/imj8rLLydYPtXNACwK+Gwglo8Q9iGla2GTw6SEH?=
 =?us-ascii?Q?rdNzEQf1HRQC1boflrUnx/C1I+iQPoCNuEqxdvHZu33i4LopQBGI9TrfyBWl?=
 =?us-ascii?Q?Hcljgl8wW0jRd6ZkelIuXBYw1RPSBlZ/Edpq5dxzrOWHNyp4bCuXfMp+7Fqf?=
 =?us-ascii?Q?IuNVxJ74323nJkgDhEYmEK2VJev6DVcZcD5kDUDt2pFK2n8TPeoYyjlmBqUE?=
 =?us-ascii?Q?fGnVoazqkcz5VUPCsUt1rxvwL5m6JmBpQE0inDxTHb5NTR4ySf0wzDu+f2vP?=
 =?us-ascii?Q?jzWivHHNUaH4DrVnZ+oPAo+8zLEXXQ7t4KVVgj85A3fmmHbmWXuU1Sg00nOH?=
 =?us-ascii?Q?EdOsvICWiNKE3h18baatLb6/wLB7LJYJBqP42jMQ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06bf7512-a81d-4ca4-0259-08dab4c3420b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 06:53:14.8329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FWafE4TCU4W21YP5aiavDYkf2wXnVtxMIZvc0ExLLyik15VNnyY9UWy8pwjLZNHSsiAhmFl7X4Q41enRpzzpdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6273
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@kapio-technology.com,
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
 Sean Wang <sean.wang@mediatek.com>,
 Oleksandr Mazur <oleksandr.mazur@plvision.eu>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Sat, Oct 22, 2022 at 05:49:51PM +0300, Vladimir Oltean wrote:
> On Sat, Oct 22, 2022 at 04:49:50PM +0300, Ido Schimmel wrote:
> > In the above scenario, learning does not need to be on for the bridge to
> > populate its FDB, but rather for the bridge to refresh the dynamic FDB
> > entries installed by hostapd. This seems like a valid use case and one
> > needs a good reason to break it in future kernels.
> 
> Before suggesting any alternatives, I'd like to know more details about
> how this will work in practice, because I'm aware of the limitations
> that come with DSA not syncing its hardware FDB with the software bridge.
> 
> So you add a dynamic FDB entry from user space, it gets propagated to
> hardware via SWITCHDEV_FDB_ADD_TO_DEVICE, and from there on, they have
> completely independent ageing timers.
> 
> You'll still suffer interruptions in authorization, if the software FDB
> entry expires because it was never refreshed (which will happen if
> traffic is forwarded autonomously and not seen by software). And at this
> stage, you could just add static FDB entries which you periodically
> delete from user space, since the effect would be equivalent.
> 
> If the mitigation to that is going to involve the extern_learn flag, the
> whole point becomes moot (for mv88e6xxx), since FDB refreshing does not
> happen in the bridge driver in that case (so the learning flag can be
> whatever).

Once a dynamic FDB entry is installed in hardware the software bridge no
longer sees the majority of the traffic that refreshes this entry, which
means we need to prevent the bridge from mindlessly ageing and removing
the entry. I see two options, depending on the capabilities of the
underlying hardware implementation:

1. If the hardware is capable of generating an event that an entry was
aged out, then once the dynamic entry was installed in hardware the
device driver needs to let the bridge driver know that it is no longer
responsible for ageing the entry. This can be done by either marking the
entry as extern_learn or offloaded. The latter is more accurate, but we
need to patch br_fdb_cleanup(). Upon an ageing event, the device driver
will tell the bridge to remove the entry via
SWITCHDEV_FDB_DEL_TO_BRIDGE.

2. If the hardware is unable to generate ageing events, but allows
querying the activity of the entry, then the device driver will need to
emulate the behavior of the first option. This allows us to use the same
interface between the bridge and device driver regardless of the
underlying hardware implementation. My feeling is that most devices fall
in the first category.

> > Regarding learning from link-local frames, this can be mitigated by [2]
> > without adding additional checks in the bridge. I don't know why this
> > bridge option was originally added, but if it wasn't for this use case,
> > then now it has another use case.
> 
> There is still the problem that link-local learning is on by default
> (follows the BR_LEARNING setting of the port). I don't feel exactly
> comfortable with the fact that it's easy for a user to miss this and
> leave the port completely insecure.

I'm willing to patch the man page and add a note near the 'locked'
bridge port option.

> > Regarding MAB, from the above you can see that a pure 802.1X
> > implementation that does not involve MAB can benefit from locked bridge
> > ports with learning enabled. It is therefore not accurate to say that
> > one wants MAB merely by enabling learning on a locked port. Given that
> > MAB is a proprietary extension and much less secure than 802.1X, we can
> > assume that there will be deployments out there that do not use MAB and
> > do not care about notifications regarding locked FDB entries. I
> > therefore think that MAB needs to be enabled by a separate bridge port
> > flag that is rejected unless the bridge port is locked and has learning
> > enabled.
> 
> I had missed the detail that dynamic FDB entries will be refreshed only
> with "learning" on. It makes the picture more complete. Only this is
> said in "man bridge":
> 
>        learning on or learning off
>               Controls whether a given port will learn MAC addresses
>               from received traffic or not. If learning if off, the
>               bridge will end up flooding any traffic for which it has
>               no FDB entry. By default this flag is on.
> 
> Can live with MAB being a separate flag if it comes to that, as long as
> 'learning' will continue to have its own specific meaning, independent
> of it (right now that meaning is subtle and undocumented, but makes sense).

Yes, I agree it is subtle.

> > Regarding hardware offload, I have an idea (needs testing) on how to
> > make mlxsw work in a similar way to mv88e6xxx. That is, does not involve
> > injecting frames that incurred a miss to the Rx path. If you guys want,
> > I'm willing to take a subset of the patches here, improve the commit
> > message, do some small changes and submit them along with an mlxsw
> > implementation. My intention is not to discredit anyone (I will keep the
> > original authorship), but to help push this forward and give another
> > example of hardware offload.
> > 
> > [1] https://github.com/westermo/hostapd/commit/10c584b875a63a9e58b0ad39835282545351c30e#diff-338b6fad34b4bdb015d7d96930974bd96796b754257473b6c91527789656d6ed
> > [2] https://git.kernel.org/pub/scm/network/iproute2/iproute2-next.git/commit/?id=c74a8bc9cf5d6b6c9d8c64d5a80c5740165f315a
> 
> I think it would be very nice if you could do that. As a middle ground
> between mv88e6xxx and mlxsw, I can also try to build a setup on ocelot
> (which should trap frames with MAC SA misses in a similar way to mlxsw,
> but does also not sync its FDB with the bridge, similar to the mv88e6xxx.
> Not sure what to do with dynamic FDB entries).

Will try to post my patches this week.

> If only I would figure out how to configure that hostapd fork (something
> which I never did before).
> 
> Hans, would it be possible to lay out some usage instructions for this fork?

That would be good.
