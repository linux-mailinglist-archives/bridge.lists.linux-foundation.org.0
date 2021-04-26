Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B43036BAB2
	for <lists.bridge@lfdr.de>; Mon, 26 Apr 2021 22:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E1A8401D6;
	Mon, 26 Apr 2021 20:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypVDLNVw6MuS; Mon, 26 Apr 2021 20:28:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id D798B4037A;
	Mon, 26 Apr 2021 20:28:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8DEB4C001C;
	Mon, 26 Apr 2021 20:28:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC306C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 20:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1AED83720
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 20:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6d02JJL1hMuj for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 20:28:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9FB083260
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 20:28:03 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id n2so86343472ejy.7
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 13:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6HryAfYx3/zRXSaYfBE41paZ2g8+TvoZJzNvgMqI3p0=;
 b=samMgfVtK07V7kktgrg6kYx5HKlNUtfR+kqEs4e832tnWwHxUpdT1WUviBRKrk5Sc0
 P5VCd4DirH9sZlY49wNWi2YmzfYatnXc4deNz92XfvhebmAMxv/JUhgNmTPewmDwDr+P
 7bIOudiJqvMV5aYSi0wET0rr4d7OfFBG0bDVkyR4lfItpXXJMkdEE1kAwYorh/gNPlGz
 G3qS1JHwbJEMTySYXm+LFmDxgY9ZUs/N9bDg0JoaGmGKIt5Ta4Jx9nRUngo2u++hap9i
 y9vuN6P/S0guspjhiUuNZBuvUt5+PpTwrTYd0WSxcmX4zQ0CuckqlBHLWmP4SHZRI1+p
 iLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6HryAfYx3/zRXSaYfBE41paZ2g8+TvoZJzNvgMqI3p0=;
 b=fo0JOWblrQG6WyQHIKnmLG6lxvHI7zu0uACvPgztYht/kpyCm8Icl4dV5ONcxkFBDL
 Dc9bcNlylzCNvCA4hsx09j4FJfHuiUG5C6KUMP+/ftZjDfMHS4a1LG8Yd4wbFUKNFP/I
 /e2piGzjLmXqy+OuoAPDcgug2nIxi3d7okEvUlY8ygEEiv/h7sZp9N9X/KUavE/VidG0
 idv3jKrgrrfFLDCgLYXmCztvXHaP6XR+ObQhcfwOvVEt/SKkvz5BhsnAk3RjJE4IsugY
 nSIebMLo/27Xr6btWn2wzvyNlB02I/rPjfUnZWybhHXBuYMAKHzvferUmhTp/Rv9bYe1
 yc1Q==
X-Gm-Message-State: AOAM531VvzCEYhentNt4Arge9xZp9w5UqNpadBPGGrhsEJGG9c35o6Zq
 l/XODPeULTt6cOa77/wUGBY=
X-Google-Smtp-Source: ABdhPJyeS7rNhoTFa/fi5p9g96F4gPzwWBW7CdQ3LMslRcWEXcNK01xSuYKsEO4yJzDu+jVo2o6q8A==
X-Received: by 2002:a17:907:3f08:: with SMTP id
 hq8mr20451737ejc.90.1619468882188; 
 Mon, 26 Apr 2021 13:28:02 -0700 (PDT)
Received: from skbuf (5-12-16-165.residential.rdsnet.ro. [5.12.16.165])
 by smtp.gmail.com with ESMTPSA id n12sm640642edw.95.2021.04.26.13.28.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 13:28:01 -0700 (PDT)
Date: Mon, 26 Apr 2021 23:28:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210426202800.y4hfurf5k3hrbvqf@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-6-tobias@waldekranz.com>
 <20210426194026.3sr22rqyf2srrwtq@skbuf>
 <877dkoq09r.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877dkoq09r.fsf@waldekranz.com>
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

On Mon, Apr 26, 2021 at 10:05:52PM +0200, Tobias Waldekranz wrote:
> On Mon, Apr 26, 2021 at 22:40, Vladimir Oltean <olteanv@gmail.com> wrote:
> > Hi Tobias,
> >
> > On Mon, Apr 26, 2021 at 07:04:07PM +0200, Tobias Waldekranz wrote:
> >> In some scenarios a tagger must know which VLAN to assign to a packet,
> >> even if the packet is set to egress untagged. Since the VLAN
> >> information in the skb will be removed by the bridge in this case,
> >> track each port's PVID such that the VID of an outgoing frame can
> >> always be determined.
> >> 
> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> >> ---
> >
> > Let me give you this real-life example:
> >
> > #!/bin/bash
> >
> > ip link add br0 type bridge vlan_filtering 1
> > for eth in eth0 eth1 swp2 swp3 swp4 swp5; do
> > 	ip link set $eth up
> > 	ip link set $eth master br0
> > done
> > ip link set br0 up
> >
> > bridge vlan add dev eth0 vid 100 pvid untagged
> > bridge vlan del dev swp2 vid 1
> > bridge vlan del dev swp3 vid 1
> > bridge vlan add dev swp2 vid 100
> > bridge vlan add dev swp3 vid 100 untagged
> >
> > reproducible on the NXP LS1021A-TSN board.
> > The bridge receives an untagged packet on eth0 and floods it.
> > It should reach swp2 and swp3, and be tagged on swp2, and untagged on
> > swp3 respectively.
> >
> > With your idea of sending untagged frames towards the port's pvid,
> > wouldn't we be leaking this packet to VLAN 1, therefore towards ports
> > swp4 and swp5, and the real destination ports would not get this packet?
> 
> I am not sure I follow. The bridge would never send the packet to
> swp{4,5} because should_deliver() rejects them (as usual). So it could
> only be sent either to swp2 or swp3. In the case that swp3 is first in
> the bridge's port list, it would be sent untagged, but the PVID would be
> 100 and the flooding would thus be limited to swp{2,3}.

Sorry, _I_ don't understand.

When you say that the PVID is 100, whose PVID is it, exactly? Is it the
pvid of the source port (aka eth0 in this example)? That's not what I
see, I see the pvid of the egress port (the Marvell device)...

So to reiterate: when you transmit a packet towards your hardware switch
which has br0 inside the sb_dev, how does the switch know in which VLAN
to forward that packet? As far as I am aware, when the bridge had
received the packet as untagged on eth0, it did not insert VLAN 100 into
the skb itself, so the bridge VLAN information is lost when delivering
the frame to the egress net device. Am I wrong?
