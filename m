Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E71403C9C5A
	for <lists.bridge@lfdr.de>; Thu, 15 Jul 2021 12:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D6EE60ADE;
	Thu, 15 Jul 2021 10:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NLL9rnBEV_cB; Thu, 15 Jul 2021 10:03:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D3FC660B2B;
	Thu, 15 Jul 2021 10:03:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D758CC000E;
	Thu, 15 Jul 2021 10:03:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DAE9DC000E
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 17:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5285401B3
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 17:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=blackhole.sk
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBAe4MmXyTNW for <bridge@lists.linux-foundation.org>;
 Mon, 12 Jul 2021 17:27:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-proxyout-mua-31.websupport.eu
 (mail-proxyout-mua-31.websupport.eu [37.9.172.181])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FE8C400E9
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 17:27:27 +0000 (UTC)
Received: from in-1.websupport.sk (unknown [10.10.2.101])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mail-proxyout-mua-31.websupport.eu (Postfix) with ESMTPS id 6876DC04E9;
 Mon, 12 Jul 2021 19:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackhole.sk;
 s=mail; t=1626110835;
 bh=1Z+7eKuQGefXsiLmO54SfAanWObwQV+Nmi5tV4R3u7o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=M1B/1GM91bA66bvkS5pB9vyTSJM2mE6+CKSdJq0ZKYfGSaXIWZxsg+Mf71uN6aUmq
 DorGBzhYUzlU/b8kw5102jFwR2MGv3BGVK+9ADN/zjEJgBWbZjGt/rV0XHcNB76QFe
 n+wqu3Ft2GrNYEzUTu1R/lD7ZkQVRmvSF0TJT9Co=
Received: from thinkpad (otava-0257.koleje.cuni.cz [78.128.181.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kabel@blackhole.sk)
 by in-1.websupport.sk (Postfix) with ESMTPSA id 4GNrL85jJZz5vlZ;
 Mon, 12 Jul 2021 19:27:12 +0200 (CEST)
Date: Mon, 12 Jul 2021 19:27:11 +0200
From: Marek Behun <kabel@blackhole.sk>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210712192711.126f2b35@thinkpad>
In-Reply-To: <20210712170120.xo34ztomimq5oqdg@skbuf>
References: <20210712152142.800651-1-vladimir.oltean@nxp.com>
 <20210712174059.7916c0da@thinkpad>
 <20210712170120.xo34ztomimq5oqdg@skbuf>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Out-Spamd-Result: default: False [1.90 / 1000.00]; ARC_NA(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; RCPT_COUNT_TWELVE(0.00)[15];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 ASN(0.00)[asn:2852, ipnet:78.128.128.0/17, country:CZ];
 FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,davemloft.net,lunn.ch,gmail.com,resnulli.us,idosch.org,waldekranz.com,nvidia.com,networkplumber.org,lists.linux-foundation.org,ti.com];
 SUSPICIOUS_RECIPS(1.50)[]
X-Out-Rspamd-Server: mail-antispam-4
X-Out-Rspamd-Queue-Id: 4GNrL85jJZz5vlZ
Authentication-Results: in-1.websupport.sk;
 auth=pass smtp.auth=kabel@blackhole.sk smtp.mailfrom=kabel@blackhole.sk
X-Mailman-Approved-At: Thu, 15 Jul 2021 10:03:23 +0000
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@idosch.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [RFC PATCH v3 net-next 00/24] Allow forwarding for the
 software bridge data path to be offloaded to capable devices
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

Hi Vladimir,

On Mon, 12 Jul 2021 17:01:21 +0000
Vladimir Oltean <vladimir.oltean@nxp.com> wrote:

> Hi Marek,
> 
> On Mon, Jul 12, 2021 at 05:40:59PM +0200, Marek Behun wrote:
> > Vladimir, on what mv88e6xxx devices are you developing this stuff?
> > Do you use Turris MOX for this?  
> 
> I didn't develop the Marvell stuff nor did I come up with the idea
> there, Tobias did. I also am not particularly interested in supporting
> this for Marvell beyond making sure that the patches look simple and
> okay, and pave the way for other drivers to do the same thing.
> 
> I did my testing using a different DSA driver and extra patches which
> I did not post here yet. I just reposted/adapted Tobias' work because
> mv88e6xxx needs less work to support the TX data plane offload, and this
> framework does need a first user to get accepted, so why delay it any
> further if mv88e6xxx needs 2 patches whereas other drivers need 30.
> 
> I did use the MOX for some minimal testing however, at least as far as
> I could - there is this COMPHY SERDES bug in the bootloader which makes
> the board fail to boot, and now the device tree workaround you gave me
> does not appear to bypass the issue any longer or I didn't reaply it
> properly.

Sorry about that. Current upstream U-Boot solves this issue, but we did
not release official update yet because there are still some things that
need to be done. We have some RCs, though.

If you are interested, it is pretty easy to upgrade:
- MTD partition "secure-firmware" needs to be flashed with
    https://gitlab.nic.cz/turris/mox-boot-builder/uploads/8d5a17fae8f6e14ca11968ee5174c7ca/trusted-secure-firmware.bin
  (this file needs to be signed by CZ.NIC)
- MTD partition "a53-firmware" (or "u-boot" in older DTS) needs to be
  flashed with
    https://secure.nic.cz/files/mbehun/a53-firmware.bin
  (this file can be built by users themselves)

> The point is that it isn't as easy as I would have liked to
> use the MOX for testing. I was able to validate the "net: dsa: track the
> number of switches in a tree" patch on MOX, though, since DSA probes
> earlier than xhci, and even though the boot hung, I did put some prints
> and got the expected results.

I will try to do some tests with this patch series.

Marek
