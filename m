Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE75B1B42
	for <lists.bridge@lfdr.de>; Thu,  8 Sep 2022 13:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 360FF8403D;
	Thu,  8 Sep 2022 11:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 360FF8403D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=o3CYbDyC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20yiVlpR97eG; Thu,  8 Sep 2022 11:20:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C5C768402E;
	Thu,  8 Sep 2022 11:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5C768402E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6D889C0078;
	Thu,  8 Sep 2022 11:20:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08DB7C002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Sep 2022 11:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C68C641B89
 for <bridge@lists.linux-foundation.org>; Thu,  8 Sep 2022 11:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C68C641B89
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=o3CYbDyC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORlgwRVSJBo8 for <bridge@lists.linux-foundation.org>;
 Thu,  8 Sep 2022 11:20:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD75141B86
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD75141B86
 for <bridge@lists.linux-foundation.org>; Thu,  8 Sep 2022 11:20:53 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id a70so7704235edf.10
 for <bridge@lists.linux-foundation.org>; Thu, 08 Sep 2022 04:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=G8ZnoARtuecckP3hweHke5GOybQ4Tx8AFkQAdpOiTb4=;
 b=o3CYbDyCbEVhWcKDUNyemWRpDB/jalwhB9aKwfAiQiAAIycxvO3x8vNjM2BbbmGETQ
 qmYVGwNejRe0ZiGsWxi1PC8OdZqDIWoZb6HYHGpLUxXu7Om1xnQ034XpYv4zMiLlLX2h
 sg4C2k2Xv+IX34PF6zos9eS3dY/zY+vCALN73udNDncKWjxals7NZRLSiXB42Q2fNGPw
 co3sk3l0aMsDyc4fy+12gj1OOrSw+NB0qHRKLgqxrc3+6GvPnmIf7NdGZtkt+84PR2n1
 pzz0uWK02TyFNkFyV46Dr3F5EA1HbcwnOnOGQ4r60egXvGebPdNn6mZrsBtgihpNyO8R
 N1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=G8ZnoARtuecckP3hweHke5GOybQ4Tx8AFkQAdpOiTb4=;
 b=6uqMetawez92+rwyQmu9ltjK2dK5xFBL7oZJCH02HOVdagl9OFYo937x7R8FJN/DL+
 x8tNQtlpNveoy7s9Pdpr2+WPiLlMB3gxLV9P17Xsl/zcieBSxjTIpqUCtu7XVOS8Lldi
 Kt+Fn3FADDm3ZwxDDe2656k7TqKiGR3V90z2TdVQuw8wztP8qoFDu0jMyl2RF+UZ5/UU
 piM25LUMItDvvZYJr/lxzCOJt4H8tjDfL3HovvQ/kf7I3dpDEUOW1BdTMEitEAkIa2dR
 8Gl4cI4W9Z5lZ4b8PQO1d/RXORFvnGCNzkOc03gzeC3VYWyV1BiuPKGU+AwQ40KD4zME
 UTHA==
X-Gm-Message-State: ACgBeo2/To6FH2nWfUxzkhxRzg2Zk3Jggs44pkZolCO3NXF/jZwDFGj3
 ZWHG+5erD9rc9Wu31PREuN4=
X-Google-Smtp-Source: AA6agR5FVS+CRHX7ZNRp3l6+bfFEe/zLpbi+VIWGy2rLmJ3mU9ZkunVXWhrZz/JnhHHr46WP0K1dVQ==
X-Received: by 2002:aa7:d703:0:b0:44e:a7b9:d5bd with SMTP id
 t3-20020aa7d703000000b0044ea7b9d5bdmr6773436edq.425.1662636051345; 
 Thu, 08 Sep 2022 04:20:51 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 lr23-20020a170906fb9700b0077077c62cadsm1120329ejb.31.2022.09.08.04.20.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Sep 2022 04:20:49 -0700 (PDT)
Date: Thu, 8 Sep 2022 14:20:44 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220908112044.czjh3xkzb4r27ohq@skbuf>
References: <Ywyj1VF1wlYqlHb6@shredder>
 <9e1a9eb218bbaa0d36cb98ff5d4b97d7@kapio-technology.com>
 <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
 <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
 <YxNo/0+/Sbg9svid@shredder>
 <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
 <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Ido Schimmel <idosch@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Roopa Prabhu <roopa@nvidia.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 6/6] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On Thu, Sep 08, 2022 at 01:14:59PM +0200, netdev@kapio-technology.com wrote:
> On 2022-09-08 09:59, Ido Schimmel wrote:
> > On Wed, Sep 07, 2022 at 11:10:07PM +0200, netdev@kapio-technology.com wrote:
> > > I am at the blackhole driver implementation now, as I suppose that the
> > > iproute2 command should work with the mv88e6xxx driver when adding blackhole
> > > entries (with a added selftest)?
> > > I decided to add the blackhole feature as new ops for drivers with functions
> > > blackhole_fdb_add() and blackhole_fdb_del(). Do you agree with that approach?
> > 
> > I assume you are talking about extending 'dsa_switch_ops'?
> 
> Yes, that is the idea.
> 
> > If so, it's up to the DSA maintainers to decide.

What will be the usefulness of adding a blackhole FDB entry from user space?
