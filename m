Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E8A6D0EC6
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 21:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68E4A843D1;
	Thu, 30 Mar 2023 19:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E4A843D1
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=WmGqWWMz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XFOVaL9eIbGq; Thu, 30 Mar 2023 19:27:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 12AAC843D3;
	Thu, 30 Mar 2023 19:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12AAC843D3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C1C3C008C;
	Thu, 30 Mar 2023 19:27:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A78DBC002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 19:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6ECC241EC2
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 19:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ECC241EC2
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=WmGqWWMz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNe5jEXyHqqR for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 19:27:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C30C1404A5
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C30C1404A5
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 19:27:35 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id fb38so13315350pfb.7
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 12:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680204455;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=THXcfT1gL+QhHkNxKHFXSnGLhR291IgK2JOIaE2Z6qo=;
 b=WmGqWWMzTa4UZZyZupqoOaK6GO0R0gyuPF1w/NqQwOR3PF78xzpkBDkvwwgDoKpLe/
 TO8kQ7yjlIBI/KZP17rpKiGl91hhAscGFQWH8bwfzCwzF7hgA/t1yf2YQ/fuHiOp/Y4S
 m7R0idI3KheKtG2pQCctaTWNZDNuq+HWnorSSdiqG/ymH92rpMLkcGFTOyTtxfcqdxFI
 +HSWS3FP+TZoKgHMkZWokuQpZ/GTLBA5F8DvRGoeZUmx6bxve4cZDoFXog93Ecc/69uL
 FX3PpBeZ/ZID2bZIVnqkah/3XdryzZGiTLyPvI6m/Fr5UTO00wLm0O169i2aocSTk7oI
 jxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680204455;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=THXcfT1gL+QhHkNxKHFXSnGLhR291IgK2JOIaE2Z6qo=;
 b=mNBasF8nvA97oSR8iJoTPeh2DTlamggQ5LKSt5idRyLH2VUoFcypcf9FSEoPGsCDCh
 KOVQhGutVZaZ/TlLz6Zdu+cKBvjNgDHvhFA3Cg5YbmHrLZF6r40BsAib6kPM9pjYBoix
 qT2DMvEXPKI+aKBSbIs9+1wJOF9JHFVlDpO7LbQeM2OC45HZZ8+xb5YXjdhnM3QBDXaV
 w5stOOPgWC+RGeFUVun+jlpilt6UuGyBLzsWMY2hLgEwP6nSzti+vhY5GrYBRdaE0rnd
 xKBe6uUVhFXKZoLhUveBr1lPwwU+21dxM7Ed+KGws96vd9Rl+tbQh6hUg4twLvvmfJbU
 DCXA==
X-Gm-Message-State: AAQBX9elKHtCaJa6LJMeiGQMVNKlmeeDva0QyXz5LsNmdUceIPsiug/o
 tfP4hHPkevZIxnpipGKBC2o=
X-Google-Smtp-Source: AKy350ZPHYj9WRFwCpKfZ1lGfBi7hLQFoLXN09dTmyyi2iU20kDBjCxBeGVka6HE068VChtsu0Cg8g==
X-Received: by 2002:aa7:96b0:0:b0:626:24b2:cd6c with SMTP id
 g16-20020aa796b0000000b0062624b2cd6cmr25705666pfk.7.1680204455073; 
 Thu, 30 Mar 2023 12:27:35 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 j6-20020a62b606000000b0062d7fa4b618sm225784pff.175.2023.03.30.12.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 12:27:34 -0700 (PDT)
Date: Thu, 30 Mar 2023 22:27:14 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230330192714.oqosvifrftirshej@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <874jq22h2u.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874jq22h2u.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Ido Schimmel <idosch@nvidia.com>, kuba@kernel.org,
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
 netdev@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On Thu, Mar 30, 2023 at 09:07:53PM +0200, Hans Schultz wrote:
> Not true, it reveals that I forgot to put it in the patch, that's all. As
> I cannot run several of these tests because of memory constraints I link
> the file to a copy in a rw area where I modify the list and just run one
> of the subtests at a time. If I try to run the whole it always fails
> after a couple of sub-tests with an error.
> 
> It seems to me that these scripts are quite memory consuming as they
> accumulate memory consuption in relation to what is loaded along the
> way. A major problem with my system.

I'm sorry for perhaps asking something entirely obvious, but have you tried:

kernel-dir $ rsync -avr tools/testing/selftests/ root@$board:selftests/
board $ cd selftests/drivers/net/dsa/
board $ ./bridge_locked_port.sh lan0 lan1 lan2 lan3

?

This is how I always run them, and it worked fine with both Debian
(where it's easy to add missing packages to the rootfs) or with a more
embedded-oriented Buildroot.
