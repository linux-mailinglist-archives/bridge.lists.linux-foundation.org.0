Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7946607DA7
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 19:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 239C14018F;
	Fri, 21 Oct 2022 17:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 239C14018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id coB3s6NBCcaW; Fri, 21 Oct 2022 17:39:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A0D72414F7;
	Fri, 21 Oct 2022 17:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0D72414F7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E0D5C007C;
	Fri, 21 Oct 2022 17:39:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 973FAC002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 17:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D5CE418F8
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 17:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D5CE418F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SM8b4HwRWJiB for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 17:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29E87418E6
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29E87418E6
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 17:39:36 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id D5B4618846E9;
 Fri, 21 Oct 2022 17:39:34 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id C5ECE250007B;
 Fri, 21 Oct 2022 17:39:34 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BA4459EC0005; Fri, 21 Oct 2022 17:39:34 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 21 Oct 2022 19:39:34 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20221021173014.oit3qmpkrsjwzbgu@skbuf>
References: <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
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
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 2022-10-21 19:30, Vladimir Oltean wrote:
> On Fri, Oct 21, 2022 at 07:18:59PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-10-21 18:30, Vladimir Oltean wrote:
>> > On Fri, Oct 21, 2022 at 03:16:21PM +0200, netdev@kapio-technology.com wrote:
>> > > As it is now in the bridge, the locked port part is handled before learning
>> > > in the ingress data path, so with BR_LEARNING and BR_PORT_LOCKED, I think it
>> > > will work as it does now except link local packages.
>> >
>> > If link-local learning is enabled on a locked port, I think those
>> > addresses should also be learned with the BR_FDB_LOCKED flag. The
>> > creation of those locked FDB entries can be further suppressed by the
>> > BROPT_NO_LL_LEARN flag.
>> >
>> > > If your suggestion of BR_LEARNING causing BR_FDB_LOCKED on a locked port, I
>> > > guess it would be implemented under br_fdb_update() and BR_LEARNING +
>> > > BR_PORT_LOCKED would go together, forcing BR_LEARNING in this case, thus also
>> > > for all drivers?
>> >
>> > Yes, basically where this is placed right now (in br_handle_frame_finish):
>> 
>> As I don't know what implications it would have for other drivers to 
>> have learning
>> forced enabled on locked ports, I cannot say if it is a good idea or 
>> not.
>> Right now learning is not forced either way as is, but the consensus 
>> is that learning
>> should be off with locked ports, which it would be either way in the 
>> common case I
>> think.
> 
> I don't think I fully understand what you mean by forcing BR_LEARNING.
> A bridge port gets created with a default set of flags as can be seen
> in new_nbp().
> Those flags include BR_LEARNING but don't include BR_PORT_LOCKED.
> 
> The user can decide he wants to make the port use 802.1X without MAB, 
> so
> he enables BR_PORT_LOCKED and disables BR_LEARNING, all with the same
> netlink command (ip link set swp0 type bridge_slave learning off locked 
> on).
> 
> How was the driver forced into anything?

Well, with this change, to have MAB working, the bridge would need 
learning on
of course, but how things work with the bridge according to the flags, 
they
should also work in the offloaded case if you ask me. There should be no
difference between the two, thus MAB in drivers would have to be with
learning on.
