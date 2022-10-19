Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D9605009
	for <lists.bridge@lfdr.de>; Wed, 19 Oct 2022 20:58:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45C1041BE2;
	Wed, 19 Oct 2022 18:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45C1041BE2
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=s/QRSEYU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RqqZd1DnNZCY; Wed, 19 Oct 2022 18:58:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 891CD41BE1;
	Wed, 19 Oct 2022 18:58:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 891CD41BE1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BB16C0078;
	Wed, 19 Oct 2022 18:58:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B66E1C002D
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 18:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8077441BE5
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 18:58:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8077441BE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id auDznDeKcfSk for <bridge@lists.linux-foundation.org>;
 Wed, 19 Oct 2022 18:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92A5541BE2
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92A5541BE2
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 18:58:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 03989B825B6;
 Wed, 19 Oct 2022 18:58:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F1BC433C1;
 Wed, 19 Oct 2022 18:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666205891;
 bh=onZg9bkGpyLkmJj2Fk6FDBy22LakxbtW4dE3qVAG/38=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s/QRSEYU6CfqIOUb1Rd8FcgomGAdkwREiqcsrf0LmVB9BwF9/81d8Y1hYeN2s3s/Y
 VoD8ADpfMfOiR0hdz4/cPi94E1+bLqNMVKT3J3vpLIc8aXADo8Vb56zjYqOzZIHQwm
 Q/38SLzyoFqo+T2vN+Dfl2YnHovoF/ZOdzxqgukeU0G4xJlnQ2zpVco6wuhLDrMUFm
 x1INfQdLxkSsRmgDATky2yE9RbY+tdV1L5uYXxmL7MoWBO6cUCPVPiaEIaejaYJt2X
 WiE0FZaJ76F0pnzhQxC5KrFNPUpv4xh85ymDN5KCcuWPKeVTpLc3sRp4Qbnax2+ZFj
 iBmEGWQCRlBLg==
Date: Wed, 19 Oct 2022 11:58:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20221019115809.552812a5@kernel.org>
In-Reply-To: <20221018165619.134535-1-netdev@kapio-technology.com>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 00/12] Extend locked port feature
 with FDB locked flag (MAC-Auth/MAB)
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

On Tue, 18 Oct 2022 18:56:07 +0200 Hans J. Schultz wrote:
> This patch set extends the locked port feature for devices
> that are behind a locked port, but do not have the ability to
> authorize themselves as a supplicant using IEEE 802.1X.
> Such devices can be printers, meters or anything related to
> fixed installations. Instead of 802.1X authorization, devices
> can get access based on their MAC addresses being whitelisted.

FWIW half of this posting got stuck on the "email pipes" for a day..
somehow. Let's give Ido and others a chance to have a look but you'll
need to repost even if it's flawless because the build bots can't deal
with a delay that long :(
