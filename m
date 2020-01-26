Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C38149BB8
	for <lists.bridge@lfdr.de>; Sun, 26 Jan 2020 16:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04733878C4;
	Sun, 26 Jan 2020 15:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSmsbXbRqo88; Sun, 26 Jan 2020 15:59:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B38B878D1;
	Sun, 26 Jan 2020 15:59:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5312CC0171;
	Sun, 26 Jan 2020 15:59:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E9D4FC0171
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 15:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D768F82D5F
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 15:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHZ7u-mxDBvH for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jan 2020 15:59:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D56F82F92
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 15:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8H7oBxxzV8H5KiIO5X5joVplBafQm/GcWFDIybtF6AU=; b=CBCmLEhF/9QV+BcUdP01FIWxn4
 mOMOSj+Gf8QdkJE3sa5utrfYpmxcu8+PsixQRq6t84Xf0muSU8FN5I8nwQMxS1XuiFIKOLvHm1oOE
 qEoARg4Vg1GbaIUet3J1KVuhldgvCI11meMb8oojrQ0V98HriAc7pUZuJZQCQV8Jq16k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ivkJb-0002A6-Iv; Sun, 26 Jan 2020 16:59:11 +0100
Date: Sun, 26 Jan 2020 16:59:11 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200126155911.GJ18311@lunn.ch>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-7-horatiu.vultur@microchip.com>
 <20200125163504.GF18311@lunn.ch>
 <20200126132213.fmxl5mgol5qauwym@soft-dev3.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200126132213.fmxl5mgol5qauwym@soft-dev3.microsemi.net>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 06/10] net: bridge: mrp: switchdev:
 Extend switchdev API to offload MRP
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

On Sun, Jan 26, 2020 at 02:22:13PM +0100, Horatiu Vultur wrote:
> The 01/25/2020 17:35, Andrew Lunn wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > > SWITCHDEV_OBJ_ID_RING_TEST_MRP: This is used when to start/stop sending
> > >   MRP_Test frames on the mrp ring ports. This is called only on nodes that have
> > >   the role Media Redundancy Manager.
> > 
> > How do you handle the 'headless chicken' scenario? User space tells
> > the port to start sending MRP_Test frames. It then dies. The hardware
> > continues sending these messages, and the neighbours thinks everything
> > is O.K, but in reality the state machine is dead, and when the ring
> > breaks, the daemon is not there to fix it?
> > 
> > And it is not just the daemon that could die. The kernel could opps or
> > deadlock, etc.
> > 
> > For a robust design, it seems like SWITCHDEV_OBJ_ID_RING_TEST_MRP
> > should mean: start sending MRP_Test frames for the next X seconds, and
> > then stop. And the request is repeated every X-1 seconds.
> 
> I totally missed this case, I will update this as you suggest.

Hi Horatiu

What does your hardware actually provide?

Given the design of the protocol, if the hardware decides the OS etc
is dead, it should stop sending MRP_TEST frames and unblock the ports.
If then becomes a 'dumb switch', and for a short time there will be a
broadcast storm. Hopefully one of the other nodes will then take over
the role and block a port.

    Andrew
