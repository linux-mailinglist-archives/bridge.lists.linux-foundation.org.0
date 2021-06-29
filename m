Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2113B781B
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 20:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 504E54018F;
	Tue, 29 Jun 2021 18:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cle-THdItpi1; Tue, 29 Jun 2021 18:58:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CA31C40550;
	Tue, 29 Jun 2021 18:58:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 938C6C0022;
	Tue, 29 Jun 2021 18:58:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B0863C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 18:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DF6F827DD
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 18:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4PjZZZsb75MM for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 18:58:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3B0782768
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 18:58:25 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id h2so32722382edt.3
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 11:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Z2Fb3+vtJUFLAOYibiQsrogriXMJFkIlpt7gzXo5b3s=;
 b=Nfoozq3nvMm1J+m68LVpsIw8XpkqmH77WiLXMjCDym3burytz0B5uLixgTCopwdwBM
 auDMtpAY67nCdQGgxNAWmOJ5l6ZDgJ/X4r5k9Sq4Bq9ijuyBZ0vsEMD0fntd1MYXjQuy
 MpmHkobYnu5tpaoJAF72qr8D7+oZsBCi9zITEeAw+FxyalldPTV/kmURPJIKU7d/ZExo
 lgLlzIhEpSp1WpD8bVCRpIUBqjo9Eb1BgDbJ0gkvo5hFM18c21BQBwjV0XNmcuvax+Z4
 uFua8+jNXdZCUmQbyzzOqJcMK1yTFuS8Cd9lHjLrsDeHsI54wYs0aPwe9L41wqIPhQRC
 BD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Z2Fb3+vtJUFLAOYibiQsrogriXMJFkIlpt7gzXo5b3s=;
 b=hLu5NY9qav0eMq2Lptzx7uovINw7hApd1gtESEdodPuauPTI0qM0iPRnwZx+Z9IzDE
 5dB6REUu35+5eZ7pt4goMw/VCyim5CyZhQJP4hHzDGAeFowkToNLqlInCOBuVyN0WXw2
 f8rwJm2Tk9FT44LOIZ8/4TYq8xYrEOuW9sxV6dij2TkFLGLs1fK1dgsc+ScB+EnYEgRM
 h8qQ+kT0s3lR1Jnx8JYlGR5gipWL82DtpR+nFdA7/Rate5ekaZkqdtmKNtGZJnMIocCC
 IjQPGvRSLnuoWjeob/hIWF732f31DCIRCX7gP+jhk0PsU1f+gX/86/INnonlZzVGuZ6W
 BoFg==
X-Gm-Message-State: AOAM530PkExjIqtUz7xn3rST+NgZCMH0vKohoD5AvIaQ8/ewXX4L9NTS
 5ukVW8bTYFAHkRwulKWjIck=
X-Google-Smtp-Source: ABdhPJweMa1Ehvju/FvGa7XCAsSxYwPTNDavr9JV5zFi4klgVTB0+0PJ2TeisCmX8LVSq8+I7ClhnA==
X-Received: by 2002:a05:6402:d0a:: with SMTP id
 eb10mr43081181edb.139.1624993104116; 
 Tue, 29 Jun 2021 11:58:24 -0700 (PDT)
Received: from skbuf ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id r23sm10010077edv.26.2021.06.29.11.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 11:58:23 -0700 (PDT)
Date: Tue, 29 Jun 2021 21:58:22 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: David Miller <davem@davemloft.net>
Message-ID: <20210629185822.ir3vp52xkyddm3j3@skbuf>
References: <20210629140658.2510288-1-olteanv@gmail.com>
 <20210629.115213.547056454675149348.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210629.115213.547056454675149348.davem@davemloft.net>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vladimir.oltean@nxp.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, vivien.didelot@gmail.com,
 tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH v5 net-next 00/15] RX filtering in DSA
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

On Tue, Jun 29, 2021 at 11:52:13AM -0700, David Miller wrote:
> From: Vladimir Oltean <olteanv@gmail.com>
> Date: Tue, 29 Jun 2021 17:06:43 +0300
> 
> > Changes in v5:
> > - added READ_ONCE and WRITE_ONCE for fdb->dst
> > - removed a paranoid WARN_ON in DSA
> > - added some documentation regarding how 'bridge fdb' is supposed to be
> >   used with DSA
> 
> Vlad, I applied v4, could you please send me relative fixups to v5?
> 
> Thank you.

Thanks for applying. I'm going to prepare the delta patches right now.
