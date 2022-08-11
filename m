Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C2F58F734
	for <lists.bridge@lfdr.de>; Thu, 11 Aug 2022 07:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90C1E40579;
	Thu, 11 Aug 2022 05:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90C1E40579
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=A213iWRX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q06Pe2VjNjx4; Thu, 11 Aug 2022 05:09:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3B8B1400E5;
	Thu, 11 Aug 2022 05:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B8B1400E5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B83E5C007B;
	Thu, 11 Aug 2022 05:09:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23B4EC002D
 for <bridge@lists.linux-foundation.org>; Thu, 11 Aug 2022 05:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0400F40579
 for <bridge@lists.linux-foundation.org>; Thu, 11 Aug 2022 05:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0400F40579
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0q523OoVZr35 for <bridge@lists.linux-foundation.org>;
 Thu, 11 Aug 2022 05:09:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED8E0400E5
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED8E0400E5
 for <bridge@lists.linux-foundation.org>; Thu, 11 Aug 2022 05:09:23 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id g12so15600522pfb.3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 22:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc; bh=DZrxMuUWLyOOGOzou+/YbJCnEI+s6JajXm/D/EndXY0=;
 b=A213iWRXguE8DZnpQIMCrIlREr6BNeY4UQGwFU3+PYimUNEcvxJJw745lEfZYjDOwC
 pJhyRN+HKo7MdLzRQ0VGBFR0DvPdMDYGxRvVe5d3srZwI7YG9GTpe2J2fgUgIJtqPZbU
 3Yy1Wng6CTobUIFcGP6KXOR0njOIjtvQJH2y6voZFeXExvMyEHCwSpzUY4wqFTPv1kBx
 RWpGI5dv6Ig07hVwydmV61S6Dmbf3EEVmlWl5sL04ETo7yiQdiTLeeReJoD/dtKFC73n
 zKAY2J4vX8Teg2OUP4Ty01m0cSBCh5Su788OlbfCe5tCgtpTqaYkkvkfNEDWIwexvhI/
 +x9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc;
 bh=DZrxMuUWLyOOGOzou+/YbJCnEI+s6JajXm/D/EndXY0=;
 b=w4XPox/gM1Ro4FLwch8IoB9TKeprxHya0QTNZ3bpOC1rpvUzSqxou+iEbM60svzgMY
 X9Vp3hsYTuk2xDAF8kufyh6IluXkIUAFEghj6ES4wKyrz84SUeXfZj0TQc/B2TEOD8Kv
 4LdgoZONo8tYUgPk5WMSM+qANfcsd2ZgpsaIGyndLp7JehuweX4N4VPcAANCeNxEEZkR
 jQY17l51BC6HaaufUDOMZC0qSoa75FWvfaqiiyYvxxnD/z2mTCxGABIX0QbBAqzhAgzH
 gqXZ2YuPBgV9q5n62nIrXAdz2Om5RiVbljxXjsh46a2paCQiJ3TiA5u+j3QXinhcVG3t
 M5hw==
X-Gm-Message-State: ACgBeo0f1IVWbmVlMi+/zwFp0AbzBMJpDPyD0rKdSp2XTbXBagU77W6Z
 SlnJPzB8qEM1uU8lFWC2wW8=
X-Google-Smtp-Source: AA6agR4CYIBep1Qc6b2rxtOzCLCWjyelWDv+c6Jn1ykqtKYdC0nWTbjGrVaVzqh2oca2PBbd0hVOCA==
X-Received: by 2002:a65:6556:0:b0:41c:9c36:98fa with SMTP id
 a22-20020a656556000000b0041c9c3698famr25928505pgw.491.1660194563312; 
 Wed, 10 Aug 2022 22:09:23 -0700 (PDT)
Received: from localhost ([2405:6580:97e0:3100:ae94:2ee7:59a:4846])
 by smtp.gmail.com with ESMTPSA id
 w3-20020a170902e88300b0016be96e07d1sm14005662plg.121.2022.08.10.22.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Aug 2022 22:09:22 -0700 (PDT)
Date: Thu, 11 Aug 2022 14:09:21 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <YvSPAatX80jGiS3x@d3>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220707152930.1789437-1-netdev@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 0/6] Extend locked port feature
 with FDB locked flag (MAC-Auth/MAB)
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

On 2022-07-07 17:29 +0200, Hans Schultz wrote:
> This patch set extends the locked port feature for devices
> that are behind a locked port, but do not have the ability to
> authorize themselves as a supplicant using IEEE 802.1X.
> Such devices can be printers, meters or anything related to
> fixed installations. Instead of 802.1X authorization, devices
> can get access based on their MAC addresses being whitelisted.
                                                    ^

Please consider using the alternate vocabulary discussed in
Documentation/process/coding-style.rst §4.
