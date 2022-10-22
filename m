Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E42608569
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 09:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD43A416C4;
	Sat, 22 Oct 2022 07:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD43A416C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeavkoyBDZta; Sat, 22 Oct 2022 07:25:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C8E4A416C3;
	Sat, 22 Oct 2022 07:25:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8E4A416C3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74409C007C;
	Sat, 22 Oct 2022 07:25:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6E292C002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 07:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3461E416C3
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 07:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3461E416C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BKeVEruyn_jm for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 07:25:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B771B416C2
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B771B416C2
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 07:25:00 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id E208F1884447;
 Sat, 22 Oct 2022 07:24:56 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id DACBB250007B;
 Sat, 22 Oct 2022 07:24:56 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id CA4389EC0002; Sat, 22 Oct 2022 07:24:56 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sat, 22 Oct 2022 09:24:56 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20221021181411.sv52q4yxr5r7urab@skbuf>
References: <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <37dc7673fde2b8e166a5ed78431a2078@kapio-technology.com>
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
 Sean Wang <sean.wang@mediatek.com>,
 Oleksandr Mazur <oleksandr.mazur@plvision.eu>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Florent Fourcot <florent.fourcot@wifirst.fr>, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
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

On 2022-10-21 20:14, Vladimir Oltean wrote:
> On Fri, Oct 21, 2022 at 07:39:34PM +0200, netdev@kapio-technology.com 
> wrote:
>> Well, with this change, to have MAB working, the bridge would need 
>> learning on
>> of course, but how things work with the bridge according to the flags, 
>> they
>> should also work in the offloaded case if you ask me. There should be 
>> no
>> difference between the two, thus MAB in drivers would have to be with
>> learning on.
> 
> Am I proposing for things to work differently in the offload and
> software case, and not realizing it? :-/
> 
> The essence of my proposal was to send a bug fix now which denies
> BR_LEARNING to be set together with BR_PORT_LOCKED. The fact that
> link-local traffic is learned by the software bridge is something
> unintended as far as I understand.
> 
> You tried to fix it here, and as far as I could search in my inbox, 
> that
> didn't go anywhere:
> https://lore.kernel.org/netdev/47d8d747-54ef-df52-3b9c-acb9a77fa14a@blackwall.org/T/#u
> 
> I thought only mv88e6xxx offloads BR_PORT_LOCKED, but now, after
> searching, I also see prestera has support for it, so let me add
> Oleksandr Mazur to the discussion as well. I wonder how they deal with
> this? Has somebody come to rely on learning being enabled on a locked
> port?
> 
> 
> MAB in offloading drivers will have to be with learning on (same as in
> software). When BR_PORT_LOCKED | BR_LEARNING will be allowed together
> back in net-next (to denote the MAB configuration), offloading drivers
> (mv88e6xxx and prestera) will be patched to reject them. They will only
> accept the two together when they implement MAB support.
> 
> Future drivers after this mess has been cleaned up will have to look at
> the BR_PORT_LOCKED and BR_LEARNING flag in combination, to see which
> kind of learning is desired on a port (secure, CPU based learning or
> autonomous learning).
> 
> Am I not making sense?

I will not say that you are not making sense as for the mv88e6xxx, as it
needs port association in all cases with BR_PORT_LOCKED, MAB or not, and
port association is turned on in the driver with learning turned on.

That said, there must be some resolution and agreement overall with this
issue to move on. Right now port association is turned on in the 
mv88e6xxx
driver when locking the port, thus setting learning off after locking 
will
break things.
