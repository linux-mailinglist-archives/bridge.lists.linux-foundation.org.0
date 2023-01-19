Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CE267347F
	for <lists.bridge@lfdr.de>; Thu, 19 Jan 2023 10:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9A3740C6A;
	Thu, 19 Jan 2023 09:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9A3740C6A
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=pY+ceUT5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMN5oNNtzeJd; Thu, 19 Jan 2023 09:34:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7814C40C66;
	Thu, 19 Jan 2023 09:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7814C40C66
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14254C0078;
	Thu, 19 Jan 2023 09:34:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 748DBC002D
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 09:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C15660E71
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 09:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C15660E71
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=pY+ceUT5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eOy1I6De9QDk for <bridge@lists.linux-foundation.org>;
 Thu, 19 Jan 2023 09:34:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8089660A7E
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8089660A7E
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 09:34:03 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id y11so2021020edd.6
 for <bridge@lists.linux-foundation.org>; Thu, 19 Jan 2023 01:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=s5Ge8uyMAXwH1kNbVoLVJMz5md/YXC3qDG0uqYv7JLg=;
 b=pY+ceUT5z37uTU7Y1gqA8WAVoJkOmuKK/1C6ouoZ6getUO4DtNM6wxQRLx5HwaCGMt
 acn3C1Co/vL2ciJLZY5ai84WZ4tmqecAFLJ1NBFpeDPE7MKbG129/AA+YIwvFAJAyDhU
 RdCAKmEb1uZvhlsDXlDbaDESg9tc0nTWVNi+ab5tYEITZrWBpqXAK6aP58qNNuWDYD+t
 OXeZalhSPmSHmVQSiRt2lLOoIRyvnlKMyGHl3NE0wF8O0EEPsMCp4vipxaHaFMxW78fz
 fdsOQ/t9jZ5sjLj881ECBUdsuF3BuGoU71VZOvxst6tRH0wSRVCbbukt9r/PGqLna/KP
 xXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s5Ge8uyMAXwH1kNbVoLVJMz5md/YXC3qDG0uqYv7JLg=;
 b=Y5dDmz0H9T4VAsAySA+1Yi7ipehxaxGqKZSjpRC0WTC8Ig9VsWwkTHlmUj7x7Z3CNZ
 fxSdYmNiZS45xMFq99LuqgTI4z3++37bzBWP9lhwZL4xqp10Dh/lv5JvjUljNz9Kpl4L
 xioiXH+PeZnD4TN0s7MrGoEY+XW31Uyi6pIrVqJkPqnPnA+bfLmE87i3fg21+niDTa4s
 H78zPiUWt/DP53b2yjXO9k1Rk/PmbkDEFtZtGhHdQvECaSHIHC1Hxg8WmPAI4iYtwBcX
 GnhoPha529ogyX+iuGo+ZHLYpJsXbbCE4Mxs2GFTAp1Z0KW5+eVpRjF7O++ohKgSd5LQ
 VPqg==
X-Gm-Message-State: AFqh2kq+sRcJp7ELW9PcxMbGeL6YoIbY2dT/BZ6WirSOT2cZu65/cxnw
 ARZyYocXKqxdPUvXJbluZKI=
X-Google-Smtp-Source: AMrXdXv/p9J+0LyxznivegZqBjv5p2sBwAfu5EYNt9IzkrSAyvVgO9ZtOW6iKd8IcEA7ooqkwi9I1w==
X-Received: by 2002:a50:fa8f:0:b0:49e:31d5:6769 with SMTP id
 w15-20020a50fa8f000000b0049e31d56769mr9558722edr.41.1674120841563; 
 Thu, 19 Jan 2023 01:34:01 -0800 (PST)
Received: from skbuf ([188.27.185.85]) by smtp.gmail.com with ESMTPSA id
 fd7-20020a056402388700b00483dd234ac6sm15055718edb.96.2023.01.19.01.33.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Jan 2023 01:34:01 -0800 (PST)
Date: Thu, 19 Jan 2023 11:33:58 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20230119093358.gbyka2x4qbxxr43b@skbuf>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
 <20230117185714.3058453-2-netdev@kapio-technology.com>
 <20230117230806.ipwcbnq4jcc4qs7z@skbuf>
 <a3bba3eb856a00b5e5e0c1e2ffe8749a@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a3bba3eb856a00b5e5e0c1e2ffe8749a@kapio-technology.com>
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

On Wed, Jan 18, 2023 at 11:14:00PM +0100, netdev@kapio-technology.com wrote:
> > > +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags);
> > 
> > Why reverse logic? Why not just name this "is_static" and leave any
> > further interpretations up to the consumer?
> 
> My reasoning for this is that the common case is to have static entries,
> thus is_dyn=false, so whenever someone uses a switchdev_notifier_fdb_info
> struct the common case does not need to be entered.
> Otherwise it might also break something when someone uses this struct and if
> it was 'is_static' and they forget to code is_static=true they will get
> dynamic entries without wanting it and it can be hard to find such an error.

I'll leave it up to bridge maintainers if this is preferable to patching
all callers of SWITCHDEV_FDB_ADD_TO_BRIDGE such that they set is_static=true.
