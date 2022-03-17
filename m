Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5B74DC225
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 465578423E;
	Thu, 17 Mar 2022 09:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 97ZD-EjzdKQi; Thu, 17 Mar 2022 09:00:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9014B84781;
	Thu, 17 Mar 2022 09:00:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A273C0073;
	Thu, 17 Mar 2022 09:00:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3DC29C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 102D6612B0
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zpWVjS4iXUaS for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:00:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CFBB612AE
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:00:41 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id b24so5685403edu.10
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ioWEXzquDWHeeiOk5WANDAY/UZxcw0vNdnj9B/3BeGo=;
 b=wr0i6WMsc5NWB3lT4XIYdpN/T5oViy8jhC4Qq7OKe5yVPedC/bYw/k+uEswkOh9v0x
 pjvsaTnbVZ7pF/BvztJniNmJGMciCT4MRWLt1FvV8WjCig/o1tWuHfMuRLPtTy/1wqEK
 NXbfqGB1Jht6f7v5IVU+iEUY7qOhDreTXPJbk/nWq1RgVD6Gd2/WccraK1WiWAfNl/q/
 BhBGxR51HX1fzFNOVGrsZ2Y2aB1vqMMnLyYmlBdr42LASGLxkddTIv6Fo5P78Svkxsr2
 9a0PE2Fu9Ed2M/2FhWoUe/ElqJF4ZOY0xUdgpUWSuozSHjFATLQWHPpTzkgc/NL6MWaL
 tt4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ioWEXzquDWHeeiOk5WANDAY/UZxcw0vNdnj9B/3BeGo=;
 b=kMaGLZwjOncqqcy0LBpNjvDggaxPXpYfuPB+aEYc3Xl97C6n8/qc5zQk6En5uBBY3V
 nMuU+3vhCMmB4riwS6ufisxueVrNs7D79NOJazx2/yxiM/zKsBlrNuovqxwD9Ndz71/0
 lkHtnL6DxJTOERpOw9zYhNOc6qm4iQOKEPtFloJD9GveVzHIA4uSEOGoU8Fe9nv+ZMrx
 3J6Rdse/20H9ferampaY7ewh0507ESsSUY5RdHFHOr19azIsZf0jPP+VmQpfqKPqASBX
 lB8Tbj9vVZY8ziQK1OfP8q4GuUMdqpJbGG1EDFyxk2RTl+TAixXVCGmN7cdJ5WhhcJct
 pWTA==
X-Gm-Message-State: AOAM531lJ7UoNOIqDb2CSkj0LCkFNuWlSo5A8jLosjx/bllkpu8DuCjR
 iUdUqMoQ5LuZALwoMhWXrHlz9g==
X-Google-Smtp-Source: ABdhPJzKVLUvYg7NMsw+S7EgudGELUf7RQ2oInfgxauvMZhYQL+jFRlVCufjOgBwZCnGL6GaigNkHw==
X-Received: by 2002:a05:6402:4390:b0:416:a29c:660c with SMTP id
 o16-20020a056402439000b00416a29c660cmr3241202edc.149.1647507639752; 
 Thu, 17 Mar 2022 02:00:39 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 g11-20020a170906538b00b006ae38eb0561sm2090779ejo.195.2022.03.17.02.00.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 02:00:39 -0700 (PDT)
Message-ID: <610eb6cc-4df4-f0fc-462a-b33145334a12@blackwall.org>
Date: Thu, 17 Mar 2022 11:00:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-1-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> The bridge has had per-VLAN STP support for a while now, since:
> 
> https://lore.kernel.org/netdev/20200124114022.10883-1-nikolay@cumulusnetworks.com/
> 
> The current implementation has some problems:
> 
> - The mapping from VLAN to STP state is fixed as 1:1, i.e. each VLAN
>   is managed independently. This is awkward from an MSTP (802.1Q-2018,
>   Clause 13.5) point of view, where the model is that multiple VLANs
>   are grouped into MST instances.
> 
>   Because of the way that the standard is written, presumably, this is
>   also reflected in hardware implementations. It is not uncommon for a
>   switch to support the full 4k range of VIDs, but that the pool of
>   MST instances is much smaller. Some examples:
> 
>   Marvell LinkStreet (mv88e6xxx): 4k VLANs, but only 64 MSTIs
>   Marvell Prestera: 4k VLANs, but only 128 MSTIs
>   Microchip SparX-5i: 4k VLANs, but only 128 MSTIs
> 
> - By default, the feature is enabled, and there is no way to disable
>   it. This makes it hard to add offloading in a backwards compatible
>   way, since any underlying switchdevs have no way to refuse the
>   function if the hardware does not support it
> 
> - The port-global STP state has precedence over per-VLAN states. In
>   MSTP, as far as I understand it, all VLANs will use the common
>   spanning tree (CST) by default - through traffic engineering you can
>   then optimize your network to group subsets of VLANs to use
>   different trees (MSTI). To my understanding, the way this is
>   typically managed in silicon is roughly:
> 
>   Incoming packet:
>   .----.----.--------------.----.-------------
>   | DA | SA | 802.1Q VID=X | ET | Payload ...
>   '----'----'--------------'----'-------------
>                         |
>                         '->|\     .----------------------------.
>                            | +--> | VID | Members | ... | MSTI |
>                    PVID -->|/     |-----|---------|-----|------|
>                                   |   1 | 0001001 | ... |    0 |
>                                   |   2 | 0001010 | ... |   10 |
>                                   |   3 | 0001100 | ... |   10 |
>                                   '----------------------------'
>                                                              |
>                                .-----------------------------'
>                                |  .------------------------.
>                                '->| MSTI | Fwding | Lrning |
>                                   |------|--------|--------|
>                                   |    0 | 111110 | 111110 |
>                                   |   10 | 110111 | 110111 |
>                                   '------------------------'
> 
>   What this is trying to show is that the STP state (whether MSTP is
>   used, or ye olde STP) is always accessed via the VLAN table. If STP
>   is running, all MSTI pointers in that table will reference the same
>   index in the STP stable - if MSTP is running, some VLANs may point
>   to other trees (like in this example).
> 
>   The fact that in the Linux bridge, the global state (think: index 0
>   in most hardware implementations) is supposed to override the
>   per-VLAN state, is very awkward to offload. In effect, this means
>   that when the global state changes to blocking, drivers will have to
>   iterate over all MSTIs in use, and alter them all to match. This
>   also means that you have to cache whether the hardware state is
>   currently tracking the global state or the per-VLAN state. In the
>   first case, you also have to cache the per-VLAN state so that you
>   can restore it if the global state transitions back to forwarding.
> 
> This series adds a new mst_enable bridge setting (as suggested by Nik)
> that can only be changed when no VLANs are configured on the
> bridge. Enabling this mode has the following effect:
> 
> - The port-global STP state is used to represent the CST (Common
>   Spanning Tree) (1/15)
> 
> - Ingress STP filtering is deferred until the frame's VLAN has been
>   resolved (1/15)
> 
> - The preexisting per-VLAN states can no longer be controlled directly
>   (1/15). They are instead placed under the MST module's control,
>   which is managed using a new netlink interface (described in 3/15)
> 
> - VLANs can br mapped to MSTIs in an arbitrary M:N fashion, using a
>   new global VLAN option (2/15)
> 
> Switchdev notifications are added so that a driver can track:
> - MST enabled state
> - VID to MSTI mappings
> - MST port states
> 
> An offloading implementation is this provided for mv88e6xxx.
> 
> A proposal for the corresponding iproute2 interface is available here:
> 
> https://github.com/wkz/iproute2/tree/mst
> 

Hi Tobias,
One major missing thing is the selftests for this new feature. Do you
have a plan to upstream them?

Cheers,
 Nik
