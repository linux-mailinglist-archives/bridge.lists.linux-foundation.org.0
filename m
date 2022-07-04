Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD13564F22
	for <lists.bridge@lfdr.de>; Mon,  4 Jul 2022 09:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6283817F2;
	Mon,  4 Jul 2022 07:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6283817F2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=cC7gFTPZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E3iXoHqKlyT3; Mon,  4 Jul 2022 07:54:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 39E3682470;
	Mon,  4 Jul 2022 07:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39E3682470
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C4F54C007C;
	Mon,  4 Jul 2022 07:54:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6864CC002D
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 07:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F28040984
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 07:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F28040984
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=cC7gFTPZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEBmDVW60QzK for <bridge@lists.linux-foundation.org>;
 Mon,  4 Jul 2022 07:54:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2946C40922
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2946C40922
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 07:54:44 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 l40-20020a05600c1d2800b003a18adff308so5149062wms.5
 for <bridge@lists.linux-foundation.org>; Mon, 04 Jul 2022 00:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kBt8UkN3aWCTiSF8Lh8xZQRr6v5h00YtDHTaqSFljec=;
 b=cC7gFTPZu/aPJz87RZe/z5TpXDPurO2A6Cb/+oswtY3Sx2RhvcCJBPKJ/+T2UF17J1
 RBMUfv1aH45VHiF5kxJprtroCBFRVGeGdSdeApWbVy7NJryexftlPSVOR+aZTfDNcScP
 FL0egZZgY9fTZaAka+QZ/S6AwirONIg1sycBSUdTAVi18Q/q4ojoXEPnCuJbE6UOJJsd
 okRmwOIlFkHHVuCSV0qwt1rdwRwk1JEuTgJsazs3DSjIfZxNyZCcCcLBTC/ISt8Fcioc
 r+YKMeRKDYfSIV0PCSYSlUYta8wsU8jgiqsefwiPxfIpGzd1FocS4pOAW3vC0jxUtQNJ
 KSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kBt8UkN3aWCTiSF8Lh8xZQRr6v5h00YtDHTaqSFljec=;
 b=YnCUXMBfUgBSqaHoUAId5BXjx+kY6hPM2zS0xvdg4ShgUVqZq5baPiLOgqi1Z+h5qd
 z8s5L+/0lxYvey6W3Ew3MVmvpvFtJ/wFVvsG42HGGruL/9zVK9V6AfgVnXf2qTEgroE9
 Oc40LRdNR83jWMvNNaWTwNhmuE27Oivlmt8P0Jye4BwpanR+0o9M0o1a5DXUiUJ2XtnH
 fIcvtilDcR17nSWKFbDvN4O71aw66VanHqo96r51TqxqxNxnvHkuBbnlvW6IAdmc0RCL
 fkrb2DMO0aSMVkyvtvywqAhpeAdpZOyi7Slr/NklR0p2Wnhostnt2ubSXfkWJ86n9JrP
 pbyA==
X-Gm-Message-State: AJIora/is4wuhfJXtYWMsp/AnilQFvlX85uHQ25ziL7273Yk99Zzg5ym
 CrxydsY39dwYd6UI2CS9sLVzMmGQL1l3EoXZCRY=
X-Google-Smtp-Source: AGRyM1tbwq5EsVddzD4ybXz0zJM+EtGcKfP76YCqwP4/9Q5UwkGkjPekVIXrT0y3XzQLeRWbRQnkzHnvn1Gwxl91xVU=
X-Received: by 2002:a05:600c:4f81:b0:3a1:a8e7:235b with SMTP id
 n1-20020a05600c4f8100b003a1a8e7235bmr4385163wmq.149.1656921282262; Mon, 04
 Jul 2022 00:54:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <Yr8oPba83rpJE3GV@shredder>
 <CAKUejP4_05E0hfFp-ceXLgPuid=MwrAoHyQ-nYE3qx3Tisb4uA@mail.gmail.com>
 <YsE+hreRa0REAG3g@shredder>
In-Reply-To: <YsE+hreRa0REAG3g@shredder>
From: Hans S <schultz.hans@gmail.com>
Date: Mon, 4 Jul 2022 09:54:31 +0200
Message-ID: <CAKUejP4H4yKu6LaLUUUWypt7EPuYDK-5UdUDHPF8F2U5hGnzOQ@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

>
> IIUC, with mv88e6xxx, when the port is locked and learning is disabled:
>
> 1. You do not get miss violation interrupts. Meaning, you can't report
> 'locked' entries to the bridge driver.
>
> 2. You do not get aged-out interrupts. Meaning, you can't tell the
> bridge driver to remove aged-out entries.
>
> My point is that this should happen regardless if learning is enabled on
> the bridge driver or not. Just make sure it is always enabled in
> mv88e6xxx when the port is locked. Learning in the bridge driver itself
> can be off, thereby eliminating the need to disable learning from
> link-local packets.

So you suggest that we enable learning in the driver when locking the
port and document that learning should be turned off from user space
before locking the port?
