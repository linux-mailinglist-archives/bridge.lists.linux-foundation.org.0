Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0576061B8
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6969D41946;
	Thu, 20 Oct 2022 13:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6969D41946
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=LT6l9n3G
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0lC42fkhi-od; Thu, 20 Oct 2022 13:35:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id AF11941947;
	Thu, 20 Oct 2022 13:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF11941947
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 430E5C0078;
	Thu, 20 Oct 2022 13:35:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BADEC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0007C401E1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0007C401E1
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=LT6l9n3G
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEh4_V7ughj8 for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:35:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B33884013F
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B33884013F
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:35:12 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id w18so47429977ejq.11
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 06:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6W8i9o8o3JEGbLuSjyxc6XgXvQsYfIY429ZrCGIGH7A=;
 b=LT6l9n3GBTcSQvOt/Zkq2tCDu4edixzNqa/k2gkqkki+ohFuVM0AsUxiNrQDPuQ9dp
 B8LzUHG6JrjRQj4yo+Fwtsf2X3kIvJkaCeWMmiC9fn/wkKNB9HLSlhiilFT9xxo2Q0Ih
 HVR2Qu+RkqbyPNfTZMGYM8QuIDe2OXDl1NiUSgEQw4kpsBwGGTf7cdDbkST3rJPXldCJ
 jyEqdtUxCuylTDY808GKyiUgzYWXGtEZgj/ZGKEFBlt5lPjfOcKiZQzgZ3JhNwwsKskM
 g5Jte+zUA232UjbG0/dLOu5ZfzViovNPhkJSQ9NdfP82wKAyVo5fcwzQMVmg/eq3Labc
 enPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6W8i9o8o3JEGbLuSjyxc6XgXvQsYfIY429ZrCGIGH7A=;
 b=AirLkQz4JBeuCphunaXkrO09A11sdbUijj21uwra2LnRjuugKZHV7cXt06Cw2GBeSP
 SWQmA0/eTpGStxGZ/Nr0kb38J0U2h+KqkIs6uXzZyY6OdRNYUqOQ5psRFgh7AMddnexC
 D+xBTZ9wjA3x2UVGf9Ey2RykgJeM3aL+ggMco6Bc+Q9RwMaT6lSIglii5f1Qhd+rg3Y4
 7wVtLlRsL4Xm3ouMdn0MdRBQbUu2gnAV2DN8Dbxr7Dykwfmrk/n+z0lMaBzq+AVMYRYb
 TEv1a/jqnWcreYwZ2gI7V/fZLYBVEzaNYx6aYXR5CRXS5wjUvtPy+qE3zvglrz8aErZ+
 RrIg==
X-Gm-Message-State: ACrzQf2fo43fGoqx6UzAJAjJAIXSMWVtMt8FgC7O0AAgiA1OYgOiM5ru
 oLR/WEaXb7MNcg1NM9YgHV4=
X-Google-Smtp-Source: AMsMyM6f3BkbQSlnxpGOl1q4sqOax51EJCundMlge5h6nlzLLygpGchZIAl/FmUda0BaXUPlLWUgAg==
X-Received: by 2002:a17:907:b0b:b0:78d:8877:9f9e with SMTP id
 h11-20020a1709070b0b00b0078d88779f9emr10889846ejl.693.1666272910757; 
 Thu, 20 Oct 2022 06:35:10 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 rp7-20020a170906d96700b00730bfe6adc4sm10390698ejb.37.2022.10.20.06.35.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 06:35:09 -0700 (PDT)
Date: Thu, 20 Oct 2022 16:35:06 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221020133506.76wroc7owpwjzrkg@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf> <Y1FMAI9BzDRUPi5Y@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1FMAI9BzDRUPi5Y@shredder>
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

On Thu, Oct 20, 2022 at 04:24:16PM +0300, Ido Schimmel wrote:
> On Thu, Oct 20, 2022 at 04:02:24PM +0300, Vladimir Oltean wrote:
> > On Tue, Oct 18, 2022 at 06:56:12PM +0200, Hans J. Schultz wrote:
> > > @@ -3315,6 +3316,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> > >  	struct dsa_port *dp = dsa_slave_to_port(dev);
> > >  	bool host_addr = fdb_info->is_local;
> > >  	struct dsa_switch *ds = dp->ds;
> > > +	u16 fdb_flags = 0;
> > >  
> > >  	if (ctx && ctx != dp)
> > >  		return 0;
> > > @@ -3361,6 +3363,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> > >  		   orig_dev->name, fdb_info->addr, fdb_info->vid,
> > >  		   host_addr ? " as host address" : "");
> > >  
> > > +	if (fdb_info->locked)
> > > +		fdb_flags |= DSA_FDB_FLAG_LOCKED;
> > 
> > This is the bridge->driver direction. In which of the changes up until
> > now/through which mechanism will the bridge emit a
> > SWITCHDEV_FDB_ADD_TO_DEVICE with fdb_info->locked = true?
> 
> I believe it can happen in the following call chain:
> 
> br_handle_frame_finish
>    br_fdb_update // p->flags & BR_PORT_MAB
>        fdb_notify
>            br_switchdev_fdb_notify
> 
> This can happen with Spectrum when a packet ingresses via a locked port
> and incurs an FDB miss in hardware. The packet will be trapped and
> injected to the Rx path where it should invoke the above call chain.

Ah, so this is the case which in mv88e6xxx would generate an ATU
violation interrupt; in the Spectrum case it generates a special packet.
Right now this packet isn't generated, right?

I think we have the same thing in ocelot, a port can be configured to
send "learn frames" to the CPU.

Should these packets be injected into the bridge RX path in the first
place? They reach the CPU because of an FDB miss, not because the CPU
was the intended destination.
