Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 784E22D8B33
	for <lists.bridge@lfdr.de>; Sun, 13 Dec 2020 04:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1AA2203FA;
	Sun, 13 Dec 2020 03:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSd8kOVMAfel; Sun, 13 Dec 2020 03:49:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 5EB08203D7;
	Sun, 13 Dec 2020 03:49:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41AF8C013B;
	Sun, 13 Dec 2020 03:49:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78804C013B
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59A8D203D8
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rZJMw2OWHALg for <bridge@lists.linux-foundation.org>;
 Sun, 13 Dec 2020 03:49:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id B932E203D7
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:49:03 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 11so12336887oty.9
 for <bridge@lists.linux-foundation.org>; Sat, 12 Dec 2020 19:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CDYp5c7kUryWTtjnNNFi8EEViruTR4hOP8Evr/dP/MY=;
 b=D46Eko50CUvR9h6CxROCYUlFb9AcrqBawlXAA8hppaKj+ehO+A6DikeByUFIYbAb0b
 8j22PJLYiO3SY4I4pyDqRvetuKRlATm5m87S7gDzEGD+RUlRIFuUIFymLguUCidEwX0X
 LDng4GatOqsn/u4yknSrIbgqaxzzWodHdkMcFXtnoH0MM+Ygd9pny/fxMA5vNaDB9duQ
 0jhqjsaDDsBgxQ3J5l8w4ss4UVoPVvLVqMS4vkiTvR90xECp6CLXLI8CzyuTrATJYPCp
 W/B6C/VgkCWi3Azvbbj6C+yXuSa2FjNfCIv1CxKJus8h2RW6h7jp6zjQTpdAoFfDENYE
 AHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CDYp5c7kUryWTtjnNNFi8EEViruTR4hOP8Evr/dP/MY=;
 b=cSCtFthAYXJUlSmoYabfddPZf0XVqM6qHkweeNPjbFoRvFqXJrSEh2mVU1KA4ZC6GJ
 BQp3MiT9QNgIWWs7g8TN8D8Gc+LLX5VoN77dJGIN/G09+4z3r39Y+5hp4Sa9Z/g/MHri
 /poh50eRCQyNjGWZ8h14NaFgqp6cPZNA4NX4L/wQm7sKaF5SVtgNYaRhPD6xxKYj9ASB
 39G5x8KQsEAQNi2w/7NRtU0SgLsiobPVvgZHw5H0LreKeteMjxZMmu+tkoAR1Cwh+KZG
 vzpF0uPkKdpimWI778N8k7KvAuW07rvLXL3Fl4nEz37wvXKSwWqh/0sxl8RLrRaqUZ+r
 uXjg==
X-Gm-Message-State: AOAM531etzxqyvujMar/xmFRYXVAQVizqwtvm36NlsexQ7RIN1f7QgKG
 kdOd11wTrET+dvxw/I6NuZ4=
X-Google-Smtp-Source: ABdhPJzumAltjGTMMT9/URCUIgajCxmkoGtWeMB+lnZotmFN8BAYC3ZEheglVD6SVRmFjAonYK24Wg==
X-Received: by 2002:a9d:4ce:: with SMTP id 72mr15369215otm.23.1607831342882;
 Sat, 12 Dec 2020 19:49:02 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:5c21:b591:3efd:575e?
 ([2600:1700:dfe0:49f0:5c21:b591:3efd:575e])
 by smtp.gmail.com with ESMTPSA id v8sm3172969otp.10.2020.12.12.19.49.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Dec 2020 19:49:02 -0800 (PST)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20201213024018.772586-1-vladimir.oltean@nxp.com>
 <20201213024018.772586-6-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <641d19c9-cd2d-fb63-de86-150d01bdb17e@gmail.com>
Date: Sat, 12 Dec 2020 19:48:59 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201213024018.772586-6-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v2 net-next 5/6] net: dsa: listen for
 SWITCHDEV_{FDB, DEL}_ADD_TO_DEVICE on foreign bridge neighbors
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



On 12/12/2020 6:40 PM, Vladimir Oltean wrote:
> Some DSA switches (and not only) cannot learn source MAC addresses from
> packets injected from the CPU. They only perform hardware address
> learning from inbound traffic.
> 
> This can be problematic when we have a bridge spanning some DSA switch
> ports and some non-DSA ports (which we'll call "foreign interfaces" from
> DSA's perspective).
> 
> There are 2 classes of problems created by the lack of learning on
> CPU-injected traffic:
> - excessive flooding, due to the fact that DSA treats those addresses as
>   unknown
> - the risk of stale routes, which can lead to temporary packet loss
> 
> To illustrate the second class, consider the following situation, which
> is common in production equipment (wireless access points, where there
> is a WLAN interface and an Ethernet switch, and these form a single
> bridging domain).
> 
>  AP 1:
>  +------------------------------------------------------------------------+
>  |                                          br0                           |
>  +------------------------------------------------------------------------+
>  +------------+ +------------+ +------------+ +------------+ +------------+
>  |    swp0    | |    swp1    | |    swp2    | |    swp3    | |    wlan0   |
>  +------------+ +------------+ +------------+ +------------+ +------------+
>        |                                                       ^        ^
>        |                                                       |        |
>        |                                                       |        |
>        |                                                    Client A  Client B
>        |
>        |
>        |
>  +------------+ +------------+ +------------+ +------------+ +------------+
>  |    swp0    | |    swp1    | |    swp2    | |    swp3    | |    wlan0   |
>  +------------+ +------------+ +------------+ +------------+ +------------+
>  +------------------------------------------------------------------------+
>  |                                          br0                           |
>  +------------------------------------------------------------------------+
>  AP 2
> 
> - br0 of AP 1 will know that Clients A and B are reachable via wlan0
> - the hardware fdb of a DSA switch driver today is not kept in sync with
>   the software entries on other bridge ports, so it will not know that
>   clients A and B are reachable via the CPU port UNLESS the hardware
>   switch itself performs SA learning from traffic injected from the CPU.
>   Nonetheless, a substantial number of switches don't.
> - the hardware fdb of the DSA switch on AP 2 may autonomously learn that
>   Client A and B are reachable through swp0. Therefore, the software br0
>   of AP 2 also may or may not learn this. In the example we're
>   illustrating, some Ethernet traffic has been going on, and br0 from AP
>   2 has indeed learnt that it can reach Client B through swp0.
> 
> One of the wireless clients, say Client B, disconnects from AP 1 and
> roams to AP 2. The topology now looks like this:
> 
>  AP 1:
>  +------------------------------------------------------------------------+
>  |                                          br0                           |
>  +------------------------------------------------------------------------+
>  +------------+ +------------+ +------------+ +------------+ +------------+
>  |    swp0    | |    swp1    | |    swp2    | |    swp3    | |    wlan0   |
>  +------------+ +------------+ +------------+ +------------+ +------------+
>        |                                                            ^
>        |                                                            |
>        |                                                         Client A
>        |
>        |
>        |                                                         Client B
>        |                                                            |
>        |                                                            v
>  +------------+ +------------+ +------------+ +------------+ +------------+
>  |    swp0    | |    swp1    | |    swp2    | |    swp3    | |    wlan0   |
>  +------------+ +------------+ +------------+ +------------+ +------------+
>  +------------------------------------------------------------------------+
>  |                                          br0                           |
>  +------------------------------------------------------------------------+
>  AP 2
> 
> - br0 of AP 1 still knows that Client A is reachable via wlan0 (no change)
> - br0 of AP 1 will (possibly) know that Client B has left wlan0. There
>   are cases where it might never find out though. Either way, DSA today
>   does not process that notification in any way.
> - the hardware FDB of the DSA switch on AP 1 may learn autonomously that
>   Client B can be reached via swp0, if it receives any packet with
>   Client 1's source MAC address over Ethernet.
> - the hardware FDB of the DSA switch on AP 2 still thinks that Client B
>   can be reached via swp0. It does not know that it has roamed to wlan0,
>   because it doesn't perform SA learning from the CPU port.
> 
> Now Client A contacts Client B.
> AP 1 routes the packet fine towards swp0 and delivers it on the Ethernet
> segment.
> AP 2 sees a frame on swp0 and its fdb says that the destination is swp0.
> Hairpinning is disabled => drop.
> 
> This problem comes from the fact that these switches have a 'blind spot'
> for addresses coming from software bridging. The generic solution is not
> to assume that hardware learning can be enabled somehow, but to listen
> to more bridge learning events. It turns out that the bridge driver does
> learn in software from all inbound frames, in __br_handle_local_finish.
> A proper SWITCHDEV_FDB_ADD_TO_DEVICE notification is emitted for the
> addresses serviced by the bridge on 'foreign' interfaces. The software
> bridge also does the right thing on migration, by notifying that the old
> entry is deleted, so that does not need to be special-cased in DSA. When
> it is deleted, we just need to delete our static FDB entry towards the
> CPU too, and wait.
> 
> The problem is that DSA currently only cares about SWITCHDEV_FDB_ADD_TO_DEVICE
> events received on its own interfaces, such as static FDB entries.
> 
> Luckily we can change that, and DSA can listen to all switchdev FDB
> add/del events in the system and figure out if those events were emitted
> by a bridge that spans at least one of DSA's own ports. In case that is
> true, DSA will also offload that address towards its own CPU port, in
> the eventuality that there might be bridge clients attached to the DSA
> switch who want to talk to the station connected to the foreign
> interface.
> 
> In terms of implementation, we need to keep the fdb_info->added_by_user
> check for the case where the switchdev event was targeted directly at a
> DSA switch port. But we don't need to look at that flag for snooped
> events. So the check is currently too late, we need to move it earlier.
> This also simplifies the code a bit, since we avoid uselessly allocating
> and freeing switchdev_work.
> 
> We could probably do some improvements in the future. For example,
> multi-bridge support is rudimentary at the moment. If there are two
> bridges spanning a DSA switch's ports, and both of them need to service
> the same MAC address, then what will happen is that the migration of one
> of those stations will trigger the deletion of the FDB entry from the
> CPU port while it is still used by other bridge. That could be improved
> with reference counting but is left for another time.
> 
> This behavior needs to be enabled at driver level by setting
> ds->learning_broken_on_cpu_port = true. This is because we don't want to
> inflict a potential performance penalty (accesses through MDIO/I2C/SPI
> are expensive) to hardware that really doesn't need it because address
> learning on the CPU port works there.
> 
> Reported-by: DENG Qingfang <dqfext@gmail.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

The implementation is much simpler than I though it would be, nice! Just
in case you need to spin a v2, I would probably name the flag
"learning_on_cpu_port_challenged", or preferably
"no_learning_on_cpu_port", the term "broken" is a bit subjective IMHO
(although honestly, why not learn from the CPU port though...)
-- 
Florian
