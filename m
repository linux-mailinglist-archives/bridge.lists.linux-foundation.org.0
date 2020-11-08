Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 854BD2AAAAB
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 12:22:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACCFB203F7;
	Sun,  8 Nov 2020 11:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PzwQYOAsix0m; Sun,  8 Nov 2020 11:22:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 421EF20479;
	Sun,  8 Nov 2020 11:22:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1A4BCC088B;
	Sun,  8 Nov 2020 11:22:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6145AC016F
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BED9203F9
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g83gr2DuwCL6 for <bridge@lists.linux-foundation.org>;
 Sun,  8 Nov 2020 11:22:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by silver.osuosl.org (Postfix) with ESMTPS id 5C199203F7
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:22:31 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1604834553; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=+a2nw8TOnWhGkjW2VdGmo04dSuvzksPHyNngfg5RaIM=;
 b=PuwUKSjZjKHLYrRIHOfFrHUNjiJrB1JagzLx1xUwUhrg/tRiTCZqALjuD6mpWA2C4VpoEIM7
 7cMZZM5ngqrDE/gjmzQhMBd1fQk4KN09U+4kjUPydKYqiHuwzATLavIRP/P6aSEEFhZ+ZR9c
 yjt3z7gvRWDKRS6escEYh3uzixk=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyIzNTQ4NSIsICJicmlkZ2VAbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5fa7d4be02f4ee380196bd5d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sun, 08 Nov 2020 11:21:34
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 97462C433FE; Sun,  8 Nov 2020 11:21:33 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 44852C433C8;
 Sun,  8 Nov 2020 11:21:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 44852C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jakub Kicinski <kuba@kernel.org>
References: <20201106221743.3271965-1-arnd@kernel.org>
 <20201107160612.2909063a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Sun, 08 Nov 2020 13:21:24 +0200
In-Reply-To: <20201107160612.2909063a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 (Jakub Kicinski's message of "Sat, 7 Nov 2020 16:06:12 -0800")
Message-ID: <87tuu05c23.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: Arnd Bergmann <arnd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-hams@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>, Heiner Kallweit <hkallweit1@gmail.com>
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

Jakub Kicinski <kuba@kernel.org> writes:

>> For the wireless drivers, removing the old drivers
>> instead of just the dead code might be an alternative, depending
>> on whether anyone thinks there might still be users.
>
> Dunno if you want to dig into removal with a series like this, 
> anything using ioctls will be pretty old (with the exception 
> of what you separated into ndo_eth_ioctl). You may get bogged 
> down.

I would very much like to get rid of unused ancient wireless drivers but
the problem is that it's next to impossible to know if someone still
uses a driver, or if the driver is even working. For example, few months
back I suggested removing one driver which I thought to be completely
unused (forgot already the name of the driver) and to my big surprise
there was still a user, and he reported it working with a recent kernel
release.

So I don't know what to do. Should we try adding a warning like below? :)

  "This ancient driver will be removed from the kernel in 2022, but if
   it still works send report to <...@...> to avoid the removal."

How do other subsystems handle ancient drivers?

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
