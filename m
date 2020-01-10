Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D238D13740C
	for <lists.bridge@lfdr.de>; Fri, 10 Jan 2020 17:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 425DF85B99;
	Fri, 10 Jan 2020 16:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-LWYlSJ_lKH; Fri, 10 Jan 2020 16:48:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7647E86B82;
	Fri, 10 Jan 2020 16:48:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4EF30C0881;
	Fri, 10 Jan 2020 16:48:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87DEEC0881
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 16:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7426222219
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 16:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWOJZXgjI3Pw for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jan 2020 16:48:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 46469221FF
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 16:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vy2KD8u+BGYIDw6PxzqkmDZBzhBcbSdW6vHaku/QLXo=; b=tWvXfsZN4O/tRDQojzB7SxLRGm
 8JNn9xER9FyEqAU9aPyHgoaicpty03M2kCX2DvuDWf1l7p6xHn3uiucytfotEg8xzjU7rbGaJcNgF
 ikFk5W6F8zOay5rIyUa+4zl+T4PsDrwZ+ktSHvyIBQLjElPU6svVDM0W3LaLqkxZYt2M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ipxSB-0001YL-E5; Fri, 10 Jan 2020 17:48:07 +0100
Date: Fri, 10 Jan 2020 17:48:07 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20200110164807.GA1849@lunn.ch>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <6f1936e9-97e5-9502-f062-f2925c9652c9@cumulusnetworks.com>
 <20200110160456.enzomhfsce7bptu3@soft-dev3.microsemi.net>
 <CA+h21hrq7U4EdqSgpYQRjK8rkcJdvD5jXCSOH_peA-R4xCocTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+h21hrq7U4EdqSgpYQRjK8rkcJdvD5jXCSOH_peA-R4xCocTg@mail.gmail.com>
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, lkml <linux-kernel@vger.kernel.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 anirudh.venkataramanan@intel.com, Jiri Pirko <jiri@mellanox.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, David Ahern <dsahern@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC net-next Patch 0/3] net: bridge: mrp: Add support
 for Media Redundancy Protocol(MRP)
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

> I think it would help your case if you explained a bit more about
> the hw offload primitives you have implemented internally.

Agreed.

Horatiu, could you also give some references to the frames that need
to be sent. I've no idea what information they need to contain, if the
contents is dynamic, or static, etc.

	 Andrew
