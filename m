Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1CC606288
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 16:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4229F405FD;
	Thu, 20 Oct 2022 14:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4229F405FD
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=h80IgPyA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWKvoc-ZcAsV; Thu, 20 Oct 2022 14:11:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CD8CA410B3;
	Thu, 20 Oct 2022 14:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD8CA410B3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 972A3C0078;
	Thu, 20 Oct 2022 14:11:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40231C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 14:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16FEC8432B
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 14:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16FEC8432B
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=h80IgPyA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bPrJkwCyxzDt for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 14:11:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E4A98432A
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E4A98432A
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 14:11:11 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id ot12so47796120ejb.1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 07:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lmwon3whKue/CVr8WrW952+rwBDr0RPAb1kYusMk964=;
 b=h80IgPyAct7MK5zRLczRsF/1fG3PBVUcnjpRONux/l7QMniZAgQZF7KLJ/b8Xb57nV
 eNAHIneSfPVRYfQcjBU3UbTc8pcRnTz9EZFVSA2Wme8B885eczCZhwaStsn2GzrZ+2Yh
 enoURpRTuzQsVnhi3X9wa5HCqzTl9P29ZaZd/6G3Bqi5N6nREPYEZxVqPLjXeaVZq0Ps
 fqwmyJ29Jjtsc72JKjktuIL9cU5LUimNJgQZFh2PNUR3x6l8gj7g9UKGLd4ZQxSomeBp
 sbCQCd8BswmIENyTJcTrmwGkm6PzlkR13ILiaHEOGbZjT+4lhpa2zKxGvQ6fu5DKQUUB
 em4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lmwon3whKue/CVr8WrW952+rwBDr0RPAb1kYusMk964=;
 b=ft6pD80Cn0Ib9PjJwJ0ilsBKiKVCrm9/0P6hcdwWmX7YyYxih74YIMLOyFxLk0kgTv
 F/S9w+9aftt96s4SDRJbvuhINnqwdQFl6hcQpXzSdpOL0qqWSpjEx+vJSmgj1dZ/8a+5
 TB9Ku6av6LcwzlJFi4rR0z2uuPDvkWLOU9LQRIQVGyyqJbVKdiIm5v+/3a8WuQoU9qGY
 kLy2WBE7VQi+4FGTivCLrGiFkLAez/ajM3KujmvrfhoB3SWKD3vK4C4KmJ7XqhY/LVwx
 Wmmtlz//ZFC5RunNP4QCRZySgFNiNF1EXtn/dM0ZUbAUNAFerMp5HyABOBUSB3ufwf1m
 8iow==
X-Gm-Message-State: ACrzQf1ucjVK3Onten/JQcURKiNXGQRJm5TpQawgcQgztMvI/BNFaRUs
 8r+62CoIL2wB5asGAFM8oRQ=
X-Google-Smtp-Source: AMsMyM57aHXW/RGGiBVsB52ziBQZJfs8YnrGc+aSU1SEGc3QC4xsLDheavS6ccxJp971i10kW+FYgA==
X-Received: by 2002:a17:906:a4a:b0:782:686d:a1b6 with SMTP id
 x10-20020a1709060a4a00b00782686da1b6mr11023934ejf.232.1666275069320; 
 Thu, 20 Oct 2022 07:11:09 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 l17-20020a056402345100b0045cba869e84sm12232510edc.26.2022.10.20.07.11.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 07:11:08 -0700 (PDT)
Date: Thu, 20 Oct 2022 17:11:04 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221020141104.7h7kpau6cnpfqvh4@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf> <Y1FMAI9BzDRUPi5Y@shredder>
 <20221020133506.76wroc7owpwjzrkg@skbuf> <Y1FTzyPdTbAF+ODT@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1FTzyPdTbAF+ODT@shredder>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
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
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On Thu, Oct 20, 2022 at 04:57:35PM +0300, Ido Schimmel wrote:
> > Right now this packet isn't generated, right?
> 
> Right. We don't support BR_PORT_LOCKED so these checks are not currently
> enabled in hardware. To be clear, only packets received via locked ports
> are able to trigger the check.

You mean BR_PORT_MAB, not BR_PORT_LOCKED, right? AFAIU, "locked" means
drop unknown MAC SA, "mab" means "install BR_FDB_LOCKED entry on port"
(and also maybe still drop, if "locked" is also set on port).

Sad there isn't any good documentation about these flags in the patches
that Hans is proposing.
