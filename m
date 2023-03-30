Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 531D26D0919
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 17:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67AC160776;
	Thu, 30 Mar 2023 15:08:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67AC160776
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=hrKdvXgm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IIQZO3Yw9CYz; Thu, 30 Mar 2023 15:08:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5898660864;
	Thu, 30 Mar 2023 15:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5898660864
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB320C008C;
	Thu, 30 Mar 2023 15:08:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB738C002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 15:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 803B3605E0
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 15:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 803B3605E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9627dyumKn8D for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 15:08:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E37D160E13
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E37D160E13
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 15:08:13 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id n14so2489221plc.8
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 08:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680188893;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=z0Z7V7Ss/AtXBRghpZkg8HPKEk/gIK+rbrkFIOnWykw=;
 b=hrKdvXgmz+intqH6k/82qhZO+TXJRFUbWkit5YyihN3zsu13/kSZ0hpW0LVa5b7XVy
 h+KE9JOb8fFAzZYG60AOgY5RNeZjapZ/L4Q/l8g7HQ/PudZPn7BQcfZPJUOnIezdbY4C
 WSW3uXVaJ72O2Q73JC17f1rYt+NLA0tgOfwHgId0U4xbayGoLw4zd3TjSMl1QDWNgoay
 yTwQK2Gz1n74v92l4Hst8OFJ8LVY/EVXYX0JhaQjQyWBDAUqOmPaaYMrR+yRmkM0qv9w
 Gx2josZg2bXesXPWbGOJJSnHTl4S9C2rpx+jZ2yk/jHkgPBwBiMzTH317fUL6yDpgkZ4
 ScyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680188893;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z0Z7V7Ss/AtXBRghpZkg8HPKEk/gIK+rbrkFIOnWykw=;
 b=iW2omWVSHPimWDcmDJ8disupu02KGVlHbuJgi1HwQ+69NGe9SxqcVf2cTyiru5swkz
 gOVWGV4dxI1TtBQST8nJ1L1jHFcW9jM5MAWMxHvwNDEvv11d5uESpjlp5LPaoJhCG2PM
 Npak71yGnUu211iQYOQvSMzYmZ3iu07pXWT9rT7aAiUco+EtdYSDqx3b5CQgy+r4Pnto
 kX3OGwkrRw6tuJ8ykzkwuTvXyhuUqyVehtt+4J0kspj+Q1Ql7NrRpLt+VI78wIYNM1QL
 C7zm8lraEaw2xikmXh1/aZLy5pWNm0CJ7LjLdoSLtpnNnS0wgJBR2jM0GpjL72nZGLZU
 ssow==
X-Gm-Message-State: AO0yUKXtL2MfdAkYD5mt80PakQCZmuS+m7b2SC7KC1ab1NNOAHWrfYeU
 OxQPX+Z4yFlCNqdZ+px5N3Y=
X-Google-Smtp-Source: AK7set+uK7+GwFdenHrawwnv6t1AUOM2gsI7rgDOiMu7/kWlK6xgT1y03qBrqCUPM+I2yWXxPnmQ2w==
X-Received: by 2002:a05:6a20:6ca6:b0:db:cfb5:33aa with SMTP id
 em38-20020a056a206ca600b000dbcfb533aamr20045536pzb.56.1680188893105; 
 Thu, 30 Mar 2023 08:08:13 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 w25-20020aa78599000000b00625037cf695sm24868986pfn.86.2023.03.30.08.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 08:08:12 -0700 (PDT)
Date: Thu, 30 Mar 2023 18:07:52 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230330150752.gdquw5kudtrqgzyz@skbuf>
References: <20230327160009.bdswnalizdv2u77z@skbuf>
 <87pm8tooe1.fsf@kapio-technology.com>
 <20230327225933.plm5raegywbe7g2a@skbuf>
 <87ileljfwo.fsf@kapio-technology.com>
 <20230328114943.4mibmn2icutcio4m@skbuf>
 <87cz4slkx5.fsf@kapio-technology.com>
 <20230330124326.v5mqg7do25tz6izk@skbuf>
 <87wn2yxunb.fsf@kapio-technology.com>
 <20230330130936.hxme34qrqwolvpsh@skbuf>
 <875yaimgro.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875yaimgro.fsf@kapio-technology.com>
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

On Thu, Mar 30, 2023 at 04:54:19PM +0200, Hans Schultz wrote:
> I don't know if you have a solution in mind wrt the behaviour of the
> offloaded flag if it is not to do as it does now and let the bridge age
> out dynamic entries. That led me to conclude that this patch-set cannot
> use the offloaded flag, but you seem to suggest otherwise.
> 
> If you have a suggestion, feel free.

Didn't I explain what I would do from the first reply on this thread?
https://patchwork.kernel.org/project/netdevbpf/patch/20230318141010.513424-3-netdev@kapio-technology.com/#25270613

As a bug fix, stop reporting to switchdev those FDB entries with
BR_FDB_ADDED_BY_USER && !BR_FDB_STATIC. Then, after "net" is merged into
"net-next" next Thursday (the ship has sailed for today), add "bool static"
to the switchdev notifier info, and make all switchdev drivers (everywhere
where a SWITCHDEV_FDB_ADD_TO_DEVICE handler appears) ignore the
"added_by_user && !is_static" combination, but by their own choice and
not by switchdev's choice.

Then, make DSA decide whether to handle the "added_by_user && !is_static"
combination or not, based on the presence of the DSA_FDB_FLAG_DYNAMIC
flag, which will be set in ds->supported_fdb_flags only for the mv88e6xxx
driver. When DSA_FDB_FLAG_DYNAMIC is not supported, DSA will not offload
the FDB entry: neither will it call port_fdb_add(), nor will it emit
SWITCHDEV_FDB_OFFLOADED. Ideally, it would also inform user space that
it can't offload this flag by returning an error, but the lack of an
error propagation mechanism from switchdev to the bridge FDB is a known
limitation which is hard to overcome, and is outside the scope of your
patchset I believe. To see whether DSA has acted upon the "master dynamic"
flag or not, it would be good enough for the user to see something
adequate in "bridge fdb show | grep offloaded", I believe.
