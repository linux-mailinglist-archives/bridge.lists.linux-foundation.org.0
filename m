Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F17E606BC9
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 00:57:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51B4160A7B;
	Thu, 20 Oct 2022 22:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51B4160A7B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=XBJzFhdu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayIWfPzFflON; Thu, 20 Oct 2022 22:57:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D8E1460D78;
	Thu, 20 Oct 2022 22:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8E1460D78
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58528C0078;
	Thu, 20 Oct 2022 22:57:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21953C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED35B404D1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED35B404D1
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XBJzFhdu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ZdVqzwVhFlp for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 22:57:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 292F0400A6
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 292F0400A6
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:57:36 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id q9so3223732ejd.0
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JuxcgTkIRC5WG6rM4q/CSaRgfUH0Ti3MoOBIFAp7H8s=;
 b=XBJzFhduueKPu1ACZxmcj5cXRa0nb0p5dX8b6x8utN2F40sVgNnz2Vwo93T3WLnBcx
 Yx3WwrvmN9Nuh/q4vOjOu0pqXnDTWqYB4KV9B3sCwZOf7c8OCwjoNM/D1TNvmc045ZzX
 Poo3JVc6Gu+DF650q6sVaij7GSbGVXbKX5JW9xSnGo2M+EdB4pcsbE0152s/sylYv+Nc
 ALPztrqDuyQF/Ci2P4snXxWjZKRtHnNH3GhbYR/zFvz6RX+vOKF1y9KazvTME97oRexc
 94w80ZyNJO0Z5bBflaDs/V5ISm1JA/Dg+OYU7d/pyJvJYa/mJ0Vv6e7Q6YanX5FVgqB4
 eYew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JuxcgTkIRC5WG6rM4q/CSaRgfUH0Ti3MoOBIFAp7H8s=;
 b=m0QPWQPCsPoGG5oD2KrNgiJkKaS077Ijl7jtrfhKfgA1g4qwc8Uu1YxZQVZWx7jPea
 SWqBYGtCRZ5RJpmuK86DdIPKYqzKPQZmplMs660eJMgO8AsL41dCck+hA9GBswkx44m3
 ft/chy4aNRh6tjGXTqJvmQMacGk1dGSeduEJBZobHmsQrJQfibfUACqIoND+UWJa2lLw
 I1KZHWz/jHRPSnql6wTksujzJC7921c9VbI8fawt8LP8pCEUboqMKjmmX+sH0opjgvBE
 UKraEP5laNauIsowpKu+NenFPgiB2iZ+NqfaQ0AtKBfWaZ0diwi0zHeayIINel4pM6Xf
 C2Ng==
X-Gm-Message-State: ACrzQf13XA6hG5VqzGWnbB1Jl7+4hWWifkSoGBuojveNlOtXCFt31nvY
 CtHiFHYoH5sqvgeZ8eVrT/uHM1OKyoNCfA==
X-Google-Smtp-Source: AMsMyM7/vnHFskrIzjNC7ybOEBIlorfKrTTq/Ou6mds57aeFaKcu+F9HahwfD0wuLF52vhDnh4xpcw==
X-Received: by 2002:a17:906:58cc:b0:78d:ce9c:3787 with SMTP id
 e12-20020a17090658cc00b0078dce9c3787mr12707611ejs.715.1666306643405; 
 Thu, 20 Oct 2022 15:57:23 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 l6-20020a1709062a8600b0073d796a1043sm10750046eje.123.2022.10.20.15.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 15:57:22 -0700 (PDT)
Date: Fri, 21 Oct 2022 01:57:19 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221020225719.l5iw6vndmm7gvjo3@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
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
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
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

On Thu, Oct 20, 2022 at 10:20:50PM +0200, netdev@kapio-technology.com wrote:
> In general locked ports block traffic from a host based on if there is a
> FDB entry or not. In the non-offloaded case, there is only CPU assisted
> learning, so the normal learning mechanism has to be disabled as any
> learned entry will open the port for the learned MAC,vlan.

Does it have to be that way? Why can't BR_LEARNING on a BR_PORT_LOCKED
cause the learned FDB entries to have BR_FDB_LOCKED, and everything
would be ok in that case (the port will not be opened for the learned
MAC/VLAN)?

> Thus learning is off for locked ports, which of course includes MAB.
> 
> So the 'learning' is based on authorizing MAC,vlan addresses, which
> is done by userspace daemons, e.g. hostapd or what could be called
> mabd.
