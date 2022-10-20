Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B16606125
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:11:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A54C66FAC9;
	Thu, 20 Oct 2022 13:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A54C66FAC9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=TPiipjpD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4s9aPeHR-Eok; Thu, 20 Oct 2022 13:11:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5547D6FABF;
	Thu, 20 Oct 2022 13:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5547D6FABF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 02DF8C0078;
	Thu, 20 Oct 2022 13:11:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66B33C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DEB1401E1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DEB1401E1
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=TPiipjpD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4cg7RLnkmMv for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:11:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BA8A40474
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BA8A40474
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:11:08 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id a26so46903606ejc.4
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 06:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=X+gkU/NqbzBkggz5iJ5jkNMymmdjI88HmNgirY0p7mo=;
 b=TPiipjpDMk6wGWOJP+Agw+/0B6vH+/ztEW3I5tVyt2LoCYXke1TXQmFBwagKR/ECpK
 gEOm4H8c5qA8hZGz4VSJZPpkqt/IbvYZ19Te5+K8V6qcAjLW+yd00jruzQfGjWyTw1cr
 D5eAElpBXfz6xrI/19Get5d4/+bXbVvXDLrr4XJpc6KgZGXdlyBIfs1ftcluwlcs3TzI
 FPdNNA1X3wp1dFiIVzbhTRBNAtVDAHuEP77BPZNag0f6UGW/O85leK27nNsrOFr5A8gj
 BturwMnkyEbZpgiYOgFFYhxOalzV668fNDGJNiEqvHrmEQZIJTIN3mr4jmBQMU8LwU4k
 tOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X+gkU/NqbzBkggz5iJ5jkNMymmdjI88HmNgirY0p7mo=;
 b=P8EEAjHOokypPZqU81FWx4Y1ZyPfzQzK9m0zHmV9QLdT/WDLJdtLqMtCaxMgQT3/zy
 ZPKakTExGF7DZ9Wz928DmvdvQj5RNvUt4nKQuHRVgs51IvM/5HT+QM+shkLMVnk2dfRB
 HB7qRQqzj7QwusY4CjIBXq33pKbIzJeXYCIYdr/ErjAxIfQdzDgF9RsXBz7jI3iwIKGN
 ScgiCFuMJy79zypUW6+OX6GbAfYWQCLYMPnRE99VeV1CrcfYtdSE1hrd5qoepjD3BQk3
 4SUD/Wk4QAVoCiHiJ1o6xzJA0qMwUveUxH8fEbWbp6LImAXN5BBWlt6TltLGQfXfjScI
 iCWA==
X-Gm-Message-State: ACrzQf08bOCH/bG0IxV/Jt8IOBh81J2zvoT1ggv735ELpf2v2hB/AEEw
 py5fjW4yB/YxxAx/SoM23kc=
X-Google-Smtp-Source: AMsMyM5DbMLGWM6/Y2wrW1N6novb2sRwX3cXwGgYvEbzR4IRYbS95ez4JesKLlaXMHBQzh6YJHjLTg==
X-Received: by 2002:a17:906:db0d:b0:77b:a7cd:8396 with SMTP id
 xj13-20020a170906db0d00b0077ba7cd8396mr11433584ejb.264.1666271466154; 
 Thu, 20 Oct 2022 06:11:06 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 w11-20020a170906d20b00b0078258a26667sm10359958ejz.52.2022.10.20.06.11.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 06:11:04 -0700 (PDT)
Date: Thu, 20 Oct 2022 16:11:01 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20221020131101.zotvyglhlayqdvu7@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-12-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-12-netdev@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH v8 net-next 11/12] net: dsa: mv88e6xxx: add
 blackhole ATU entries
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

On Tue, Oct 18, 2022 at 06:56:18PM +0200, Hans J. Schultz wrote:
> Blackhole FDB entries can now be added, deleted or replaced in the
> driver ATU.

Why is this necessary, why is it useful?

> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
>  				  const unsigned char *addr, u16 vid,
>  				  u16 fdb_flags, struct dsa_db db)
> @@ -2742,9 +2794,10 @@ static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
>  	struct mv88e6xxx_chip *chip = ds->priv;
>  	int err;
>  
> -	/* Ignore entries with flags set */
> -	if (fdb_flags)
> +	if (fdb_flags & DSA_FDB_FLAG_LOCKED)
>  		return 0;

I don't understand this. If no driver looks at DSA_FDB_FLAG_LOCKED
(not even mv88e6xxx, up until the end of the series), then why was it
propagated all the way in the first place?

> +	if (fdb_flags & DSA_FDB_FLAG_BLACKHOLE)
> +		return mv88e6xxx_blackhole_fdb_add(ds, addr, vid);
>  
>  	if (mv88e6xxx_port_is_locked(chip, port))
>  		mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
> @@ -2765,9 +2818,10 @@ static int mv88e6xxx_port_fdb_del(struct dsa_switch *ds, int port,
>  	bool locked_found = false;
>  	int err = 0;
>  
> -	/* Ignore entries with flags set */
> -	if (fdb_flags)
> +	if (fdb_flags & DSA_FDB_FLAG_LOCKED)
>  		return 0;
> +	if (fdb_flags & DSA_FDB_FLAG_BLACKHOLE)
> +		return mv88e6xxx_blackhole_fdb_del(ds, addr, vid);
>  
>  	if (mv88e6xxx_port_is_locked(chip, port))
>  		locked_found = mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
> -- 
> 2.34.1
> 
