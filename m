Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0A24E5474
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 15:43:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98189400FE;
	Wed, 23 Mar 2022 14:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9QsMazFz0axA; Wed, 23 Mar 2022 14:43:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0C5CB40C47;
	Wed, 23 Mar 2022 14:43:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6C44C0073;
	Wed, 23 Mar 2022 14:43:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D4B6DC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 14:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D23DA4157E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 14:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKj7WLQHYblP for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 14:43:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12F5F4152B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 14:43:10 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id pv16so3372063ejb.0
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 07:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Hpxed2/jWw1SnL0rgO1qfgfRqMtI3k981lUGVm09vkU=;
 b=O2BqoSAh8gk1zLk+rTW6Ok7XPTKVbiDZpl3IsitPRospP8Ri04nFQm3HmjmxWD8esZ
 TXlNJRszB3c+JWkthBN0VqA68eeZNepKxhkBr/i6KRJ0mjx0O83AaS1wxvPJtGncuWbf
 2ioHKTZBpE1JeMuH5lWQmzVAw18gaQUjfSvRNysQbBEA2TAjHJZlPm30ZkCIVy03ALNU
 1ByYkDchELaUiRr9VHUFbLPb7AQWOeloXV4Dw6A1+gwGf/nVEQm6Jwd+SbR2pxBhl0ax
 tpdpy1ZjS5rouUd5ItbkvxVQJHNzQx7NOZeJzU6uousyu3EiPEFktr2bh53oRTJ9kaSI
 fmnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Hpxed2/jWw1SnL0rgO1qfgfRqMtI3k981lUGVm09vkU=;
 b=TU33rBhYIMx9iZ3+hu9rnaI1WPLS914986eXN6RobwbPuVmioKQTpl5r20gRYsxspZ
 nvFBx5Lm/GBvEjNd0cgS4tfZKqA4YkN5ThxIryQUWVL4Vf1QBwHF1U5Sjnoymmga3zBc
 6ZrWrXu+sjKlBY9qsRz0pi9voMfHgSKHms7ifHU4p0jrRyA4DVurR6OxRZB+gt5dEa/D
 8m8qnLaFa5TzoIxP6m/MvX2ubnwBfbx6h3F90HSoWj2VUaLT1RsCiO2EHgTDRp8l+sy5
 jFgRt43lCVc8+MH4THUOMJPFn9o6bPt844ODyv0qXYY0vPQmeAIGZNBrMipgcHFW6WkN
 lxlw==
X-Gm-Message-State: AOAM530XIWxV8NPV3rNH6GBX6nBPkj1K0VUPx8y1/opvVBZD9MxMDY5x
 MnIQhksak2Zu9jDD2+puKomn0iD5N/4=
X-Google-Smtp-Source: ABdhPJwyOwLyZClpvoP74uQ8L+CTpqUUUT4k9yf6eYbUGuuYrVf6B+0SSNew3VD7cWqS01XglgyBgw==
X-Received: by 2002:a17:907:b590:b0:6cf:48a4:9a4c with SMTP id
 qx16-20020a170907b59000b006cf48a49a4cmr329020ejc.6.1648046587068; 
 Wed, 23 Mar 2022 07:43:07 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 n2-20020a17090673c200b006db8ec59b30sm24449ejl.136.2022.03.23.07.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 07:43:06 -0700 (PDT)
Date: Wed, 23 Mar 2022 16:43:04 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220323144304.4uqst3hapvzg3ej6@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86wngkbzqb.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On Wed, Mar 23, 2022 at 01:49:32PM +0100, Hans Schultz wrote:
> >> Does someone have an idea why there at this point is no option to add a
> >> dynamic fdb entry?
> >> 
> >> The fdb added entries here do not age out, while the ATU entries do
> >> (after 5 min), resulting in unsynced ATU vs fdb.
> >
> > I think the expectation is to use br_fdb_external_learn_del() if the
> > externally learned entry expires. The bridge should not age by itself
> > FDB entries learned externally.
> >
> 
> It seems to me that something is missing then?
> My tests using trafgen that I gave a report on to Lunn generated massive
> amounts of fdb entries, but after a while the ATU was clean and the fdb
> was still full of random entries...

I'm no longer sure where you are, sorry..
I think we discussed that you need to enable ATU age interrupts in order
to keep the ATU in sync with the bridge FDB? Which means either to
delete the locked FDB entries from the bridge when they age out in the
ATU, or to keep refreshing locked ATU entries.
So it seems that you're doing neither of those 2 things if you end up
with bridge FDB entries which are no longer in the ATU.
