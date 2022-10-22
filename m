Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A297E608D09
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 13:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9F3340491;
	Sat, 22 Oct 2022 11:55:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9F3340491
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Zn6DNUW7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id egG57gQUKqg0; Sat, 22 Oct 2022 11:55:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 28FD340132;
	Sat, 22 Oct 2022 11:55:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28FD340132
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6F10C007C;
	Sat, 22 Oct 2022 11:55:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39F34C002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 11:55:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E67881D18
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 11:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E67881D18
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Zn6DNUW7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oY1x5WyL91V4 for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 11:55:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CDF081D02
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CDF081D02
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 11:55:11 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id q19so14987439edd.10
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 04:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lb9/zjqYRw+NBkGo45ll85eULcpfPgNmAc+gmZ4GdK8=;
 b=Zn6DNUW7Q97y/Bj/MSIzEC49CS64UT31QlzoAD6wLkmrUxwL1opBKx7FXFWrSqbXaY
 Kr1KrFPsJ5JFxz0E1ldEufc0LNrVaS6CfxrDGIytU7fsPoRNSf7b8USeKEUhwUXCscFM
 a2eyfsGFdsJkoxvamtodBneDSb4qhyXHHlRu7IuxYnRTevp2bmD1yAVHZeigULn1T3uo
 SomsjVAH+PAFo+dUSfG7fdu4CcnjNb6zpwlwRsUS2LdACbuiopa+fiVo3Kp3Y0SXSwg0
 sJQXpsxD9lNfpN8JbakSleno2DDivomz9MFdYdzSmr8s6ium2N25Al1S20hCR2OOVz/t
 QzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lb9/zjqYRw+NBkGo45ll85eULcpfPgNmAc+gmZ4GdK8=;
 b=rzfFFzjZoTbzMehSOQ6Av2US7yabiWtw5RUQNCjLxZZoJ2yzvxDLJ9jdHNSmh6keAu
 UKm00klEKr9SIlL4XpoVe/gJHaVoIasuwZkHz8jjhJYweh7SCt0eaBiFp92oqqsRnhA5
 ZWe3HAUNx+Le+FMGSNlmCGOH9JYeno7mJtIfRZnzaTiz2IsS67L63d05HeBPTHqn3Xv2
 nSDqtaYTf2AgLTrImsN9gOG6qOTzKzCNHPgKYBDgWBkX14ZI3dEN3c+Cc8OK1XP24q2t
 2QQCwf9L3lj9UjWpKBKv7WSSqFfkjoQl6DWJodoJX+IjUt+Sz5oTKFxsbAGhAZ8m0cIf
 ZEJQ==
X-Gm-Message-State: ACrzQf13Dx3Ghgk5otoVsgN1bXMpPK9Af6USJvTEB7Uhy1ABu6A1bk0Z
 LZFegSPW6L4AxnW52pxwyHw=
X-Google-Smtp-Source: AMsMyM5sZekC9ebEG4UlcVJhjIzJk4B8pbY2EdSY2DXkIQxcMmosxQTI6bWhf1D8BYOHHlCeocAkpw==
X-Received: by 2002:a05:6402:1cca:b0:460:7d72:8f2 with SMTP id
 ds10-20020a0564021cca00b004607d7208f2mr12435625edb.205.1666439709061; 
 Sat, 22 Oct 2022 04:55:09 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 fd13-20020a056402388d00b0045b3853c4b7sm14906421edb.51.2022.10.22.04.55.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Oct 2022 04:55:08 -0700 (PDT)
Date: Sat, 22 Oct 2022 14:55:05 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221022115505.nlnkfy2xrgrq74li@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <a0269818b270ad0537b991bd98725260@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0269818b270ad0537b991bd98725260@kapio-technology.com>
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

On Sat, Oct 22, 2022 at 09:31:06AM +0200, netdev@kapio-technology.com wrote:
> But I think it should be so that turning MAB off will clear the ALE entries
> regardless, as the port can continue to be locked and needing port association,
> or you want them to just age out normally in that case, thus lingering for
> up to bridge ageing time?

Even without BR_PORT_LOCKED, I find it normal that dynamically learned
FDB entries are forcefully aged out when BR_LEARNING is turned off,
instead of lingering on until they expire.

This does not happen in the software bridge, and I did not understand
why (I suspected some backwards compatibility reasons), and for this
reason, it is only from within DSA that we are forcing this behavior to
take place. In dsa_port_bridge_flags(), when BR_LEARNING is turned off,
we call dsa_port_fast_age() which also calls SWITCHDEV_FDB_FLUSH_TO_BRIDGE
(and this clears the bridge software FDB of dynamically learned entries).

I very much expect the same thing with MAB and BR_FDB_LOCKED entries,
that they go away when the BR_PORT_MAB/BR_LEARNING flag (whichever way
we call it) is unset.

Now, if the bridge should initiate the flushing, or still DSA, is
perhaps a topic for further discussion. Given that BR_FDB_LOCKED entries
are new, maybe the bridge could do it in this case (no backwards
compatibility to handle).

Currently the DSA logic mentioned above is bypassed, because we treat
MAB and autonomous learning differently. If we accepted that MAB is
still a form of learning (managed through BR_LEARNING+BR_PORT_LOCKED),
then the DSA logic would kick in, and both the software bridge and the
hardware driver would have a hook to clean up the BR_FDB_LOCKED entries,
plus anything else that is dynamic. The DSA logic would also kick in if
we treated BR_PORT_MAB within DSA like BR_LEARNING, which basically
amounts to the same thing, except for the confusing (IMO) UAPI of having
a flag (BR_PORT_MAB) which is basically a form of learning that isn't
controlled by the BR_LEARNING flag (which is undefined and unclear if it
should be set or not, in BR_PORT_LOCKED mode).
