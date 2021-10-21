Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B65543580F
	for <lists.bridge@lfdr.de>; Thu, 21 Oct 2021 03:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9E734015C;
	Thu, 21 Oct 2021 01:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDsligmleovE; Thu, 21 Oct 2021 01:08:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5B50F401C6;
	Thu, 21 Oct 2021 01:08:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 25865C0022;
	Thu, 21 Oct 2021 01:08:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6DEE8C000D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 01:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49B2340247
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 01:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BpGyLoV6Iry for <bridge@lists.linux-foundation.org>;
 Thu, 21 Oct 2021 01:08:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5190340239
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 01:08:41 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id 75so24096419pga.3
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 18:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BmdHwMdoVV1uojD1b7m3r6B3O3TcQV4xN3eKKkwBr18=;
 b=Pd2yMa4wCxaOMJoaB/4JtonxeySiJYrWppqNbj6mLo+Xk7WLHyboyJHlSF363qMvY/
 43NORPTrnwI/JYL8h2kBaU/ZQ4iG+Kot/R9uitTExUsNQGpW6o0RccWoUqGEkBmBe2PG
 mKawAN9mekITRG5ys+7uxSMx009kHveHml2hggLs7C2BmYgApnkZg9Ns9eYGlU71qAbf
 qfVw9RoN6PYOrOcBb0JfEaRYXSvZDne/p1L7U1w0GzfN2vMPMG12bERngZZPsZ4PuJji
 ucaq2t3PaiRkXc4MFzVvx1UczqlSv/o9sMO1IE03u4SQwkrJv4Z8PWwD2bTea1wJUuHp
 IioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BmdHwMdoVV1uojD1b7m3r6B3O3TcQV4xN3eKKkwBr18=;
 b=5HQM47ez5vbtHbeOClxsk4V4g5AbiOziyyTNM8dC9yW5jVUhNPpaYHHhQ7SHQoYtvL
 0qA90SaSFiflF1bJUr/IirMhqTzhFuwnL3+q/e6PfAKSHgGziuNZfGHb91eV46kp+adB
 fMA780BF5PKtCwamvpf+8npZc9anlBj07gbBJfKTAj6Qz24MfoEGUzEbWBBWWuePlkAF
 GudPFo4mus8OggAeq9UPX91/K+2lB3stOw26I9DjWu8pohT3wE9d/LDHKuGqhEfpisAT
 1IY5ppSA1gox3XB6gmj5nLK8RY5ORFGUcCaQ4CRJCBVmEt3qCoH7pCJh4H5dWwN/1oNl
 U/6g==
X-Gm-Message-State: AOAM533BEVoTcj6Iyn9F3kdSe9yz8R5aRNH25v/Fwnl7Ut6ftgXfHkbE
 CIEgWSdyC30NeSnnUS25AL8=
X-Google-Smtp-Source: ABdhPJwWusTBelAeYC96jdd0A/smXJY5o1t8Ac6/X0Xhvm4BFVyWr4D6vGOSZNqCRhLnV1okHNblwA==
X-Received: by 2002:a63:be4b:: with SMTP id g11mr2041804pgo.46.1634778520718; 
 Wed, 20 Oct 2021 18:08:40 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id a11sm4130256pfv.11.2021.10.20.18.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 18:08:40 -0700 (PDT)
Date: Thu, 21 Oct 2021 09:08:34 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <YXC9kgPGv+Xb85Sc@Laptop-X1>
References: <20211018082612.625417-1-liuhangbin@gmail.com>
 <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
 <YW5a9JLnfZc1M8Gh@Laptop-X1>
 <a6bbd579-3d5f-6cbd-9523-49226a2b5a7a@nvidia.com>
 <YW9qiUhDKT+56wkd@Laptop-X1> <20211020081937.70059049@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211020081937.70059049@hermes.local>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: Do not allow users to
 set IGMP counter/timer to zero
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

On Wed, Oct 20, 2021 at 08:19:37AM -0700, Stephen Hemminger wrote:
> > On Tue, Oct 19, 2021 at 07:09:42PM +0300, Nikolay Aleksandrov wrote:
> > > > I started this patch when I saw there is not limit for setting
> > > > multicast_membership_interval to 0, which will cause bridge remove the
> > > > mdb directly after adding. Do you think this is a problem.
> > > > 
> > > > And what about others? I don't think there is a meaning to set other intervals
> > > > to 0.
> > > >   
> > > 
> > > The problem is not if there is meaning, we cannot start restricting option values now after
> > > they've become uapi (and have been for a very long time) because we can break user-space even
> > > though chances are pretty low. I don't think this patch is acceptable, I commented on the other
> > > patch issues but they don't matter because of this.  
> > 
> > OK, I got your mean, we should not restrict the configurations based on whether
> > there is a meaning.
> > 
> > Thanks
> > Hangbin
> 
> Maybe the bridge command could enforce that the value set are sane relative
> to the RFC?  We already fixup some things in iproute2 utilities to workaround
> places where changing defaults in kernel would break userspace.

I'm afraid this may make user more confused. As user could also echo the
values via sys fs directly. e.g.

# ip link set br0 type bridge mcast_query_interval 0
Error: Invalid QI, must greater than 0.
# echo 0 > /sys/devices/virtual/net/br0/bridge/multicast_query_interval

Then ip -d link show br0 would show the mcast_query_interval is 0.

Thanks
Hangbin
