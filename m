Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D067537325B
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 00:29:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17AA040104;
	Tue,  4 May 2021 22:29:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5xrFqgm7m6P1; Tue,  4 May 2021 22:29:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DE9B40137;
	Tue,  4 May 2021 22:29:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 45ADFC001C;
	Tue,  4 May 2021 22:29:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A695DC0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 22:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95C694010E
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 22:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ewe7JGS83FMA for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 22:29:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 879BD40104
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 22:29:54 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id z13so15649270lft.1
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 15:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=dQBiEe1w/Wbleue4r5yuQeIdpsQf7Sq0aXc76H99xao=;
 b=iIufQxxW8hySWIa22QbcxyqBs5YEgAI0TzCsFn+ytIXv5e7I5oEBMqVSt2Kcxl4K6P
 o2h10ypehs0O6e58uG8pxTjkP7KZjKLQ1RzkCne3i8EJxYHYCuueIwt0c0mBjSUut2xA
 cngewEY7xVeBS3XtBiGVPuLuqPpC5+rMCMiEBwLoplnA/nytJPdAFc08+Ut+RgXd5B3f
 Lzx71XERAyoXpczck4cTyikyu6Pu3v/isgjWJq3FRuYq6gDgeVckMdHeIaxLNiwDCcZe
 CvDH8Eao1l09zROQx9F0oiUDqbqTIkhiF9pEtJklM4FRBlZ7lGEp5ay1jDNwkc8WSkR8
 Gp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dQBiEe1w/Wbleue4r5yuQeIdpsQf7Sq0aXc76H99xao=;
 b=F8d8PAYtZIib1OTaWA6+/Zty1qnfkGqsdj5y5PrLhM1tgw08zA060pJSsFf1PulwQ8
 beQhIvv3AF1LXdoEhinr9XXg8iIK/IPIql1BxD4SNClbOmNE85K4CYr9/8XDZd/ARKf4
 /FOabNCAEhPtb+9CyRfxDzLWWtpdLXvG1A2Te5RKBesww/ypA6zamrXfLeDy7HDXX/PS
 DH6FP67SCYqYsVeYZO+yiheAeRepaUDy+3KlsMbaUAR3x6a1KN89kQxkfQUdurbf6i8X
 xP7+Rcc3Nz2If1PulF7Mfaw1NakocYdZw7mJdRCcLIkCBUh/FcSqtv4n5pmz60iN/4mL
 e0wA==
X-Gm-Message-State: AOAM5334XP92RB/DauKbGZsf7K8aRBdPJoHz1WCtC6oJDVHNROXiveGN
 4VVJEe8YmO4++b0PK6s5jj8uDA==
X-Google-Smtp-Source: ABdhPJxRxLdubDJWaJg/UlteggEmdsQrkIcrzJbwJZMWZFEkixU+yJP3eFRtZaAKkQfQOpT+MXjXQQ==
X-Received: by 2002:a05:6512:21cc:: with SMTP id
 d12mr17574280lft.512.1620167392186; 
 Tue, 04 May 2021 15:29:52 -0700 (PDT)
Received: from wkz-x280 (h-90-88.A259.priv.bahnhof.se. [212.85.90.88])
 by smtp.gmail.com with ESMTPSA id r3sm1082273ljc.32.2021.05.04.15.29.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 15:29:51 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: "Huang\, Joseph" <Joseph.Huang@garmin.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "bridge\@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "netdev\@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ido Schimmel <idosch@idosch.org>
In-Reply-To: <685c25c2423c451480c0ad2cf78877be@garmin.com>
References: <20210504182259.5042-1-Joseph.Huang@garmin.com>
 <6fd5711c-8d53-d72b-995d-1caf77047ecf@nvidia.com>
 <685c25c2423c451480c0ad2cf78877be@garmin.com>
Date: Wed, 05 May 2021 00:29:51 +0200
Message-ID: <87v97ym8tc.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Bridge] [PATCH net 0/6] bridge: Fix snooping in multi-bridge
	config with switchdev
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

On Tue, May 04, 2021 at 20:37, "Huang, Joseph" <Joseph.Huang@garmin.com> wrote:
>> Hi,
>> This patch-set is inappropriate for -net, if at all. It's quite late over here and I'll
>> review the rest later, but I can say from a quick peek that patch 02 is
>> unacceptable for it increases the complexity with 1 order of magnitude of all
>> add/del call paths and some of them can be invoked on user packets. A lot of
>> this functionality should be "hidden" in the driver or done by a user-space
>> daemon/helper.
>> Most of the flooding behaviour changes must be hidden behind some new
>> option otherwise they'll break user setups that rely on the current. I'll review
>> the patches in detail over the following few days, net-next is closed anyway.
>> 
>> Cheers,
>>  Nik
>
> Hi Nik,
>
> Thanks for your quick response!
> Once you have a chance to review the set, please let me know how I can improve them to make them acceptable. These are real problems and we do need to fix them.

If I may make a suggestion: I also work with mv88e6xxx systems, and we
have the same issues with known multicast not being flooded to router
ports. Knowing that chipset, I see what you are trying to do.

But other chips may work differently. Imagine for example a switch where
there is a separate vector of router ports that the hardware can OR in
after looking up the group in the ATU. This implementation would render
the performance gains possible on that device useless. As another
example, you could imagine a device where an ATU operation exists that
sets a bit in the vector of every group in a particular database;
instead of having to update each entry individually.

I think we (mv88e6xxx) will have to accept that we need to add the
proper scaffolding to manage this on the driver side. That way the
bridge can stay generic. The bridge could just provide some MDB iterator
to save us from having to cache all the configured groups.

So basically:

- In mv88e6xxx, maintain a per-switch vector of router ports.

- When a ports router state is toggled:
  1. Update the vector.
  2. Ask the bridge to iterate through all applicable groups and update
     the corresponding ATU entries.

- When a new MDB entry is updated, make sure to also OR in the current
  vector of router ports in the DPV of the ATU entry.


I would be happy to help out with testing of this!
