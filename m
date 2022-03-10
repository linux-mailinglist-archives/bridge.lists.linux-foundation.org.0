Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6B84D4C9E
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E01384163;
	Thu, 10 Mar 2022 15:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e6eFbJ5A6fBW; Thu, 10 Mar 2022 15:07:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B3E0983EC2;
	Thu, 10 Mar 2022 15:07:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 73A00C0073;
	Thu, 10 Mar 2022 15:07:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6D948C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 556B940217
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UzJ7id2C9ItE for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:07:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50BB240012
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:07:21 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id a8so12728224ejc.8
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=60uYG3ckY3WcYm8l3Wrv4qJH3dnlWFZqsAvB7+3ByW0=;
 b=is2XzSK4nxrutLs8h20VyMU7x3CVgv/M56eIif7Nnfl/h77xnTU4TVvx9LJTFzKN54
 xbtUokAT0kbf6nUHZtgHz/6JxBbVHaLSg/9d9GyglRPJ1M8rmXT93D6Ia3I20/0uVnH1
 ps7cvKs1J4WQejow2+4miwnHu6jgg1GmqAuYOg9S6VloqH9t2uZZf3VtE1cYOrcRu8hZ
 JREp9V1GIqrHrWRAQyEZtTJYQ9DReztp52i9TlhxQGZzkMOgWVGGI2BxEBQAaIUfDkja
 rWtxHH/RJEDz7foPphypKWHQ2Jc1MBc3vJ0SsOulZBRqlED9CK+f8AojLcU7sNF955TG
 8Wcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=60uYG3ckY3WcYm8l3Wrv4qJH3dnlWFZqsAvB7+3ByW0=;
 b=b92ESG3EA2whgZaCxj37LUaDX5owoAVtSddHvFWzBIztoh+rUQQGrFifCpL/NP8ZKr
 /bd8euVIiw96aWfS7rH4Kgddappoz7MHwAyceNOA5zVcrYDFul8PODwIHYX5XZ+I8Qrc
 Qv2gxzDPkir2iX/PWhMiaRu11I+Z+w4MmQJwQvBzzkc3QJIFDQg5H1rguXECi/AeKiw/
 khodsjzv4OKtzpx1j5L5FAMR19uWR4lucmK1p9UnvwdGe/eZuOyVR4BGThb8zsM6/woE
 jzBbx1cc0W2FT9IE/b4JhNkSTP0cV/UxT+1B9LZRYjWvf6HmycwfVIfxkfi5A+l1O4DY
 KN5A==
X-Gm-Message-State: AOAM531QmQSeRW6tGgUQ2bJ6jJts6Kw3p4B+J3eLQU8SXvCPONFibESe
 7qgSAxUEplcrTfLovnFm7g0=
X-Google-Smtp-Source: ABdhPJxiCsP0sqkSn+ttfs3GtimM/042s3/C6Rgq02nQi/V1TT3l/TsZrKzhFHTcMUy/KcA8QeXpiA==
X-Received: by 2002:a17:907:7b92:b0:6db:71f1:fc20 with SMTP id
 ne18-20020a1709077b9200b006db71f1fc20mr4619349ejc.343.1646924839382; 
 Thu, 10 Mar 2022 07:07:19 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 t14-20020a170906608e00b006d1455acc62sm1858557ejj.74.2022.03.10.07.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 07:07:18 -0800 (PST)
Date: Thu, 10 Mar 2022 17:07:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220310150717.h7gaxamvzv47e5zc@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <865yolg8d7.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <865yolg8d7.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On Thu, Mar 10, 2022 at 04:00:52PM +0100, Hans Schultz wrote:
> >> +	brport = dsa_port_to_bridge_port(dp);
> >
> > Since this is threaded interrupt context, I suppose it could race with
> > dsa_port_bridge_leave(). So it is best to check whether "brport" is NULL
> > or not.
> >
> Would something like:
> if (dsa_is_unused_port(chip->ds, port))
>         return -ENODATA;
> 
> be appropriate and sufficient for that?

static inline
struct net_device *dsa_port_to_bridge_port(const struct dsa_port *dp)
{
	if (!dp->bridge)
		return NULL;

	if (dp->lag)
		return dp->lag->dev;
	else if (dp->hsr_dev)
		return dp->hsr_dev;

	return dp->slave;
}

Notice the "dp->bridge" check. The assignments are in dsa_port_bridge_create()
and in dsa_port_bridge_destroy(). These functions assume rtnl_mutex protection.
The question was how do you serialize with that, and why do you assume
that dsa_port_to_bridge_port() returns non-NULL.

So no, dsa_is_unused_port() would do absolutely nothing to help.
