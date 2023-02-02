Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEF6688499
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 17:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 971D740606;
	Thu,  2 Feb 2023 16:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 971D740606
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f_74u8_XJoAi; Thu,  2 Feb 2023 16:38:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D4E6E4060D;
	Thu,  2 Feb 2023 16:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4E6E4060D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 90F94C0078;
	Thu,  2 Feb 2023 16:38:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 64B5BC002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 16:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A5FB611D3
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 16:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A5FB611D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AmtemF6pcKNz for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 16:38:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BEEB61180
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BEEB61180
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 16:38:08 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 965C318843AC;
 Thu,  2 Feb 2023 16:38:06 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 8D99F250007B;
 Thu,  2 Feb 2023 16:38:06 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 743E591201E4; Thu,  2 Feb 2023 16:38:06 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 17:38:06 +0100
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@idosch.org>
In-Reply-To: <Y9vgz4x/O+dIp+0/@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-2-netdev@kapio-technology.com>
 <Y9qrAup9Xt/ZDEG0@shredder>
 <f27dd18d9d0b7ff8b693af8a58ea8616@kapio-technology.com>
 <Y9vgz4x/O+dIp+0/@shredder>
User-Agent: Gigahost Webmail
Message-ID: <766efaf94fcb6362c5ceb176ad7955f1@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH net-next 1/5] net: bridge: add dynamic flag to
 switchdev notifier
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

On 2023-02-02 17:11, Ido Schimmel wrote:
> On Thu, Feb 02, 2023 at 08:28:36AM +0100, netdev@kapio-technology.com 
> wrote:
>> On 2023-02-01 19:10, Ido Schimmel wrote:
>> > On Mon, Jan 30, 2023 at 06:34:25PM +0100, Hans J. Schultz wrote:
>> > > To be able to add dynamic FDB entries to drivers from userspace, the
>> > > dynamic flag must be added when sending RTM_NEWNEIGH events down.
>> > >
>> > > Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
>> > > ---
>> > >  include/net/switchdev.h   | 1 +
>> > >  net/bridge/br_switchdev.c | 2 ++
>> > >  2 files changed, 3 insertions(+)
>> > >
>> > > diff --git a/include/net/switchdev.h b/include/net/switchdev.h
>> > > index ca0312b78294..aaf918d4ba67 100644
>> > > --- a/include/net/switchdev.h
>> > > +++ b/include/net/switchdev.h
>> > > @@ -249,6 +249,7 @@ struct switchdev_notifier_fdb_info {
>> > >  	u8 added_by_user:1,
>> > >  	   is_local:1,
>> > >  	   locked:1,
>> > > +	   is_dyn:1,
>> > >  	   offloaded:1;
>> > >  };
>> > >
>> > > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
>> > > index 7eb6fd5bb917..4420fcbbfdb2 100644
>> > > --- a/net/bridge/br_switchdev.c
>> > > +++ b/net/bridge/br_switchdev.c
>> > > @@ -136,6 +136,8 @@ static void br_switchdev_fdb_populate(struct
>> > > net_bridge *br,
>> > >  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>> > >  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
>> > >  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
>> > > +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags) &&
>> >
>> > Why not 'is_static' and be consistent with the bridge flag like all the
>> > other fields?
>> >
>> > Regardless of how you name this field, it is irrelevant for
>> > 'SWITCHDEV_FDB_ADD_TO_BRIDGE' notifications that all add FDB entries
>> > with the 'BR_FDB_ADDED_BY_EXT_LEARN' flag set, which makes
>> > 'BR_FDB_STATIC' irrelevant.
>> >
>> > > +		item->added_by_user;
>> >
>> > Unclear why this is needed...
>> >
>> 
>> The answer to those two questions lies in my earlier correspondences 
>> (with
>> Oltean) on the RFC version.
> 
> It is not up to me as a reviewer to dig up old versions of the patch 
> and
> find out what was changed and why. It is up to you as the submitter of
> the patch to provide all this information in the patch posting. Please
> read:
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> 
> Specifically:
> 
> "Review comments or questions that do not lead to a code change should
> almost certainly bring about a comment or changelog entry so that the
> next reviewer better understands what is going on."
> 
> And:
> 
> "Other comments relevant only to the moment or the maintainer, not
> suitable for the permanent changelog, should also go here. A good
> example of such comments might be patch changelogs which describe what
> has changed between the v1 and v2 version of the patch.
> 
> Please put this information after the --- line which separates the
> changelog from the rest of the patch. The version information is not
> part of the changelog which gets committed to the git tree. It is
> additional information for the reviewers."
> 
> Thanks


Sorry about that. I thought it would be easily found...

On the first question please look here:
https://lore.kernel.org/netdev/20230119134045.fqdt6zrna5x3iavt@skbuf/

On the second question it is what Oltean pointed out to me here...
https://lore.kernel.org/netdev/20230118230135.szu6a7kvt2mjb3i5@skbuf/

Oltean says there:
"This is not true, because it assumes that DSA never called 
port_fdb_add()
up until now for bridge FDB entries with the BR_FDB_STATIC flag unset,
which is incorrect (it did)."

Though as I see it, if it is only from the DSA layer on, the new 
is_dynamic flag would not be set anyway in the case he references. And 
as can be seen the change is in the bridge layer, as the rest is just 
propagating the flag, but it ensures that to set this flag that it comes 
from the user adding an FDB entry.
