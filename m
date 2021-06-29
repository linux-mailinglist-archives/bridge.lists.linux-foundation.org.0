Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB4D3B7842
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 21:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB3286087A;
	Tue, 29 Jun 2021 19:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BPW9jLhxK9Ph; Tue, 29 Jun 2021 19:09:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 394B260870;
	Tue, 29 Jun 2021 19:09:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED811C0022;
	Tue, 29 Jun 2021 19:09:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 947A7C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 19:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 829BE60876
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 19:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f5rMjQo1PlK6 for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 19:09:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A1CF60873
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 19:09:27 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id yy20so30333025ejb.6
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 12:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PY/2WH5hnilO8u4PmgXgGiXRhHzf3uFJjP0VaA/hWn4=;
 b=QKSsB4h3ID/kSdb7wt92GbeIhWMNyCrJgByY7HREdDhAvHoD1qW1tudgyyu16IU0F2
 2k9bC3KBxgbFB2zTPpkjB9j+EEYrpp5wyw54cU0rS+QNlajm0IUgfW/LTUZijVmRU4Yr
 3Tpti+RM4el2Jaa8SG4ltVLAkKO9GlE98FEMweO+g5MqB84JolKvEXOvvqz5g45yDxxW
 /724aRYmRxy8bs1+jOoFZpAM9JF+/tDh7I+NWCayDF+vzoDG7tDOvVN4hHvyToDA/3lN
 8PiwjdMkOBRis0vKmzfYQwH3nxTfuafodN7AWZG7kz53fEHtYgeyFth5aWfBw5M7W5NL
 9m4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PY/2WH5hnilO8u4PmgXgGiXRhHzf3uFJjP0VaA/hWn4=;
 b=iBGYHKntd7ZYO+i6X0AigLIdM81wWZhTg6Bztk4oh9FOxO+YTpIrMPcAJRXlaVV+iE
 1ohAJTwtojelwqcL7cJ4J551Afji1DquCZbwHY9CMjFQbQlzvOhuB2Zek4CACBXSC0R/
 PuoL2lGzkY/J0KsHXrLeG2HyJgFy3rvR/rNrSTug8bB33o0URr8MpjRwBV+FkXLO3ypd
 rCsWkdatHxNWP1+nD0ptTg5zqTTfz0YwrnKGV00onlBuul91SqnfUWvAuSedLX4pgKdd
 XpzwalxdItYreJH9oyhN66pGOoFf2n8B1I0PVxqAmKWMUvMzHT8J+Es3OeAO1Jv83wVy
 cEHQ==
X-Gm-Message-State: AOAM532Qn4sk66C6aR/gCIERS6HNNuXDGJAG6EVg8BNuPNk+B8r+eMvU
 UmcFpC6bP2DyVG/XyLgMUZw=
X-Google-Smtp-Source: ABdhPJyZcaQ0SliB2uagtAxsRZdZzU/nealf18lmN0FRMeoKlWt+wK5KUCrMzPQh4y9FbJ/Ftf2bXg==
X-Received: by 2002:a17:906:9be5:: with SMTP id
 de37mr9730803ejc.549.1624993765732; 
 Tue, 29 Jun 2021 12:09:25 -0700 (PDT)
Received: from skbuf ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id dd15sm11812959edb.45.2021.06.29.12.09.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 12:09:25 -0700 (PDT)
Date: Tue, 29 Jun 2021 22:09:23 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: David Miller <davem@davemloft.net>
Message-ID: <20210629190923.kf5utzbhmmgszwwc@skbuf>
References: <20210629140658.2510288-1-olteanv@gmail.com>
 <20210629.115213.547056454675149348.davem@davemloft.net>
 <20210629185822.ir3vp52xkyddm3j3@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210629185822.ir3vp52xkyddm3j3@skbuf>
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

On Tue, Jun 29, 2021 at 09:58:22PM +0300, Vladimir Oltean wrote:
> On Tue, Jun 29, 2021 at 11:52:13AM -0700, David Miller wrote:
> > From: Vladimir Oltean <olteanv@gmail.com>
> > Date: Tue, 29 Jun 2021 17:06:43 +0300
> > 
> > > Changes in v5:
> > > - added READ_ONCE and WRITE_ONCE for fdb->dst
> > > - removed a paranoid WARN_ON in DSA
> > > - added some documentation regarding how 'bridge fdb' is supposed to be
> > >   used with DSA
> > 
> > Vlad, I applied v4, could you please send me relative fixups to v5?
> > 
> > Thank you.
> 
> Thanks for applying. I'm going to prepare the delta patches right now.

Dave, is it possible that you may have applied v5 with the cover letter
from v4? I checked and everything is in its right place:

- the READ_ONCE stuff for fdb->dst:
  https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/bridge/br_fdb.c#n447
- there is no WARN_ON in DSA switch.c:
  https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/dsa/switch.c#n167
- the additional documentation chapter is there:
  https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/Documentation/networking/dsa/configuration.rst#n296

Thanks.
