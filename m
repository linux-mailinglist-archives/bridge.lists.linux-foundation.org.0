Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DABA2AAAE5
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83AA88735E;
	Sun,  8 Nov 2020 12:16:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6v60m31KtrZ; Sun,  8 Nov 2020 12:16:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BCBC872F8;
	Sun,  8 Nov 2020 12:16:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D8FEC016F;
	Sun,  8 Nov 2020 12:16:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 314FCC016F
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 143B087119
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0P5pHkyNOL5 for <bridge@lists.linux-foundation.org>;
 Sun,  8 Nov 2020 11:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D61E870F7
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:43:06 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB150221E9
 for <bridge@lists.linux-foundation.org>; Sun,  8 Nov 2020 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604835786;
 bh=4qcv3PIZoS9Ti9M9OtYV1punEYgw5Sm+kDyvXqo+hQY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cDRAdYzLiZ+IhL2nfUuSHGyRVDqNzeN5Fjmlbav0H0lAVvL8TtfEHblAcT4AQ9r7a
 5k/uNiUCUD/RLIEPkT/eoNdayDgyh4DLf9NojP8NIscEy0H6eZvXrIK/66ZPS5HRLl
 flfTLVRDxH0PYsg+WKGMIFIIZyanbx2eDzEYoTsg=
Received: by mail-oi1-f171.google.com with SMTP id w145so6891289oie.9
 for <bridge@lists.linux-foundation.org>; Sun, 08 Nov 2020 03:43:05 -0800 (PST)
X-Gm-Message-State: AOAM5300nGkLeDF6Xe4hkJCBFV8Pv6mxIcdjJWz2ZMWo6P16Zw8h3kbL
 1Si7q8DB0D5ev9HUDxDfmwufYMVEbTgWcg1xWHU=
X-Google-Smtp-Source: ABdhPJy9Hv8+gtR2q1q9eRdnrQmfMucRJEzdFZAQvvSugW1m7+Tb9RkaOCsD1/ioGJgKBxlUqmoSyklpyawgiwTjzzA=
X-Received: by 2002:a05:6808:602:: with SMTP id
 y2mr6405737oih.11.1604835785227; 
 Sun, 08 Nov 2020 03:43:05 -0800 (PST)
MIME-Version: 1.0
References: <20201106221743.3271965-1-arnd@kernel.org>
 <20201107160612.2909063a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87tuu05c23.fsf@tynnyri.adurom.net>
In-Reply-To: <87tuu05c23.fsf@tynnyri.adurom.net>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sun, 8 Nov 2020 12:42:49 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3y5WxsibmTzvhv76G+rQ1Zjo_tW0UkXku0VnZdQa-__A@mail.gmail.com>
Message-ID: <CAK8P3a3y5WxsibmTzvhv76G+rQ1Zjo_tW0UkXku0VnZdQa-__A@mail.gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sun, 08 Nov 2020 12:15:58 +0000
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

On Sun, Nov 8, 2020 at 12:21 PM Kalle Valo <kvalo@codeaurora.org> wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
>
> So I don't know what to do. Should we try adding a warning like below? :)
>
>   "This ancient driver will be removed from the kernel in 2022, but if
>    it still works send report to <...@...> to avoid the removal."
>
> How do other subsystems handle ancient drivers?

A good way to get everyone's attention would be to collect as many
drivers as possible that are almost certainly unused and move them to
drivers/staging/ with a warning like the above, as I just did for
drivers/wimax. That would make it to the usual news outlets
and lead to the remaining users (if any) noticing it so they can then
ask for the drivers to be moved back -- or decide it's time to let go
if the hardware can easily be replaced.

      Arnd
