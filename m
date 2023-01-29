Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE91C67FE16
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:11:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69FB4813F1;
	Sun, 29 Jan 2023 10:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69FB4813F1
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=rpYLywZn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-8hxThScBHI; Sun, 29 Jan 2023 10:11:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2128F813EE;
	Sun, 29 Jan 2023 10:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2128F813EE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE2F7C007C;
	Sun, 29 Jan 2023 10:11:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B440C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29926813EE
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29926813EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2pwT1PABHuRg for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:11:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78DDD81374
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78DDD81374
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:11:52 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id fi26so8365961edb.7
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XSjzv9oX4nqKyAAaAAV6s7LVl26vtY1MqzcjjUEwoXU=;
 b=rpYLywZnaMlJmLu9mHyM5dMzeRkzlOGR3mtnEM2wXnEr2w/x7OFBE6vTHX5mq8mmjA
 Cz47b6rzEg1PM+w7yCLri9Q2sJkbq906NkgQGQlrR6TWgfdsnsfisP1309pfRM0Xmwx4
 uEYVhUP93/RQnfNzrm0Ole4HSMaPb3G5nIqMmNUpeYJJm3I9Hn3YdAMI1K8vAczrO1d2
 FgeL699BFqxbXR6maryA7gMtqSwfMSIfpF1iwQ9UaX30Bj7FYvtPca4DM6LZFuqh3jDj
 mxeGzBxK8+Sl2lHUGFpYPSwE7xC878YmG5QuN9hehgpjp/cjaUnTYTJ9tu8khtus/lFo
 Y/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XSjzv9oX4nqKyAAaAAV6s7LVl26vtY1MqzcjjUEwoXU=;
 b=tVF8cbxfU8s+EpLPOVrXpsZuUOsZmQS1rpaICQ89g4A/wZgpewefYtAZ6ezg7U0DXb
 dbcNLQGy81zLh1QOUAtGRQlOAJOm/F7Jtq4mLZAgid9t7MIrAPu4tFvQoBplPohhhDXY
 DwnG+zFOwBaFeYprJLGQyy8GeC7cFFijNz8qXi2ukPLAaX1/DA6ukSuxWkHh+tBfbgyU
 rkwqsnx9JA/jB0/MzlLVzis27vyjNEoGflAMiz5TvbCcMB8Qduz/U99x9zRFMZvpytaK
 10iodRctwoaDd0Be6zuVXaHudUw3Wqyvo7z8mmSkvOhfU4nx0mfmnOb5RQBJGeWAWMBY
 +LNw==
X-Gm-Message-State: AFqh2kqVd0Ks4KeXyCT4g+aYsOG1emz4LkAVB2Equk7pTTynAPWFZEL4
 YNmLIr4uJpEs5gaFYVLCxUvKJw==
X-Google-Smtp-Source: AMrXdXtGi7F7vkjwjzivED/4lcZNYtieF9vMDZyzU3iQM2/WoswJGnj2imIdadSNo1M3bSqTTL1vfw==
X-Received: by 2002:a05:6402:2419:b0:49d:2a42:b8c8 with SMTP id
 t25-20020a056402241900b0049d2a42b8c8mr52539933eda.26.1674987110665; 
 Sun, 29 Jan 2023 02:11:50 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 h16-20020a50ed90000000b0049ef04ad502sm5070333edr.40.2023.01.29.02.11.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:11:50 -0800 (PST)
Message-ID: <dc268a07-7b85-6483-da2b-edc5a8f5f3b8@blackwall.org>
Date: Sun, 29 Jan 2023 12:11:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <ade8275e8b812248effbfe5249d0116763340b3d.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ade8275e8b812248effbfe5249d0116763340b3d.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 15/16] selftests: forwarding: lib: Add
 helpers to build IGMP/MLD leave packets
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
> The testsuite that checks for mcast_max_groups functionality will need to
> wipe the added groups as well. Add helpers to build an IGMP or MLD packets
> announcing that host is leaving a given group.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/lib.sh | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


