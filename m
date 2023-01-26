Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6522D67D868
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 23:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D85C408EA;
	Thu, 26 Jan 2023 22:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D85C408EA
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=EnSfpGW2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWh42QKzGcmV; Thu, 26 Jan 2023 22:32:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id ECDE4408D1;
	Thu, 26 Jan 2023 22:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECDE4408D1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C01DC007C;
	Thu, 26 Jan 2023 22:32:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A5E1C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8D4E60E44
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8D4E60E44
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=EnSfpGW2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YCBvf1fB-Pyv for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 22:32:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D467960E24
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D467960E24
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:32:17 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id y19so3232687edc.2
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 14:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CASC8qHfi6FSsKB7UllTORAfQ+O2NNzwp78HdWbLEwg=;
 b=EnSfpGW2O17/2EGNuqfi0V1fIaK2mHROkGaBzNPIIZ3N06ToM4KKvlJMDAZ8Ermmw6
 ++8WOhuiffljKnWiysqe639ZQwgq8EKSH5K2eH+psEOQBp1Ib0Jq4vxhr4vylFekvF/y
 Fbf5K1gHu+DlnWzh5nugZNqNgE9KvBJXKU2M4JQn0/SKREWTCg+NLF07C/sngK2gLSLN
 4KPk//inZsPdUK2qc2jLxs6X/lHPhiOW+093tRMntXEqJ3GZQSXbZ1ZwmDEMtC5+aYsC
 31vm/4FBXQEJBPivt4Yd9j8j0ZH9BJMD1qkmCOE5nvaw3ci7g6oc/Qw6T8xLB8fpqGln
 2pcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CASC8qHfi6FSsKB7UllTORAfQ+O2NNzwp78HdWbLEwg=;
 b=CuxNszVk1aulnXdWfUwywYDCoxTtrspjUPTSNNUv9/dvTXwASg8+s18xX6hiYpAA8n
 CjjIeZ+YQ3pvpuXkbLUMLBnaxU6qJ2pdDnEUD21LXEBC4PLPBd1WUxkugMPEYUHpb4ti
 VobnIM8URhhJM/X2qo4nR2SXgKTyVQkxuVy4ZYrKEg8FsL5TxLDpqIfAiyT1Q7LlCRfm
 aTu9xA45lSr9MmekHIBWnbLKS8qDzKZImT46iN3xXC+MEmRrdU/pMnMhS5L9UnC7W2NR
 XwmTI13dokqhCzq7G4ie3nID/uVm5gegwnPG8LKz1hspkoBnfRSgsl+QfIrxTKFThBMi
 LNrw==
X-Gm-Message-State: AFqh2koRk2I00BLlpPbMb6DkFperQi5spWRykD4tyIHvSuCHXGH82F6g
 nLLLfxFHGM55lYcFxIU/CSo=
X-Google-Smtp-Source: AMrXdXuE7Zq9NVXL13vqsoSzxrZPf476ni0f0ILRmTiVHpqJZf1ZPxJbRyT64+Z8KzRnVGHS6GddmA==
X-Received: by 2002:a05:6402:4305:b0:49b:4711:f4b4 with SMTP id
 m5-20020a056402430500b0049b4711f4b4mr47470164edc.0.1674772335876; 
 Thu, 26 Jan 2023 14:32:15 -0800 (PST)
Received: from skbuf ([188.27.185.224]) by smtp.gmail.com with ESMTPSA id
 j8-20020a05640211c800b0048ebe118a46sm1356735edw.77.2023.01.26.14.32.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jan 2023 14:32:15 -0800 (PST)
Date: Fri, 27 Jan 2023 00:32:13 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230126223213.riq6i2gdztwuinwi@skbuf>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] netlink: provide an ability to set
 default extack message
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

On Thu, Jan 26, 2023 at 09:15:03PM +0200, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> In netdev common pattern, xxtack pointer is forwarded to the drivers
                            ~~~~~~
                            extack

> to be filled with error message. However, the caller can easily
> overwrite the filled message.
> 
> Instead of adding multiple "if (!extack->_msg)" checks before any
> NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> add this check to common code.
> 
> [1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---

I would somewhat prefer not doing this, and instead introducing a new
NL_SET_ERR_MSG_WEAK() of sorts.

The reason has to do with the fact that an extack is sometimes also
used to convey warnings rather than hard errors, for example right here
in net/dsa/slave.c:

	if (err == -EOPNOTSUPP) {
		if (extack && !extack->_msg)
			NL_SET_ERR_MSG_MOD(extack,
					   "Offloading not supported");
		NL_SET_ERR_MSG_MOD(extack,
				   "Offloading not supported");
		err = 0;
	}

Imagine (not the case here) that below such a "warning extack" lies
something like this:

	if (arg > range) {
		NL_SET_ERR_MSG_MOD(extack, "Argument outside expected range");
		return -ERANGE;
	}

What you'll get is:

Error: Offloading not supported (error code -ERANGE).

whereas before, we relied on any NL_SET_ERR_MSG_MOD() call to overwrite
the "warning" extack, and that to only be shown on error code 0.

Also, if we make this change this way, there's no going back (just like
there's no going back from kfree(NULL), rtnl_lock() and others).
