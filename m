Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A355B4AF6
	for <lists.bridge@lfdr.de>; Sun, 11 Sep 2022 02:14:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDB458195D;
	Sun, 11 Sep 2022 00:13:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDB458195D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=I/dbdccp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W04i3w4wm6OJ; Sun, 11 Sep 2022 00:13:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 75F0F81DBF;
	Sun, 11 Sep 2022 00:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75F0F81DBF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A5465C007C;
	Sun, 11 Sep 2022 00:13:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6BE9DC002D
 for <bridge@lists.linux-foundation.org>; Sun, 11 Sep 2022 00:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 407778195D
 for <bridge@lists.linux-foundation.org>; Sun, 11 Sep 2022 00:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 407778195D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LSH1sAQ8zv-B for <bridge@lists.linux-foundation.org>;
 Sun, 11 Sep 2022 00:13:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AAF4818B5
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AAF4818B5
 for <bridge@lists.linux-foundation.org>; Sun, 11 Sep 2022 00:13:53 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id z97so7831632ede.8
 for <bridge@lists.linux-foundation.org>; Sat, 10 Sep 2022 17:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=bppXW6VDR+pb+O0s/GBMgHjeo0dyk4Z19CwR9nRdUqY=;
 b=I/dbdccpmFyof6NN2fUQMmS80Kye7WCB0cQOnWsCWr6kbYBSqsVNXYvpajN4WTXs5N
 PXhbKdVGq8qaZvgMB0u24QvcgieMU5sZBUZfzJF2amKkSCjUsiAOitoc/N3eYjx4+nbU
 UkvrRIvjsJnsPK6sjy/HtdP6xSLhmtUOAOXnyRclsyX3fiW0yb7AKTCDLDXVMQdlnFWk
 mil8xpZZTzvqkglqCqTqsMJxVx8FC4xg6utVXrjwvfOZdCzMwfSKP+sa1fb1IAQfgDPQ
 pESQws6EXy9LgJ4AVvyxftq7I/HfsvAzi5cWrDfXOlqoYDBtxh9cVpuCsIrL0Hca4ds+
 PlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=bppXW6VDR+pb+O0s/GBMgHjeo0dyk4Z19CwR9nRdUqY=;
 b=hsvx+PVD5R8HzRcBVXLQwJ0ACv0CVwicf7WQB5ZmsxJ06DBm4CCg56cpuOsnsF3IvY
 ewvpu9ORMJFbB2jC1O33fL9ZOwPlPsIbWPreDeJbZfhc9JPU0sBfOC9q8/YBV5aHCfw0
 GeMzw0XGxo1aQWyiGnXGha64ZU0+BfXHiccbSlIEphHvwzPDE8jIGU/WL65ezOeHRbHl
 bH7ii/UCsfsRwtsygnn5TxijagNzL5uMySlLZr+xRcKrOOH0FLdTnlmthhNyL4GNzCrp
 0zLZKvdr9OGQt20B3YFvCRktkVYkZbOKvFRg9Zk5+KFkW1Vd8ItLGcyB/cW7lFUGZQgh
 lrzg==
X-Gm-Message-State: ACgBeo0GeUX3mHl30Pb4Un0QkZ/dUmz6UCkipOq6CZbUMgZ4AD7yrx6H
 14+K9aIb11NfYGTVwecwJ5g=
X-Google-Smtp-Source: AA6agR52fycHpO9WU3O4tQqWIpSfhUKG2OMNd9yKS0R5NgefgysDjUnyzSr5YsGH9u2uheidlYIZ6Q==
X-Received: by 2002:a05:6402:110d:b0:451:9fc5:fe7f with SMTP id
 u13-20020a056402110d00b004519fc5fe7fmr346191edv.200.1662855231160; 
 Sat, 10 Sep 2022 17:13:51 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 c18-20020a17090618b200b00773f3ccd989sm2265945ejf.68.2022.09.10.17.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Sep 2022 17:13:50 -0700 (PDT)
Date: Sun, 11 Sep 2022 03:13:46 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220911001346.qno33l47i6nvgiwy@skbuf>
References: <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
 <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
 <YxNo/0+/Sbg9svid@shredder>
 <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
 <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
 <20220908112044.czjh3xkzb4r27ohq@skbuf>
 <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
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

On Fri, Sep 09, 2022 at 03:11:56PM +0200, netdev@kapio-technology.com wrote:
> > > > On Wed, Sep 07, 2022 at 11:10:07PM +0200, netdev@kapio-technology.com wrote:
> > > > > I am at the blackhole driver implementation now, as I suppose that the
> > > > > iproute2 command should work with the mv88e6xxx driver when adding blackhole
> > > > > entries (with a added selftest)?
> > > > > I decided to add the blackhole feature as new ops for drivers with functions
> > > > > blackhole_fdb_add() and blackhole_fdb_del(). Do you agree with that approach?
> > > >
> > > > I assume you are talking about extending 'dsa_switch_ops'?
> > > 
> > > Yes, that is the idea.
> > > 
> > > > If so, it's up to the DSA maintainers to decide.
> > 
> > What will be the usefulness of adding a blackhole FDB entry from user
> > space?
> 
> With the software bridge it could be used to signal a untrusted host in
> connection with a locked port entry attempt. I don't see so much use other
> that test purposes with the driver though.

Not a huge selling point, to be honest. Can't the blackhole flag remain
settable only in the device -> bridge direction, with user space just
reading it?
