Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7506D051B
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 14:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E571D404DA;
	Thu, 30 Mar 2023 12:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E571D404DA
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=R6I/30BG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HIwlmf6PGhZP; Thu, 30 Mar 2023 12:43:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8FFE2402E8;
	Thu, 30 Mar 2023 12:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FFE2402E8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C5E1C008C;
	Thu, 30 Mar 2023 12:43:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95E37C002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 12:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6EBD681E85
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 12:43:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EBD681E85
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=R6I/30BG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L6H5ctA0bIG9 for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 12:43:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98D5C81CDB
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98D5C81CDB
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 12:43:31 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id t10so75778550edd.12
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 05:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680180209;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=n/8td5sRl3oLpjvJWr+SauyjMW5J+/af8DNO0aQQsj4=;
 b=R6I/30BG5UPA5FkYjKVUOSk8ON+L56EIBLONKVcUcG66As/OewLwhMJOEZ7pH/CLIF
 lw5Ldo93TyCnbouWW7sn6r3X1q4G9eBsDkqM7EGHS++EvGHXZ1BPDKRnhCkRnHpH3k7W
 toyOaQ8AdiCXYmHXxTqfMSFBKgw1bzxE4IuGtB3xQgGZ5fyVGYpbDHx/jTc/43Plix+k
 TfXLtwH042/qHJ2RMlQ5OwK2exvA5LqhC/2Bcjao6WLpg3vfRYD38I+FcWic3HWgUBY4
 0OuxkiVp/bNVDNwReIudGNhx0j7PVxoWzHj4bgO+e68KZRf4WBgjXUwtpjuoIHRN3Bwa
 nxMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680180209;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n/8td5sRl3oLpjvJWr+SauyjMW5J+/af8DNO0aQQsj4=;
 b=s4/djVininWajorRyT13pbmFZ4/DdWP9FBUnhvZt/z8QW/LxB5HfZR8o+vI0a8O51B
 ptGurFjv/s40CGTOl5VXawEHVEs5pXfgCpr97rtbI/pVBNvrx8SJU3hs6dWba85xIXkX
 9O3ZjAh4ImTUbpauSfFil/Su9ct2ewJTvtXFocA4eRaAd643o6Jsy7BWVfguI5gTwBRy
 wRSA1CDu95Kg7VQfzuIqfejN8IdmPKsuiixJwSlYn8dUa6bS2KguS+WDYB7yJ4BcCUM3
 qvkkZAd6Mop/IQN2zjQyaY0L3E07JePbulRoM5bFzEKZME79F5xTvx1CbVFYNW5Awelj
 JIuw==
X-Gm-Message-State: AAQBX9c6Fa76ppuzBz1JrOKRfCcdkiFohGEsTeTkXbc4O3XGCWaE74nH
 V0N7nB55udv6eN0Z4tY9EO4=
X-Google-Smtp-Source: AKy350YI2msvuHetohhT7eQ5t1xlC1RudA+4E9BCOndXuD6L8J5sWGjktS0WAdrtvGBAhM/oS9ONAg==
X-Received: by 2002:aa7:cf19:0:b0:501:dc02:1956 with SMTP id
 a25-20020aa7cf19000000b00501dc021956mr24516457edy.29.1680180209442; 
 Thu, 30 Mar 2023 05:43:29 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 q30-20020a50aa9e000000b004fadc041e13sm18202433edc.42.2023.03.30.05.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 05:43:29 -0700 (PDT)
Date: Thu, 30 Mar 2023 15:43:26 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230330124326.v5mqg7do25tz6izk@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-3-netdev@kapio-technology.com>
 <20230327115206.jk5q5l753aoelwus@skbuf>
 <87355qb48h.fsf@kapio-technology.com>
 <20230327160009.bdswnalizdv2u77z@skbuf>
 <87pm8tooe1.fsf@kapio-technology.com>
 <20230327225933.plm5raegywbe7g2a@skbuf>
 <87ileljfwo.fsf@kapio-technology.com>
 <20230328114943.4mibmn2icutcio4m@skbuf>
 <87cz4slkx5.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cz4slkx5.fsf@kapio-technology.com>
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

On Tue, Mar 28, 2023 at 09:45:26PM +0200, Hans Schultz wrote:
> So the solution would be to not let the DSA layer send the
> SWITCHDEV_FDB_OFFLOADED event in the case when the new dynamic flag is
> set?

I have never said that.
