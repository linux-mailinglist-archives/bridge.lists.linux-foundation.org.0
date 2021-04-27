Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BED36C181
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 11:13:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFCCE4059D;
	Tue, 27 Apr 2021 09:13:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8BWoyQ-ZT4t; Tue, 27 Apr 2021 09:13:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAF4D4058F;
	Tue, 27 Apr 2021 09:13:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0883C001C;
	Tue, 27 Apr 2021 09:13:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E667DC000B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 09:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0D7483C2B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 09:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UmuUm7WMdImY for <bridge@lists.linux-foundation.org>;
 Tue, 27 Apr 2021 09:13:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DF1383C2A
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 09:13:00 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id m7so56537580ljp.10
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 02:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Gjx1++pZJ1N245hIBg9MYcOL5Mo7UMv0gn7uV+nKO/Q=;
 b=To8NTSsufPt1xl4Uin4I/czLrAuThfALvfpZT+v81Qk9yAUXSSYIbND/gqxDciLkOV
 U90C8a1Yn4Yf1jtnt10lMEZjDCFnRNNEz6V8+FVNg9tm1WXwXpuVLp/HpP2zXx+tTJR9
 7cq1bWkUH47J80nFa2KZot+CTffXk7FPFn9yt2FoouwAUMx6Kfw+M5Diws+15+++ihqV
 1Novp/JmNP2VJhDKAAIs8J1sqRQpba7SKVeA6JlC09r+OOe9DNv/m4JC7xd0YwcEz0FF
 F/zQNFwSfqDBSAltmHVGJmK2c9/xgZKERnFDkwGdDBFlaaUKKC1oAPlcHaSh+d8ZdPWN
 mYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Gjx1++pZJ1N245hIBg9MYcOL5Mo7UMv0gn7uV+nKO/Q=;
 b=HMtX2+CMjXI4SpTBw8OYvceyRRAtOD7el1h0d05PHOZMynTlS6uRIEG1QdoRi3Kcdj
 9VISmhMoz2t6HiS30cNViIza9zC9s7zSwZfssKeQv3YWiI3X9UR5kM4s34MrZYiqiljj
 yFtynp3wbCO7z5LSbJ47jlEedOZenHk4HcLVCogJ9gA4FaRmjbic1g8d7ZRTBng9Oik+
 OEsWaYhTkLm+sesPTAXxfhn8qH5jImcdm1APflKj1qMACmfxPn3DTpYwcuzljaMCNO1p
 v1uIZuiSrFkSRSkPf2ZBJIceTDLU0aJrfAlmly6deFkfOq0dGsl6ENJzj3IoVMV+8XQh
 iNAA==
X-Gm-Message-State: AOAM531xY0EB8krZEuXZWxcw7mX/30CeSa52jFf4arQRB7cXjJSNttKR
 IBxIopzAeZQA9fqloT6xHkDEYkjKeS2Epg==
X-Google-Smtp-Source: ABdhPJzpK5rhwc20jQdcvfZ8NPh51YasaIsqqnfU+84RWhxSiP1rTn6f+5sYfFcU8o/fVs2Ub26PRw==
X-Received: by 2002:a05:651c:2047:: with SMTP id
 t7mr16132176ljo.308.1619514777493; 
 Tue, 27 Apr 2021 02:12:57 -0700 (PDT)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id p18sm278297ljo.75.2021.04.27.02.12.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:12:57 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210426202800.y4hfurf5k3hrbvqf@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-6-tobias@waldekranz.com>
 <20210426194026.3sr22rqyf2srrwtq@skbuf> <877dkoq09r.fsf@waldekranz.com>
 <20210426202800.y4hfurf5k3hrbvqf@skbuf>
Date: Tue, 27 Apr 2021 11:12:56 +0200
Message-ID: <8735vcoztz.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, Apr 26, 2021 at 23:28, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Mon, Apr 26, 2021 at 10:05:52PM +0200, Tobias Waldekranz wrote:
>> On Mon, Apr 26, 2021 at 22:40, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > Hi Tobias,
>> >
>> > On Mon, Apr 26, 2021 at 07:04:07PM +0200, Tobias Waldekranz wrote:
>> >> In some scenarios a tagger must know which VLAN to assign to a packet,
>> >> even if the packet is set to egress untagged. Since the VLAN
>> >> information in the skb will be removed by the bridge in this case,
>> >> track each port's PVID such that the VID of an outgoing frame can
>> >> always be determined.
>> >> 
>> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> >> ---
>> >
>> > Let me give you this real-life example:
>> >
>> > #!/bin/bash
>> >
>> > ip link add br0 type bridge vlan_filtering 1
>> > for eth in eth0 eth1 swp2 swp3 swp4 swp5; do
>> > 	ip link set $eth up
>> > 	ip link set $eth master br0
>> > done
>> > ip link set br0 up
>> >
>> > bridge vlan add dev eth0 vid 100 pvid untagged
>> > bridge vlan del dev swp2 vid 1
>> > bridge vlan del dev swp3 vid 1
>> > bridge vlan add dev swp2 vid 100
>> > bridge vlan add dev swp3 vid 100 untagged
>> >
>> > reproducible on the NXP LS1021A-TSN board.
>> > The bridge receives an untagged packet on eth0 and floods it.
>> > It should reach swp2 and swp3, and be tagged on swp2, and untagged on
>> > swp3 respectively.
>> >
>> > With your idea of sending untagged frames towards the port's pvid,
>> > wouldn't we be leaking this packet to VLAN 1, therefore towards ports
>> > swp4 and swp5, and the real destination ports would not get this packet?
>> 
>> I am not sure I follow. The bridge would never send the packet to
>> swp{4,5} because should_deliver() rejects them (as usual). So it could
>> only be sent either to swp2 or swp3. In the case that swp3 is first in
>> the bridge's port list, it would be sent untagged, but the PVID would be
>> 100 and the flooding would thus be limited to swp{2,3}.
>
> Sorry, _I_ don't understand.
>
> When you say that the PVID is 100, whose PVID is it, exactly? Is it the
> pvid of the source port (aka eth0 in this example)? That's not what I
> see, I see the pvid of the egress port (the Marvell device)...

I meant the PVID of swp3.

In summary: This series incorrectly assumes that a port's PVID always
corresponds to the VID that should be assigned to untagged packets on
egress. This is wrong because PVID only specifies which VID to assign
packets to on ingress, it says nothing about policy on egress. Multiple
VIDs can also be configured to egress untagged on a given port. The VID
must thus be sent along with each packet in order for the driver to be
able to assign it to the correct VID.

> So to reiterate: when you transmit a packet towards your hardware switch
> which has br0 inside the sb_dev, how does the switch know in which VLAN
> to forward that packet? As far as I am aware, when the bridge had
> received the packet as untagged on eth0, it did not insert VLAN 100 into
> the skb itself, so the bridge VLAN information is lost when delivering
> the frame to the egress net device. Am I wrong?

VID 100 is inserted into skb->vlan_tci on ingress from eth0, in
br_vlan.c/__allowed_ingress. It is then cleared again in
br_vlan.c/br_handle_vlan if the egress port (swp3 in our example) is set
to egress the VID untagged.

The last step only clears skb->vlan_present though, the actual VID
information still resides in skb->vlan_tci. I tried just removing 5/9
from this series, and then sourced the VID from skb->vlan_tci for
untagged packets. It works like a charm! I think this is the way
forward.

The question is if we need another bit of information to signal that
skb->vlan_tci contains valid information, but the packet should still be
considered untagged? This could also be used on Rx to carry priority
(PCP) information to the bridge.
