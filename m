Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF26968AECA
	for <lists.bridge@lfdr.de>; Sun,  5 Feb 2023 09:03:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E296F81FC1;
	Sun,  5 Feb 2023 08:03:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E296F81FC1
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=corigine.onmicrosoft.com header.i=@corigine.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-corigine-onmicrosoft-com header.b=qafPc18d
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEEspVuuu5O1; Sun,  5 Feb 2023 08:03:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1D3EC81FBB;
	Sun,  5 Feb 2023 08:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D3EC81FBB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E3370C0085;
	Sun,  5 Feb 2023 08:03:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC3C3C002B
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 18:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A59E81002
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 18:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A59E81002
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iest4xuTDmjL for <bridge@lists.linux-foundation.org>;
 Tue, 31 Jan 2023 18:56:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 958E881000
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20700.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::700])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 958E881000
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 18:56:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjFoHw0XTsK1on4EUxQxG6jUMnpiJqnjtnXFzp59BpBZ96ck6Z5xo1FEfg/CiUUU+TbW5vYGXEoUSdEsxTBbzWMfDh4OkKDqOFszc2mmNJakM/tpoQysRNoYMiNEDaGn/s+Xbf50Jd0Jup/7xLXQ+76Lq3++wFI+AJRGMXld/uYef820dEMvomzZQ+gzqTHtpEWWQrq7c38WNfHdazlPEy7Mo9MzuwpKUilsWF6pfgy1l0a/cnHSR3KOGGeJzqmZDU8Gbqq/6DujahMuWtlbhY8pczLPSgfcK064DeyZIiXxmNuV/Phf2iVp/GRfMhI7CFCCLkfL0BGihV4sK71y0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHk3pMR+0Uj/ZMILRMhFD+mriNUTFOk1hGqQBC4zbQ0=;
 b=Pu9T6/jm96Qq6L+BHDpX1UUeJfFtdZ7IBo1eIrEV03GUV+mep7yTk5jD5sLx5pss7Ioq1+jwEOcH7rXqHSuXWyAguulnQhnSogQBBjjo+EF7Iojekf/LkviX+3p+alK0nB/SD4FwDYQgoG6kTNLTjs+eCAV9haUY4yuCa2sPXbyAVjhO+wnN13StoUFplsLXF0bgiQp1QVuBQ/sU8FG46kgT3Y10mGfYx/in42y9YIkvqwD91AhPZsNtR4essCetq8o0Hto7AKhgLw6r7wXQgZa0J2EOyYRMtNjaS34P6qCtTttEcSls4N3RMnY7oi5xqfXVugcyLEzeiK6AFiBWwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AHk3pMR+0Uj/ZMILRMhFD+mriNUTFOk1hGqQBC4zbQ0=;
 b=qafPc18dlr39oXm7P0pr1VDY2sX3trHfcDsKcXyWuWyj4Pu3kB7O1n0/cGCtsbx84sp1LjfN4Z+6/PsvktQifayK7EOgfGQBcOdn77UNpynXWWBCR0fk9v5f1d8F6KEwriZlRA47k7V+tOIfZ3rKDBV2+AGaXj57NjYilRZaa0E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SN4PR13MB5775.namprd13.prod.outlook.com (2603:10b6:806:217::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Tue, 31 Jan
 2023 18:56:41 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65%7]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 18:56:41 +0000
Date: Tue, 31 Jan 2023 19:56:30 +0100
From: Simon Horman <simon.horman@corigine.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y9lkXlyXg1d1D0j3@corigine.com>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-6-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130173429.3577450-6-netdev@kapio-technology.com>
X-ClientProxiedBy: AM4PR0302CA0030.eurprd03.prod.outlook.com
 (2603:10a6:205:2::43) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SN4PR13MB5775:EE_
X-MS-Office365-Filtering-Correlation-Id: 0498741e-0211-4ed2-55e9-08db03bce3a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dmkw2G3vXwWdacGJ8UmsCiy8oEMWRq+laNrD0UF3x2Gr56xUxVwKtv7dxVVyzGXDYYoHW0JAbCcdpJ8xsIDIAMwe40hjw+3ZYpDT8/YP0UhBhgVlQC74McuKYQJYL6Z3IOdK7O2MFsFSHhV2RLoqpMO+XrCva6eijwG/ux71Qmqh1eXU/4YfiRgreOxnMTr4zWkumyOQi7OOdmz1KJSnCPvwRsv2ZJE4WwudseN/XGPXdohKdRaMSFBGBIb0MOrrN2LRaIWDhXvUVaLjXvDElgO2q5MXzYDZ1yl3JSDwwYqgoEqKDdlKsbi2v5h366PG6BTk8HaCoWy3zZhp6u5BV4ohIh868l605Bqh4but2jEsx4Cjeg9D5PjUu8TouQu0hsqTT/+KDij4iqcTvHCz3s3e9rK9N/vE5RMArsNiKJ2cgkReXHtoJkLUzBzaLqJd4s0YjpVrsfNGl4l8mnXja0VHLgqXNIIwcY95N6zkD7+IzEObdtJGkTfw8jC+Ey2GlG1o5vZhSCadmp1OxqWyz7C5dJvkwIets6YMgc0v1EqZeLVPi44d2kqSfdi0TeK2o+xtLrLBMXikh4kW4nnZfct6daTuoTC1eHgW+zwoyPf06lqjMIaIRY0n2j4BWMRLb1DeU2uwFWsdH+tv5VzV+BiGiq2uM7fSxLexaZVaKcxDMhRvXjHENYO3tfylcUYO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(366004)(136003)(396003)(39840400004)(346002)(376002)(451199018)(44832011)(7416002)(7406005)(83380400001)(2616005)(38100700002)(86362001)(36756003)(2906002)(186003)(6506007)(6512007)(478600001)(6666004)(8936002)(66476007)(66556008)(6916009)(8676002)(41300700001)(66946007)(4326008)(6486002)(5660300002)(54906003)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?59CTpl4TQV/v720D2tBpKYjSs/4oq31pISbjOsrdQbIXVTbQ34ME/6Szf0fs?=
 =?us-ascii?Q?Ogln8IXnJ5VPlziw1IueeN9rC1aDUw22m97nqz1kz2C6ImYh/YGIWPYCcrgQ?=
 =?us-ascii?Q?6+Yb4Qnp/QcqpFfGK6TcJhls35gfXGT2cs53RY0WmZVFASoA5ut0vxbsydzN?=
 =?us-ascii?Q?+DJngslK8w+lKBdj7skrVdgGaMZHusqywu2mBar5awTuSVw6L6ClJr20XeeC?=
 =?us-ascii?Q?dwk6C8GZCSpT+5dinUeLvws7laXP20vcHThfe9iJ+PNCJApnVAJCukzB4xvZ?=
 =?us-ascii?Q?0X0hBJXVvz075biZDmzKeKsONzVsVTQl7AHHkfNKctISnUwWdNg4iG6WXg1M?=
 =?us-ascii?Q?B2BFKOU3TaIX7dun56/5mLxrFMj9SnLDeLABlapQHnoQ6SLceCgZutuZYr49?=
 =?us-ascii?Q?3GBya/rzTAHEwpgQ1j2a6YYpb+AVyb/NIfUvK1xlTY0jnm6U+ZAphp89Cnwu?=
 =?us-ascii?Q?3RH5OanyxLklXN/FFidqRkLNK5T9/fGZoAXRdhg4B1xrKp2yf1T4E9ZBGyZq?=
 =?us-ascii?Q?307ai39zRd/ZxDAnrklQ6Oe3CHqyG/ZuqR0iTOPkkvvg77zS9X7qxo1Y2XsC?=
 =?us-ascii?Q?tbx1JZldlfoXgDlOZRSFPOKzPt7eJ+QpZ2ETO/ktP0YXcXJx9OnUL3HSUPpg?=
 =?us-ascii?Q?EDJPr2kyeqtdEZxq+1DUCOJx4gwVNTxC8xUU792VhRrPL0ZnZkv1IKr8NkU4?=
 =?us-ascii?Q?i1J9AhG+ps08hd/kjBKD7Qr0YlVJ5dGNCPiXt9s458fT2xyh6peW/c+M9Jly?=
 =?us-ascii?Q?34Vns9lyo4NlHn5P97lJPpjpogAceIz7hhaRH+tIHAoeDF4AGkxW7ZXGYrXW?=
 =?us-ascii?Q?UVZd6jp3dgKjpmqbLb2sHXTFXQOFypelfeqE4vsgdqeYoD//JjL0iz/I2ro8?=
 =?us-ascii?Q?D7DMl4P0HcX+k6C0csQv5dDYjHBf0B/+R68NopJYvqYkZqISSf82s1NQVna/?=
 =?us-ascii?Q?cs0tdn5ZUuUQ9vmmKDiB68Xxl/JOpParMa5Sl98zS4mQoq3p8lM0H4+eQwnh?=
 =?us-ascii?Q?/wCokgva8O1yZoXvhjTgttHK8pGV5BnKTCf58WiHqW/p7wK36n/QUJlXTimW?=
 =?us-ascii?Q?SUn6Oztpdxzmg7EmlA/EWmYMR90efHT+l79kCzMxLCcxY7i1xN92oPc3ZqD4?=
 =?us-ascii?Q?CRjHmfWk2BSalSeZix3Q7lQwyH04GF0IuoOnyYmBXCNCEcAtSHmHV2+xXjwP?=
 =?us-ascii?Q?zlcyo2LivTMtjBnqfvtPnu6zmJ3NLkS14ua8mtPrnb9PuT1SUBECACifqosU?=
 =?us-ascii?Q?y4AyQV3maQ6Ks/3kw0LCDeh7oPvmujqdzp7g8jCXivFuGUcfdpYlMUV62wbH?=
 =?us-ascii?Q?u/1l6NbAbwgJ49XpdtApZy73sEuEExNjMKA0Ju/ltl8sLRPRQ3jfSbXVy7bJ?=
 =?us-ascii?Q?BfeeEgDIC30gPHvmJVljV7chrrbwc1KPNfHTTPNBGJDVEZEoAmCbfhJLXI8B?=
 =?us-ascii?Q?AfV96IH/AgHTVICGueHq8MDTCSNgxxR6zLicXewSVK8gMo+HLCCNTL7Y+1v2?=
 =?us-ascii?Q?VDQpj/VNdasAqi96gQagpl0RyU1GoChkiHmWChXw6IrjxWRpIeVK/H7YK2B4?=
 =?us-ascii?Q?QM0x2eWK4ldj1+979ae/EWNg+ymVIhdsWWKvA3FADF4U5Btu6uzQj1w/O5y4?=
 =?us-ascii?Q?FrSEjKTzj2iFmM/YL/QKkKN2xhwlluS1K1Rw0lSxG2054IMoMKNVwPFf1fBz?=
 =?us-ascii?Q?kklb5Q=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0498741e-0211-4ed2-55e9-08db03bce3a8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 18:56:41.3439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hd6ym8lC5j1YRE9xYmLJPB2pi8VfqXVFfS2iglmlGbwujUo8nXuYScB0sxPGMza8AP8vDLNZ3GUeOEeMuz+iBo9YANCY2+a+2Q7hDfpZA8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR13MB5775
X-Mailman-Approved-At: Sun, 05 Feb 2023 08:03:44 +0000
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 5/5] net: dsa: mv88e6xxx:
 implementation of dynamic ATU entries
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

On Mon, Jan 30, 2023 at 06:34:29PM +0100, Hans J. Schultz wrote:
> For 802.1X or MAB security authed hosts we want to have these hosts authed
> by adding dynamic FDB entries, so that if an authed host goes silent for
> a time period it's FDB entry will be removed and it must reauth when
> wanting to communicate again.
> In the mv88e6xxx offloaded case, we can use the HoldAt1 feature, that
> gives an age out interrupt when the FDB entry is about to age out, so
> that userspace can be notified of the entry being deleted with the help
> of an SWITCHDEV_FDB_DEL_TO_BRIDGE event.
> When adding a dynamic entry the bridge must be informed that the driver
> takes care of the ageing be sending an SWITCHDEV_FDB_OFFLOADED event,
> telling the bridge that this added FDB entry will be handled by the
> driver.
> With this implementation, trace events for age out interrupts are also
> added.
> 
> note: A special case arises with the age out interrupt, as the entry
> state/spid (source port id) value read from the registers will be zero.
> Thus we need to extract the source port from the port vector instead.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  drivers/net/dsa/mv88e6xxx/chip.c        | 18 ++++++--
>  drivers/net/dsa/mv88e6xxx/global1_atu.c | 21 +++++++++
>  drivers/net/dsa/mv88e6xxx/port.c        |  6 ++-
>  drivers/net/dsa/mv88e6xxx/switchdev.c   | 61 +++++++++++++++++++++++++
>  drivers/net/dsa/mv88e6xxx/switchdev.h   |  5 ++
>  drivers/net/dsa/mv88e6xxx/trace.h       |  5 ++
>  6 files changed, 110 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
> index 61d5dc4680e3..a0007d96b2a3 100644
> --- a/drivers/net/dsa/mv88e6xxx/chip.c
> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
> @@ -42,6 +42,7 @@
>  #include "ptp.h"
>  #include "serdes.h"
>  #include "smi.h"
> +#include "switchdev.h"
>  
>  static void assert_reg_lock(struct mv88e6xxx_chip *chip)
>  {
> @@ -2726,18 +2727,25 @@ static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
>  				  const unsigned char *addr, u16 vid,
>  				  u16 fdb_flags, struct dsa_db db)
>  {
> +	bool is_dynamic = !!(fdb_flags & DSA_FDB_FLAG_DYNAMIC);
>  	struct mv88e6xxx_chip *chip = ds->priv;
> +	u8 state;
>  	int err;
>  
> -	/* Ignore entries with flags set */
> -	if (fdb_flags)
> -		return 0;
> +	state = MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC;
> +	if (is_dynamic)
> +		state = MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_7_NEWEST;

What if flags other than DSA_FDB_FLAG_DYNAMIC are set (in future)?

> +	else
> +		if (fdb_flags)

nit: else if (fdb_flags)

> +			return 0;
>  

...
