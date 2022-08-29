Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D535A4623
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 11:32:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FBE2405E7;
	Mon, 29 Aug 2022 09:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FBE2405E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0koLmjqKZWPM; Mon, 29 Aug 2022 09:32:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 88127408C5;
	Mon, 29 Aug 2022 09:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88127408C5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2580CC0078;
	Mon, 29 Aug 2022 09:32:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC672C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 09:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A1E660EFE
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 09:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A1E660EFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPo9uFE57vjT for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 09:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4221260F29
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4221260F29
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 09:32:33 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 22BC1188493F;
 Mon, 29 Aug 2022 09:32:30 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 10FD125032B7;
 Mon, 29 Aug 2022 09:32:30 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 0C1E59EC0005; Mon, 29 Aug 2022 09:32:30 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 29 Aug 2022 11:32:29 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Ywo16vHMqxxszWzX@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <Ywo16vHMqxxszWzX@shredder>
User-Agent: Gigahost Webmail
Message-ID: <42392a323bdc5324e1e4682fca378c90@kapio-technology.com>
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

On 2022-08-27 17:19, Ido Schimmel wrote:
> On Fri, Aug 26, 2022 at 01:45:33PM +0200, Hans Schultz wrote:
> How about the below (untested):
> 
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 68b3e850bcb9..9143a94a1c57 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -109,9 +109,18 @@ int br_handle_frame_finish(struct net *net,
> struct sock *sk, struct sk_buff *skb
>                 struct net_bridge_fdb_entry *fdb_src =
>                         br_fdb_find_rcu(br, eth_hdr(skb)->h_source, 
> vid);
> 
> -               if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
> -                   test_bit(BR_FDB_LOCAL, &fdb_src->flags))
> +               if (!fdb_src) {
> +                       if (p->flags & BR_PORT_MAB) {
> +                               __set_bit(BR_FDB_ENTRY_LOCKED, &flags);
> +                               br_fdb_update(br, p, 
> eth_hdr(skb)->h_source,
> +                                             vid, flags);
> +                       }
> +                       goto drop;
> +               } else if (READ_ONCE(fdb_src->dst) != p ||
> +                          test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
> +                          test_bit(BR_FDB_LOCKED, &fdb_src->flags)) {
>                         goto drop;
> +               }
>         }
> 
> The semantics are very clear, IMO. On FDB miss, add a locked FDB entry
> and drop the packet. On FDB mismatch, drop the packet.
> 
> Entry can roam from an unauthorized port to an authorized port, but not
> the other way around. Not sure what is the use case for allowing 
> roaming
> between unauthorized ports.
> 
> Note that with the above, locked entries are not refreshed and will
> therefore age out unless replaced by user space.
> 

Okay I was under the impression that entries should be able to roam 
freely between authorized and unauthorized ports in the bridge as long 
as the locked flag is on when roaming to the MAB enabled port. As you 
know roaming is not a big issue with mv88e6xxx.

As I see this code, an entry cannot roam to an authorized port as there 
is no update after the port mismatch check and the packet is dropped as 
it should in this case in the locked section.

