Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BD90B8DCF8
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 20:26:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C54E8E28;
	Wed, 14 Aug 2019 18:26:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB5E9DDD
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 18:26:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 330458A0
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 18:26:09 +0000 (UTC)
Date: Wed, 14 Aug 2019 20:26:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1565807167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	in-reply-to:in-reply-to:references:references;
	bh=7nyPcyqyP1juKKcIR2Q9YuG+lYaGhTARXGVglzh/Y5Q=;
	b=PGbW1DmxbCzsmxwfYv6xF/QbmNKC7wyjcAH6jiVLh2j6fajxyxXV/bvn0hzrWP9ibZw/ug
	wnbIVjh6kO4a6wtaC1BZpgGnuBKchM08EKHpo1geUzSGWGsYYhGVAo+CZNQwFhvjXs87cb
	BBeNi+rBDahfxeHSnw2UiOuU3sRWBlnnEu+GQcAgCWg/0/XuKqCRLX8PgwGx2zsGko6UoO
	XC80W34IlpfE2usj1CMTIf6VgCPZBBqcybDV4slqLXK8DNBTbipBoScC4QFdc85XsjIiLy
	mMv+NTydzt6jcl+ioTuTADysxJb/dnCONEvS5y45M+9+ibeHvX5Qwz4Fg7g+Wg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: David Miller <davem@davemloft.net>
Message-ID: <20190814182604.GD2431@otheros>
References: <dc0d0b1bc3c67e2a1346b0dd1f68428eb956fbb7.1565649789.git.sbrivio@redhat.com>
	<20190814.125858.37782529545578263.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190814.125858.37782529545578263.davem@davemloft.net>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
	s=2018; t=1565807167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	in-reply-to:in-reply-to:references:references;
	bh=7nyPcyqyP1juKKcIR2Q9YuG+lYaGhTARXGVglzh/Y5Q=;
	b=uDIVkXrgRpouFUngVd4C2nCWWFUIXK3NYhgt5j86GuWq1Rf76Jd4KPZHDN0zqM+7dV6IBz
	XNHK5/Uxqswbj5632RMtmWD/L8210i6P+4p41jAL3ZIsmDDnOcEosocyx3tgLAkNQqfCbk
	1GxMKZmLTzESQdtxSg7BkwcmgBBJeoyEOO4Nyce3c41rSKBHYAjMH0qW97R0lVHhYmO30l
	1PfDKsehPCWDjTbJ2MMIkbP3e/N2pCnxCAd3wZRQpQGeGHcNLuvPgcCO5HtNbLwZHYfgQ4
	1u420PqV85YYB1GfYMM3HIL/QnMvFXoGiK/Zr6Q2F8XfDLqHsBPnAy8kQtjW2Q==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1565807167; a=rsa-sha256; cv=none;
	b=enHP1R8Q2q6zHICqT2mBNg82Id9fdD6P+2VX3zOVOPO0M9LXPGixPR6+wV/s61T2zfAzzr
	Prcc8IpF1Zzr83ipw4AZcuarvAeSuCNA7aD+oVq+QH42O2w29TGJKh6D6hOfeJeYgZaBa9
	IoHv55QLpDTPYaV2/aLwMECB6sAYZNAtgKZ7+DGpawyNI/sRAHdmkrLyKxhjHD+3gmLbjJ
	73bnCgqiZ6Y7QARt02FBA2uALe1j8qvUXKyDyeMlGAws8Gpx87K7DfJANKaQ4n6KoWNsbY
	xj6iXu0zbOD3wnOJk/32N+UoSSP/WYj9aKx06uq0Ltpx19dQ4rznrnArncZSGg==
ARC-Authentication-Results: i=1; ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue
	smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue
	smtp.mailfrom=linus.luessing@c0d3.blue
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, haliu@redhat.com, netdev@vger.kernel.org,
	gnault@redhat.com, sbrivio@redhat.com, edumazet@google.com
Subject: Re: [Bridge] [PATCH net] ipv6: Fix return value of
 ipv6_mc_may_pull() for malformed packets
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Wed, Aug 14, 2019 at 12:58:58PM -0400, David Miller wrote:
> From: Stefano Brivio <sbrivio@redhat.com>
> Date: Tue, 13 Aug 2019 00:46:01 +0200
> 
> > Commit ba5ea614622d ("bridge: simplify ip_mc_check_igmp() and
> > ipv6_mc_check_mld() calls") replaces direct calls to pskb_may_pull()
> > in br_ipv6_multicast_mld2_report() with calls to ipv6_mc_may_pull(),
> > that returns -EINVAL on buffers too short to be valid IPv6 packets,
> > while maintaining the previous handling of the return code.
> > 
> > This leads to the direct opposite of the intended effect: if the
> > packet is malformed, -EINVAL evaluates as true, and we'll happily
> > proceed with the processing.
> > 
> > Return 0 if the packet is too short, in the same way as this was
> > fixed for IPv4 by commit 083b78a9ed64 ("ip: fix ip_mc_may_pull()
> > return value").
> > 
> > I don't have a reproducer for this, unlike the one referred to by
> > the IPv4 commit, but this is clearly broken.
> > 
> > Fixes: ba5ea614622d ("bridge: simplify ip_mc_check_igmp() and ipv6_mc_check_mld() calls")
> > Signed-off-by: Stefano Brivio <sbrivio@redhat.com>
> 
> Applied and queued up for -stable.

Urgh, sorry... and thanks for the fix(es), absolutely right...
