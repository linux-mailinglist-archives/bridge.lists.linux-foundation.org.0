Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC70D347D33
	for <lists.bridge@lfdr.de>; Wed, 24 Mar 2021 17:02:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D36F260AFA;
	Wed, 24 Mar 2021 16:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FdrHTWtbg2Oj; Wed, 24 Mar 2021 16:02:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7813C60AF6;
	Wed, 24 Mar 2021 16:02:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 383A1C0012;
	Wed, 24 Mar 2021 16:02:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BBAC1C000A
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 16:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A95A740130
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 16:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G8iRmJi5Bn7c for <bridge@lists.linux-foundation.org>;
 Wed, 24 Mar 2021 16:02:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0E914011B
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 16:02:32 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id u9so33750765ejj.7
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 09:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=p0h1I2tU40MVEe/iq0GPb6BvRGF0+jimshHBcD8Y96o=;
 b=UYxL1aPIIPS7dZJFvNFh6Gi7rWcPCnq0LT08QW+F6/HZXq6mbwF8gr9DEQ2z8ZgO7r
 dZ31Oe2JgNLZIf9KX+4S0UvQ7V8y9v2n7/jYvHfNHjm2k15HIuaVceJG3qkJg1EqLtPB
 LkJ96zui76hJkuznZNalH0tvK4QFSp9k7YTqifqDGJAnCze1bamfgvt+N2oHMM8ldjPu
 Ibf1rMbmngk1Gbhy79F6gTXVORnLsE2VieIu639CP+HpZeC19nu8SkRsMO9cIKc/fXhr
 HaXgNOl1e9UXZKneUfj9dHbbQG9e7QOTVv8j6soU7b+hOIsDZOXsCYmgAqip8RCJmcy3
 ZAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p0h1I2tU40MVEe/iq0GPb6BvRGF0+jimshHBcD8Y96o=;
 b=Nh1MxZzkbsAYtoTdUzVQ9nB86HJ67vWPtqZUGlrF/6EOhVax6DFGe+4YyDiWfPV/iS
 +rbYOCRht+inZG0YCBfBmJfQSzPh4JWy8Q18hIgua9QQWZ3u5eHA8CcnWBJLaFZl3Di6
 KHlbnENFnoSU/xaWgoQ+pnd1V5pDJQU4k6icdkmmOiv48wVVbxMpMo81dMOkKBksv6s4
 Nb/YBYBirIsNXZpVXk+Q6pr+pts8msCnspSHI7WQ3zuv93xPJDfa8IQKlyHD4dXntARp
 i1aedwKU79xR6oCSqYLG0thFDaVDQmeMmfCA+AFeltAWiL4V+s1gy8rFoDepCk4B8VnF
 OeIQ==
X-Gm-Message-State: AOAM531otn9yRiGG+2G5gXW1cqn2WrwisHkWK9JSeSKYw9kZCw2NKMAc
 DzUKb8RC3e8qKKOIEzgwAsU=
X-Google-Smtp-Source: ABdhPJwpUavXt4EHnTzT+ae8zvQSOiy4MHaEHtHWR/X63xNd+NtmzaX78oG8X3nz4lj7OuTgsBJ6zQ==
X-Received: by 2002:a17:906:9888:: with SMTP id
 zc8mr4575571ejb.310.1616601750960; 
 Wed, 24 Mar 2021 09:02:30 -0700 (PDT)
Received: from skbuf (5-12-16-165.residential.rdsnet.ro. [5.12.16.165])
 by smtp.gmail.com with ESMTPSA id si7sm1131470ejb.84.2021.03.24.09.02.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 09:02:30 -0700 (PDT)
Date: Wed, 24 Mar 2021 18:02:29 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Colin King <colin.king@canonical.com>
Message-ID: <20210324160229.cyzepir5fnfnfeox@skbuf>
References: <20210324150950.253698-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210324150950.253698-1-colin.king@canonical.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH][next] net: bridge: Fix missing return
 assignment from br_vlan_replay_one call
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

On Wed, Mar 24, 2021 at 03:09:50PM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The call to br_vlan_replay_one is returning an error return value but
> this is not being assigned to err and the following check on err is
> currently always false because err was initialized to zero. Fix this
> by assigning err.
> 
> Addresses-Coverity: ("'Constant' variable guards dead code")
> Fixes: 22f67cdfae6a ("net: bridge: add helper to replay VLANs installed on port")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
