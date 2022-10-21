Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1A1607C3E
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 18:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 587536FB1C;
	Fri, 21 Oct 2022 16:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 587536FB1C
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=QuCjTmmN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpZuszW6fKgf; Fri, 21 Oct 2022 16:30:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E5DC26FB23;
	Fri, 21 Oct 2022 16:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5DC26FB23
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 88495C007C;
	Fri, 21 Oct 2022 16:30:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 465D7C002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 16:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2131E60F3A
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 16:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2131E60F3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2fu6ffWKNa0 for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 16:30:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49C6860E84
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49C6860E84
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 16:30:12 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id w8so5590818edc.1
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 09:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=diC8NAGcMEsNdERayclB3yX1bYh/brVTx+qg6EEm8xY=;
 b=QuCjTmmNppPf/d2WZbw804dsVjsBi340rAtZVZBKAdL56fNNBr1wJsqU6uehAaZ4uG
 ZtNSVVp1WySs2XoXeGLLjrLOQ2/UPjvVqzt0nE48zKk/lEn51q5YwoeNTyaWjDpCr4ro
 rEEtRW/plhq9pEAd5d282djUJQcff2x5nnmiZL8ObV7Ftlxj+u9V6Wmmc+rPu+HC554S
 SQXQ+C4Di/dR0DgOjpgfOvcamTaZ4UxeBHSLnN9nSGPv+aGxbp4wL2HNetoY+mkGHl37
 SRiV4Enc2XcTkoX3a2qs0/CNN4LPYg+jxr7LHk0ksefOcZ8x4woYWzX95F6ix3YkfteB
 z52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=diC8NAGcMEsNdERayclB3yX1bYh/brVTx+qg6EEm8xY=;
 b=aOwOOTpPGXEZTnSAtkl/yHSMPiR6DeVASK3vRm9POkanF9W7yVA+jGQ5VJsM6lcwGc
 OveIruzCRPzNVdg6/iGLWHQuhQ1bEcYn1gsVXndHta4da/OkTlrJ9/CtjWXmgFlHPGme
 Rxf7+MmuDBfscvBdJ+M1EgKrImOcouCB9XXVFWGqi9KWSDlPTI8xecWwPdXnfixw1BnY
 9syUbdkAV9WquXbGnK15aSGXyfpzjJXL9enZJRznqSp3hnkXfSebqVnex4ucsKOZiOCH
 V9E/PgWxQqr6x+R7hgCxeKBi/KbhEIR6FULLLUnumqY9CMufLqcU1I5P3IimVOlYDKx6
 Hi6A==
X-Gm-Message-State: ACrzQf0PmlicUU148pJd+enzdJdwQFB7x9QZD+fT3/t6cT7R9tL4BfbI
 qUy+QrzyJHnJ0+dvV1OggmU=
X-Google-Smtp-Source: AMsMyM78n56+svgX29OjlxCyk6mv2WVNTWp9uU9Jnba9JeGUv0mD6os2HIJ6ZxfS90tmLdfQOT0Awg==
X-Received: by 2002:a05:6402:3896:b0:45c:93c3:3569 with SMTP id
 fd22-20020a056402389600b0045c93c33569mr18660749edb.37.1666369810213; 
 Fri, 21 Oct 2022 09:30:10 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 e18-20020a17090618f200b007828150a2f1sm11938898ejf.36.2022.10.21.09.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Oct 2022 09:30:09 -0700 (PDT)
Date: Fri, 21 Oct 2022 19:30:05 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221021163005.xljk2j3fkikr6uge@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
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

On Fri, Oct 21, 2022 at 03:16:21PM +0200, netdev@kapio-technology.com wrote:
> As it is now in the bridge, the locked port part is handled before learning
> in the ingress data path, so with BR_LEARNING and BR_PORT_LOCKED, I think it
> will work as it does now except link local packages.

If link-local learning is enabled on a locked port, I think those
addresses should also be learned with the BR_FDB_LOCKED flag. The
creation of those locked FDB entries can be further suppressed by the
BROPT_NO_LL_LEARN flag.

> If your suggestion of BR_LEARNING causing BR_FDB_LOCKED on a locked port, I
> guess it would be implemented under br_fdb_update() and BR_LEARNING +
> BR_PORT_LOCKED would go together, forcing BR_LEARNING in this case, thus also
> for all drivers?

Yes, basically where this is placed right now (in br_handle_frame_finish):

	if (p->flags & BR_PORT_LOCKED) {
		struct net_bridge_fdb_entry *fdb_src =
			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);

		if (!fdb_src) {
			unsigned long flags = 0;

			if (p->flags & BR_PORT_MAB) {
			   ~~~~~~~~~~~~~~~~~~~~~~~~
			   except check for BR_LEARNING

				__set_bit(BR_FDB_LOCKED, &flags);
				br_fdb_update(br, p, eth_hdr(skb)->h_source,
					      vid, flags);
			}
			goto drop;
		} else if (READ_ONCE(fdb_src->dst) != p ||
			   test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
			   test_bit(BR_FDB_LOCKED, &fdb_src->flags)) {
			goto drop;
		}
	}
