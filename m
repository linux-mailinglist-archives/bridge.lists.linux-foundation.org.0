Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82019606268
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 16:04:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08523607A1;
	Thu, 20 Oct 2022 14:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08523607A1
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=l5bu8brH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJB2024Nc0Gp; Thu, 20 Oct 2022 14:04:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5A3E46FACA;
	Thu, 20 Oct 2022 14:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A3E46FACA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DBDFDC0078;
	Thu, 20 Oct 2022 14:04:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4F261C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 14:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6DE44224D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 14:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6DE44224D
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=l5bu8brH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v_thNnWm_wCS for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 14:04:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BF6242248
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BF6242248
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 14:04:07 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id fy4so47606458ejc.5
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 07:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=VcnoQx3qI7fpXJUKM0CZbdSa56iEX07NlfTNetUmqRw=;
 b=l5bu8brHSu0lV8jpdsslwekKWTitm3jcIzunKjSvYW6ZHEoyPulraEujek+0GP/Hvd
 VGynsaEV431/P0R4Up0JmdjgrLdZCAEXuS4thXeD1IkB0tL1c1TYwuHI0t7KEYQ28Ngi
 OjfuEUQIW5cD1w1T5Wl38wkB5vFtRrmJ1I+460JqsxkhwjNxe2MY/MZLUVaLfNXb9rxB
 mvWyTgjjiRaVTJ1C2POs4n/gmyaptI+zmwL5wEC99pA8loysp0dqVPy7tyoy7eWkwaRH
 0PWHvnaY1M5vrwXfwri59mlcpsoC38vvExyhtVa9UiFedcueAmfgCoofwGx7+yQve6jp
 dbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VcnoQx3qI7fpXJUKM0CZbdSa56iEX07NlfTNetUmqRw=;
 b=7DZ7raBAHnVmBIpSmJFZA1lKricgkhW0KDKfa3MmJf7fZrXQ1iSzcUWin+tvrALacr
 fLBWtWa1rXtztpbZcttB5vXrU+k83+zmIiR2VIsNEReW4hglPWcwM/7/fF3kEF7H87qQ
 X0rurHxGmPm35kBfWyCittQ4ZCraHW23OHl3aHyiqensKTgvdTpb6tuuSFWVqy1r70Rr
 KLBGswCzaEGBvmIhNAbJ4qFFLMzt56tmcuebWxDmxYybzJ7/n0nuRli2/LnxUp/L2fd1
 /G8DSOj2gSol7o079ek+5sj26/S74Pe6etfGZB2FUpuYaJEBgsHsXfy+6UjvZpLo2Wex
 X84g==
X-Gm-Message-State: ACrzQf1D8Mw97I51t6thPzJR3MEf5AF8ESYCugEIrDfmqkxcEnK3a6UT
 vimSn7AL2hHt+z5uitWaWRI=
X-Google-Smtp-Source: AMsMyM4SZEZSqVPTVYvWzQRYrzgh/kATVwZIqEmKTRuF0c5R/E5+UHJTLTdHcYlKatrB4zrmQDmY/g==
X-Received: by 2002:a17:906:cc0b:b0:78e:1d51:36ea with SMTP id
 ml11-20020a170906cc0b00b0078e1d5136eamr11264073ejb.408.1666274645060; 
 Thu, 20 Oct 2022 07:04:05 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 nb36-20020a1709071ca400b0073ddb2eff27sm10450359ejc.167.2022.10.20.07.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 07:04:04 -0700 (PDT)
Date: Thu, 20 Oct 2022 17:04:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221020140400.h4czo4wwv7erncy7@skbuf>
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
> On Thu, Oct 20, 2022 at 04:35:06PM +0300, Vladimir Oltean wrote:
> > On Thu, Oct 20, 2022 at 04:24:16PM +0300, Ido Schimmel wrote:
> > > On Thu, Oct 20, 2022 at 04:02:24PM +0300, Vladimir Oltean wrote:
> > > > On Tue, Oct 18, 2022 at 06:56:12PM +0200, Hans J. Schultz wrote:
> > > > > @@ -3315,6 +3316,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> > > > >  	struct dsa_port *dp = dsa_slave_to_port(dev);
> > > > >  	bool host_addr = fdb_info->is_local;
> > > > >  	struct dsa_switch *ds = dp->ds;
> > > > > +	u16 fdb_flags = 0;
> > > > >  
> > > > >  	if (ctx && ctx != dp)
> > > > >  		return 0;
> > > > > @@ -3361,6 +3363,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> > > > >  		   orig_dev->name, fdb_info->addr, fdb_info->vid,
> > > > >  		   host_addr ? " as host address" : "");
> > > > >  
> > > > > +	if (fdb_info->locked)
> > > > > +		fdb_flags |= DSA_FDB_FLAG_LOCKED;
> > > > 
> > > > This is the bridge->driver direction. In which of the changes up until
> > > > now/through which mechanism will the bridge emit a
> > > > SWITCHDEV_FDB_ADD_TO_DEVICE with fdb_info->locked = true?
> > > 
> > > I believe it can happen in the following call chain:
> > > 
> > > br_handle_frame_finish
> > >    br_fdb_update // p->flags & BR_PORT_MAB
> > >        fdb_notify
> > >            br_switchdev_fdb_notify
> > > 
> > > This can happen with Spectrum when a packet ingresses via a locked port
> > > and incurs an FDB miss in hardware. The packet will be trapped and
> > > injected to the Rx path where it should invoke the above call chain.
> > 
> > Ah, so this is the case which in mv88e6xxx would generate an ATU
> > violation interrupt; in the Spectrum case it generates a special packet.
> 
> Not sure what you mean by "special" :) It's simply the packet that
> incurred the FDB miss on the SMAC.
> 
> > Right now this packet isn't generated, right?
> 
> Right. We don't support BR_PORT_LOCKED so these checks are not currently
> enabled in hardware. To be clear, only packets received via locked ports
> are able to trigger the check.
> 
> > 
> > I think we have the same thing in ocelot, a port can be configured to
> > send "learn frames" to the CPU.
> > 
> > Should these packets be injected into the bridge RX path in the first
> > place? They reach the CPU because of an FDB miss, not because the CPU
> > was the intended destination.
> 
> The reason to inject them to the Rx path is so that they will trigger
> the creation of the "locked" entry in the bridge driver (when MAB is
> on), thereby notifying user space about the presence of a new MAC behind
> the locked port. We can try to parse them in the driver and notify the
> bridge driver via SWITCHDEV_FDB_ADD_TO_BRIDGE, but it's quite ugly...

"ugly" => your words, not mine... But abstracting things a bit, doing
what you just said (SWITCHDEV_FDB_ADD_TO_BRIDGE) for learn frames would
be exactly the same thing as what mv88e6xxx is doing (so your "ugly"
comment equally applies to Marvell). The learn frames are "special" in
the sense that they don't belong to the data path of the software
bridge*, they are just hardware specific information which the driver
must deal with, using a channel that happens to be Ethernet and not an
IRQ/MDIO.

*in other words, a bridge with proper RX filtering should not even
receive these frames, or would need special casing for BR_PORT_MAB to
not drop them in the first place.

I would incline towards an unified approach for CPU assisted learning,
regardless of this (minor, IMO) difference between Marvell and other
vendors.
