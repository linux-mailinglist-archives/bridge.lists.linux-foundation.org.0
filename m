Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3816F67FDC0
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 10:09:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A11C4044D;
	Sun, 29 Jan 2023 09:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A11C4044D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=77HUeHrM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5pDHUDlRJE8; Sun, 29 Jan 2023 09:09:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DEBC640236;
	Sun, 29 Jan 2023 09:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEBC640236
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F18DC0078;
	Sun, 29 Jan 2023 09:09:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 001CDC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C122781BC6
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:09:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C122781BC6
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=77HUeHrM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ouUPyv0YLa1Z for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 09:09:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BF4F81BBD
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BF4F81BBD
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:09:48 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id hx15so4582949ejc.11
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 01:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ME2PdeGInkXM+3g9j7aQWR1xp7lA94fP3xofwv1Necc=;
 b=77HUeHrM1uiM1r7VcC24466iV7eBJUjFbnVCZ43EG1qSi652M0YPNBGu51BMoN44G9
 JQtFcEn55+C3rZD2DRq2TNQ+KkeMATbVoHXdP4PLvVSQxo3YTu94lXGPsTzYGV2WD0id
 azJkBo4KxDAwQSsY+73bkhFey1xiiz+CnQgi95FVOfXujsh6hgP4J/kDTFNNUp+/ATM6
 pUsZbG3vigaoxQJpV9ODQXi2ddxkzO3SEixGLvMlOK+eweGKJ2v+Iw2Ut4XvltldZo0u
 L44UiNmjTL+44Rim7jOn85a3kw60Pij3uduhj3gSGtVrvi7Ad52nOkHyLLGuBj7p98SU
 m3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ME2PdeGInkXM+3g9j7aQWR1xp7lA94fP3xofwv1Necc=;
 b=wPlqEwt+66MEKF39NO0yKKtOIjPR3J17oN7rkmj268KLXFTwlCWG22XITrUEmWmdhT
 aXr/whwv5F2BrIcmgwt/GnGNJyo9uHZJ4dqm9qxlW04Nq0YuCWS6yKAJ/+GhGDh/QCSw
 G2Gu6Wqw3o3DJmaxjz+aMQK005S3sQ8iOrPRLOGjISF71gpySuUkmqgSMC1rDDGco5HN
 PUTzzamq9R2rRfZtPRR7Q6lyd4L2Za0F2xi7t+WWR/EuLAn9zYrJElWd4zMAR2KZ22y2
 H7BabFFLaQMGIAxkfxBaGaoZU8olNDZuUuL+nzA8eHB+/PBTBY2GPZS5out/DtZ/oBrJ
 JdCg==
X-Gm-Message-State: AO0yUKXcFWSUue79nCnyuynTOV4E/lAU++8qrMFXUwD8W6iwX0apjO9h
 +VWfFzADfUdKZgjS5XRhqBMSQw==
X-Google-Smtp-Source: AK7set93Yo3IZ+0Ty6qfT0TAqNfW/ETT7xdw7JqJC6jBhdknqBHm5DeSfySbmcHCFGeWkPH0jVtc7A==
X-Received: by 2002:a17:906:2409:b0:884:d15e:10f0 with SMTP id
 z9-20020a170906240900b00884d15e10f0mr3129382eja.23.1674983386309; 
 Sun, 29 Jan 2023 01:09:46 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 s4-20020a1709062ec400b0087da4172178sm3025054eji.44.2023.01.29.01.09.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 01:09:46 -0800 (PST)
Message-ID: <3430cc65-03f6-c2a7-fd6e-2611f084b434@blackwall.org>
Date: Sun, 29 Jan 2023 11:09:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <e22dda1dc7f1211428f6504c86ba2cedb8fdcca0.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <e22dda1dc7f1211428f6504c86ba2cedb8fdcca0.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 02/16] net: bridge: Add extack to
 br_multicast_new_port_group()
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

On 26/01/2023 19:01, Petr Machata wrote:
> Make it possible to set an extack in br_multicast_new_port_group().
> Eventually, this function will check for per-port and per-port-vlan
> MDB maximums, and will use the extack to communicate the reason for
> the bounce.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c       | 5 +++--
>  net/bridge/br_multicast.c | 5 +++--
>  net/bridge/br_private.h   | 3 ++-
>  3 files changed, 8 insertions(+), 5 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

