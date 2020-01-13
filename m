Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA0A139D4C
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 00:30:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C80EA204B6;
	Mon, 13 Jan 2020 23:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laiCV7lY2QVO; Mon, 13 Jan 2020 23:30:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id F1650204A8;
	Mon, 13 Jan 2020 23:30:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DC8BDC077D;
	Mon, 13 Jan 2020 23:30:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2DD82C077D
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 23:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16819852C7
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 23:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHmIqUQMyFhy for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 23:30:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4827A85045
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 23:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QwAoXOqjyyg/vJ5GZRN0tl9HB/BzOvUwdKHRpL6PwmI=; b=OvKpla9ORTpemj4RUAFr9Do/Ej
 d5IvnR79Rtu/GSeeBW7wb0+8Te29GyWtZruIrafjHVaz7flLIPYt/Z6Y9Yws0FHohEyeDONTTV/6q
 9DEyMxjGCmEaRFB9inmS+f/SSN+37wW0i66XpBaMOSSqtrIwJVnXEan9IFrMDtzspMsw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ir99v-0008CN-Sw; Tue, 14 Jan 2020 00:30:11 +0100
Date: Tue, 14 Jan 2020 00:30:11 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200113233011.GF11788@lunn.ch>
References: <20200113124620.18657-1-horatiu.vultur@microchip.com>
 <20200113124620.18657-5-horatiu.vultur@microchip.com>
 <20200113140053.GE11788@lunn.ch>
 <20200113225751.jkkio4rztyuff4xj@soft-dev3.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200113225751.jkkio4rztyuff4xj@soft-dev3.microsemi.net>
Cc: ivecera@redhat.com, jakub.kicinski@netronome.com,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 vivien.didelot@gmail.com, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, dsahern@gmail.com, jiri@resnulli.us,
 olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next Patch v2 4/4] net: bridge: mrp:
 switchdev: Add HW offload
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

Hi Horatiu

It has been said a few times what the basic state machine should be in
user space. A pure software solution can use raw sockets to send and
receive MRP_Test test frames. When considering hardware acceleration,
the switchdev API you have proposed here seems quite simple. It should
not be too hard to map it to a set of netlink messages from userspace.

Yet your argument for kernel, not user space, is you are worried about
the parameters which need to be passed to the hardware offload engine.
In order to win the argument for a kernel solution, we are going to
need a better idea what you think this problem is. The MRP_Test is TLV
based. Are there other things which could be in this message? Is that
what you are worried about?

Thanks
     Andrew
