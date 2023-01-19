Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDCD673A8B
	for <lists.bridge@lfdr.de>; Thu, 19 Jan 2023 14:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7DD940108;
	Thu, 19 Jan 2023 13:40:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7DD940108
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Ssrumq6P
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VuuPqkbdeob5; Thu, 19 Jan 2023 13:40:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6D5244046D;
	Thu, 19 Jan 2023 13:40:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D5244046D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01A46C0078;
	Thu, 19 Jan 2023 13:40:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2666AC002D
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 13:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E767C419BD
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 13:40:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E767C419BD
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Ssrumq6P
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUvnc4hbNS4a for <bridge@lists.linux-foundation.org>;
 Thu, 19 Jan 2023 13:40:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3F0A41963
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3F0A41963
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 13:40:50 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id v5so2911013edc.3
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 05:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2sA9EhPclZO6+f6VLQzu+GI/zukGWQQoz8R1Dt12GsI=;
 b=Ssrumq6PQhx2e/g4Bd6SuNl23SQH9Qv/nzp1Uy9v//x8kEfruuqhhMNDkoX0H6ubCI
 MaR+SU/RqMNRmjwnNWDMEcpz5GjfoleC+3BNcTsopxhWnVzJ1nwvkgl4GUS7gqR9n1Fq
 izOLXvz1I0ML3IDmv7IE1eUXRtk1Yci1fVgckWGdmoTrtO/ZlMVH35H0a2v/yyavFMTI
 dgIH49auVy3dEz1m78McldLsu3o9041upq0t+vH0lbSnrUxZ+kOG4XyhlXJ82KOUrTZk
 0WYx/93yCnKvBMWzXt48IicEnnzHqiPpFmQESj7PjC1dRCf2NXHPeU7yGmFs8AcDl6o1
 hazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2sA9EhPclZO6+f6VLQzu+GI/zukGWQQoz8R1Dt12GsI=;
 b=xhhfSN9dbYpayIsOuWmztBstlrbTjD/uLJdZz3wlwfibc9MB9tgeEDp5gF+iSvRCYS
 zuhWYWhxvjYrApaGwNrIWJEM8lJ5SM6JFdHt4Dz4JrasrLZ5kECFahaZkLz/hqoEoJbR
 W8uMbvDWK84j3XKRwxKwEYtZDycbW5EvJYb//y+QQ36hjki/O/tQcbwzLeN5gmS6thJh
 40omCOCWJ0EzHJFwMxavGfkBXfA2x6jO/Nj9JQkUViuK0gSDMzUBvxv7kItscM/UyIWB
 H84b4KpLBiF4w0C9UCJhy8TpSepqyRORrDfFahTJb8nAubg9n3r1i4CLoGvyM7mzg8lY
 ExHA==
X-Gm-Message-State: AFqh2koY8D+gXMaf7ISA4/0vE7awbrrhS8Tw9r6lBW4Xjrzuu7yivyz9
 iR1NvYUfjGmfR9Gb62d7SNU=
X-Google-Smtp-Source: AMrXdXvXkuKoZFQFQT4KXsKjMumQ66Scy56M1tiUgcqYCQA/AY3QpuuZlRLh4qPLSeGgenAVe3KP+g==
X-Received: by 2002:a05:6402:cba:b0:49d:25f3:6b4e with SMTP id
 cn26-20020a0564020cba00b0049d25f36b4emr10522051edb.28.1674135648960; 
 Thu, 19 Jan 2023 05:40:48 -0800 (PST)
Received: from skbuf ([188.27.185.85]) by smtp.gmail.com with ESMTPSA id
 sb25-20020a1709076d9900b0084c6581c16fsm16304907ejc.64.2023.01.19.05.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Jan 2023 05:40:48 -0800 (PST)
Date: Thu, 19 Jan 2023 15:40:45 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20230119134045.fqdt6zrna5x3iavt@skbuf>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
 <20230117185714.3058453-2-netdev@kapio-technology.com>
 <20230117230806.ipwcbnq4jcc4qs7z@skbuf>
 <a3bba3eb856a00b5e5e0c1e2ffe8749a@kapio-technology.com>
 <20230119093358.gbyka2x4qbxxr43b@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230119093358.gbyka2x4qbxxr43b@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
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
Subject: Re: [Bridge] [RFC PATCH net-next 1/5] net: bridge: add dynamic flag
 to switchdev notifier
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

On Thu, Jan 19, 2023 at 11:33:58AM +0200, Vladimir Oltean wrote:
> On Wed, Jan 18, 2023 at 11:14:00PM +0100, netdev@kapio-technology.com wrote:
> > > > +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags);
> > > 
> > > Why reverse logic? Why not just name this "is_static" and leave any
> > > further interpretations up to the consumer?
> > 
> > My reasoning for this is that the common case is to have static entries,
> > thus is_dyn=false, so whenever someone uses a switchdev_notifier_fdb_info
> > struct the common case does not need to be entered.
> > Otherwise it might also break something when someone uses this struct and if
> > it was 'is_static' and they forget to code is_static=true they will get
> > dynamic entries without wanting it and it can be hard to find such an error.
> 
> I'll leave it up to bridge maintainers if this is preferable to patching
> all callers of SWITCHDEV_FDB_ADD_TO_BRIDGE such that they set is_static=true.

Actually, why would you assume that all users of SWITCHDEV_FDB_ADD_TO_BRIDGE
want to add static FDB entries? You can't avoid inspecting the code and
making sure that the is_dyn/is_static flag is set correctly either way.
