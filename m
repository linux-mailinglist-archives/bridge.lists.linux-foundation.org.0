Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F5014967B
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 16:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F148187866;
	Sat, 25 Jan 2020 15:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-6F9POX5i-u; Sat, 25 Jan 2020 15:59:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF37888012;
	Sat, 25 Jan 2020 15:59:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 96AFDC0174;
	Sat, 25 Jan 2020 15:59:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A4098C0174
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 15:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8FCD587866
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 15:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vGM0lhcOpum for <bridge@lists.linux-foundation.org>;
 Sat, 25 Jan 2020 15:59:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16A09864E6
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 15:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X8UUPTOUNfFXETSXGA8mkvkgEObCurF5t9bY3s9/WBw=; b=CvGoJahVgWmRUJ6lVkXuQ1M419
 Q/XFzshlEk7MPbOCKU20WMXVtIIDV0QUzNt5sL/uGSCuRSjz+XfKMwWrmYDSPMCPKwzhQJWZUAzkq
 5ZiKCStAZ3mi7aNle7UBR6BcdetgqEEMQOrrF2viYG9DfzS202kGxeEcyR/ihrfTlBTM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ivNEV-0006u6-W4; Sat, 25 Jan 2020 16:20:24 +0100
Date: Sat, 25 Jan 2020 16:20:23 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200125152023.GA18311@lunn.ch>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-4-horatiu.vultur@microchip.com>
 <20200124174315.GC13647@lunn.ch>
 <20200125113726.ousbmm4n3ab4xnqt@soft-dev3.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200125113726.ousbmm4n3ab4xnqt@soft-dev3.microsemi.net>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 03/10] net: bridge: mrp: Add MRP
 interface used by netlink
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

On Sat, Jan 25, 2020 at 12:37:26PM +0100, Horatiu Vultur wrote:
> The 01/24/2020 18:43, Andrew Lunn wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > > br_mrp_flush - will flush the FDB.
> > 
> > How does this differ from a normal bridge flush? I assume there is a
> > way for user space to flush the bridge FDB.
> 
> Hi,
> 
> If I seen corectly the normal bridge flush will clear the entire FDB for
> all the ports of the bridge. In this case it is require to clear FDB
> entries only for the ring ports.

Maybe it would be better to extend the current bridge netlink call to
be able to pass an optional interface to be flushed?  I'm not sure it
is a good idea to have two APIs doing very similar things.

   Andrew
