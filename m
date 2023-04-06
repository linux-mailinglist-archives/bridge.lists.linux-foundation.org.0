Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1E16D9C2A
	for <lists.bridge@lfdr.de>; Thu,  6 Apr 2023 17:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54D17843BC;
	Thu,  6 Apr 2023 15:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54D17843BC
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=mOLwUplH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HtEb531Ph0_I; Thu,  6 Apr 2023 15:24:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id F20D484304;
	Thu,  6 Apr 2023 15:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F20D484304
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97882C008C;
	Thu,  6 Apr 2023 15:24:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8090DC002A
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 15:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E3FD41D46
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 15:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E3FD41D46
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=mOLwUplH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDIVix5sOiq0 for <bridge@lists.linux-foundation.org>;
 Thu,  6 Apr 2023 15:24:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78CF641D38
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78CF641D38
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 15:24:48 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-947cd8b2de3so155755466b.0
 for <bridge@lists.linux-foundation.org>; Thu, 06 Apr 2023 08:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680794686;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cOMO4X0KkT1wLKp3ZzLuqJYBOcq707+YpxHq0zavOgw=;
 b=mOLwUplHv9h7ct3oUi+VgdSBSfJfcHSz4omCFqbZjtcuXZHY1U4ilN33bGUgNEML1d
 Hjq7TbyKj4CJpjX2aYIhMpGOdWYEmKO/C293HsORhRG+hHjWFl30PxsM/93zkWlpk8lC
 R93xYEJiKmwfBwiccG8Qtkg09sf55JI7q8wuLs0blN9F/xMZYbUWJXHcGoXFlX6ATnp3
 2NOgQ3U7nnw2BBVkH+GM4uOAnLsCSM/U2wL9x/JpWe9suZa+OawzhG/gpICCvUkNwGR9
 3mDNsEgVogbvJdbZt8mKUnYQEY2TV3tWC5PUAfU/wajZEWpW4OikShq4SToCCxH61U6/
 zqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680794686;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cOMO4X0KkT1wLKp3ZzLuqJYBOcq707+YpxHq0zavOgw=;
 b=C7jcjCTrpf5rTF7Qh72QDbbdsfO6LobK6OLIu7Sb1Zf/QAscDnq7oNXnzHJ2YZC+zj
 vudYUSHu6gWgYM19ZuphHCwVIS0OI0/cH+RAD+APsYMxkMz9r2UNK6SWCWSxhCMNbVTL
 446n0UWTZ4r0WfdgLqDIoLbMNHgVZxWopY7chN79JQqwQFoVeSxEWyFlTvyLXkOd8pao
 0bf+4qIhQVmPSeutzYGF8t+6lL9pWIlku0ZhGEuIXeSJ/stxox9xG1DQc/76O1bLBSZQ
 NzUErdLlAUf2gNQFWieH1z6MHt0lyzRgjAzXOn57Equ3okkzK2kG5B9x11cy8yFEKqvJ
 NGzQ==
X-Gm-Message-State: AAQBX9e8oIVgynV2Pme/eig8uFxGbK3NmWEh+nUR4/ccyznJ3SwnIhVp
 9x+I8lQnBBDCzhNRA5s8Om8=
X-Google-Smtp-Source: AKy350bMKcJuUrKHxCynmrWlEri+wOd6BUJcWjnjfAUKYwzm18cdb+f7ZMxFTWEmAIFudRqwzqdrSg==
X-Received: by 2002:aa7:da06:0:b0:502:8f49:2552 with SMTP id
 r6-20020aa7da06000000b005028f492552mr5597291eds.27.1680794686523; 
 Thu, 06 Apr 2023 08:24:46 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 b15-20020a50cccf000000b004c10b4f9ebesm878829edj.15.2023.04.06.08.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Apr 2023 08:24:46 -0700 (PDT)
Date: Thu, 6 Apr 2023 18:24:43 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230406152443.b3ps4x7e4kz4aes2@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <874jq22h2u.fsf@kapio-technology.com>
 <20230330192714.oqosvifrftirshej@skbuf>
 <871ql5mjjp.fsf@kapio-technology.com>
 <20230331093732.s6loozkdhehewlm4@skbuf>
 <87tty1nlb4.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tty1nlb4.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Ido Schimmel <idosch@nvidia.com>, kuba@kernel.org,
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
 netdev@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On Fri, Mar 31, 2023 at 02:43:11PM +0200, Hans Schultz wrote:
> I will as long as the system is as it is with these selftests, just run
> single subtests at a time on target, but if I have new phy problems like
> the one you have seen I have had before, then testing on target becomes
> off limits.

Please open a dedicated communication channel (separate email thread on
netdev@vger.kernel.org) with the appropriate maintainers for the PHY
code that is failing for you in To:, and you will get the help that you
need to resolve that and to be able to test on the target board.
