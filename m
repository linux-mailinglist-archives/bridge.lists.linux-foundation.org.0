Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B284348D1
	for <lists.bridge@lfdr.de>; Wed, 20 Oct 2021 12:19:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABAF54039B;
	Wed, 20 Oct 2021 10:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t4GlMKfpVnYD; Wed, 20 Oct 2021 10:19:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2E653401AF;
	Wed, 20 Oct 2021 10:19:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E329FC0022;
	Wed, 20 Oct 2021 10:19:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08AADC000D
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 10:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5B4C406F4
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 10:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJglgxUjzx3e for <bridge@lists.linux-foundation.org>;
 Wed, 20 Oct 2021 10:19:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4AC4406D6
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 10:19:31 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 oa12-20020a17090b1bcc00b0019f715462a8so2096600pjb.3
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 03:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=i1gZ2O7Vihvk5IxmWV6VCkw5T9xJGnRMe+izg7VgwK0=;
 b=WHC2EpbrT0nGCHISViDRuUOIZOg4dkY0559ooJRqha1TErSMzv5XZTdEJjzZD/m4QQ
 4BsiI03VbR9h8Q0LqUaEsOQ3fuRruVKUvAyN3C4dA+S2oL1H7Ws4HSRkPsGSQUES+nVV
 pfnBjgSAjW9Dfdrqn6XUte2zjRGpB/jps0ulx4Oo2zRuUHF357dQOqNM4zaGsk5tNHYE
 t91UykFSDZcR5n0e2s+oFvmGgY9OJKhidQT16ajYq4Bm4N8hXyYA1Uo2F0+VDOuKEcVu
 3tghTkPFvt6rfdfYIUGPjXKhblVTe186Yr3w1uSemrhj3POCt7+iLJeSXT221jnDywGB
 HGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=i1gZ2O7Vihvk5IxmWV6VCkw5T9xJGnRMe+izg7VgwK0=;
 b=oWqLbLTm9/xwcYKtl3c5MBbOFTLEYuw1g9zOfS9b7DUmsmN1LRcRF2AdPcrhVHr1yw
 SutD1CbVzXtszDJVQGwvMxMIxrfTP/+X4pwKCzWTehStamzn1UuM8eYWc23iPhujsF6s
 qc6j+S0sXw9pmkC5e8ozgyhuWRm9fuBIp1LALvjlGbyMcWiIJTSwqMi8BrVwGalbgy18
 p4pEFC0tKOzinzGXiJmQsSknKxQ25Retd494BCj3jy6AgN9+piSOQvkLYHsTcVXUXWSv
 CdW5ATMp6TL9xL7S9M+C080qfiHWt4VrbET9DUhxt6P+/5N/xi08uLMdj31Ui1ik9I1e
 vajQ==
X-Gm-Message-State: AOAM5306veNocuAuZI7Zs+HWrZ2V1hfGDP4VGSRASSo4w7dxGHuB+kIb
 HY1Op8x7lNNHzrJpNHSN/kA=
X-Google-Smtp-Source: ABdhPJzA1g2F7Y+LAca1eff4AWDyapoURxFwwzu/DOTWvZA7RQ4ciJabCui4tYETWsJW/BGiyhMFVw==
X-Received: by 2002:a17:90b:1bc3:: with SMTP id
 oa3mr6257340pjb.75.1634725171340; 
 Wed, 20 Oct 2021 03:19:31 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id u3sm2053713pfl.155.2021.10.20.03.19.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 03:19:31 -0700 (PDT)
Date: Wed, 20 Oct 2021 18:19:25 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <YW/tLekS17ZF9/w1@Laptop-X1>
References: <20211020023604.695416-1-liuhangbin@gmail.com>
 <20211020024016.695678-1-liuhangbin@gmail.com>
 <c041a184-92cb-0ebd-25e9-13bfc6413fc9@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c041a184-92cb-0ebd-25e9-13bfc6413fc9@nvidia.com>
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

On Wed, Oct 20, 2021 at 12:49:17PM +0300, Nikolay Aleksandrov wrote:
> Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> I think we just discussed this a day ago? It is the same problem -
> while we all agree the values should follow the RFC, users have had
> the option to set any values forever (even non-RFC compliant ones).
> This change risks breaking user-space.

OK, I misunderstood your reply in last mail. I thought you only object to
disabling no meaning values(e.g. set timer to 0, which not is forbid by the
RFC). I don't know you also reject to follow a *MUST* rule defined in the RFC.
> 
> Users are free to follow the RFC or not, we can't force them at this
> point. This should've been done when the config option was added long
> time ago.

OK, I will stop working on this path.

Thanks
Hangbin
