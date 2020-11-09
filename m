Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 789AB2AB6C4
	for <lists.bridge@lfdr.de>; Mon,  9 Nov 2020 12:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2188520517;
	Mon,  9 Nov 2020 11:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMQJ8wCvhVXF; Mon,  9 Nov 2020 11:26:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 5AB4E20515;
	Mon,  9 Nov 2020 11:26:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39BCFC1AD6;
	Mon,  9 Nov 2020 11:26:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E954DC016F
 for <bridge@lists.linux-foundation.org>; Mon,  9 Nov 2020 11:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7F9187044
 for <bridge@lists.linux-foundation.org>; Mon,  9 Nov 2020 11:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYwrftQXnp5Y for <bridge@lists.linux-foundation.org>;
 Mon,  9 Nov 2020 11:26:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E9332861A2
 for <bridge@lists.linux-foundation.org>; Mon,  9 Nov 2020 11:26:43 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1604921207; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=LXllegkU9Hqrn8ABy4ZLKOXWg3z4jJFDK0NqabfEc9c=;
 b=GAeZEjkcQ/myVWtCFhJ5Zg6dYn7slYdV1gxRDT5tDw0vCnTORfyYS7qHUucGJIibXRCr8rrq
 P/pLLk+RsAXhGS4UH1+RowQ0MSQSYA1ljlYsI03gCzj+T//DSW3aAfziAvKOp0cPoYcFTqNE
 j8BaGyy6x9Kgs72EbVNI+BWNLO0=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyIzNTQ4NSIsICJicmlkZ2VAbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 5fa9274282aad55dcbcc22d6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 09 Nov 2020 11:25:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E3E65C433C6; Mon,  9 Nov 2020 11:25:53 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8792BC433C8;
 Mon,  9 Nov 2020 11:25:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8792BC433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@kernel.org>
References: <20201106221743.3271965-1-arnd@kernel.org>
 <20201107160612.2909063a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87tuu05c23.fsf@tynnyri.adurom.net>
 <CAK8P3a3y5WxsibmTzvhv76G+rQ1Zjo_tW0UkXku0VnZdQa-__A@mail.gmail.com>
Date: Mon, 09 Nov 2020 13:25:48 +0200
In-Reply-To: <CAK8P3a3y5WxsibmTzvhv76G+rQ1Zjo_tW0UkXku0VnZdQa-__A@mail.gmail.com>
 (Arnd Bergmann's message of "Sun, 8 Nov 2020 12:42:49 +0100")
Message-ID: <87imaeg4ar.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 Networking <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-hams@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
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

Arnd Bergmann <arnd@kernel.org> writes:

> On Sun, Nov 8, 2020 at 12:21 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>> Jakub Kicinski <kuba@kernel.org> writes:
>>
>> So I don't know what to do. Should we try adding a warning like below? :)
>>
>>   "This ancient driver will be removed from the kernel in 2022, but if
>>    it still works send report to <...@...> to avoid the removal."
>>
>> How do other subsystems handle ancient drivers?
>
> A good way to get everyone's attention would be to collect as many
> drivers as possible that are almost certainly unused and move them to
> drivers/staging/ with a warning like the above, as I just did for
> drivers/wimax. That would make it to the usual news outlets
> and lead to the remaining users (if any) noticing it so they can then
> ask for the drivers to be moved back -- or decide it's time to let go
> if the hardware can easily be replaced.

I like that. I think we first should make a list of drivers which we
suspect are either unused or not working anymore.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
