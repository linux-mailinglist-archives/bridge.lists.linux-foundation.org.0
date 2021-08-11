Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 706063E9A7E
	for <lists.bridge@lfdr.de>; Wed, 11 Aug 2021 23:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8ED482F4A;
	Wed, 11 Aug 2021 21:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uX3cHOEDY-Ps; Wed, 11 Aug 2021 21:45:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 97C2382F06;
	Wed, 11 Aug 2021 21:45:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 575FFC001F;
	Wed, 11 Aug 2021 21:45:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5646C000E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC1D982F06
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ivuCcc8AxZ1L for <bridge@lists.linux-foundation.org>;
 Wed, 11 Aug 2021 21:45:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C69E81CE7
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:45:09 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id lo4so7027628ejb.7
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 14:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=L+XK7Qk5Y2p36ge4CexpmpUnKhHpaYlCSYaz/IyqAE4=;
 b=tJ7O2fOIjUrVETc7EGgmzQBQ3UFDdaE98MZN1nJj+IqEJ/rF1UpBvXAA8ZgqcXtBrs
 KYvWXKXoA7GZaS7XjPu/leRt1RjiFsJj7pc9QbDX/ZZp0FNSjPihO4mmhmdhGyL3pWT4
 mIAZdYLcjLhdSW4bXZexgkff/bJPt4Co/X3gtNF9Tv/vRScIL16SGCrKOrWwdK7FxEWw
 Wiym9YDBI0Z5yExE16J1HtdCdtPa5VQH73b7gXDb3lCZScqwvMEpkKDH9JHHmowKtuyB
 RCmjmCBl4Fi59fg/2opwQfK+BzvcKcLdnijLKr6GbRGyUcmhORpODelGCgOucwJtjf0O
 crSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L+XK7Qk5Y2p36ge4CexpmpUnKhHpaYlCSYaz/IyqAE4=;
 b=Ezjm7s9TAgMoFgPtHWyWjjGWety1ppXyQc4kRINNuRWE2PXu63K3XHf+WS4Cu+0sWa
 A9YKDRIpMRl/I/4aGPEhKDOoOUiGSE0iyT7E1UxgUErXx+jet5JOdIABkuCa4HX51ACy
 Pp5+27nEyF5NtkMEKdiaBXcIv33cXiUVUkQpVedIMTSOGeP77akMBI2fBCRUPH3NsMB6
 2Rhq24J8udqeZJ03NP9baMuY4VdcneHCiUh9hwpSlpRphlu+mRzsj5NtAdOFvsbpDBOs
 QT57fp82WMd/NH7TSvMatLf2NcXFVJWBVJzmV946WdRh90JHkFWRyN9ZlEnlNtCofv+m
 LCaA==
X-Gm-Message-State: AOAM5330m5iPLtz5if4eJt0Lpvu+2RlfRgBJ3eCaCaufH1F6dLOEfe27
 v9SQBhdiuxpv61YfPrnVhUo=
X-Google-Smtp-Source: ABdhPJyIOZeUAPVImHmwi51LzCcsOr775P136j/+YdkRJ87uc6R54jEJogGJYnRoadECvY5hsR1LxQ==
X-Received: by 2002:a17:906:d183:: with SMTP id
 c3mr547453ejz.283.1628718308227; 
 Wed, 11 Aug 2021 14:45:08 -0700 (PDT)
Received: from skbuf ([188.25.144.60])
 by smtp.gmail.com with ESMTPSA id e22sm210965eds.45.2021.08.11.14.45.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Aug 2021 14:45:07 -0700 (PDT)
Date: Thu, 12 Aug 2021 00:45:06 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210811214506.4pf5t3wgabs5blqj@skbuf>
References: <20210811135247.1703496-1-dqfext@gmail.com>
 <YRRDcGWaWHgBkNhQ@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YRRDcGWaWHgBkNhQ@shredder>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, DENG Qingfang <dqfext@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
 isolation to be offloaded
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

On Thu, Aug 12, 2021 at 12:38:56AM +0300, Ido Schimmel wrote:
> On Wed, Aug 11, 2021 at 09:52:46PM +0800, DENG Qingfang wrote:
> > Add BR_ISOLATED flag to BR_PORT_FLAGS_HW_OFFLOAD, to allow switchdev
> > drivers to offload port isolation.
> >
> > Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> > Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> > ---
> >  net/bridge/br_switchdev.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> > index 6bf518d78f02..898257153883 100644
> > --- a/net/bridge/br_switchdev.c
> > +++ b/net/bridge/br_switchdev.c
> > @@ -71,7 +71,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
> >
> >  /* Flags that can be offloaded to hardware */
> >  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> > -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
> > +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | \
> > +				  BR_ISOLATED)
>
> Why add it now and not as part of a patchset that actually makes use of
> the flag in a driver that offloads port isolation?

The way the information got transmitted is a bit unfortunate.

Making BR_ISOLATED part of BR_PORT_FLAGS_HW_OFFLOAD is a matter of
correctness when switchdev offloads the data path. Since this feature
will not work correctly without driver intervention, it makes sense that
drivers should reject it currently, which is exactly what this patch
accomplishes - it makes the code path go through the
SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
-EINVAL for everything they don't recognize.

(yes, we do still have a problem for drivers that don't catch
SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS at all, switchdev will return
-EOPNOTSUPP for those which is then ignored, but those are in the
minority)
