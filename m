Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36156434EE6
	for <lists.bridge@lfdr.de>; Wed, 20 Oct 2021 17:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C46840696;
	Wed, 20 Oct 2021 15:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VAohMwWRJOuz; Wed, 20 Oct 2021 15:19:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4EEEB4027B;
	Wed, 20 Oct 2021 15:19:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F4064C0022;
	Wed, 20 Oct 2021 15:19:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3C24FC000D
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 15:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BB9140696
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 15:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TZQy8VqGhYQc for <bridge@lists.linux-foundation.org>;
 Wed, 20 Oct 2021 15:19:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A76E4027B
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 15:19:42 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id t184so3283298pfd.0
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 08:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hSFH235x9cvayA+gcxjI5JkciUVbvTnKLm9tJ6qXx/Q=;
 b=RoaJVcMtQo9mU3HFtbwl3tu+zHqk4lat8Xqkut7zuNzcbagfiONeeIAqKlkBzYQS2P
 18U2+lo/pdeU2HKByFWYxKVfRvpDcyIh1rUB3K+wrJR+qaXeY3gzWtYqVtcozb+iR1Re
 TtBhKPhZZhn0Oph9KcsjhFmEcGAM24DIcxJO+DPBaM0qws+pFRwXqlT/bQB/o+MAlJ3S
 Wl8O/uBjAbOrEv4n/PK+au2IHH5P1wiVq9ulRV+xGIQe+tq430xyAcZynxzGph7ZRs+b
 GtXeDm+uyYcHrEpPVXsfcTTxYyVArE7STev5Lit5n4knIg1igu4PCIhL3wf5tb037EnT
 g3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hSFH235x9cvayA+gcxjI5JkciUVbvTnKLm9tJ6qXx/Q=;
 b=GcJf7wy7WAoEfxB3dIo3IbC14ksm+LND0aysYknpRUoqvXkSmQ3nQ1/3BoR5Tddfyv
 eDDWoqH9L7eKVJFzC5sXI9OYpb5LNWO00MpRzrmTzyF+SRkXwDwqNeh9opxa9A9iDFR4
 jenjmjD0xrsnOL+AbB+B3VYeM+a65tmbluah50niA5dWotQS6855PAEbBEfJVnNv6vyx
 GkjFTkjh7q03fo8YU+Ygxuca/4vb4h2NYiFZSLgzMxobxSwNYZbQtm4CAuA/njfWQ2nw
 M09ltLwla3SgkAYwc9Fq0ur+Q/J97QIc8sifkMVKzNWvTfsw0s4TNkQH08O5Dgt5aCHO
 ypAA==
X-Gm-Message-State: AOAM531JG22QlBxwO8TXEToRTL2EwRVF+vN5XVjNpDj/MAF5qG0ZSZ69
 m7fwx63ROi7k+RCGUxlf07oHZg==
X-Google-Smtp-Source: ABdhPJxNQVsOm3uVnxgeZvRVuspT57FMf7RnIDDUvk8dgPg9MQWdUuiNe3TqG7m3azggwGR5mvJ1Gw==
X-Received: by 2002:a05:6a00:ccb:b0:44c:eb4b:f24e with SMTP id
 b11-20020a056a000ccb00b0044ceb4bf24emr653227pfv.16.1634743181456; 
 Wed, 20 Oct 2021 08:19:41 -0700 (PDT)
Received: from hermes.local (204-195-33-123.wavecable.com. [204.195.33.123])
 by smtp.gmail.com with ESMTPSA id a12sm6196722pjq.16.2021.10.20.08.19.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 08:19:41 -0700 (PDT)
Date: Wed, 20 Oct 2021 08:19:37 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Hangbin Liu <liuhangbin@gmail.com>
Message-ID: <20211020081937.70059049@hermes.local>
In-Reply-To: <YW9qiUhDKT+56wkd@Laptop-X1>
References: <20211018082612.625417-1-liuhangbin@gmail.com>
 <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
 <YW5a9JLnfZc1M8Gh@Laptop-X1>
 <a6bbd579-3d5f-6cbd-9523-49226a2b5a7a@nvidia.com>
 <YW9qiUhDKT+56wkd@Laptop-X1>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Wed, 20 Oct 2021 09:02:01 +0800
Hangbin Liu <liuhangbin@gmail.com> wrote:

> On Tue, Oct 19, 2021 at 07:09:42PM +0300, Nikolay Aleksandrov wrote:
> > > I started this patch when I saw there is not limit for setting
> > > multicast_membership_interval to 0, which will cause bridge remove the
> > > mdb directly after adding. Do you think this is a problem.
> > > 
> > > And what about others? I don't think there is a meaning to set other intervals
> > > to 0.
> > >   
> > 
> > The problem is not if there is meaning, we cannot start restricting option values now after
> > they've become uapi (and have been for a very long time) because we can break user-space even
> > though chances are pretty low. I don't think this patch is acceptable, I commented on the other
> > patch issues but they don't matter because of this.  
> 
> OK, I got your mean, we should not restrict the configurations based on whether
> there is a meaning.
> 
> Thanks
> Hangbin

Maybe the bridge command could enforce that the value set are sane relative
to the RFC?  We already fixup some things in iproute2 utilities to workaround
places where changing defaults in kernel would break userspace.
