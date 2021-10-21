Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C9D43688B
	for <lists.bridge@lfdr.de>; Thu, 21 Oct 2021 19:00:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E76605EB;
	Thu, 21 Oct 2021 17:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9r33uOsZ5QFB; Thu, 21 Oct 2021 17:00:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AAE7A606E5;
	Thu, 21 Oct 2021 17:00:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6352EC0036;
	Thu, 21 Oct 2021 17:00:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90C46C0011
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 17:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7158140733
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 17:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0uue1xKgN80y for <bridge@lists.linux-foundation.org>;
 Thu, 21 Oct 2021 17:00:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 968C44072E
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 17:00:36 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id c4so856466pgv.11
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 10:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5RyUrXEQJgkpkS3LgGmg7QZzk/Xp6vh/AxqTCLe3xyo=;
 b=KrRrga5C/YO2dLe0TvqzGlGSYEQLjNmER7uhbG0b9kkxrtdRmWn1Nr9EZRKoCnCX6I
 t4NUngrX6gaK3GG/PDiRpl8xDbd2VtNkJLVHb7tdhwFJ+uypWCHF38OcH5/A2L2fMC6I
 vu+ScOMVCSX4SUjMU26XP9cvq+DRQoarq3J98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5RyUrXEQJgkpkS3LgGmg7QZzk/Xp6vh/AxqTCLe3xyo=;
 b=hRpG+gGDcu9hebSU3+aqPbcjme7K2lQ6Y0a18wFWmTKRxsQhzf1uGe/gsHP8zywdK/
 Kr7A5mNFQUbRUtjik60SrzFbllkJwVnz4fLnI1tQ0z35NglEhUnn44UL6brIG/0F5BnO
 zSuiRSfYX9ib9PpciISSq77ZE0hTIBruXIzknzqS9yehFvmgmrnUU6/2awK7SxLBtbQ4
 ULVyjdhTAd49vg/VITe9hUp6y7XcSH/XfIrghXZMCOa9on6uNHfWQ2TM25CtWqUaZ6zV
 mmeTcNwCMjtMcxTjm/n1BcR4HUy2zUELE47Kxydnyc/0bJ00AeCICaCJZpHe7PYFkp+D
 SFWw==
X-Gm-Message-State: AOAM530wKwZ3JjLVBl1ZJQUKZnw/4xh0TaVoKSbqyIHFGIJ4lS4Y2A69
 em38/5MypP+oFyIsNdPLW4zdxQ==
X-Google-Smtp-Source: ABdhPJyp07wPRl6ojFhBTknpEQr+udO/xRkU+FJi/ud9R/y5lOsFr0ekXZoY1cF/hAYFZ5chiWTJxg==
X-Received: by 2002:a62:7a8b:0:b0:44d:47e2:99bf with SMTP id
 v133-20020a627a8b000000b0044d47e299bfmr6821186pfc.64.1634835635924; 
 Thu, 21 Oct 2021 10:00:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c12sm6843823pfc.161.2021.10.21.10.00.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 10:00:35 -0700 (PDT)
Date: Thu, 21 Oct 2021 10:00:34 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <202110210958.6626A30@keescook>
References: <20210928200647.GA266402@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210928200647.GA266402@embeddedor>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>, linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH][net-next] netfilter: ebtables: use
 array_size() helper in copy_{from, to}_user()
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

On Tue, Sep 28, 2021 at 03:06:47PM -0500, Gustavo A. R. Silva wrote:
> Use array_size() helper instead of the open-coded version in
> copy_{from,to}_user().  These sorts of multiplication factors
> need to be wrapped in array_size().
> 
> Link: https://github.com/KSPP/linux/issues/160
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks!

Reviewed-by: Kees Cook <keescook@chromium.org>

I see that this is marked "Awaiting Upstream" (for an ebtables
maintainer ack?)
https://patchwork.kernel.org/project/netdevbpf/patch/20210928200647.GA266402@embeddedor/

-- 
Kees Cook
