Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9859A608D9D
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 16:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 592B78272A;
	Sat, 22 Oct 2022 14:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 592B78272A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gKwZEE835B7u; Sat, 22 Oct 2022 14:12:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 79FE28272C;
	Sat, 22 Oct 2022 14:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79FE28272C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1EB0FC007C;
	Sat, 22 Oct 2022 14:12:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8A01FC002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 14:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 634948272C
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 14:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 634948272C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rz5IGlavCUVo for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 14:11:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2555F8272A
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2555F8272A
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 14:11:58 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 0D4ED18846E9;
 Sat, 22 Oct 2022 14:11:57 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 05097250007B;
 Sat, 22 Oct 2022 14:11:57 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id EDE749EC0013; Sat, 22 Oct 2022 14:11:56 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sat, 22 Oct 2022 16:11:56 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Y1P0/gYdvrk+W866@shredder>
References: <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf> <Y1P0/gYdvrk+W866@shredder>
User-Agent: Gigahost Webmail
Message-ID: <a11af0d07a79adbd2ac3d242b36dec7e@kapio-technology.com>
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
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
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

On 2022-10-22 15:49, Ido Schimmel wrote:
> On Fri, Oct 21, 2022 at 09:14:11PM +0300, Vladimir Oltean wrote:
>> On Fri, Oct 21, 2022 at 07:39:34PM +0200, netdev@kapio-technology.com 
>> wrote:
>> > Well, with this change, to have MAB working, the bridge would need learning on
>> > of course, but how things work with the bridge according to the flags, they
>> > should also work in the offloaded case if you ask me. There should be no
>> > difference between the two, thus MAB in drivers would have to be with
>> > learning on.
>> 
>> Am I proposing for things to work differently in the offload and
>> software case, and not realizing it? :-/
>> 
>> The essence of my proposal was to send a bug fix now which denies
>> BR_LEARNING to be set together with BR_PORT_LOCKED. The fact that
>> link-local traffic is learned by the software bridge is something
>> unintended as far as I understand.
>> 
>> You tried to fix it here, and as far as I could search in my inbox, 
>> that
>> didn't go anywhere:
>> https://lore.kernel.org/netdev/47d8d747-54ef-df52-3b9c-acb9a77fa14a@blackwall.org/T/#u
>> 
>> I thought only mv88e6xxx offloads BR_PORT_LOCKED, but now, after
>> searching, I also see prestera has support for it, so let me add
>> Oleksandr Mazur to the discussion as well. I wonder how they deal with
>> this? Has somebody come to rely on learning being enabled on a locked
>> port?
>> 
>> 
>> MAB in offloading drivers will have to be with learning on (same as in
>> software). When BR_PORT_LOCKED | BR_LEARNING will be allowed together
>> back in net-next (to denote the MAB configuration), offloading drivers
>> (mv88e6xxx and prestera) will be patched to reject them. They will 
>> only
>> accept the two together when they implement MAB support.
>> 
>> Future drivers after this mess has been cleaned up will have to look 
>> at
>> the BR_PORT_LOCKED and BR_LEARNING flag in combination, to see which
>> kind of learning is desired on a port (secure, CPU based learning or
>> autonomous learning).
>> 
>> Am I not making sense?
> 
> I will try to summarize what I learned from past discussions because I
> think it is not properly explained in the commit messages.
> 
> If you look at the hostapd fork by Westermo [1], you will see that they
> are authorizing hosts by adding dynamic FDB entries from user space, 
> not

Those dynamic FDB entries are to be dynamic ATU entries by a patch set 
that
I have ready, but which I have not submitted as I was expecting to 
submit
it after this patch set was accepted.

The important aspect of Dynamic ATU entries is that the HW refreshes the
ATU entries with an active host.


> static ones. Someone from Westermo will need to confirm this, but I

I represent WesterMo in the upstreaming of these patches, and can 
confirm
that both for hostapd and the MAB solution, WesterMo authorizes by using
dynamic entries.

> guess the reasons are that a) They want hosts that became silent to 
> lose
> their authentication after the aging time b) They want hosts to lose
> their authentication when the carrier of the bridge port goes down. 
> This
> will cause the bridge driver to flush dynamic FDB entries, but not
> static ones. Otherwise, an attacker with physical access to the switch
> and knowledge of the MAC address of the authenticated host can connect 
> a
> different (malicious) host that will be able to communicate through the
> bridge.

Seems correct, only that it must be specified that it must be the 
switchcore
and not the bridge that ages the entries, thus ATU entries.

> 
> In the above scenario, learning does not need to be on for the bridge 
> to
> populate its FDB, but rather for the bridge to refresh the dynamic FDB
> entries installed by hostapd. This seems like a valid use case and one
> needs a good reason to break it in future kernels.
> 
> Regarding learning from link-local frames, this can be mitigated by [2]
> without adding additional checks in the bridge. I don't know why this
> bridge option was originally added, but if it wasn't for this use case,
> then now it has another use case.
> 
> Regarding MAB, from the above you can see that a pure 802.1X
> implementation that does not involve MAB can benefit from locked bridge
> ports with learning enabled. It is therefore not accurate to say that
> one wants MAB merely by enabling learning on a locked port. Given that
> MAB is a proprietary extension and much less secure than 802.1X, we can
> assume that there will be deployments out there that do not use MAB and
> do not care about notifications regarding locked FDB entries. I
> therefore think that MAB needs to be enabled by a separate bridge port
> flag that is rejected unless the bridge port is locked and has learning
> enabled.
> 
> Regarding hardware offload, I have an idea (needs testing) on how to
> make mlxsw work in a similar way to mv88e6xxx. That is, does not 
> involve
> injecting frames that incurred a miss to the Rx path. If you guys want,
> I'm willing to take a subset of the patches here, improve the commit
> message, do some small changes and submit them along with an mlxsw
> implementation. My intention is not to discredit anyone (I will keep 
> the
> original authorship), but to help push this forward and give another
> example of hardware offload.

You are very welcome to help pushing this forward for my sake, I just 
need
to know how it will affect this patch set. :-)

> 
> [1] 
> https://github.com/westermo/hostapd/commit/10c584b875a63a9e58b0ad39835282545351c30e#diff-338b6fad34b4bdb015d7d96930974bd96796b754257473b6c91527789656d6ed
> [2] 
> https://git.kernel.org/pub/scm/network/iproute2/iproute2-next.git/commit/?id=c74a8bc9cf5d6b6c9d8c64d5a80c5740165f315a
