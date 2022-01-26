Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3574A2CE1
	for <lists.bridge@lfdr.de>; Sat, 29 Jan 2022 09:15:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CBF182F57;
	Sat, 29 Jan 2022 08:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fb35l1ieo6vy; Sat, 29 Jan 2022 08:15:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1E516831CA;
	Sat, 29 Jan 2022 08:15:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2ACA0C007B;
	Sat, 29 Jan 2022 08:15:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3630CC002D
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D19040385
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1u0t99SKQzb for <bridge@lists.linux-foundation.org>;
 Wed, 26 Jan 2022 12:10:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6751140291
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:10:01 +0000 (UTC)
Received: by mail-pj1-x1042.google.com with SMTP id
 s2-20020a17090ad48200b001b501977b23so4399707pju.2
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 04:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AEzAoHuhPGPKCGh3cWJjJrGXHXVQzmvhoLSTyK087Xo=;
 b=djMVuKsI0YKi8jRlWCDcM3ROIbZoH//glenypM9jc7sLmeCe/EE75Y67qRrzAf3wQP
 QUobivH6WxoG9ejnNkyis1z3Jf46rdvKV7V2W3ttwBKNfuyoNAyUMIBSaurN+y6UYFmm
 NVhUjhZGlh0F4MQW6fuIZqv3iIKXwHD+7sUKTw9LzoI4OoSO74QRpxtGqMf2MIVDqMbI
 agGnOSaI6mF2rB8YbiD39ItlFrnyCv+mSU123nGp2x0E17DtbzhA9fwphSrJz4pi+THm
 sozAj6KeeguRAfAJerosUnbKNCaqMDE2tAGjnZPFKcdJtzOKZSovKzaQHvbcJtOXaEow
 fEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AEzAoHuhPGPKCGh3cWJjJrGXHXVQzmvhoLSTyK087Xo=;
 b=stf0RlQPnBCLq8szuODUVppXgcUPnpePeLU44qs/OEQIU77IxuvXxXspTWTHMOA5Mj
 Cz5Fy/jrCZyfkctvgUi4fqXogCRNjuHAYNfy+GRHF96FedwTiLvB78RruZ13vXENYCdb
 rDvEyXkSqEfHIAqYCH4qX4gSa5B+t0z0k0XpALSMYL2k6wOe7SFsVIBgz8z/2I3j2qyI
 xZPNYHoc71EUc2fOdoQPzDNRKy0/mqY+Cy6UKqDNfUtq/YV8XRazrXxbl0sQAu6dZDae
 a/VVNPtuWUREgcyN3wHIlGAMs8JzA+dY2BiuOKpgyf1cR2eH46Zc+UMCNHo/UCAbBpU2
 bL5Q==
X-Gm-Message-State: AOAM5317dHvIXjepg72DMfRVXWJiYPyhEVAE3O3q8mGMnRAR11jL+x8V
 2cBC38xbcGT1iluz2ZL43NwG7DxOLC/0/A==
X-Google-Smtp-Source: ABdhPJxncV8VOSnug4ym2aL2nT/IZC7T0uIUIvLBVm9RqV/h+fb+P0gfjEnvrMXmbIV133KdjmCRIg==
X-Received: by 2002:a17:90a:7e8a:: with SMTP id
 j10mr8400366pjl.13.1643199000857; 
 Wed, 26 Jan 2022 04:10:00 -0800 (PST)
Received: from localhost ([2405:201:6014:d064:3d4e:6265:800c:dc84])
 by smtp.gmail.com with ESMTPSA id h9sm1886487pfe.101.2022.01.26.04.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 04:10:00 -0800 (PST)
Date: Wed, 26 Jan 2022 17:38:09 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20220126120809.ihs2wko74dm4r3pi@apollo.legion>
References: <cover.1643044381.git.lorenzo@kernel.org>
 <720907692575488526f06edc2cf5c8f783777d4f.1643044381.git.lorenzo@kernel.org>
 <61553c87-a3d3-07ae-8c2f-93cf0cb52263@nvidia.com>
 <YfEwLrB6JqNpdUc0@lore-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YfEwLrB6JqNpdUc0@lore-desk>
X-Mailman-Approved-At: Sat, 29 Jan 2022 08:15:36 +0000
Cc: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 daniel@iogearbox.net, Roopa Prabhu <roopa@nvidia.com>, netdev@vger.kernel.org,
 dsahern@kernel.org, toke@redhat.com, komachi.yoshiki@gmail.com, ast@kernel.org,
 lorenzo.bianconi@redhat.com, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, brouer@redhat.com, kuba@kernel.org,
 bpf@vger.kernel.org, andrii.nakryiko@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC bpf-next 1/2] net: bridge: add unstable
 br_fdb_find_port_from_ifindex helper
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

On Wed, Jan 26, 2022 at 04:57:42PM IST, Lorenzo Bianconi wrote:
> > On 24/01/2022 19:20, Lorenzo Bianconi wrote:
> > > Similar to bpf_xdp_ct_lookup routine, introduce
> > > br_fdb_find_port_from_ifindex unstable helper in order to accelerate
> > > linux bridge with XDP. br_fdb_find_port_from_ifindex will perform a
> > > lookup in the associated bridge fdb table and it will return the
> > > output ifindex if the destination address is associated to a bridge
> > > port or -ENODEV for BOM traffic or if lookup fails.
> > >
> > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > ---
> > >  net/bridge/br.c         | 21 +++++++++++++
> > >  net/bridge/br_fdb.c     | 67 +++++++++++++++++++++++++++++++++++------
> > >  net/bridge/br_private.h | 12 ++++++++
> > >  3 files changed, 91 insertions(+), 9 deletions(-)
> > >
> >
> > Hi Lorenzo,
>
> Hi Nikolay,
>
> thx for the review.
>
> [...]
>
> I guess at the time I sent the series it was just in bpf-next but now it should
> be in net-next too.
> I do not think we need a unregister here.
> @Kumar: agree?
>

Yes, no need to call unregister (hence there is no unregister).

> > [...]



--
Kartikeya
