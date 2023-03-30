Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 160F86D0A3B
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 17:44:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A9C041E73;
	Thu, 30 Mar 2023 15:44:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A9C041E73
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ARXUEmqM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bShbVGxVLmnu; Thu, 30 Mar 2023 15:44:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6CA7841F41;
	Thu, 30 Mar 2023 15:44:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CA7841F41
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0FD41C008C;
	Thu, 30 Mar 2023 15:44:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7451AC002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 15:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 426E6403A5
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 15:44:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 426E6403A5
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ARXUEmqM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W5R-OMvtm6tT for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 15:44:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 867864037E
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 867864037E
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 15:44:52 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 p3-20020a17090a74c300b0023f69bc7a68so20051393pjl.4
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 08:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680191092;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lU9JCkTye6Fj+qGS5BcJ6TDCunaP0ev1Z3VOnL6O7u8=;
 b=ARXUEmqMaQiFvA623fC9h/1bTtbZu+9APT25M51Fyzal5QyyBhpNOKenjrxHC9tNvl
 S5qRlO9XoSCMeMsGUxdNgy5JziINi0lqiObnEMVskhrUlgY/Nx4DIG0QNEQsDohNNwVI
 ZjpV6n4C/vseZe/Yaal+huKNBxLZRFnxa87dsmJ+XNyIozRshatOv7uSBF+5zoQgGC9u
 APpkQ7cgiCA7P+a0ITBi0t+ePzbvRC6ZSQ8PNQFlEV5Nkz3BPNiKrW3feDlfatNMu8VV
 ylQbTLsNnGSA8P3WnQGfjLEZ3+xacpPhY8gzVJGbk7L8KERA9bNGO7XypeGYZuS4b7+c
 MaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680191092;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lU9JCkTye6Fj+qGS5BcJ6TDCunaP0ev1Z3VOnL6O7u8=;
 b=OVYV4HtYDHGmbG47VZmQeagmmxTuFeJV1h7XKo95tpC3oV1dVwV26Z4aX3Negz74ia
 bYZejMOhfW7f3EFysfJrn/47zBIJZNd4zY8Secx/jcPCplufkHJs2DQV2zIycJmbD78D
 f4VsC7cI8cMhpZDA0y5TSNgwpu8p8oeMnYv+Gqu9upSOLcad0kjo9XgyGkGDcR01A1tZ
 ymu+/ImrjbrgdqQ+huF6CrnwhO1x2GX514hGYT3ho8JebJpFwSzWp3yDYX/0XtxQowWl
 ughrzDr3exXKtQmOtxgwHUjaLwI4/NCczD9NO9LbtomLuUkE4G9E1DoRu6d+BNGynxqV
 mJFA==
X-Gm-Message-State: AAQBX9el2KIcSTp1P08WqILPCsfYSktLONgEktST+RJoaPhBeKM9mX9E
 G05PuBTzwTCLfqWKWauASu0=
X-Google-Smtp-Source: AKy350an4aqBBaa4AoyKQMK/eGaMNqvVN6MWoVbuOKTA1coVugM8BSX93rzwnm0ye04pw2RvKavoAQ==
X-Received: by 2002:a17:903:244e:b0:1a1:bbcd:917e with SMTP id
 l14-20020a170903244e00b001a1bbcd917emr26930417pls.10.1680191091900; 
 Thu, 30 Mar 2023 08:44:51 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 u1-20020a170902bf4100b001a1faeac240sm352484pls.186.2023.03.30.08.44.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 08:44:51 -0700 (PDT)
Date: Thu, 30 Mar 2023 18:44:31 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230330154431.vii5llyqgiymievp@skbuf>
References: <20230327225933.plm5raegywbe7g2a@skbuf>
 <87ileljfwo.fsf@kapio-technology.com>
 <20230328114943.4mibmn2icutcio4m@skbuf>
 <87cz4slkx5.fsf@kapio-technology.com>
 <20230330124326.v5mqg7do25tz6izk@skbuf>
 <87wn2yxunb.fsf@kapio-technology.com>
 <20230330130936.hxme34qrqwolvpsh@skbuf>
 <875yaimgro.fsf@kapio-technology.com>
 <20230330150752.gdquw5kudtrqgzyz@skbuf>
 <877cuy6ynf.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877cuy6ynf.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
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
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: propagate flags down
 towards drivers
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

On Thu, Mar 30, 2023 at 05:34:44PM +0200, Hans Schultz wrote:
> On Thu, Mar 30, 2023 at 18:07, Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > Then, make DSA decide whether to handle the "added_by_user && !is_static"
> > combination or not, based on the presence of the DSA_FDB_FLAG_DYNAMIC
> > flag, which will be set in ds->supported_fdb_flags only for the mv88e6xxx
> > driver.
> 
> Okay, so this will require a new function in the DSA layer that sets
> which flags are supported and that the driver will call on
> initialization.
> 
> Where (in the DSA layer) should such a function be placed and what
> should it be called?

Don't overthink it, no new function. It's okay to just set
ds->supported_fdb_flags = DSA_FDB_FLAG_DYNAMIC in
mv88e6xxx_register_switch(), near the place where it currently sets
ds->num_lag_ids. Either before dsa_register_switch(), or within the
ds->ops->setup(). Both are fine, since the user network interfaces
haven't been allocated just yet by dsa_slave_create() and so, the
switchdev code path is inaccessible.

Existing drivers will have ds->supported_fdb_flags = 0 by default, since
they allocate the struct dsa_switch with kzalloc(), and DSA will have to
do something sane with that.
