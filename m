Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4C86884FB
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 18:00:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05CC281FF1;
	Thu,  2 Feb 2023 17:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05CC281FF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HUldn62TciC0; Thu,  2 Feb 2023 17:00:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7B97981F97;
	Thu,  2 Feb 2023 17:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B97981F97
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30541C0078;
	Thu,  2 Feb 2023 17:00:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26340C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 17:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 016FA40606
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 17:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 016FA40606
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgnHWPj5L1f2 for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 17:00:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5588E405BE
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5588E405BE
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 17:00:02 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id B73B0188374A;
 Thu,  2 Feb 2023 17:00:00 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id AA3FC250007B;
 Thu,  2 Feb 2023 17:00:00 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id A43119B403E1; Thu,  2 Feb 2023 17:00:00 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 18:00:00 +0100
From: netdev@kapio-technology.com
To: Simon Horman <simon.horman@corigine.com>
In-Reply-To: <Y9lkXlyXg1d1D0j3@corigine.com>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-6-netdev@kapio-technology.com>
 <Y9lkXlyXg1d1D0j3@corigine.com>
User-Agent: Gigahost Webmail
Message-ID: <9b12275969a204739ccfab972d90f20f@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?Q?Cl=C3=A9m?= =?UTF-8?Q?ent_L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>, "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
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

On 2023-01-31 19:56, Simon Horman wrote:
>> --- a/drivers/net/dsa/mv88e6xxx/chip.c
>> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
>> @@ -42,6 +42,7 @@
>>  #include "ptp.h"
>>  #include "serdes.h"
>>  #include "smi.h"
>> +#include "switchdev.h"
>> 
>>  static void assert_reg_lock(struct mv88e6xxx_chip *chip)
>>  {
>> @@ -2726,18 +2727,25 @@ static int mv88e6xxx_port_fdb_add(struct 
>> dsa_switch *ds, int port,
>>  				  const unsigned char *addr, u16 vid,
>>  				  u16 fdb_flags, struct dsa_db db)
>>  {
>> +	bool is_dynamic = !!(fdb_flags & DSA_FDB_FLAG_DYNAMIC);
>>  	struct mv88e6xxx_chip *chip = ds->priv;
>> +	u8 state;
>>  	int err;
>> 
>> -	/* Ignore entries with flags set */
>> -	if (fdb_flags)
>> -		return 0;
>> +	state = MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC;
>> +	if (is_dynamic)
>> +		state = MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_7_NEWEST;
> 
> What if flags other than DSA_FDB_FLAG_DYNAMIC are set (in future)?

They will have to be caught and handled here if there is support for it, 
e.g. something like...

else if (someflag)
         dosomething();

For now only one flag will actually be set and they are mutually 
exclusive, as they will not make sense together with the potential flags 
I know, but that can change at some time of course.

> 
>> +	else
>> +		if (fdb_flags)
> 
> nit: else if (fdb_flags)
> 
>> +			return 0;
>> 
> 
> ...
