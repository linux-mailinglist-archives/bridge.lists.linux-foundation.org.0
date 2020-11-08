Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CE52AA880
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 01:06:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50D6E866E7;
	Sun,  8 Nov 2020 00:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xKoQ9MTiCUA; Sun,  8 Nov 2020 00:06:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A07538673B;
	Sun,  8 Nov 2020 00:06:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 61322C1AD8;
	Sun,  8 Nov 2020 00:06:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F379C0889
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 00:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2736F8699B
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 00:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZokmGgmsDH7 for <bridge@lists.linux-foundation.org>;
 Sun,  8 Nov 2020 00:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F69F86999
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 00:06:14 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E4BF206A4;
 Sun,  8 Nov 2020 00:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604793973;
 bh=O6lSemrCPL/1daHZSPh63rX8/9WvDq0mEs7nccEtOtk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ker+6/QLi3W6u+GsKg7Tu4sKydMQFZn8WqWJAnJwVTPQOB6UbXj70jUiFOtYOScPy
 o0Y7/5HTkjv+n7D1hgDv0yQZRqeBj/UfxmWeUH8go+M83ViYE2FPnDnU45oV+YiHiB
 mPTK0GXfZu4/Tz+CaVcowmANdoFls8MceCUpyqpM=
Date: Sat, 7 Nov 2020 16:06:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20201107160612.2909063a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201106221743.3271965-1-arnd@kernel.org>
References: <20201106221743.3271965-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-hams@vger.kernel.org,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [Bridge] [RFC net-next 00/28] ndo_ioctl rework
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

On Fri,  6 Nov 2020 23:17:15 +0100 Arnd Bergmann wrote:
> Any suggestions on how to proceed? I think the ndo_siocdevprivate
> change is the most interesting here, and I would like to get
> that merged.

Splitting out / eliminating ioctl pass-thry in general seems like 
a nice clean up. How did you get the ndo_eth_ioctl patch done, was 
it manual work?

> For the wireless drivers, removing the old drivers
> instead of just the dead code might be an alternative, depending
> on whether anyone thinks there might still be users.

Dunno if you want to dig into removal with a series like this, 
anything using ioctls will be pretty old (with the exception 
of what you separated into ndo_eth_ioctl). You may get bogged 
down.
