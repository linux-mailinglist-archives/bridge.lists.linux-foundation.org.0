Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F046E67FE02
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:08:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B2B7400F8;
	Sun, 29 Jan 2023 10:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B2B7400F8
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=dK75uQOO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcy6Zzgab0g1; Sun, 29 Jan 2023 10:08:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 984964032E;
	Sun, 29 Jan 2023 10:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 984964032E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FB0BC007C;
	Sun, 29 Jan 2023 10:08:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 97002C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 714BC4032E
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 714BC4032E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLT68Qu3HdZ6 for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:08:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC784400F8
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC784400F8
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:08:03 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id mf7so5568740ejc.6
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DqgkF38GQImRFpT8l0bOcZbRmQDjRs1Al/kqBAXFHTo=;
 b=dK75uQOO1cNpYPDE6GEY6mNreQC86/sFydc4f1X2NgUKMgHZLZeeQr3Jtc12nOZOav
 1OYl6Sj+zvONqzYphvS5TbyxQKXioaec7SxOB+rqUBkDzuXFtazvcR9a7goCUHYn5DHD
 UvhZGthalHhwAPjSr7rgxn2H2EOIhelGXhpxuZ/3fgEZfzlsoEC9LD1GxySQJ9LYSL+J
 dWAnrZeBlj9Lby95PGzc1auMe0Y2YcZ5DgchS8qjRmdHyjm4Mi3ieGt+Em/Kdfl58SLW
 bIm4vFUaWGNAgEFMS9zTg3x2OiYhQhj9f9LYJbxw8r1AZuUnI4CQFNQO/6nJWA+nFl5c
 xtRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DqgkF38GQImRFpT8l0bOcZbRmQDjRs1Al/kqBAXFHTo=;
 b=C4Q+TW10VXJfYXMzpReiy/FNkbdkIOzfGl/gCGywrXTb+OHnmET5gZV4rCYS8UDXvc
 tQ7Dk6HW9F2SDepBq0KPrJI6iqVZ+5JUJpGnBV/VoAOgS4V1LgEJLkNU5qWEu0Pb4j1i
 sBjEToFADQ6tjeGhBvjrFJLsbqyLNMPT7Jv1WJArmwIoNhfRkDc0AG/3S3hQBLp7d7b+
 n0PXPM6Uhj2+FtbcXAlp0OrzMMdDmDcYVIWOvl7QiUTTpzLNvVODxYoUqK6Gtg5AGbQ5
 iBTLZl8/eFMDZjzqVTC+Ng+h8YSjLyqYNvJJ61Rw13YOCDFy9unMficBGRopDJAm+8vC
 rFwg==
X-Gm-Message-State: AO0yUKXanxmkCL3e0xxOHhN+aIEhuq29tcCyYAFpYJfyHYsim7vJtyou
 87in5CnppopeCwksOqCNEu5NLA==
X-Google-Smtp-Source: AK7set8JJeVkdlBJrd5tT7nF98WD7Uwzkg8BRvgtYDKfvwWHSSPzcE6hzbjkGzLnDtKef69gH9uBKQ==
X-Received: by 2002:a17:906:cc8a:b0:878:72d0:2817 with SMTP id
 oq10-20020a170906cc8a00b0087872d02817mr11979080ejb.29.1674986882144; 
 Sun, 29 Jan 2023 02:08:02 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 x10-20020a170906710a00b0088842b00241sm100126ejj.114.2023.01.29.02.08.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:08:01 -0800 (PST)
Message-ID: <feafb8fa-d0dc-57b6-d126-4944b2240775@blackwall.org>
Date: Sun, 29 Jan 2023 12:08:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <c3f7ba006ca61292dba6d6389f30a38a70731a8e.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <c3f7ba006ca61292dba6d6389f30a38a70731a8e.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 09/16] selftests: forwarding: Move
 IGMP- and MLD-related functions to lib
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
> These functions will be helpful for other testsuites as well. Extract them
> to a common place.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  .../selftests/net/forwarding/bridge_mdb.sh    | 49 -------------------
>  tools/testing/selftests/net/forwarding/lib.sh | 49 +++++++++++++++++++
>  2 files changed, 49 insertions(+), 49 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


