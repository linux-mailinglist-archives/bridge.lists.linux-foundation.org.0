Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF22623436
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 21:09:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 078F560675;
	Wed,  9 Nov 2022 20:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 078F560675
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=S0En1H5U
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2DxRjR-TE0Z; Wed,  9 Nov 2022 20:09:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 572CE6066D;
	Wed,  9 Nov 2022 20:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 572CE6066D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7E68C0077;
	Wed,  9 Nov 2022 20:09:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D969EC002D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 20:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4D1F6066D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 20:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4D1F6066D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSktTaUWAfwA for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 20:09:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7F3560625
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7F3560625
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 20:09:01 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id gw22so17736151pjb.3
 for <bridge@lists.linux-foundation.org>; Wed, 09 Nov 2022 12:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KRa3zLSl7ee1yGVNAAzjY5vpjyV6wqckozbmKlHsMfQ=;
 b=S0En1H5UJdZt5oSh6Ts0Qh4obRmUNA/FNjgSqzMXSV926VMcwoorELQn8nu8gxzRor
 KPrKpDTTsV/bJjXke862cHchAB+yBAz4s+8xfxvO0szFRYal4AV91g648gBDCuxWN0XR
 cPQywR7t75xcTLRvC+DyJVFharWFfssxBZNcA0jei/xhiZlYxjYk6M+HC+AdXAvqHdnX
 DS9ibrxOruofjoNZxGvSPFj5FeDMem/MugJPfwW1TzdvAXs+67xVqPVtowImnl2F1KCJ
 /CgcpxakOxaqJe+TebrnH4es6lwY1Xbh7PKnf0n1ubQy07JVAS9i3Fn+LSbq0qTebmKr
 wyag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KRa3zLSl7ee1yGVNAAzjY5vpjyV6wqckozbmKlHsMfQ=;
 b=wdSbWxsrNE5/b1QtLF4KqgDe7Pai814vLOgqh1Fj/LhIxCNxrMSJhv7fQkkVGS2Ur9
 R9cnwJVurBN52Sx7vwiziXuUXTQ+8BWFEuUJSTjai8K6u52igzQpuxuYpBy6QFL5veH4
 4MW68ODS6qEdUxH631k4dhCk9XZSv1v4OMuBrxLmHbQyGZaCqEpcNQ6LqocZXL6wolAI
 RFTE9TvjESkq6HhfUbJcm/AKaNfcl3M+cQ4D4vNZy8tUphxqYDF+2X7iqLMUZlW+yNMV
 BmSRLkeAzpA/XwH3LZ2Gf7FAyh2hE8Sc4vGecTMyKcSCQu8Zb5/PpU8dX07SWp8fT1t5
 7bWA==
X-Gm-Message-State: ACrzQf2jurNYVdv3Nw0UmD8V1temD1kbiSRf0kSrJZZogjfccoT7kvG+
 GiSpKgVnlZ4KAYKqVjCTIhpIUi5/q/VXPA==
X-Google-Smtp-Source: AMsMyM6wA623ekl7heTsfGt7YOryB3UudMiyc+vuV7zmTf4MLEBa1XLMt3V3R8DlcTY1fysYF0zmgA==
X-Received: by 2002:a17:902:b086:b0:187:27b3:74e8 with SMTP id
 p6-20020a170902b08600b0018727b374e8mr50481304plr.140.1668024541208; 
 Wed, 09 Nov 2022 12:09:01 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 t125-20020a625f83000000b0056e8ce106d1sm8661609pfb.132.2022.11.09.12.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Nov 2022 12:09:00 -0800 (PST)
Date: Wed, 9 Nov 2022 12:08:58 -0800
To: Ali Shirvani <alishirv@protonmail.com>
Message-ID: <20221109120858.52e5a0aa@hermes.local>
In-Reply-To: <pPm5jFjNYHBUzqlDouAIg2v7XTQZJnHIVSWXoYOaTijreJ22xAZOSAcwJXHJiTLN8jIAQCs-LeX7hp9hp-FaxW-HGjn69fc6-eG3Kv6lxc4=@protonmail.com>
References: <nWfVbvdboX65r0xMXv0iZCj8TH7c8vStvilCD3Ilx5Y42yoHh34rJHJBMy8y4HhqXWXM0n3tLhLD870c863UjI20HBSxM8qwJlLMxuPjg0g=@protonmail.com>
 <20221109085109.6b0f87d3@hermes.local>
 <pPm5jFjNYHBUzqlDouAIg2v7XTQZJnHIVSWXoYOaTijreJ22xAZOSAcwJXHJiTLN8jIAQCs-LeX7hp9hp-FaxW-HGjn69fc6-eG3Kv6lxc4=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Subject: Re: [Bridge] How to connect more than 200 interfaces to a bridge
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, 09 Nov 2022 19:25:32 +0000
Ali Shirvani <alishirv@protonmail.com> wrote:

> Sent with Proton Mail secure email.
> 
> ------- Original Message -------
> On Wednesday, November 9th, 2022 at 8:21 PM, Stephen Hemminger <stephen@networkplumber.org> wrote:
> 
> 
> > On Wed, 09 Nov 2022 10:51:27 +0000
> > Ali Shirvani via Bridge bridge@lists.linux-foundation.org wrote:
> >   
> > > Hello everyone,
> > > 
> > > It seems we reach the Linux bridge limitation on the number of interfaces in a single bridge. Currently, we have 210 tap interface in a bridge, and we suffer from more than 50% packet loss when we ping the IP address of the virtual machine that uses one of the tap interfaces in the bridge.
> > > Do you know how we can connect more than 200 VMs virtual interfaces to a bridge?
> > > 
> > > Best regards,
> > > Ali
> > > 
> > > Sent with Proton Mail secure email.  
> > 
> > 
> > The upper limit on interfaces per bridge should be 1023.
> > That limitation comes from spanning tree.
> > 
> > You might bet able to improve performance by disabling flooding to those tap devices.
> > Normally, any broadcast/unknown/multicast must be copied and flooded to each interface.  
> 
> Thanks a lot for your guidance. I disabled the spanning tree on the bridge with `brctl stp br0 off` but the issue does not resolve. Would you please elaborate more about disabling flooding on tap devices, I don't know how I should disable flooding on tap devices.

Look at the documentation of the bridge command which describes per-port options:
https://man7.org/linux/man-pages/man8/bridge.8.html

You do want to leave flooding on for the downstream bridge port.

You can also add some security by limiting where/when STP comes from and disable
learning on the TAP devices so that if VM sends bogus packets, the bridge won't get DoS.
