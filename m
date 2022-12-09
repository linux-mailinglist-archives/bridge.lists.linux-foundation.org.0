Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18F8647E9A
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:32:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E728403CA;
	Fri,  9 Dec 2022 07:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E728403CA
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=4ND5KS73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7e5Ve3p6-OL5; Fri,  9 Dec 2022 07:32:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A3AAC40338;
	Fri,  9 Dec 2022 07:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3AAC40338
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52269C007C;
	Fri,  9 Dec 2022 07:32:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8AAFC002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 955F881E9E
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:32:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 955F881E9E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=4ND5KS73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-uPsLxMjs7A for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:32:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62BF81E6D
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B62BF81E6D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:32:22 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 h8-20020a1c2108000000b003d1efd60b65so5150223wmh.0
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SIxveZre+8NlzeDt7utvIp6t4jf30eHuNZN/6H3+xYM=;
 b=4ND5KS73UpftC8y+BoMtMe5FgelG7H82ffwcQBcpgSXKkJ1TEMXurxFSSareiCH4Vf
 5TmTChu0WoG3Zig+wLrT2LJv9fhHP0UL95Ws/BNmtoytDEsiTeZ8oukU8l0KHniMEJRc
 3g8cx4Wi96SoY5jS8lGi/2AR6SPcRTWXVL86T+vSpmoRbKb0zo/ts2nptxI3eLpYVj/w
 FqzFL/wUaqdr20BUgaoln08Slc/o2qge3teqTs2+fNq1j2gEdfenuOSoIaRaNxHhcE/s
 DkBJsvCXyHDK9ADYtFm3OaprTO1xTROWzU/ZgSfNf06JW02fWp9QMzZet0Mum6hTgtoh
 Fc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SIxveZre+8NlzeDt7utvIp6t4jf30eHuNZN/6H3+xYM=;
 b=LJKlKgu6aVyd36hFe0X2Vqy+Q5WggTykDoFXB3iwqOYZKcXI7VpZUjxZLpmO8T9AlW
 km/VMs4d7taPo7QRc6B3PXBDFqPBmfgFPykmIT9n9AghqG0QfIkcP+pGn+vMdBOzWll7
 sENLqLSUwV3f8vgKz2VeA6WliCosdumz9kVJcf5vZ+UD77qjl3x/pHFVLNqfNNhWj8Rm
 vpFhrueY5XbSqw5nQgirvlhF14NIf3Rd2UUZSQcjr8ze+gaYZDCyj5rQvDq2kB5VE/Ys
 QiNLZUegTNdf8fi2LMcD24X9wwypxcrwX+d+zRrjDoxBH1bQt+5e1/PjKEmpztIHZkGv
 Nk3Q==
X-Gm-Message-State: ANoB5pkZ+XKY1Xr8cl/c1bFfn+adJhPThStU17tt3HmvadvvkRXYWxCC
 rUPgKs4OMcYnmBSxJsxOEKcfxQ==
X-Google-Smtp-Source: AA0mqf44dGtgY0Fn0SWwzqf0se3Mx899UqVB/FoSnAmso92rYum/9jpk/QGG2+d9IvNjrMSTEBeiXg==
X-Received: by 2002:a05:600c:4f89:b0:3d1:caf1:3f56 with SMTP id
 n9-20020a05600c4f8900b003d1caf13f56mr3647609wmq.9.1670571140865; 
 Thu, 08 Dec 2022 23:32:20 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 13-20020a05600c228d00b003c5571c27a1sm1091746wmf.32.2022.12.08.23.32.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:32:20 -0800 (PST)
Message-ID: <bc17a159-41d9-6627-080a-272464ee05fe@blackwall.org>
Date: Fri, 9 Dec 2022 09:32:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-8-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-8-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 07/14] bridge: mcast: Add a flag for
 user installed source entries
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> There are a few places where the bridge driver differentiates between
> (S, G) entries installed by the kernel (in response to Membership
> Reports) and those installed by user space. One of them is when deleting
> an (S, G) entry corresponding to a source entry that is being deleted.
> 
> While user space cannot currently add a source entry to a (*, G), it can
> add an (S, G) entry that later corresponds to a source entry created by
> the reception of a Membership Report. If this source entry is later
> deleted because its source timer expired or because the (*, G) entry is
> being deleted, the bridge driver will not delete the corresponding (S,
> G) entry if it was added by user space as permanent.
> 
> This is going to be a problem when the ability to install a (*, G) with
> a source list is exposed to user space. In this case, when user space
> installs the (*, G) as permanent, then all the (S, G) entries
> corresponding to its source list will also be installed as permanent.
> When user space deletes the (*, G), all the source entries will be
> deleted and the expectation is that the corresponding (S, G) entries
> will be deleted as well.
> 
> Solve this by introducing a new source entry flag denoting that the
> entry was installed by user space. When the entry is deleted, delete the
> corresponding (S, G) entry even if it was installed by user space as
> permanent, as the flag tells us that it was installed in response to the
> source entry being created.
> 
> The flag will be set in a subsequent patch where source entries are
> created in response to user requests.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_multicast.c | 3 ++-
>  net/bridge/br_private.h   | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index 8432b4ea7f28..48170bd3785e 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -552,7 +552,8 @@ static void br_multicast_fwd_src_remove(struct net_bridge_group_src *src,
>  			continue;
>  
>  		if (p->rt_protocol != RTPROT_KERNEL &&
> -		    (p->flags & MDB_PG_FLAGS_PERMANENT))
> +		    (p->flags & MDB_PG_FLAGS_PERMANENT) &&
> +		    !(src->flags & BR_SGRP_F_USER_ADDED))
>  			break;
>  
>  		if (fastleave)
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index a3db99d79a3d..74f17b56c9eb 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -300,6 +300,7 @@ struct net_bridge_fdb_flush_desc {
>  #define BR_SGRP_F_DELETE	BIT(0)
>  #define BR_SGRP_F_SEND		BIT(1)
>  #define BR_SGRP_F_INSTALLED	BIT(2)
> +#define BR_SGRP_F_USER_ADDED	BIT(3)
>  
>  struct net_bridge_mcast_gc {
>  	struct hlist_node		gc_node;

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

