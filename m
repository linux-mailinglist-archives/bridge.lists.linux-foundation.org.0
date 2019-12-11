Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E57D811BF64
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 22:48:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5118F84A0D;
	Wed, 11 Dec 2019 21:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VjbZ41y2SKXY; Wed, 11 Dec 2019 21:48:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDEE584A6C;
	Wed, 11 Dec 2019 21:48:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91017C0881;
	Wed, 11 Dec 2019 21:48:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE847C0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 21:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BCFC588158
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 21:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9EObcjw9lMV for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 21:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EDDF0880C2
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 21:47:57 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id d17so105877qvs.2
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 13:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=RaAE7sjaNd1lnPk57Cwl+t3wgCFYj7SYpv6MvMoqfZM=;
 b=TyBKqC7aMmrh+M6LP64NE4QW7xWQKWLDifFe4gpI7ZIaVzF4igUoNCdI6aw++uiE2w
 a2kHcrZ8EAdWJIDY54CrtgKsgAEjnSjG48BIbTqGWKmy66OUQYLEYGD476TScP+HmOIy
 /W9rmUeuAa87/A/TiMhuZVPWNXUQQUOe55G1llrZKFLXgUJiub0lIPNPmvGfNSg29efN
 nDUBa53Qtp0pOdxrRxHdIYa2ml8eAcIJFfsvY9IHqmdTN1iNFcqm+G/f2yPZWxxFRgyQ
 pSpz2RhqqpUZq9qXDtPSlqKGUvjgGsQIW44dcxSJy0ft0abuO6po6ZTTg46d48PieaZo
 OUqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=RaAE7sjaNd1lnPk57Cwl+t3wgCFYj7SYpv6MvMoqfZM=;
 b=PouLNRsNcfHFZ/rUr9lJYw8ugy96CglXozdsfb/M6EfP+ytYqmh20nWL21nHiZHlJD
 eW3dJqy9su/KU56enKTI+mwFuyflDEtc4U+IUJvJAsBSotWvD8H0I8BeznPIAcK3PqSq
 QDgPuKmVZgPrc+DIRXskHXwSKuKFia5gCCOLdCYqiLP/RrggQBrn6z/NJ8iKCYFlVLbF
 oppCO/yJ+RG7Efh0TBFy9Kw1Zies8N6U6iNKuXrJEfcQV4gdEvCb1hah2COWKdFwZPi8
 0aIXJZ7De/4xu6qHb5QREXxfMW0MZrPyYjCmShImoFBUOlVqvRyvB48PCnmOs6Mbasak
 ss+Q==
X-Gm-Message-State: APjAAAUbU0NvkrBZPU98+5goTC0ZFmckdVKorLhY1H9YUkPPopGKOsCK
 7bgTWv+kW2LPGLeCil6P/yo=
X-Google-Smtp-Source: APXvYqxp54jG68g6gUukW3yMjWMe0M9d2XbuokGR9xtBNRBzoSlTPiyfoICsOkrUnEFD1Kz1mCIkzw==
X-Received: by 2002:a0c:f513:: with SMTP id j19mr5185205qvm.206.1576100876870; 
 Wed, 11 Dec 2019 13:47:56 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id 184sm1061118qke.73.2019.12.11.13.47.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 13:47:55 -0800 (PST)
Date: Wed, 11 Dec 2019 16:47:54 -0500
Message-ID: <20191211164754.GB1616641@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: David Miller <davem@davemloft.net>
In-Reply-To: <20191211.120120.991784482938734303.davem@davemloft.net>
References: <0e45fd22-c31b-a9c2-bf87-22c16a60aeb4@gmail.com>
 <9f978ee1-08ee-aa57-6e3d-9b68657eeb14@cumulusnetworks.com>
 <20191211134133.GB1587652@t480s.localdomain>
 <20191211.120120.991784482938734303.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

Hi David,

On Wed, 11 Dec 2019 12:01:20 -0800 (PST), David Miller <davem@davemloft.net> wrote:
> >> >>  /* Bridge multicast database attributes
> >> >>   * [MDBA_MDB] = {
> >> >>   *     [MDBA_MDB_ENTRY] = {
> >> >> @@ -261,6 +270,7 @@ enum {
> >> >>  	BRIDGE_XSTATS_UNSPEC,
> >> >>  	BRIDGE_XSTATS_VLAN,
> >> >>  	BRIDGE_XSTATS_MCAST,
> >> >> +	BRIDGE_XSTATS_STP,
> >> >>  	BRIDGE_XSTATS_PAD,
> >> >>  	__BRIDGE_XSTATS_MAX
> >> >>  };
> >> > 
> >> > Shouldn't the new entry be appended to the end - after BRIDGE_XSTATS_PAD
> >> > 
> >> 
> >> Oh yes, good catch. That has to be fixed, too.
> >> 
> > 
> > This I don't get. Why new attributes must come between BRIDGE_XSTATS_PAD
> > and __BRIDGE_XSTATS_MAX?
> 
> Because, just like any other attribute value, BRIDGE_XSTATS_PAD is an
> API and fixed in stone.  You can't add things before it which change
> it's value.

I thought the whole point of using enums was to avoid caring about fixed
numeric values, but well. To be more precise, what I don't get is that when
I move the BRIDGE_XSTATS_STP definition *after* BRIDGE_XSTATS_PAD, the STP
xstats don't show up anymore in iproute2.


Thanks,

	Vivien
