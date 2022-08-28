Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C633F5A3D51
	for <lists.bridge@lfdr.de>; Sun, 28 Aug 2022 13:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 046A98161D;
	Sun, 28 Aug 2022 11:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 046A98161D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QPA52G5BDKB; Sun, 28 Aug 2022 11:24:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7F3BD80AF5;
	Sun, 28 Aug 2022 11:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F3BD80AF5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F948C007B;
	Sun, 28 Aug 2022 11:24:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F192C002D
 for <bridge@lists.linux-foundation.org>; Sun, 28 Aug 2022 11:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDD7D404D0
 for <bridge@lists.linux-foundation.org>; Sun, 28 Aug 2022 11:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDD7D404D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0ct-xCHEkph for <bridge@lists.linux-foundation.org>;
 Sun, 28 Aug 2022 11:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFF094023D
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFF094023D
 for <bridge@lists.linux-foundation.org>; Sun, 28 Aug 2022 11:24:27 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 3FF611884659;
 Sun, 28 Aug 2022 11:24:23 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 1F69425032B8;
 Sun, 28 Aug 2022 11:24:23 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 1590D9EC0009; Sun, 28 Aug 2022 11:24:23 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 28 Aug 2022 13:24:22 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwoZdzVCkMV8vGtl@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
 <YwoZdzVCkMV8vGtl@shredder>
User-Agent: Gigahost Webmail
Message-ID: <48ac861433e3c608c8630300efe4e828@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 1/6] net: bridge: add locked entry
 fdb flag to extend locked port feature
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

On 2022-08-27 15:17, Ido Schimmel wrote:
> On Sat, Aug 27, 2022 at 02:30:25PM +0300, Nikolay Aleksandrov wrote:
>> On 26/08/2022 14:45, Hans Schultz wrote:
>> Please add the blackhole flag in a separate patch.
> 
> +1
> 
> [...]
> 
>> > @@ -185,6 +196,9 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>> >  		if (test_bit(BR_FDB_LOCAL, &dst->flags))
>> >  			return br_pass_frame_up(skb);
>> >
>> > +		if (test_bit(BR_FDB_BLACKHOLE, &dst->flags))
>> > +			goto drop;
>> > +
>> Not happy about adding a new test in arguably the most used fast-path, 
>> but I don't see
>> a better way to do blackhole right now. Could you please make it an 
>> unlikely() ?
>> 
>> I guess the blackhole flag will be allowed for user-space to set at 
>> some point, why
>> not do it from the start?
>> 
>> Actually adding a BR_FDB_LOCAL and BR_FDB_BLACKHOLE would be a 
>> conflict above -
>> the packet will be received. So you should move the blackhole check 
>> above the
>> BR_FDB_LOCAL one if user-space is allowed to set it to any entry.
> 
> Agree about unlikely() and making it writeable from user space from the
> start. This flag is different from the "locked" flag that should only 
> be
> ever set by the kernel.
> 
> Regarding BR_FDB_LOCAL, I think BR_FDB_BLACKHOLE should only be allowed
> with BR_FDB_LOCAL as these entries are similar in the following ways:
> 
> 1. It doesn't make sense to associate a blackhole entry with a specific
> port. The packet will never be forwarded to this port, but dropped by
> the bridge. This means user space will add them on the bridge itself:
> 
> # bridge fdb add 00:11:22:33:44:55 dev br0 self local blackhole
> 
> 2. If you agree that these entries should not be associated with a
> specific port, then it also does not make sense to subject them to
> ageing and roaming, just like existing local/permanent entries.
> 
> The above allows us to push the new check under the BR_FDB_LOCAL check:
> 
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 68b3e850bcb9..4357445529a5 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -182,8 +182,11 @@ int br_handle_frame_finish(struct net *net,
> struct sock *sk, struct sk_buff *skb
>         if (dst) {
>                 unsigned long now = jiffies;
> 
> -               if (test_bit(BR_FDB_LOCAL, &dst->flags))
> +               if (test_bit(BR_FDB_LOCAL, &dst->flags)) {
> +                       if (unlikely(test_bit(BR_FDB_BLACKHOLE, 
> &dst->flags)))
> +                               goto drop;
>                         return br_pass_frame_up(skb);
> +               }
> 
>                 if (now != dst->used)
>                         dst->used = now;

It shall be so as suggested. :-)
