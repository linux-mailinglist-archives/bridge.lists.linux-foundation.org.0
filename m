Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB0F4D8B2B
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 18:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50D4E81D0B;
	Mon, 14 Mar 2022 17:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5dmvW_ESdQNO; Mon, 14 Mar 2022 17:56:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 072F181CAF;
	Mon, 14 Mar 2022 17:56:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBDD9C0084;
	Mon, 14 Mar 2022 17:56:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 913AFC000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A868402FB
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhtO0rzw3M_R for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 17:56:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3EB64040B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:56:00 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id m12so21011056edc.12
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=j8z4v8YxtWANrTWb6RFPyfnlW/ootQzYbnhWcATbHWQ=;
 b=AjMTYWO0eXv50h4Efspnrs7DrZdGLyTZb5SWWsRCQUMcCXc1oNqULW6PhRKMLgap58
 B4Krs3qCdiKdxIBQwTlcfDKIX9Hcb/6cnL2UJqNXK2S0+3a1WTdaeEGnylXLthn65qo/
 lah1W+eNY1Leu9LzmbypCiIaZGNz0wy5QR6f6SR/g306mIXdHgIQLbNuVHOKNBFe66Sz
 SrZdOLdgZ91VgLzbtP147JkR4lv0B1cburt4PRocOahUCRM6l9TIherZOKfA3v+z0Rqf
 iyUvAAosQnmzynDKWwVA6QY+xt+DNMQUQb6Tg26+frCQSkIhjFkeafwyQkd3km1GsRhC
 mpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j8z4v8YxtWANrTWb6RFPyfnlW/ootQzYbnhWcATbHWQ=;
 b=eWa1DZ3943rMq5FDiuyt0bOjMzJPgkGfOUDsqavUzsMcesdMVME5lTpnCePc1KG9+3
 WJ71NNUGFpcNxbx0CuDNlYLHP7/p/pLawCQZ45G/ZtZG5u6wK3hsI4Z5Upw5d6W0VuLY
 0X1/BKfa/oZzArCPl4U7xIdmzUIrmq6EfxeBVMuuVz0MlkDsTcGbrgKnheES5WyzxSUc
 hxLzW0P0a/jpJAFtsF8/PCoMNOjovapsJq5zaLwi3Ij9pIjjC46HqpIH/gKoRJzKWRcv
 F83uG8tX/VbiDM8eM3Pog9K/pD3R3S3x8n0zqnYQaMFe4pg4Kh5vGIl8gN/uXzigECVB
 5vug==
X-Gm-Message-State: AOAM532tdxPOh2I8g+/DVSzRiEyGDsoRj5bj+hY+tfAuF8rPujTmG9Xa
 ddyB/Ri9XIYUwkGOsAskLds=
X-Google-Smtp-Source: ABdhPJy926fQG3oSQirbFPmeHBjqAmigNyVHn6+Yl5vzV7K2iNg9nGN5w2v8rujJyYp+vq/t/MAGtg==
X-Received: by 2002:a05:6402:4301:b0:418:585b:cfe1 with SMTP id
 m1-20020a056402430100b00418585bcfe1mr12030306edc.250.1647280558842; 
 Mon, 14 Mar 2022 10:55:58 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 e9-20020a170906c00900b006d4a45869basm7154199ejz.199.2022.03.14.10.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 10:55:58 -0700 (PDT)
Date: Mon, 14 Mar 2022 19:55:56 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314175556.7mjr4tui4vb4i5qn@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-10-tobias@waldekranz.com>
 <20220314165649.vtsd3xqv7htut55d@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220314165649.vtsd3xqv7htut55d@skbuf>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 09/14] net: dsa: Validate hardware
 support for MST
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

On Mon, Mar 14, 2022 at 06:56:49PM +0200, Vladimir Oltean wrote:
> > diff --git a/net/dsa/port.c b/net/dsa/port.c
> > index 58291df14cdb..1a17a0efa2fa 100644
> > --- a/net/dsa/port.c
> > +++ b/net/dsa/port.c
> > @@ -240,6 +240,10 @@ static int dsa_port_switchdev_sync_attrs(struct dsa_port *dp,
> >  	if (err && err != -EOPNOTSUPP)
> >  		return err;
> >  
> > +	err = dsa_port_mst_enable(dp, br_mst_enabled(br), extack);
> > +	if (err && err != -EOPNOTSUPP)
> > +		return err;
> 
> Sadly this will break down because we don't have unwinding on error in
> place (sorry). We'd end up with an unoffloaded bridge port with
> partially synced bridge port attributes. Could you please add a patch
> previous to this one that handles this, and unoffloads those on error?

Actually I would rather rename the entire dsa_port_mst_enable() function
to dsa_port_mst_validate() and move it to the beginning of dsa_port_bridge_join().
This simplifies the unwinding that needs to take place quite a bit.
