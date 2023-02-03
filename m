Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D1D689F33
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 17:27:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23833821B8;
	Fri,  3 Feb 2023 16:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23833821B8
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Asl8uQue
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r6ccq8k7Mq62; Fri,  3 Feb 2023 16:26:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 722BA821CE;
	Fri,  3 Feb 2023 16:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 722BA821CE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2FA20C007C;
	Fri,  3 Feb 2023 16:26:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54E49C002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 16:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22F68415BD
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 16:26:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22F68415BD
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Asl8uQue
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDBwW6wFIIus for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 16:26:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4371C402BC
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4371C402BC
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 16:26:55 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id dr8so16715935ejc.12
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 08:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=RUj1tb4TuSYwUwoIhNOw99sNhzHtGAEfhnWg+uq4J14=;
 b=Asl8uQue9LWo08MaIkIb7jI1hRkLqzzudtQvDBpXIXqQkoxbdF/KLvIZZWQEXwvMPL
 bMvtYu3kDoM3Ub2P8qPZk7gb/iij7N7PVRvrSQ4BysUH7hVGOpm5uyc227mcM/PAEiEZ
 J+uoaJyFsFKUvfSBtY2fmSCxbDemT+ka2phibXCr/SauPiiEtHlXPsH/rhdDDC9Rx3/1
 faQ+ppX0WmhLws/GI1EvYhGEqfcK7VzFbgWjcJirBtrr0FTn56MDjm0W3gTJW7rGi2i3
 WHIoQhSkKqIWXhGqFNZtL0oGmQT8RKffugBYkey/NNNmOsjNTfePuW7lCLVVR72PvZvq
 ZhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RUj1tb4TuSYwUwoIhNOw99sNhzHtGAEfhnWg+uq4J14=;
 b=YxgDQQE4X7olIu4k0EsppJH2bg795mtL04YG6BH1arW52vE5cWzZE1JLKEJXZB4nYO
 dKlimADHgKig8eeszn/bNIJrg3xlarBNCRjfOAj0wQdzM9JOD3bxxW8k6TF/5cu+r2v9
 I5+F6f/F+CmEZxNAEBf6Y+iNPaWTXt7GFLTslbpP7mugMVjeclIHDlo3rthHsk4rgQmi
 YHCCrPfQ6DmLIw+wIQB0Oq63WZip/waV4yGZ4iU15AkCev+GurxUO4XPIMfgFsrk8W/A
 i+3WFSzBIpTyz02OSLEbmyGHtjhBFcVHPebdae1m0dSJ5jYMrCCEowZB0DUPIb1w23Gf
 H8/w==
X-Gm-Message-State: AO0yUKWI/Fu36zk7/veC0PCL7kiUk7+8dz9RfpIDgb4hZ8ggv0hKukKs
 CkGCggQrSMZdKuu0oW920coSj222M1aQQob7Ym0=
X-Google-Smtp-Source: AK7set9ZvBjDxtOpPvZm4xJVgjoc5lWay022JeXGf0nkD85UtAmHom1fDaYmgZrZMxxjELD+WyybujbXQE5jPLUyEc0=
X-Received: by 2002:a17:906:ca41:b0:88b:a2de:ed92 with SMTP id
 jx1-20020a170906ca4100b0088ba2deed92mr3145596ejb.193.1675441613406; Fri, 03
 Feb 2023 08:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-2-netdev@kapio-technology.com>
 <Y9qrAup9Xt/ZDEG0@shredder>
 <f27dd18d9d0b7ff8b693af8a58ea8616@kapio-technology.com>
 <Y9vgz4x/O+dIp+0/@shredder>
 <766efaf94fcb6362c5ceb176ad7955f1@kapio-technology.com>
 <Y90y9u+4PxWk4b9E@shredder>
In-Reply-To: <Y90y9u+4PxWk4b9E@shredder>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 3 Feb 2023 18:26:41 +0200
Message-ID: <CA+h21hp5Eh3zF60J2mTZL+xenD7iMBXKG+Ui0t-oUzgwNwSw2g@mail.gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 netdev@kapio-technology.com, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] net: bridge: add dynamic flag to
	switchdev notifier
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

On Fri, 3 Feb 2023 at 18:14, Ido Schimmel <idosch@idosch.org> wrote:
> I *think* this is the change Vladimir asked you to do.

Yup, although instead of "is_dyn", I would still prefer "!is_static",
but again, that's a preference for bridge/switchdev maintainers to
override.
