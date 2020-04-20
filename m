Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4721B0CAD
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 15:31:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 326DF86B50;
	Mon, 20 Apr 2020 13:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LjWUpWCoftgm; Mon, 20 Apr 2020 13:31:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1B2986064;
	Mon, 20 Apr 2020 13:31:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D85B0C1D8D;
	Mon, 20 Apr 2020 13:31:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 30758C0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 13:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1FBB586447
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 13:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yr7zVmKm-up7 for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 13:31:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4684D86064
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 13:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bTtcioAVktBgcUTfi+bs1vdsWqSYfUDLbtTIZdRCNz8=; b=C7umDL1g3lTk+Vwd6Q6R0TWE8u
 q7btrSM81MUhI7cA63GDWG6lBHEUvpaDoh5aKxalnyyfYBVroMKB0Jz+Xt1OLMaCdTaevIGn4k8GH
 wz8y9FMWVXo4VBUod7x34sn1aIm9rZklz06PbBUXAraOLvFVIah0Y70QY21SQ0Mv3x3Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jQWW0-003pci-00; Mon, 20 Apr 2020 15:31:12 +0200
Date: Mon, 20 Apr 2020 15:31:11 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: DENG Qingfang <dqfext@gmail.com>
Message-ID: <20200420133111.GL785713@lunn.ch>
References: <20200419161946.19984-1-dqfext@gmail.com>
 <20200419164251.GM836632@lunn.ch>
 <CALW65jYmcZJoP_i5=bgeWpcibzOmEPne3mHyBngE5bTiOZreDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALW65jYmcZJoP_i5=bgeWpcibzOmEPne3mHyBngE5bTiOZreDw@mail.gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S . Miller" <davem@davemloft.net>,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [RFC PATCH net-next] net: bridge: fix client roaming
 from DSA user port
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

> When a client moves from a hardware port (e.g. sw0p1) to a software port (wlan0)
> or another hardware port that belongs to a different switch (sw1p1),
> that MAC entry
> in sw0's MAC table should be deleted, or replaced with the CPU port as
> destination,
> by DSA. Otherwise the client is unable to talk to other hosts on sw0 because sw0
> still thinks the client is on sw0p1.

The MAC address needs to move, no argument there. But what are the
mechanisms which cause this. Is learning sufficient, or does DSA need
to take an active role?

Forget about DSA for the moment. How does this work for two normal
bridges? Is the flow of unicast packets sufficient? Does it requires a
broadcast packet from the device after it moves?

	  Andrew
