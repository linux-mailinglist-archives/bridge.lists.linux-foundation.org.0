Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0A636C09A
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B59340461;
	Tue, 27 Apr 2021 08:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MXzBuI50YYpl; Tue, 27 Apr 2021 08:08:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3E6A40478;
	Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E182CC0026;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5A759C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 20:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48D7083168
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 20:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHd1aa6bcHyh for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 20:05:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C85383705
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 20:05:57 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id d27so33311576lfv.9
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 13:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ys1pALIVK8EXtzpFIZZmPRxRPFzULoCycqi5M+Q+z9U=;
 b=kONxnZMeg5qi+ye+Uwjhw0msT78kXlYOf6TxAV+uVl9zS9J8zuIedqWDzWv7pJoAB2
 D9akRegpfwmSiiJUldMX47tZqRmdNM+QsGrJ1uVMfJaEd48JI2R8QAbWmfDHKGIKxAut
 +Q34XgNxRZog6usMIWcoFuoOAnj0WCEhoqbUZM39SxfP2m/+UEFDUMWC8EKoz/uqucKZ
 0NP1vvMxeNEMjun6qaO20dbLW2WlblSm3Ad1WZzevdlASolNMKNZURgsSsSE9Lx83xVK
 jyksx4673h9xWYPDJAPXtePISDo/s61O59j07ZRu+9/VvUlYgVoosRoN77IKt85pb8Db
 rEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ys1pALIVK8EXtzpFIZZmPRxRPFzULoCycqi5M+Q+z9U=;
 b=hyxK8mZn8CHvwiQmUWoWurLlu64g1vWLAttBjDiFFqnb1MeHXgPFdH894Xm1He4Rmh
 7L3zWWxGim0cHEjHZivXOTUd8414Wn1MUj7F42qET/SXxturtAN4+BQD1Ctat6v++VeQ
 xl6xb1O9+jBLsD9zsktzflwvvpdnSIaVJf5LKs5ARKdqrbYxW9CBmbzqUxa2YMhDP6Ro
 tCQ5lLbwoJjxEtCj8CKBXL2wD5YTOGutlgpETmlWlo8aDLlL8K5R4cirDnzUlqN7TZSi
 rD9oCMsMitnvUHXLZxlruNC2PyPZ+ZA5E57kGnNI6niC/h8MGpsZqC85S1fy7HjhS+9d
 4ijQ==
X-Gm-Message-State: AOAM532y7dENqYqJIrB5oNC/+O4qvcDQdPkYZNy8MigLLH4BAF+uU5jN
 aY5TZtIo+Z1MELUIrfgG1Kpo0DFdlmhWRA==
X-Google-Smtp-Source: ABdhPJxKFJZSMKEQEuNX4ZBDHUneFiJn0I85A/ykj8o9VGrJ3Z+HWHIN05qydUU+E09xI17nDc1rvw==
X-Received: by 2002:a19:354:: with SMTP id 81mr7802387lfd.174.1619467554930;
 Mon, 26 Apr 2021 13:05:54 -0700 (PDT)
Received: from wkz-x280 (h-90-88.A259.priv.bahnhof.se. [212.85.90.88])
 by smtp.gmail.com with ESMTPSA id t14sm109074ljj.49.2021.04.26.13.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 13:05:54 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210426194026.3sr22rqyf2srrwtq@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-6-tobias@waldekranz.com>
 <20210426194026.3sr22rqyf2srrwtq@skbuf>
Date: Mon, 26 Apr 2021 22:05:52 +0200
Message-ID: <877dkoq09r.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 5/9] net: dsa: Track port PVIDs
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

On Mon, Apr 26, 2021 at 22:40, Vladimir Oltean <olteanv@gmail.com> wrote:
> Hi Tobias,
>
> On Mon, Apr 26, 2021 at 07:04:07PM +0200, Tobias Waldekranz wrote:
>> In some scenarios a tagger must know which VLAN to assign to a packet,
>> even if the packet is set to egress untagged. Since the VLAN
>> information in the skb will be removed by the bridge in this case,
>> track each port's PVID such that the VID of an outgoing frame can
>> always be determined.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>
> Let me give you this real-life example:
>
> #!/bin/bash
>
> ip link add br0 type bridge vlan_filtering 1
> for eth in eth0 eth1 swp2 swp3 swp4 swp5; do
> 	ip link set $eth up
> 	ip link set $eth master br0
> done
> ip link set br0 up
>
> bridge vlan add dev eth0 vid 100 pvid untagged
> bridge vlan del dev swp2 vid 1
> bridge vlan del dev swp3 vid 1
> bridge vlan add dev swp2 vid 100
> bridge vlan add dev swp3 vid 100 untagged
>
> reproducible on the NXP LS1021A-TSN board.
> The bridge receives an untagged packet on eth0 and floods it.
> It should reach swp2 and swp3, and be tagged on swp2, and untagged on
> swp3 respectively.
>
> With your idea of sending untagged frames towards the port's pvid,
> wouldn't we be leaking this packet to VLAN 1, therefore towards ports
> swp4 and swp5, and the real destination ports would not get this packet?

I am not sure I follow. The bridge would never send the packet to
swp{4,5} because should_deliver() rejects them (as usual). So it could
only be sent either to swp2 or swp3. In the case that swp3 is first in
the bridge's port list, it would be sent untagged, but the PVID would be
100 and the flooding would thus be limited to swp{2,3}.

You did make me realize that there is a fatal flaw in the current design
though: Using this approach, it is not possible to have multiple VLANs
configured to egress untagged out of one port. Rare, but allowed.

So the VLAN information will have to remain in the skb somehow. My
initial plan was actually to always send offloaded skbs tagged. I went
this route because I thought we already had all the information we
needed in the driver. It seems reasonable that skb->vlan_tci could
always be set for offloaded frames from a filtering bridge, no?
