Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F95F56B9BC
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 14:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BDD5613CC;
	Fri,  8 Jul 2022 12:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BDD5613CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x9KjJJnnt3LY; Fri,  8 Jul 2022 12:34:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7FC3C613BF;
	Fri,  8 Jul 2022 12:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FC3C613BF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F66EC0078;
	Fri,  8 Jul 2022 12:34:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93A17C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 12:34:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DC90424E1
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 12:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DC90424E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kH8bD7YTRH51 for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 12:34:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A4E84154B
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A4E84154B
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 12:34:28 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 1662F1887129;
 Fri,  8 Jul 2022 12:34:26 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 0BDBB25032B7;
 Fri,  8 Jul 2022 12:34:26 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id EE690A1E00AD; Fri,  8 Jul 2022 12:34:25 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 08 Jul 2022 14:34:25 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220708115624.rrjzjtidlhcqczjv@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
 <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
 <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
 <20220708115624.rrjzjtidlhcqczjv@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <723e2995314b41ff323272536ef27341@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On 2022-07-08 13:56, Vladimir Oltean wrote:
> On Fri, Jul 08, 2022 at 11:50:33AM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-07-08 11:15, Vladimir Oltean wrote:
>> > When the possibility for it to be true will exist, _all_ switchdev
>> > drivers will need to be updated to ignore that (mlxsw, cpss, ocelot,
>> > rocker, prestera, etc etc), not just DSA. And you don't need to
>> > propagate the is_locked flag to all individual DSA sub-drivers when none
>> > care about is_locked in the ADD_TO_DEVICE direction, you can just ignore
>> > within DSA until needed otherwise.
>> >
>> 
>> Maybe I have it wrong, but I think that Ido requested me to send it to 
>> all
>> the drivers, and have them ignore entries with is_locked=true ...
> 
> I don't think Ido requested you to ignore is_locked from all DSA
> drivers, but instead from all switchdev drivers maybe. Quite different.

So without changing the signature on port_fdb_add(). If that is to avoid 
changing that signature, which needs to be changed anyhow for any 
switchcore driver to act on it, then my next patch set will change the 
signarure also as it is needed for creating dynamic ATU entries from 
userspace, which is needed to make the whole thing complete.

As it is already done (with the is_locked to the drivers) and needed for 
future application, I would like Ido to comment on it before I take 
action.

> 
> In any case I'm going to take a look at this patch set more closely and
> run the selftest on my Marvell switch, but I can't do this today
> unfortunately. I'll return with more comments.

Yes :-)
