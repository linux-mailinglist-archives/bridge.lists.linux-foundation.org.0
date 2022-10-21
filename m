Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF55C607608
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 13:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 401C184328;
	Fri, 21 Oct 2022 11:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 401C184328
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=aqI400aF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CdorwYCgHHbS; Fri, 21 Oct 2022 11:22:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B4AC78432B;
	Fri, 21 Oct 2022 11:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4AC78432B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 33C45C007C;
	Fri, 21 Oct 2022 11:22:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 91BF2C002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 11:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5857660E51
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 11:22:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5857660E51
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aqI400aF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3OInsRYk6p9V for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 11:22:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6049560F3A
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6049560F3A
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 11:22:22 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id m15so4513419edb.13
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 04:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=y83I/EEj5O1WzvhlqMvy69bC2C3kma+TguYlktElg+U=;
 b=aqI400aFX+Hv1if94yQ/9coImAcoL5xm5EE9Z8Pnq+JQ7MqId0ZuB5eW9kjAqCiUrN
 KMZPlHItsw5EctvNgdlnTcP5laLuqUz+SV1o33najcKCsjf0QARB5ow9Z44sTZTOmSeg
 UrpNC6fH6ciHR2X4rGmdJWOSbH4r9VMHXzYepV/zYSLDnnNwqU+kf3Zv2sg7HE61xVNl
 7t3a9w2kLyvF5PibwmB0qSxZXtgVyxt+2/Ir7YJLUZG06dtskhoVW5tz2mc4jA71zIm4
 UhnubOmNzJl78yCv0QqxYV7AfFoBR+16JycwYyxr/dmdd6j59K4vgycD/Tzgpk9gib2d
 VCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y83I/EEj5O1WzvhlqMvy69bC2C3kma+TguYlktElg+U=;
 b=ZiL1GoPEWHkauigv3LIOilXJirUDxiDzuPNzovoWL0Nw7kt+n6KpAC4fo73vVMP9Ty
 XOL3bqKagAGDm3mpkp4wYPD/xE1+9xEgtKMQaWVGQ9Q1FnB4QMc7o/fNWE/Vbt2EMb+M
 hP6IRan3I0yhjE0117P+TTwArmDZm5KVBjoELGhNuMwIgbcCwQfGxJ9ioSKuQgT/Gdyd
 KvsMqPvHviwDQYlXUFV/Qm6aYvON8Hwtp2Yylxc92A9cXbuZA8jc/7d7PPMSfFFJCxUu
 hTw/duKtCloC56h0rYTp1ZWOIQbLuq9WtyaoEglUEnLeG8voDg03mPZ0HOpKV/dyGvbr
 DoVA==
X-Gm-Message-State: ACrzQf3IAG4xYi9ZN1QGFNmO+sEWnaxrMAsQMi8ro1ZJ02hG+910Mglu
 UknNNJgAqP0iDOUTObK/eB4=
X-Google-Smtp-Source: AMsMyM4Ljgcs84MFVGjjaNn1SINn2K1OMLuiOgFc7iq4/CDwKUIaipwaA3YvQFgGhkmQ345GuQJlMw==
X-Received: by 2002:a17:906:db0e:b0:77b:82cf:54a6 with SMTP id
 xj14-20020a170906db0e00b0077b82cf54a6mr14838182ejb.691.1666351340215; 
 Fri, 21 Oct 2022 04:22:20 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 g22-20020a50d5d6000000b00457160c3c77sm13487340edj.20.2022.10.21.04.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Oct 2022 04:22:19 -0700 (PDT)
Date: Fri, 21 Oct 2022 14:22:16 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221021112216.6bw6sjrieh2znlti@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
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

On Fri, Oct 21, 2022 at 08:47:42AM +0200, netdev@kapio-technology.com wrote:
> On 2022-10-21 00:57, Vladimir Oltean wrote:
> > On Thu, Oct 20, 2022 at 10:20:50PM +0200, netdev@kapio-technology.com
> > wrote:
> > > In general locked ports block traffic from a host based on if there
> > > is a
> > > FDB entry or not. In the non-offloaded case, there is only CPU
> > > assisted
> > > learning, so the normal learning mechanism has to be disabled as any
> > > learned entry will open the port for the learned MAC,vlan.
> > 
> > Does it have to be that way? Why can't BR_LEARNING on a BR_PORT_LOCKED
> > cause the learned FDB entries to have BR_FDB_LOCKED, and everything
> > would be ok in that case (the port will not be opened for the learned
> > MAC/VLAN)?
> 
> I suppose you are right that basing it solely on BR_FDB_LOCKED is possible.
> 
> The question is then maybe if the common case where you don't need learned
> entries for the scheme to work, e.g. with EAPOL link local packets, requires
> less CPU load to work and is cleaner than if using BR_FDB_LOCKED entries?

I suppose the real question is what does the bridge currently do with
BR_LEARNING + BR_PORT_LOCKED, and if that is sane and useful in any case?
It isn't a configuration that's rejected, for sure. The configuration
could be rejected via a bug fix patch, then in net-next it could be made
to learn these addresses with the BR_FDB_LOCKED flag.

To your question regarding the common case (no MAB): that can be supported
just fine when BR_LEARNING is off and BR_PORT_LOCKED is on, no?
No BR_FDB_LOCKED entries will be learned.
