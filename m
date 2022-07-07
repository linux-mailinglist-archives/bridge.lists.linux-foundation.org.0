Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DBC56A933
	for <lists.bridge@lfdr.de>; Thu,  7 Jul 2022 19:15:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B460841066;
	Thu,  7 Jul 2022 17:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B460841066
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=aHVDuq46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fdy1vp1FseQL; Thu,  7 Jul 2022 17:15:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3D85041083;
	Thu,  7 Jul 2022 17:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D85041083
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E1E9FC007D;
	Thu,  7 Jul 2022 17:15:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 402D8C002D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 17:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D76A81376
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 17:15:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D76A81376
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aHVDuq46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgkK94OgsLAR for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jul 2022 17:15:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 479D8812DB
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 479D8812DB
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 17:15:13 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id os14so3325434ejb.4
 for <bridge@lists.linux-foundation.org>; Thu, 07 Jul 2022 10:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2EAyZ1stZAv+WE/Oe5lCBYtB4ekQDXz6Nn8Oghg9kCU=;
 b=aHVDuq46twN+OtT8574CNtiZ3p3tEfhUL8u6sOlYI9+fP7FO7ykbEZNFUFC3BHekRu
 xA/j1QpdOWmeCE2rtNbFo99qRlvmizsJQzwB5/hvHJkCUajqEXEPuhEguALh8eiqbQQF
 mluxjRV3D7ng9QMNi4SXpjB18hEG+BUkvsUcTiFsUZ+UbD5xTOixnN3f7cmh4wWAu6d5
 dK26p1VfUwXSecDuHXzgSG2LnDTjDwpd44q7pD0LHcJDGeO/4EGNkWhUlmwpQGGNsom5
 wQcoHZMbkPLxSb5mTE+070/irIWuvf3WM7qheHctOiYTf5zXv0Yr2yW4DHSUgN19X1p1
 4VJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2EAyZ1stZAv+WE/Oe5lCBYtB4ekQDXz6Nn8Oghg9kCU=;
 b=6/8nKbu9vbh8t8tV4RLef/dqaZBSAbTO/H7NdPpflij2kGj7O6TT0F9WVgHOECWTUw
 hrU03pB1+HW7MUpcr0eSpLcjOrkmqs71es7tNCE8YlCVzZQntmmZMVgBMfz5CEUD9HbG
 oR05AVhZhtheolI8Fiwl2dwYYHr6r7V9e0xZ+f7fp98J0ut+H1lVk6J4hfcfIjP3YYts
 W1mY/rOObq3KGWqL9RQqbsItpR7+do5uFjgukYTJMxWyLJbjGja/SXcBKPBBJ41bxr5W
 y7sQ1OJo6l3qZMddQJYM1uTHe45UVUk+U5m6olXdEoSd0FrI2vvQVPU3lPshzNrA79kS
 CPdQ==
X-Gm-Message-State: AJIora+a0t++OAuegMB4rd+ygYUTeXrga3KmsxIA7IVrBoXbQW0VAFUr
 TkhEF0MxA72nzJbYqhce+7Q=
X-Google-Smtp-Source: AGRyM1uLWPRbP8pYZcxH3kWV00K38gQ+djC3RPPA+1wJF6qnwbshXFtWrHXkUNUVdrli+VcgV7M8xg==
X-Received: by 2002:a17:906:8a59:b0:72a:4249:e998 with SMTP id
 gx25-20020a1709068a5900b0072a4249e998mr45039843ejc.731.1657214111468; 
 Thu, 07 Jul 2022 10:15:11 -0700 (PDT)
Received: from skbuf ([188.25.231.143]) by smtp.gmail.com with ESMTPSA id
 ku2-20020a170907788200b0072afb9fe3f3sm2479954ejc.110.2022.07.07.10.15.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jul 2022 10:15:08 -0700 (PDT)
Date: Thu, 7 Jul 2022 20:15:07 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220707171507.pojkwqhwqk5u6mmn@skbuf>
References: <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
 <86v8tu7za3.fsf@gmail.com>
 <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
 <20220706181316.r5l5rzjysxow2j7l@skbuf>
 <7cf30a3e-a562-d582-4391-072a2c98ab05@blackwall.org>
 <20220706202130.ehzxnnqnduaq3rmt@skbuf>
 <fe456fb0-4f68-f93e-d4a9-66e3bc56d547@blackwall.org>
 <37d59561-6ce8-6c5f-5d31-5c37a0a3d231@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <37d59561-6ce8-6c5f-5d31-5c37a0a3d231@blackwall.org>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Hans Schultz <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

Hi Nikolay,

On Thu, Jul 07, 2022 at 05:08:15PM +0300, Nikolay Aleksandrov wrote:
> On 07/07/2022 00:01, Nikolay Aleksandrov wrote:
> > On 06/07/2022 23:21, Vladimir Oltean wrote:
> >> On Wed, Jul 06, 2022 at 10:38:04PM +0300, Nikolay Aleksandrov wrote:
> [snip]
> > I already said it's ok to add hard configurable limits if they're done properly performance-wise.
> > Any distribution can choose to set some default limits after the option exists.
> > 
> 
> Just fyi, and to avoid duplicate efforts, I already have patches for global and per-port software
> fdb limits that I'll polish and submit soon (depending on time availability, of course). If I find
> more time I might add per-vlan limits as well to the set. They use embedded netlink attributes
> to config and dump, so we can easily extend them later (e.g. different action on limit hit, limit
> statistics etc).

So again, to repeat myself, it's nice to have limits on FDB size, but
those won't fix the software bridges that are now out in the open and
can't have their configuration scripts changed.

I haven't had the time to expand on this in a proper change yet, but I
was thinking more along the lines of adding an OOM handler with
register_oom_notifier() in br_fdb_init(), and on OOM, do something, like
flush the FDB from all bridges. There are going to be complications, it
will schedule switchdev, switchdev is going to allocate memory which
we're low on, the workqueues aren't created with WQ_MEM_RECLAIM, so this
isn't necessarily going to be a silver bullet either. But this is what
concerns me the most, the unconfigured bridge killing the kernel so
easily. As you can see, with an OOM handler I'm not so much trying to
impose a fixed limit on FDB size, but do something sensible such that
the bridge doesn't contribute to the kernel dying.
