Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11416D9C21
	for <lists.bridge@lfdr.de>; Thu,  6 Apr 2023 17:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CE1141D1E;
	Thu,  6 Apr 2023 15:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CE1141D1E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=oZwLocsV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1HPXJRsQ1C90; Thu,  6 Apr 2023 15:22:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5ED2A41D46;
	Thu,  6 Apr 2023 15:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ED2A41D46
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D857C008C;
	Thu,  6 Apr 2023 15:22:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23ECBC002A
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 15:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 089DA41EE1
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 15:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 089DA41EE1
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oZwLocsV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8TwayDt48f5r for <bridge@lists.linux-foundation.org>;
 Thu,  6 Apr 2023 15:22:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FC1041EDF
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FC1041EDF
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 15:22:04 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id qb20so2261103ejc.6
 for <bridge@lists.linux-foundation.org>; Thu, 06 Apr 2023 08:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680794523;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=W8yHOaVQ4mahqDoWUZZ0X3+twLrUdiCW/OQNIgPHkpM=;
 b=oZwLocsV6/myf95tPXquC5P3/ayH6gAbBmWdKPVSUnZn6kRTeDqScnnIn5GIxlwbz8
 nJZGvjOLRNAUgjKN8PXwWDCRcZdQQt4RZRHWNK89ycCHgppu7C7O4ozWDeJaf41K61Uh
 XCHSLNMP4ONIQjVBXkMf3l59MTq8pFp/jjC78wzeOS3zutEYhIVWmg4bj8p5L5DGPRsg
 0AOgBoukthw2oMSbXy0UwTa90FzkZqEBtvZJoMFgwYe2I8IudvnqJLxGrI48c+S2ONUQ
 rMDe4Q+9Kvi+Z/zD00KMVwCpG6F+iLyt51C8aFhkLH0FITM+kp655rE19bJGxaKHTUQ5
 YXNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680794523;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W8yHOaVQ4mahqDoWUZZ0X3+twLrUdiCW/OQNIgPHkpM=;
 b=7dE6lIU/EMHvhMHUtxYfV2E5FQhGLAUe21qCbh837iihs6JAlmPkuehhf7UsMFi2Ha
 cpL/0TXXoYc4DUwcTDGWbi+vvZ9UU6845UpguTqR3wF7fqkIKx+APoNC8P9r3BxSsYtg
 149CngiuUByUrsSVghyd22x792M4b+DaPztP3yg5+r0N4/H/XjCvZQDDjdnEY0boXPRy
 eEkWnajlmX4rlS3V9XFK8ng8RnAmYCmNcS86JimOTA0gdSYr7Y9l3904Oqr2tfzZT5G5
 Ju2qs8kg87G2i/H2A8b5ywHJwHKHr5zX85gkixVeZqdf18to2xuxKgaWq4rg0t8sogFr
 3NMA==
X-Gm-Message-State: AAQBX9dYxN06ejL87mjxw2ohPijpJ82kQQRHCI7vNa6Bsd303rx6senM
 KpOdbniM6zh4UfJcg68t3tg=
X-Google-Smtp-Source: AKy350YlpYZ/5WyZfEsJM9r0STUEnAAOWTh66kJerlTJdTbxs18L9N8B47hs1vImrQMlTMzWf6mr9A==
X-Received: by 2002:a17:907:a413:b0:92f:43a2:bf7d with SMTP id
 sg19-20020a170907a41300b0092f43a2bf7dmr7965899ejc.73.1680794522609; 
 Thu, 06 Apr 2023 08:22:02 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 dd20-20020a1709069b9400b009475bf82935sm937459ejc.31.2023.04.06.08.22.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Apr 2023 08:22:02 -0700 (PDT)
Date: Thu, 6 Apr 2023 18:21:59 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230406152159.zfg6kxuimulnpops@skbuf>
References: <20230327225933.plm5raegywbe7g2a@skbuf>
 <87ileljfwo.fsf@kapio-technology.com>
 <20230328114943.4mibmn2icutcio4m@skbuf>
 <87cz4slkx5.fsf@kapio-technology.com>
 <20230330124326.v5mqg7do25tz6izk@skbuf>
 <87wn2yxunb.fsf@kapio-technology.com>
 <20230330130936.hxme34qrqwolvpsh@skbuf>
 <875yaimgro.fsf@kapio-technology.com>
 <20230330150752.gdquw5kudtrqgzyz@skbuf>
 <87o7o1ox9h.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o7o1ox9h.fsf@kapio-technology.com>
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

On Thu, Apr 06, 2023 at 05:17:46PM +0200, Hans Schultz wrote:
> On Thu, Mar 30, 2023 at 18:07, Vladimir Oltean <olteanv@gmail.com> wrote:
> > As a bug fix, stop reporting to switchdev those FDB entries with
> > BR_FDB_ADDED_BY_USER && !BR_FDB_STATIC. Then, after "net" is merged into
> > "net-next" next Thursday (the ship has sailed for today), add "bool static"
> 
> It is probably too late today (now I have a Debian based VM that can do
> the selftests), but with this bug fix I have 1) not submitted bug fixes
> before and 2) it probably needs an appropriate explanation, where I
> don't know the problem well enough for general switchcores to submit
> with a suitable text.

Do you want me to try to submit this change as a bug fix?
