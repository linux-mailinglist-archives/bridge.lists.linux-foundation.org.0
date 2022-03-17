Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 551A84DC353
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:50:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D63741865;
	Thu, 17 Mar 2022 09:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T5_lYTDzo7il; Thu, 17 Mar 2022 09:50:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A45154187D;
	Thu, 17 Mar 2022 09:50:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 589B1C0082;
	Thu, 17 Mar 2022 09:50:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 320EAC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 296FC84222
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxHh1u2FFIJw for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:50:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADA878421C
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:50:25 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id 17so6511947lji.1
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=V0LbW5LueiWt1tPi33D71OMFfIFyzm670dcDqQa5c5Q=;
 b=CxfWZXX0kv32BD1WQ/OJcVIGTDr4mpYvX56gBYB4lFMI4e8M2MOFdiwYSYgpRCe+TV
 4SPxRzXQEvwIgxda5Ymbh2hfRKRMFdzl/A5DCtNwFYo937O58rin+LBpyg/WiuGQrJoC
 tk0QW3gTx3wonWCM8CQqjk6TN1YATpkxxJmVlCzut4UvLY0leGV53BFpmuqk3ScMWnjg
 VlbSkLyQj5YP1VxKhdl7jkFWwd5lGbfeFGCsp2gFFzE835ikvILERttvSuw22ecUqLNJ
 Slx4HOJgfqyCSbPmg3ychRF8bNbMCYqitgUCV107TpctqoH4jV/QfncMRd3OgzX25RgA
 OrAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=V0LbW5LueiWt1tPi33D71OMFfIFyzm670dcDqQa5c5Q=;
 b=fOYx9XV8io8zdOqAAOfUlQWqt/TaDDuN8nn3YZohInkzOltDl+hWBvpEcX3QAgVg2a
 zEIHSVYe8hwJw4soj7iv75rERDFhoiYmCIuPMtdEOfi5HyTqUkkNo/3W4zuAWWTn4vQV
 qkkMouiX6Hv6gYiPZcP26r2ssbo0LntRjA/f8+lhh7aWKcWs/f818Yh/lsBU9AdCeXsO
 NVCqN65ezzWHR9HSCpcDf4fY/e9dwIF1H+b1pP9hGQk4CrdLNHH5HjZU8ZpQnBN0uQfJ
 kctEDAmY7xS7UYmCGLs8GzhHhNl7enOjON18p9mdYpYIe9QxLOfjSxQ+VPiDXA07OsSN
 3dLg==
X-Gm-Message-State: AOAM530uDuw7R+8vs/MaM11KTVOiCiKoR8WtLp8jeAaY7/rMJpPlmLbY
 RrZ16J1sovJiGtxBREeoA4WecJ0ps/OMC7iIqdM=
X-Google-Smtp-Source: ABdhPJxvym9jW5qksLpKanP5JwKLvwRKTaFN2HNbX0n+AMIIcCHETjBo6F6B8r/ah3ZFDDGFy44QHQ==
X-Received: by 2002:a05:651c:1a1f:b0:247:ff8b:e691 with SMTP id
 by31-20020a05651c1a1f00b00247ff8be691mr2367542ljb.298.1647510623134; 
 Thu, 17 Mar 2022 02:50:23 -0700 (PDT)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 f11-20020a056512228b00b004487997379esm402462lfu.158.2022.03.17.02.50.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 02:50:22 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, davem@davemloft.net,
 kuba@kernel.org
In-Reply-To: <610eb6cc-4df4-f0fc-462a-b33145334a12@blackwall.org>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <610eb6cc-4df4-f0fc-462a-b33145334a12@blackwall.org>
Date: Thu, 17 Mar 2022 10:50:21 +0100
Message-ID: <87tubwkiw2.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 00/15] net: bridge: Multiple
	Spanning Trees
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

On Thu, Mar 17, 2022 at 11:00, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 16/03/2022 17:08, Tobias Waldekranz wrote:
>> The bridge has had per-VLAN STP support for a while now, since:
>> 
>> https://lore.kernel.org/netdev/20200124114022.10883-1-nikolay@cumulusnetworks.com/
>> 
>> The current implementation has some problems:
>> 
>> - The mapping from VLAN to STP state is fixed as 1:1, i.e. each VLAN
>>   is managed independently. This is awkward from an MSTP (802.1Q-2018,
>>   Clause 13.5) point of view, where the model is that multiple VLANs
>>   are grouped into MST instances.
>> 
>>   Because of the way that the standard is written, presumably, this is
>>   also reflected in hardware implementations. It is not uncommon for a
>>   switch to support the full 4k range of VIDs, but that the pool of
>>   MST instances is much smaller. Some examples:
>> 
>>   Marvell LinkStreet (mv88e6xxx): 4k VLANs, but only 64 MSTIs
>>   Marvell Prestera: 4k VLANs, but only 128 MSTIs
>>   Microchip SparX-5i: 4k VLANs, but only 128 MSTIs
>> 
>> - By default, the feature is enabled, and there is no way to disable
>>   it. This makes it hard to add offloading in a backwards compatible
>>   way, since any underlying switchdevs have no way to refuse the
>>   function if the hardware does not support it
>> 
>> - The port-global STP state has precedence over per-VLAN states. In
>>   MSTP, as far as I understand it, all VLANs will use the common
>>   spanning tree (CST) by default - through traffic engineering you can
>>   then optimize your network to group subsets of VLANs to use
>>   different trees (MSTI). To my understanding, the way this is
>>   typically managed in silicon is roughly:
>> 
>>   Incoming packet:
>>   .----.----.--------------.----.-------------
>>   | DA | SA | 802.1Q VID=X | ET | Payload ...
>>   '----'----'--------------'----'-------------
>>                         |
>>                         '->|\     .----------------------------.
>>                            | +--> | VID | Members | ... | MSTI |
>>                    PVID -->|/     |-----|---------|-----|------|
>>                                   |   1 | 0001001 | ... |    0 |
>>                                   |   2 | 0001010 | ... |   10 |
>>                                   |   3 | 0001100 | ... |   10 |
>>                                   '----------------------------'
>>                                                              |
>>                                .-----------------------------'
>>                                |  .------------------------.
>>                                '->| MSTI | Fwding | Lrning |
>>                                   |------|--------|--------|
>>                                   |    0 | 111110 | 111110 |
>>                                   |   10 | 110111 | 110111 |
>>                                   '------------------------'
>> 
>>   What this is trying to show is that the STP state (whether MSTP is
>>   used, or ye olde STP) is always accessed via the VLAN table. If STP
>>   is running, all MSTI pointers in that table will reference the same
>>   index in the STP stable - if MSTP is running, some VLANs may point
>>   to other trees (like in this example).
>> 
>>   The fact that in the Linux bridge, the global state (think: index 0
>>   in most hardware implementations) is supposed to override the
>>   per-VLAN state, is very awkward to offload. In effect, this means
>>   that when the global state changes to blocking, drivers will have to
>>   iterate over all MSTIs in use, and alter them all to match. This
>>   also means that you have to cache whether the hardware state is
>>   currently tracking the global state or the per-VLAN state. In the
>>   first case, you also have to cache the per-VLAN state so that you
>>   can restore it if the global state transitions back to forwarding.
>> 
>> This series adds a new mst_enable bridge setting (as suggested by Nik)
>> that can only be changed when no VLANs are configured on the
>> bridge. Enabling this mode has the following effect:
>> 
>> - The port-global STP state is used to represent the CST (Common
>>   Spanning Tree) (1/15)
>> 
>> - Ingress STP filtering is deferred until the frame's VLAN has been
>>   resolved (1/15)
>> 
>> - The preexisting per-VLAN states can no longer be controlled directly
>>   (1/15). They are instead placed under the MST module's control,
>>   which is managed using a new netlink interface (described in 3/15)
>> 
>> - VLANs can br mapped to MSTIs in an arbitrary M:N fashion, using a
>>   new global VLAN option (2/15)
>> 
>> Switchdev notifications are added so that a driver can track:
>> - MST enabled state
>> - VID to MSTI mappings
>> - MST port states
>> 
>> An offloading implementation is this provided for mv88e6xxx.
>> 
>> A proposal for the corresponding iproute2 interface is available here:
>> 
>> https://github.com/wkz/iproute2/tree/mst
>> 
>
> Hi Tobias,
> One major missing thing is the selftests for this new feature. Do you
> have a plan to upstream them?

100% agree. I have an internal test that I plan to adapt to run as a
kselftest. There's a bootstrapping problem here though. I can't send the
iproute2 series until the kernel support is merged - and until I know
how the iproute2 support ends up looking I can't add a kselftest.

Ideally, tools/iproute2 would be a thing in the kernel. Then you could
send the entire implementation as one series. I'm sure that's probably
been discussed many times already, but my Google-fu fails me.
