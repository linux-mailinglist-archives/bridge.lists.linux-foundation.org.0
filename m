Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 939686CB210
	for <lists.bridge@lfdr.de>; Tue, 28 Mar 2023 00:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87ED081490;
	Mon, 27 Mar 2023 22:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87ED081490
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=kFSkbnLq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kxvUyFTIzhyz; Mon, 27 Mar 2023 22:59:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BBAD081501;
	Mon, 27 Mar 2023 22:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBAD081501
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5FF68C008C;
	Mon, 27 Mar 2023 22:59:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B8091C007A
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 22:59:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EFFE408B7
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 22:59:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EFFE408B7
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kFSkbnLq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vIgZYTG06qEv for <bridge@lists.linux-foundation.org>;
 Mon, 27 Mar 2023 22:59:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35E0C408B6
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35E0C408B6
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 22:59:38 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id t10so42386566edd.12
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 15:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679957977;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vs0lU2V659xfolR59bwYcxi0Nnjs4lVJmYEM9MkDucs=;
 b=kFSkbnLqBTXNziv2ifVthZxzOmPB3NbYEkyApURx8Oas8cCHPoSS+CWMJMLfkMaLxQ
 w3sBU0oRxauj492NqBP2NgItJC1pPYs7kn8NrUixuqvWmRXRZQ8HPHYwcIjs96dXvWjp
 kCc8POpRIpAim8K2sBnk1cfPBh1RbpSBOJBYwmF8yJbYD8hs5Zs0qFy7EGFZTsaQtx/u
 pwVF8TdXHKwGg54Yl6dKMbsFS4C54UWykPKT4U9BWOAjMgUl2eoKbpSU2uEIQmQwLbd0
 BYfxpA3JXHG6Y8LZgt14VH7NdJl6oasHvJPk4YHThi6kd+oe59qgKHgCPPRy1yxb4dR7
 CyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679957977;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vs0lU2V659xfolR59bwYcxi0Nnjs4lVJmYEM9MkDucs=;
 b=zpYlSfXNw7L8kdYR8yJOtPnajXVLXUc+uTPmDH3cYvRZS+9dBLLU71e0+oki6GnAqT
 wGOlRDrTHcEO0mVPxC221PzA6MJ0HMBfT6XbpeI7Ugp6La3ipBNVnG7XC6gQVSgjGKin
 /c971q6XS+cGO4Ndf6J82HbKYjC1Z0zzcmmBuPph+WxL7w4QXfhvLkeBbNkO+rIeRA4u
 g300IJZ/QRq6upf7GmHUBqxy2hQNWswPrRyfNXALMl7mNcFEvRJW2I10h+zMXSuG0sC6
 H0BDTx62aZhbE4kIDcYcxKa8FCp1Gd5yYmH0dnrj8OPVxef1iwrOgP+YTh5MYIwcdLUK
 KnuQ==
X-Gm-Message-State: AAQBX9f4n4oAfdcNkdPuJ+TM+7EvEbUZd8pCH5CCMoECrOUQaV1yqkgc
 ScM3gBpvEpQ9Nh2OyQYk1ZM=
X-Google-Smtp-Source: AKy350b6kGzMoS+bwt1A2kOGbDUdu6Vqdtl4eu30Fw6DBeW6d1ptJzEXveDDR/mfkjoYxSRiG6GAlQ==
X-Received: by 2002:a17:906:e0c5:b0:931:4f2c:4e83 with SMTP id
 gl5-20020a170906e0c500b009314f2c4e83mr13534033ejb.63.1679957976838; 
 Mon, 27 Mar 2023 15:59:36 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 z13-20020a1709064e0d00b009351565d1f5sm10994040eju.52.2023.03.27.15.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Mar 2023 15:59:36 -0700 (PDT)
Date: Tue, 28 Mar 2023 01:59:33 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230327225933.plm5raegywbe7g2a@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-3-netdev@kapio-technology.com>
 <20230327115206.jk5q5l753aoelwus@skbuf>
 <87355qb48h.fsf@kapio-technology.com>
 <20230327160009.bdswnalizdv2u77z@skbuf>
 <87pm8tooe1.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pm8tooe1.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: propagate flags down
 towards drivers
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

On Mon, Mar 27, 2023 at 11:49:58PM +0200, Hans Schultz wrote:
> My first approach was to use the SWITCHDEV_FDB_ADD_TO_BRIDGE event
> and not the SWITCHDEV_FDB_OFFLOADED event as the first would set the
> external learned flag which is not aged out by the bridge.

Link to patch? I don't see any SWITCHDEV_FDB_ADD_TO_BRIDGE call in
either the v1:
https://lore.kernel.org/netdev/20230130173429.3577450-6-netdev@kapio-technology.com/
or the RFC:
https://lore.kernel.org/netdev/20230117185714.3058453-6-netdev@kapio-technology.com/
and the change log does not mention it either.

> I have at some point earlier asked why there would be two quite
> equivalent flags and what the difference between them are, but I didn't
> get a response.

Actually, the part which you are now posing as a question (what is the
difference?) was part of the premise of your earlier question (there is
no difference => why do we have both?).
https://lore.kernel.org/netdev/d972e76bed896b229d9df4da81ad8eb4@kapio-technology.com/

I believe that no one answered because the question was confused and it
wasn't really clear what you were asking.

> 
> Now I see the difference and that I cannot use the offloaded flag
> without changing the behaviour of the system as I actually change the
> behaviour of the offloaded flag in this version of the patch-set.
> 
> So if the idea of a 'synthetically' learned fdb entry from the driver
> using the SWITCHDEV_FDB_ADD_TO_BRIDGE event from the driver towards the
> bridge instead is accepted, I can go with that?
> (thus removing all the changes in the patch-set regarding the offloaded
> flag ofcourse)

which idea is that, again?
