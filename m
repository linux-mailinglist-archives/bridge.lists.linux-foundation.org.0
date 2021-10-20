Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE84A434ADA
	for <lists.bridge@lfdr.de>; Wed, 20 Oct 2021 14:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0167240193;
	Wed, 20 Oct 2021 12:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGJMsvU0auYN; Wed, 20 Oct 2021 12:10:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 701E44055F;
	Wed, 20 Oct 2021 12:10:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31BE3C0022;
	Wed, 20 Oct 2021 12:10:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0027DC000D
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 12:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D67E0404CB
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 12:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id byDUERuMMTjd for <bridge@lists.linux-foundation.org>;
 Wed, 20 Oct 2021 12:10:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E892404C1
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 12:10:10 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id m21so22289939pgu.13
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 05:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ftphP/rRhj3HAi/sY+WrPVk0b2hRaTcyx6DeAasFrXQ=;
 b=B0CIzVA8hGKlxBlbLI2TXw1a7ZZ4cI4SHyOME6mYX/zv8h4K7atw3/cZ4aDOymv95H
 3X5Vg7NcqP2XVepAF19Wi7bXeCwcTyJNS4yhadeU5Yel9wMMCqgaqG/kbZboDs3juflh
 OE4H7vqblU4SZteOWMPRSoradW0IED43Y4hJoBd/vB0TF3QdJelCYOyl4TRKsJ2w0Fil
 H/LEvKfwxRdcV3teg2VNyy6KOYPaPnZ7GwhPlAPYg/UYt7Rc8/5J5YEB0C///25Qz+23
 YAtZl6d8tjINLeAZV+twu5jaS3jbnj992LyKB5XZKTG0FSmplO5f+K9RWcH8Gt9V7S0M
 BhIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ftphP/rRhj3HAi/sY+WrPVk0b2hRaTcyx6DeAasFrXQ=;
 b=3QIuBzVMNK3ycpQdGdxSV0ODrcLj1/GxdWfQ8hyOPRtCQt7/g0/FC5AtLctu8PjzOO
 Ofo7QXwqZWWNguludCmN0XHkrXte/KFIWyyV66WfZQp0cH9MxUz1XEzUpjGnhpbwUNkG
 ULGv9B/hovvE69lNqTC/Bv483XmM0NRIBYGeot+vDpgmIes5cuGnwmqI1l7VWZFlgmX4
 6WQy//6uG66InmrqHKH3QnpIdI0qu4BWgu5/z5XhtJs7hOufyuVqEKOPwqbXf1pV+vNw
 /tGG+eN6YAdq+lbOBPky5Wa7GNRw8JBeSFrIpftY6s4GHXptqYz71uKqH+C88cuXUuYL
 jIeg==
X-Gm-Message-State: AOAM533XxtfaDroUhqBQuZ+8P/xL9eWcROwWClNhzryZGQkftu97xBIk
 CJUmhMks22/d18bho2+mh/k=
X-Google-Smtp-Source: ABdhPJwDqkv/QWkMwSTv7clGOxVT91szFLgmv2smVxJYwGLdcgsCHe+9J6TNTh3Id5LSLIBBZl7wNQ==
X-Received: by 2002:a05:6a00:815:b0:44d:2193:f688 with SMTP id
 m21-20020a056a00081500b0044d2193f688mr5972528pfk.4.1634731809690; 
 Wed, 20 Oct 2021 05:10:09 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id rm14sm5842795pjb.4.2021.10.20.05.10.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 05:10:09 -0700 (PDT)
Date: Wed, 20 Oct 2021 20:10:04 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <YXAHHBYtFfXbd1hE@Laptop-X1>
References: <20211020023604.695416-1-liuhangbin@gmail.com>
 <20211020024016.695678-1-liuhangbin@gmail.com>
 <c041a184-92cb-0ebd-25e9-13bfc6413fc9@nvidia.com>
 <YW/tLekS17ZF9/w1@Laptop-X1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YW/tLekS17ZF9/w1@Laptop-X1>
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCHv2 net] net: bridge: mcast: QRI must be less
	than QI
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

On Wed, Oct 20, 2021 at 06:19:25PM +0800, Hangbin Liu wrote:
> On Wed, Oct 20, 2021 at 12:49:17PM +0300, Nikolay Aleksandrov wrote:
> > Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> > 
> > I think we just discussed this a day ago? It is the same problem -
> > while we all agree the values should follow the RFC, users have had
> > the option to set any values forever (even non-RFC compliant ones).
> > This change risks breaking user-space.
> 
> OK, I misunderstood your reply in last mail. I thought you only object to
> disabling no meaning values(e.g. set timer to 0, which not is forbid by the
> RFC). I don't know you also reject to follow a *MUST* rule defined in the RFC.

I know you denied the patch due to user-space compatibility. Forgive me
if my last reply sound a little aggressive.

Thanks
Hangbin
