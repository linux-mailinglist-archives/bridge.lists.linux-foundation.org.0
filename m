Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC94AC775
	for <lists.bridge@lfdr.de>; Mon,  7 Feb 2022 18:30:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E0C781415;
	Mon,  7 Feb 2022 17:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7CZ3b6y-rOf; Mon,  7 Feb 2022 17:30:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B3FFD81402;
	Mon,  7 Feb 2022 17:30:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E7C9C0073;
	Mon,  7 Feb 2022 17:30:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B8DDEC000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 17:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A60A740265
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 17:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLeIM2I-px02 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 17:30:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F127D401F7
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 17:30:51 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id z5so11667329plg.8
 for <bridge@lists.linux-foundation.org>; Mon, 07 Feb 2022 09:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c3UO1TTRZqzSjjDQY9Mwanici3NZ8tfp3AuhU7oMYuA=;
 b=QPHaqlTiE16WocBPSKB+Lh+Ski0qtk/u+htUzq292AHwqkwfgCqNFPoyzWnzp35sr1
 n78XPElUsjVk+gUGFqDap1fb/7cK7w3cKnLfv/E1GfzCkSjYiGDbS4+eZ00YZIqec36r
 55RYOC2HtBq5z7nfTlvxbqnm0+1d/78bCDNOvtUD+Jznz0Pv/3oQaLKY4fJGfaDokHcs
 m3OPmlwR+CTgXREhrBYj5yishPrXwWxcJrEjBiv+ALyN8E2AYBv2GcZorbFEj/MBHjdb
 i4HFCxGCYrfT39BP2j5Ag0bTWXBwepHMjSv7tZCU5oF3rdb1QaapZIZPlDDy/uKn9Kx/
 hOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c3UO1TTRZqzSjjDQY9Mwanici3NZ8tfp3AuhU7oMYuA=;
 b=I2uPkjuk7VjC9jjVPdzqUQZ7iZfn5+bWAQ7QgLK1QF9QIaDBXdSsIM3WI/lmd8w0dd
 oYJl+cQL87lJTc/FgNNqWWRXhR4OTK1DHilqID7kNvYzPfilV0m+LVoU9piaDXCdAdCb
 n1C4hj69BCOlLdJ1Y7M2x5A+e8TqaJoh/4EBqCdxXU8NQhHqYZFoIbeBiVXoUDWR2/76
 bEILxlbgwzhNLNJWSPHkmCM3ox8Hcpu8cAKtATQQxgFQmS6i+NN/RUVfX3zkVOwH5cGg
 wxx9L8LQi6T1u+HTnEHDkgxpbcdIlQ/VA6yoLnRjgYMboEG+x51M2mHHbK5f3mcOw2VM
 FcsQ==
X-Gm-Message-State: AOAM5319BXXoQT8hYv+FfDGVT0jSlxDaA4+CdJDuYjLt6wq9ma8+bkz0
 HksavKBRR5JxXoHz8Q5xFtdtIA==
X-Google-Smtp-Source: ABdhPJybnmCKGPtO8IqhqttCxQi89zitG0at/CJ7JkdPePmN1OOEdHERPm0zX6p8FrnaR53d4x9KXw==
X-Received: by 2002:a17:90a:af97:: with SMTP id
 w23mr11768861pjq.162.1644255051050; 
 Mon, 07 Feb 2022 09:30:51 -0800 (PST)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 38sm8878921pgm.37.2022.02.07.09.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 09:30:50 -0800 (PST)
Date: Mon, 7 Feb 2022 09:30:48 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220207093048.24bb6249@hermes.local>
In-Reply-To: <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
 <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: Add support for
 bridge port in locked mode
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

On Mon,  7 Feb 2022 11:07:39 +0100
Hans Schultz <schultz.hans@gmail.com> wrote:

> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -532,6 +532,7 @@ enum {
>  	IFLA_BRPORT_GROUP_FWD_MASK,
>  	IFLA_BRPORT_NEIGH_SUPPRESS,
>  	IFLA_BRPORT_ISOLATED,
> +	IFLA_BRPORT_LOCKED,
>  	IFLA_BRPORT_BACKUP_PORT,
>  	IFLA_BRPORT_MRP_RING_OPEN,

Adding new element in middle of enum causes them to be renumbered.
That breaks the kernel ABI. Please add only at end.
