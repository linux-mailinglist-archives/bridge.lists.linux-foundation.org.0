Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2B269B1F8
	for <lists.bridge@lfdr.de>; Fri, 17 Feb 2023 18:44:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24FEC81C18;
	Fri, 17 Feb 2023 17:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24FEC81C18
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=kPts36a0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ed7FdGDFt8x6; Fri, 17 Feb 2023 17:44:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 88EFE81747;
	Fri, 17 Feb 2023 17:44:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88EFE81747
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 392D8C0078;
	Fri, 17 Feb 2023 17:44:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7C44C002B
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 17:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9595F61AD5
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 17:44:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9595F61AD5
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kPts36a0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQRThJ8BfW6d for <bridge@lists.linux-foundation.org>;
 Fri, 17 Feb 2023 17:44:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF96360E71
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF96360E71
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 17:44:36 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 t6-20020a7bc3c6000000b003dc57ea0dfeso1498230wmj.0
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 09:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=auVrVbOSTA9pQeJfPXz91TlriegzpUKwC2EMUID2gPE=;
 b=kPts36a0DOfrWbE5EDMVM8XUTfPhcct1+Wh6iYrEUNULUaJQQ940e2QgPodOvnNQ3O
 PYVdDfrIzrIPE0Vc2g/vfe89g2tIAWRInxGmIeY2ABwKLrTGnwzSZXS4/ClMgmErrlyZ
 2VJyFiXyf6FXfFu8h4TAk5sbo9ObWj2hpaMsr5iTHYK0yLpQeXx/71BXJmUTcn6Wvk9c
 PmQQIK6oRsnk/d8C/SuDJEsTzFKhOVo3Uq5HnXasc+0Bv5iNajhahka3DZoCuSzV0nXu
 U1ZgVBV32o0fJltdnu8cEis7bX2g96yWawZ5DbL8oya33c0Sw88227zU/BpoJxCJOwQD
 DEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=auVrVbOSTA9pQeJfPXz91TlriegzpUKwC2EMUID2gPE=;
 b=dKkDCBpFhTS5ANbv2myo+D+4Qk3XBxldu7FegFBn2S9IVmbn6Mu8M+fZyL8XXi9yCn
 risyUf25Sl7ZfrbrZtm8k09hUBnfmfN21y6PtZPpiqBuMk2FUSQ0KyoJIplzkLpebrip
 xgNsDunX+NY9eb/dY+XPR9f2TxccAWTOesaZRMVZleCzXrc+k+Dozj8kfErj0s1Qp3Hp
 5q47OtphtHVzum75vhiLXdjAWNnGZ2yfvW/Nus7wNMSZ4/J2NZ7qpzuItsK9MZal3N8j
 VIrjMKTS+cMgVlaal3y9HC3FK+PywUaWUI+wUdwQJZhG+rnUXWW1nHvODoGqAwmXFlbS
 IDiw==
X-Gm-Message-State: AO0yUKU2TTJ03q5KgrRjfTGoR3JZ1XiIBc2HIVk+kKdz3pH+yz3k0bDc
 MFRTO7sItKe0wnMRIWJK4DY=
X-Google-Smtp-Source: AK7set/fy/Eb7Sue92rcdrDm3lCCSH8M5LFbef1BLFLsabLm+s8mqQPhJsjPKF5bbxALYzTFXwfvuA==
X-Received: by 2002:a05:600c:30ca:b0:3d5:365b:773e with SMTP id
 h10-20020a05600c30ca00b003d5365b773emr1835463wmn.39.1676655874493; 
 Fri, 17 Feb 2023 09:44:34 -0800 (PST)
Received: from skbuf ([188.25.231.176]) by smtp.gmail.com with ESMTPSA id
 x14-20020a1c7c0e000000b003e20970175dsm6651711wmc.32.2023.02.17.09.44.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Feb 2023 09:44:34 -0800 (PST)
Date: Fri, 17 Feb 2023 19:44:31 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230217174431.bkkvfmtno56mfh5a@skbuf>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-6-netdev@kapio-technology.com>
 <Y9lkXlyXg1d1D0j3@corigine.com>
 <9b12275969a204739ccfab972d90f20f@kapio-technology.com>
 <Y9zDxlwSn1EfCTba@corigine.com>
 <20230203204422.4wrhyathxfhj6hdt@skbuf>
 <Y94TebdRQRHMMj/c@corigine.com>
 <4abbe32d007240b9c3aea9c8ca936fa3@kapio-technology.com>
 <Y+EkiAyexZrPoCpP@corigine.com>
 <87fsb83q5s.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87fsb83q5s.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>,
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
Subject: Re: [Bridge] [PATCH net-next 5/5] net: dsa: mv88e6xxx:
 implementation of dynamic ATU entries
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

On Tue, Feb 14, 2023 at 10:14:55PM +0100, Hans Schultz wrote:
> On Mon, Feb 06, 2023 at 17:02, Simon Horman <simon.horman@corigine.com> wrote:
> >
> > Just to clarify my suggestion one last time, it would be along the lines
> > of the following (completely untested!). I feel that it robustly covers
> > all cases for fdb_flags. And as a bonus doesn't need to be modified
> > if other (unsupported) flags are added in future.
> >
> > 	if (fdb_flags & ~(DSA_FDB_FLAG_DYNAMIC))
> > 		return -EOPNOTSUPP;
> >
> > 	is_dynamic = !!(fdb_flags & DSA_FDB_FLAG_DYNAMIC)
> > 	if (is_dynamic)
> > 		state = MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_7_NEWEST;
> >
> >
> > And perhaps for other drivers:
> >
> > 	if (fdb_flags & ~(DSA_FDB_FLAG_DYNAMIC))
> > 		return -EOPNOTSUPP;
> > 	if (fdb_flags)
> > 		return 0;
> >
> > Perhaps a helper would be warranted for the above.
> 
> How would such a helper look? Inline function is not clean.
> 
> >
> > But in writing this I think that, perhaps drivers could return -EOPNOTSUPP
> > for the DSA_FDB_FLAG_DYNAMIC case and the caller can handle, rather tha
> > propagate, -EOPNOTSUPP.
> 
> I looked at that, but changing the caller is also a bit ugly.

Answering on behalf of Simon, and hoping he will agree.

You are missing a big opportunity to make the kernel avoid doing useless work.
The dsa_slave_fdb_event() function runs in atomic switchdev notifier context,
and schedules a deferred workqueue item - dsa_schedule_work() - to get sleepable
context to program hardware.

Only that scheduling a deferred work item is not exactly cheap, so we try to
avoid doing that unless we know that we'll end up doing something with that
FDB entry once the deferred work does get scheduled:

	/* Check early that we're not doing work in vain.
	 * Host addresses on LAG ports still require regular FDB ops,
	 * since the CPU port isn't in a LAG.
	 */
	if (dp->lag && !host_addr) {
		if (!ds->ops->lag_fdb_add || !ds->ops->lag_fdb_del)
			return -EOPNOTSUPP;
	} else {
		if (!ds->ops->port_fdb_add || !ds->ops->port_fdb_del)
			return -EOPNOTSUPP;
	}

What you should be doing is you should be using the pahole tool to find
a good place for a new unsigned long field in struct dsa_switch, and add
a new field ds->supported_fdb_flags. You should extend the early checking
from dsa_slave_fdb_event() and exit without doing anything if the
(fdb->flags & ~ds->supported_fdb_flags) expression is non-zero.

This way you would kill 2 birds with 1 stone, since individual drivers
would no longer need to check the flags; DSA would guarantee not calling
them with unsupported flags.

It would be also very good to reach an agreement with switchdev
maintainers regarding the naming of the is_static/is_dyn field.

It would also be excellent if you could rename "fdb_flags" to just
"flags" within DSA.
