Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A396668A467
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 22:15:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBCC282261;
	Fri,  3 Feb 2023 21:15:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBCC282261
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=pd4JdGeG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVbqbjrCdbDL; Fri,  3 Feb 2023 21:15:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 420FE821C8;
	Fri,  3 Feb 2023 21:15:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 420FE821C8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E2B02C007C;
	Fri,  3 Feb 2023 21:15:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5CBEFC002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 21:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3069A82262
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 21:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3069A82262
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBhsgB4gIQLp for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 21:14:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 786C3821C8
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 786C3821C8
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 21:14:57 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id y1so5784584wru.2
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 13:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=v8UifT5o8QIL+1ZOw+vxMKGXi/nfDw7qQB6T6ClS8Ic=;
 b=pd4JdGeGvQ+bwoWBkvvdDb0hhyE/Bxhta6bcG3jxt0dWu7ZCdJQHLjZUYh/neaf8kv
 E2vN7hCsLGKW2de3K6muUrxk3KJCGwOsziVlBtiWxe9afhV1sVgLOZTGjzEZ986sCAQE
 fKtMsX5U/ln9C0+q5QNHGuB2n94r0ojW3gCL6ueoVBlSVA0i1kk9DA76BLAopPpz5a+r
 +w+xc49sVxrSI6XphvcS8f9anBNzfLSR2DfW9+hI22SIZJYNLUdgyFra+/+vBm50At92
 l5Es6QjHbL5/d/8HlTu0B/cTjn6/Uqmc6dzhzy8HEN0z3ioILJcKrb0mAt/0BQo+hytZ
 2vtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v8UifT5o8QIL+1ZOw+vxMKGXi/nfDw7qQB6T6ClS8Ic=;
 b=grX8aW87KUvWJeE6J2uwtsXmvg+A3SGgNfdCcmBIgDEgI8GCHu1ZXsUK63RqXxmOds
 LaBI73pQ/A0RJSSrbkvMyuRLZwd0jciAav6ZlC/EiOCi0+Qa5Z3hNBQQC/RBqPU3oRJR
 Pr16YLTpyIkLSrorl5KQ1z6DbYYhT5KzTJ1yrvrCcz0/ZLaI+/zttkQqAqPcTF+3s4YH
 WqmXNUmpy4y0ijKxQKYitQeng9JBolpbpGRKmyrSxJPuXjPdBYyvoqsBJygU3mNTnBwE
 GybdATOI/+wT2FmAVsJrGz+CshLVxusLYnm7LQ6L8bTTIhEjzz3DGTWMFQabGrkVQAA4
 Zcng==
X-Gm-Message-State: AO0yUKXMnJCBrScK8W2sduQEjwWQt1uAhDIgWEGVLapM2IYnkZz6N43X
 0tpmmhOP+08py9VYFw2z5YY=
X-Google-Smtp-Source: AK7set+hBed4Vs81Op6a8Moc0ZYf2TGrkIyuIwn9zkILCDF+4akhZ0fn2PUit7H3sH6BdDxxPfJo6w==
X-Received: by 2002:a05:6000:1f0f:b0:2bf:bbd1:1db3 with SMTP id
 bv15-20020a0560001f0f00b002bfbbd11db3mr10247467wrb.44.1675458895502; 
 Fri, 03 Feb 2023 13:14:55 -0800 (PST)
Received: from skbuf ([188.26.57.116]) by smtp.gmail.com with ESMTPSA id
 w7-20020adff9c7000000b002be546f947asm2835380wrr.61.2023.02.03.13.14.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 13:14:55 -0800 (PST)
Date: Fri, 3 Feb 2023 23:14:51 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20230203211451.3rhg2kg6tjmmhfmp@skbuf>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <Y9lrIWMnWLqGreZL@shredder>
 <e2535b002be9044958ab0003d8bd6966@kapio-technology.com>
 <Y9vaIOefIf/gI0BR@shredder>
 <3cecf4425b0e6f38646e25e40fd8f0fd@kapio-technology.com>
 <Y9vmfoaFxPdKvgxt@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9vmfoaFxPdKvgxt@shredder>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 netdev@kapio-technology.com, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
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
Subject: Re: [Bridge] [PATCH net-next 0/5] ATU and FDB synchronization on
	locked ports
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

On Thu, Feb 02, 2023 at 06:36:14PM +0200, Ido Schimmel wrote:
> On Thu, Feb 02, 2023 at 05:19:07PM +0100, netdev@kapio-technology.com wrote:
> > On 2023-02-02 16:43, Ido Schimmel wrote:
> > > On Thu, Feb 02, 2023 at 08:37:08AM +0100, netdev@kapio-technology.com wrote:
> > > > On 2023-01-31 20:25, Ido Schimmel wrote:
> > > > >
> > > > > Will try to review tomorrow, but it looks like this set is missing
> > > > > selftests. What about extending bridge_locked_port.sh?
> > > > 
> > > > I knew you would take this up. :-)
> > > > But I am not sure that it's so easy to have selftests here as it is timing
> > > > based and it would take the 5+ minutes just waiting to test in the stadard
> > > > case, and there is opnly support for mv88e6xxx driver with this
> > > > patch set.
> > > 
> > > The ageing time is configurable: See commit 081197591769 ("selftests:
> > > net: bridge: Parameterize ageing timeout"). Please add test cases in the
> > > next version.
> > 
> > When I was looking at configuring the ageing time last time, my finding was
> > that the ageing time could not be set very low as there was some part in the
> > DSA layer etc, and confusion wrt units. I think the minimum secured was like
> > around 2 min. (not validated), which is not that much of an improvement for
> > fast testing. If you know what would be a good low timeout to set, I would
> > like to know.
> 
> My point is that the ageing time is parametrized via 'LOW_AGEING_TIME'
> in forwarding.config so just use '$LOW_AGEING_TIME' in the selftest and
> set it as high as it needs to be for mv88e6xxx in your own
> forwarding.config.

FWIW, we have a forwarding.config file in tools/testing/selftests/drivers/net/dsa/.
So you could cd to that folder, edit the file with your variable, and run the symlinked
script from there.

> as there was some part in the DSA layer etc

	if (ds->ageing_time_min && ageing_time < ds->ageing_time_min)
		return -ERANGE;

High tech, advanced software.....

You could print the ds->ageing_time_min variable. For mv88e6xxx, my 6390
and 6190 report 3750. I have to admit the ageing time units are confusing,
but Tobias Waldekranz kindly explained in one of those commit messages
that Ido linked to that these represent "centiseconds" (or 37.5 seconds).
And I think we discussed the units with you before. And in general, it's
not hard to find the answer if you search for it, I know I could find it.

Please stop trying to find silly excuses to always go through the path
of minimal resistance.
