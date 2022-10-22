Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1823B608D16
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 14:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AD1A60A77;
	Sat, 22 Oct 2022 12:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AD1A60A77
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=dvzFO2xk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t97tQ0vMPCB0; Sat, 22 Oct 2022 12:02:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4FA0160AE2;
	Sat, 22 Oct 2022 12:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FA0160AE2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF841C007C;
	Sat, 22 Oct 2022 12:02:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32CD6C002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 12:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCB82830E2
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 12:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCB82830E2
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dvzFO2xk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OvLEl2dWULGF for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 12:02:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48B4F82D07
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48B4F82D07
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 12:02:06 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id a67so15001282edf.12
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 05:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xJswdS7kC+5Dq/oSBvb9hTl0H5TWQ6aU0davE3hjl1Y=;
 b=dvzFO2xkBvm/I20DsGFjUnIHX/SdJqe96jZQplwuGvJpQE4bAzpLO0o/eH7aNuN1tI
 UJcjmOTutwMDaISNJqVGDAnOtGq5GkpDWhHNxclYnyNCg+IdJZLja8Rf55StXWvKatpF
 yKnVmqSOFj+g5UFG75lcNmGxsSmbyHf3MG8LEsvNuYV26gmdyAMDkNCxLEkuM1c+NN+L
 Fa5Qnhk7EKEegtg5NV3PwfHWw5FJPQKv92qfP04bfdV1tdoo6uAuC13WTqfM5Xt3LblO
 BczxEoKr+pCJVLvA1jJ/hm7FlpgtHfG5xa3xhZ3VgL5kca9F+WGw25fyyz++/lAAMFDs
 dXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xJswdS7kC+5Dq/oSBvb9hTl0H5TWQ6aU0davE3hjl1Y=;
 b=eXBgFA7Rtqi9cSTNIAgQrspTpDy+ViiXQsI7sWHpVUV+ITlFUwCedmqRJeizj0Z944
 QHdHOFh3vyyg4sMqQePQ0H0Lz1uDGCFNQWb9DxJBBG+FktSDaUoONTdu165uzli4PsRh
 nv/Gh0kPHYTb47FXT22uLTnRNN9G8A10hqPNJLnQXDbugsyWmZB33EjejqdkTCwd4+yN
 yy8JrJgIH2T6kBf6yI5wRyYzO4rY/0kMiEZWdvIFfQd4VqKRt17wkp1WCdJAVJ5MKUK/
 AgiUP6B5s1hhIYUYxm6RXUeXN6GbXOwFKHGW96a1K6gY+gB+i04j8qHAgEDaw0Je6vnx
 JDsg==
X-Gm-Message-State: ACrzQf2nVpzihzB2p+9bT26br9hInX/+Gf/3LytCZ9aENhyKoln0s4Ls
 FqwnfzkklcruBJb/uxiTjio=
X-Google-Smtp-Source: AMsMyM6Fmdy49HywfzOaMBOmuOmQiypZLiOuHNCnJMuBTRIFt8BiFMip0M63IhGdvg3IsRPPq/Kt0g==
X-Received: by 2002:a17:907:a06e:b0:79f:e42d:8d54 with SMTP id
 ia14-20020a170907a06e00b0079fe42d8d54mr3497885ejc.72.1666440124277; 
 Sat, 22 Oct 2022 05:02:04 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 u13-20020aa7d54d000000b00458478a4295sm15051796edr.9.2022.10.22.05.02.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Oct 2022 05:02:03 -0700 (PDT)
Date: Sat, 22 Oct 2022 15:02:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221022120200.no5pl54bcfa3wcnd@skbuf>
References: <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf>
 <37dc7673fde2b8e166a5ed78431a2078@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <37dc7673fde2b8e166a5ed78431a2078@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>,
 Oleksandr Mazur <oleksandr.mazur@plvision.eu>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Florent Fourcot <florent.fourcot@wifirst.fr>, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Sat, Oct 22, 2022 at 09:24:56AM +0200, netdev@kapio-technology.com wrote:
> I will not say that you are not making sense as for the mv88e6xxx, as it
> needs port association in all cases with BR_PORT_LOCKED, MAB or not, and
> port association is turned on in the driver with learning turned on.
> 
> That said, there must be some resolution and agreement overall with this
> issue to move on. Right now port association is turned on in the mv88e6xxx
> driver when locking the port, thus setting learning off after locking will
> break things.

This already needs to be treated as a bug and fixed on its own. Forget
about MAB.

You're saying that when BR_LEARNING=on and BR_PORT_LOCKED=on, the
mv88e6xxx driver works properly, but the software bridge is broken
(learns from link-local multicast).

When BR_LEARNING=off and BR_PORT_LOCKED=on, the software bridge is not
broken, but the mv88e6xxx driver is, because it requires the PAV
configured properly.

And you're saying that I'm the one who suggests things should work
differently in software mode vs offloaded mode?!

Why don't you
(a) deny BR_LEARNING + BR_PORT_LOCKED in the bridge layer
(b) fix the mv88e6xxx driver to always keep the assoc_vector set
    properly for the port, if BR_LEARNING *or* BR_PORT_LOCKED is set?
