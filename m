Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D4C36BA2C
	for <lists.bridge@lfdr.de>; Mon, 26 Apr 2021 21:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3ECE340425;
	Mon, 26 Apr 2021 19:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfHN8oplKmVP; Mon, 26 Apr 2021 19:40:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EA6240451;
	Mon, 26 Apr 2021 19:40:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5AB6CC001C;
	Mon, 26 Apr 2021 19:40:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF4BCC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 19:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5D9C400CE
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 19:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Oo2WyOah4IM for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 19:40:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D28A40004
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 19:40:29 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id i3so41452122edt.1
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 12:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Is2SDw8WeN8XVXoywR6GIkJzDlR3VcflqryG4qw9d8I=;
 b=ueRq8J2oOg2cDQawuLIidmcLpsWVOn320XQbHevQDQFX1pqUMprNUFGbR23FVS3nTE
 Uc4qQs2befSyroRSuplHhB0omOiXVJCP1fvYP3UaoyaijKoG7KYyLRyaGdvzALeELsZK
 GfTbZnHlX8cgz3L9NpiaFj0cJmzb7zeWSfA331y50C6TPL401IUVkivlNKAloSjkAvxd
 zhU1D6vM9q5MQ/1JzQ0+2HVlenqXYpZCflgkCeda7NOqkyaprjlQJL/O/YrYeUteHMKr
 0jI6+q1Uq+ZQAQgeDj+ER/xsnHtcnTEAiddGXRpldDhA27/dOoQ6eKh2Wu/xE7Uh/WhR
 L+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Is2SDw8WeN8XVXoywR6GIkJzDlR3VcflqryG4qw9d8I=;
 b=j168WRvq6/0HnxMI2UrADWL4p/SMJN49Znf/1EEp4KB0BBNvOV5xdkcsBoB4FsszV/
 5FvohocU7rPUo4RR9fH6eUKzeFrCYSjd5U2voxPsREo0jqEubpzL/6qHCKB+A3bHWNDa
 Nt0IczZzeTzm6+g7GKfHGTEW5rVEHqjfPI3SvopPEkgXYZVL6rm9+YdZdd4L2CbPkCPe
 uQMVgxuCDf1jGpMwSAqa8nKMxwiLOBhyFJIOupMWPVvXNl5zxCaemKJL5Bd9jUqXtnLc
 A4sz2LDqu9X74ZiB3tPIj2z7qhMllu6S0LRBws4r3ZsdnL5AHxZXd2oYTjcRy4zeOphu
 4+LQ==
X-Gm-Message-State: AOAM530DS3tz1skaiTTXASvXIHb8urDl28nTzGd5Igi7UuXENDgtA8Ag
 9hrMGsi+C5ak7AO3OastKXg=
X-Google-Smtp-Source: ABdhPJwSjXK9iN2Jta354iUSV1YcFrkLwVahg3PrhUegd2cne5RyDoBF4cNv+LUk6pzLI0abflOj0Q==
X-Received: by 2002:a05:6402:4405:: with SMTP id
 y5mr310923eda.149.1619466028283; 
 Mon, 26 Apr 2021 12:40:28 -0700 (PDT)
Received: from skbuf (5-12-16-165.residential.rdsnet.ro. [5.12.16.165])
 by smtp.gmail.com with ESMTPSA id br14sm12139667ejb.61.2021.04.26.12.40.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 12:40:27 -0700 (PDT)
Date: Mon, 26 Apr 2021 22:40:26 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210426194026.3sr22rqyf2srrwtq@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-6-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426170411.1789186-6-tobias@waldekranz.com>
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

Hi Tobias,

On Mon, Apr 26, 2021 at 07:04:07PM +0200, Tobias Waldekranz wrote:
> In some scenarios a tagger must know which VLAN to assign to a packet,
> even if the packet is set to egress untagged. Since the VLAN
> information in the skb will be removed by the bridge in this case,
> track each port's PVID such that the VID of an outgoing frame can
> always be determined.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

Let me give you this real-life example:

#!/bin/bash

ip link add br0 type bridge vlan_filtering 1
for eth in eth0 eth1 swp2 swp3 swp4 swp5; do
	ip link set $eth up
	ip link set $eth master br0
done
ip link set br0 up

bridge vlan add dev eth0 vid 100 pvid untagged
bridge vlan del dev swp2 vid 1
bridge vlan del dev swp3 vid 1
bridge vlan add dev swp2 vid 100
bridge vlan add dev swp3 vid 100 untagged

reproducible on the NXP LS1021A-TSN board.
The bridge receives an untagged packet on eth0 and floods it.
It should reach swp2 and swp3, and be tagged on swp2, and untagged on
swp3 respectively.

With your idea of sending untagged frames towards the port's pvid,
wouldn't we be leaking this packet to VLAN 1, therefore towards ports
swp4 and swp5, and the real destination ports would not get this packet?
