Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CE168A21F
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 19:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DADB581FFD;
	Fri,  3 Feb 2023 18:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DADB581FFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-6S-O1MZyRY; Fri,  3 Feb 2023 18:41:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7C3B181F32;
	Fri,  3 Feb 2023 18:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C3B181F32
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 170BEC007C;
	Fri,  3 Feb 2023 18:41:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD5DFC002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 18:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B28281F32
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 18:41:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B28281F32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NKXKa9xwRBZ for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 18:41:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7774C81EE0
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7774C81EE0
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 18:41:21 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 8C21D1883921;
 Fri,  3 Feb 2023 18:41:18 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 78969250007B;
 Fri,  3 Feb 2023 18:41:18 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 5F8CC91201E4; Fri,  3 Feb 2023 18:41:18 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 03 Feb 2023 19:41:18 +0100
From: netdev@kapio-technology.com
To: Simon Horman <simon.horman@corigine.com>
In-Reply-To: <Y9zDApc6nDO2RzOb@corigine.com>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-4-netdev@kapio-technology.com>
 <Y9lj7RJgyMJfjtGp@corigine.com>
 <0b021777dfc1825b6565c0d9dbd6dbef@kapio-technology.com>
 <Y9zDApc6nDO2RzOb@corigine.com>
User-Agent: Gigahost Webmail
Message-ID: <687a1918326d23ec901c1f53f5860592@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH net-next 3/5] drivers: net: dsa: add fdb entry
 flags incoming to switchcore drivers
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

On 2023-02-03 09:17, Simon Horman wrote:
> On Thu, Feb 02, 2023 at 05:45:56PM +0100, netdev@kapio-technology.com 
> wrote:
>> On 2023-01-31 19:54, Simon Horman wrote:
>> > > --- a/drivers/net/dsa/b53/b53_common.c
>> > > +++ b/drivers/net/dsa/b53/b53_common.c
>> > > @@ -1684,11 +1684,15 @@ static int b53_arl_op(struct b53_device
>> > > *dev, int op, int port,
>> > >
>> > >  int b53_fdb_add(struct dsa_switch *ds, int port,
>> > >  		const unsigned char *addr, u16 vid,
>> > > -		struct dsa_db db)
>> > > +		u16 fdb_flags, struct dsa_db db)
>> > >  {
>> > >  	struct b53_device *priv = ds->priv;
>> > >  	int ret;
>> > >
>> > > +	/* Ignore entries with set flags */
>> > > +	if (fdb_flags)
>> > > +		return 0;
>> >
>> >
>> > 	Would returning -EOPNOTSUPP be more appropriate?
>> >
>> > ...
>> 
>> I don't think that would be so good, as the command
>> 
>> bridge fdb replace ADDR dev <DEV> master dynamic
>> 
>> is a valid command and should not generate errors. When ignored by the
>> driver, it will just install a dynamic FDB entry in the bridge, and 
>> the
>> bridge will age it.
> 
> Sure, I agree that it's not necessarily an error that needs
> to propagate to the user.
> 
> My assumption, which I now see is likely false, is that drivers
> could return -EOPNOTSUPP, to indicate to higher layers that the 
> operation
> is not supported. But the higher layers may not propagate that.
> 
> But it seems that is not the case here. So I think return 0 is fine
> after all. Sorry for the noise.

No noise at all... I think your concern is quite ligitimate. With this 
flag there is no iproute2 changes, so not to change behaviour of old 
commands the best is to ignore silently. But I have another flag coming 
up that will be accomodated with a new iproute2 command, and then your 
suggestion is more appropriate. The question will then be if the returns 
for that flag should be -EOPNOTSUPP.
