Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C70D4DDA61
	for <lists.bridge@lfdr.de>; Fri, 18 Mar 2022 14:19:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E27A540C0A;
	Fri, 18 Mar 2022 13:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VebA2OHdfHjC; Fri, 18 Mar 2022 13:19:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 46C764051E;
	Fri, 18 Mar 2022 13:19:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB1B8C0082;
	Fri, 18 Mar 2022 13:19:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1AEB1C0012
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 13:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A5C88315C
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 13:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jn0wV6LrHhHV for <bridge@lists.linux-foundation.org>;
 Fri, 18 Mar 2022 13:19:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FCD182919
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 13:19:47 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id g20so10239051edw.6
 for <bridge@lists.linux-foundation.org>; Fri, 18 Mar 2022 06:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BbGAlf0EmAgXlRj+2JMlCkobYzhN57bh1dokSTQjOWs=;
 b=fM3jgWv5DnT+6qxziTK3Gafb23V5t7n+p+sS6PKhT8QpL5WGP6pQyoyOfHO6/EzmgN
 4KsyNYpY8aUwzmq6/30Sf/mTZLJq3Fyq7SvOloc4fM6H9Ny0a4wZx95jL8CQiUJOfojK
 zO/UPrFcSUDBX0sVWitdzrQP6mLcocW3U7BYJiVsZ6L80so3BrUp5lx2QPVFW0BsEP7T
 JwQoDSmEZPMNjtTvL6YHq9XcFtRt1Y+sTAWAJxPlxgqO5nPE5IVieworafUO41RSvMqr
 togJQxerUnwrXtqEEg/iu9Ea38eo+oFP20XDYKRwNc4NhaRpHRkcjuX21XPmexWpUFG2
 brJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BbGAlf0EmAgXlRj+2JMlCkobYzhN57bh1dokSTQjOWs=;
 b=dwkLKuhW1Jfnynpfb/C6cK3/wPjl0eQJiRD5IwlbrkkAionpj/AQdYwyglBIN457rn
 AFHxtgz5SOtMPtCYxayrXGYMGwgSKDTCvy5T1a56H16JNgEZk8R73vLPNLdZhJlG4PE+
 xPMQ3vDStCl9SUEgD9VrETW5YOPaldVgRJRDtFAI6GKMv0WaS1zbnuVzVwl2DiH8Lo9r
 kTzSxaYvSTt0cJN+2OjP0G/AdDjMrYH/FBES3684vLHzY4BOhYL8lPTf28XhvsYbwCIA
 2KmmKydHl8vGr4sobJXStptdLqbHIQ6Rhv+OhR3uIfYl6I86JzAbTehdQclLL+Ecc6k1
 DuZA==
X-Gm-Message-State: AOAM5312xQp0Sie99sHPEZvJR1UWPfa2PzpN6HUjKHxWxkkQVFpJ8jid
 k11cSC+uHoOuZRAXfbHYRiE=
X-Google-Smtp-Source: ABdhPJxLPH1C00eELL5tKmohaNpQSpzPlpyKDYoaYWX+GoHfw5lFMx7iFX/m0iBbJH0FW6MW0C4yig==
X-Received: by 2002:a50:99cd:0:b0:418:d6c2:2405 with SMTP id
 n13-20020a5099cd000000b00418d6c22405mr9365405edb.342.1647609585698; 
 Fri, 18 Mar 2022 06:19:45 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 i22-20020a170906251600b006d6d9081f46sm3677768ejb.150.2022.03.18.06.19.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 06:19:45 -0700 (PDT)
Date: Fri, 18 Mar 2022 15:19:43 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220318131943.hc7z52beztqlzwfq@skbuf>
References: <86lex9hsg0.fsf@gmail.com> <YjNDgnrYaYfviNTi@lunn.ch>
 <20220317153625.2ld5zgtuhoxbcgvo@skbuf> <86ilscr2a4.fsf@gmail.com>
 <20220317161808.psftauoz5iaecduy@skbuf> <8635jg5xe5.fsf@gmail.com>
 <20220317172013.rhjvknre5w7mfmlo@skbuf> <86tubvk24r.fsf@gmail.com>
 <20220318121400.sdc4guu5m4auwoej@skbuf> <86pmmjieyl.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86pmmjieyl.fsf@gmail.com>
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

On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
> In the offloaded case there is no difference between static and dynamic
> flags, which I see as a general issue. (The resulting ATU entry is static
> in either case.)

It _is_ a problem. We had the same problem with the is_local bit.
Independently of this series, you can add the dynamic bit to struct
switchdev_notifier_fdb_info and make drivers reject it.

> These FDB entries are removed when link goes down (soft or hard). The
> zero DPV entries that the new code introduces age out after 5 minutes,
> while the locked flagged FDB entries are removed by link down (thus the
> FDB and the ATU are not in sync in this case).

Ok, so don't let them disappear from hardware, refresh them from the
driver, since user space and the bridge driver expect that they are
still there.
