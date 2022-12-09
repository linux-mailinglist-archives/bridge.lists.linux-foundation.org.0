Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCA2647E8F
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:30:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0744281A81;
	Fri,  9 Dec 2022 07:30:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0744281A81
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=VJTtQyFx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NytqcInpJ0X1; Fri,  9 Dec 2022 07:30:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6BC5981A6A;
	Fri,  9 Dec 2022 07:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BC5981A6A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1564DC007C;
	Fri,  9 Dec 2022 07:30:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14336C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E78DD4014B
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E78DD4014B
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=VJTtQyFx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kq6nE9gidZu2 for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:29:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ED104014A
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6ED104014A
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:29:57 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id o15so2575776wmr.4
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=I/NiR04BbzcUV//md2hUQO/dnN6Z7scyidQgiE5B2hg=;
 b=VJTtQyFx7jDB5CrXOwLXWeqcAcBabtG5fa63nVOt4TWI9j7o3YzB+csFGOP/omIVBg
 cYHSkr9dmk0R1su2IXweF0YNvv4WbGvLjIpNAHwEK6LSISOBPx7B1IRiLxl2zaMou9pC
 G1pCmcnwlMl6zRzZsmCLbSUldc3x0POKJ86BjYHZ9X/+z46ngn3Jqm1NCRiM3ahlIrGZ
 OsrovOfG9d7bA5qrlMCD7KqaTcYoyRAi0UDJl/faqN7JZe1ruoc5Cf2/xQZQ20SwSmL4
 ix8t8192Bdkcoy2/BFKQtbTjlsGUs/ckoiPZd+9uaoiqEViqbKJJOQD6A04mJw4TT4Fk
 88wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=I/NiR04BbzcUV//md2hUQO/dnN6Z7scyidQgiE5B2hg=;
 b=W9hocx88yLsaEyZm0mqnAURCkCkZhntRaCCX0uf9RrgxeD41B9i58wf8Zqav6Eranj
 ZF907xfalkwbfhx4fUecA/9IIWQkh3cg/ipVnYMm8KNzIjtLCstBmJJUZwC5jvEcPRwW
 XMYC2418wrPCOF5gtFr3/Y6aD5A1yadHWNKUGR3jnUJTorrXHpr3PvLuVZo1ORhhuIH3
 qKo0+ftl64TeZNrV4xlSsaEeNb15gnN3RA4D/DIVCKAI3rR9DyiL9kWZEZpRzZV5vKqt
 urgft/3YZQ3I+g4Z6SPMx3r+jw3UqIz0mxCpKfFv9MV2oAOZarxQAJMXlJdQATsBGVSc
 QC7A==
X-Gm-Message-State: ANoB5pmDgDP0qSJPe1ezYBwCqQ9V8UVC6TNKT4uwQuScuHDBVenNt/H8
 TgDCByxuoVKfljEbpxYq8I6mdg==
X-Google-Smtp-Source: AA0mqf5AsMPOEKnvglKk0OZyqrNakZg2l5tDPP01HZkZVjdZ0uW8vq3vIO7MlMp178xdE3455TuCUg==
X-Received: by 2002:a05:600c:3549:b0:3c6:e61e:ae8c with SMTP id
 i9-20020a05600c354900b003c6e61eae8cmr4879963wmq.28.1670570995254; 
 Thu, 08 Dec 2022 23:29:55 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 s18-20020a5d5112000000b0024207478de3sm620832wrt.93.2022.12.08.23.29.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:29:54 -0800 (PST)
Message-ID: <9246d282-2691-d1c4-c1cc-fe3f0461e330@blackwall.org>
Date: Fri, 9 Dec 2022 09:29:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 02/14] bridge: mcast: Split (*,
 G) and (S, G) addition into different functions
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
> When the bridge is using IGMP version 3 or MLD version 2, it handles the
> addition of (*, G) and (S, G) entries differently.
> 
> When a new (S, G) port group entry is added, all the (*, G) EXCLUDE
> ports need to be added to the port group of the new entry. Similarly,
> when a new (*, G) EXCLUDE port group entry is added, the port needs to
> be added to the port group of all the matching (S, G) entries.
> 
> Subsequent patches will create more differences between both entry
> types. Namely, filter mode and source list can only be specified for (*,
> G) entries.
> 
> Given the current and future differences between both entry types,
> handle the addition of each entry type in a different function, thereby
> avoiding the creation of one complex function.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 145 +++++++++++++++++++++++++++++---------------
>  1 file changed, 96 insertions(+), 49 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


