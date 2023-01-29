Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C1A67FDC6
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 10:11:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3BFF60C1C;
	Sun, 29 Jan 2023 09:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3BFF60C1C
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=yyGO3uOF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9B2Fuv6S1DmJ; Sun, 29 Jan 2023 09:11:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6FB4360AD0;
	Sun, 29 Jan 2023 09:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FB4360AD0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3F460C0078;
	Sun, 29 Jan 2023 09:11:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0C50C0032
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8549E41746
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8549E41746
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=yyGO3uOF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0nol9b-5mFOi for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 09:11:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0C474174B
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0C474174B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:11:16 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id m2so23668764ejb.8
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 01:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5DqoWeFdaAExcw/eTh3jUffnj1IxKEYPwBICHQibxi8=;
 b=yyGO3uOFwSeFl/0LFIhGivE9cySVh+QDLHFOBbpJshQh5NA0e5WOKnvYvZbylAdteH
 tqGbfkoQWqfGnv/PTsCvuvYqcxstsUD9jAtWmv2szRrVBHY38RPHDDPaVVT413idzNmG
 NV4Z1bzdDPbfRPZs/v0KeejcJY98o+hy23QjH+tsgDJnHL6ChUK26dEraYjebl4eYsVT
 qVHXLe5j/WosansRRAhQBQvfBlfJbpXBKkuwBi1sPohePvbk3cZTlssXX7mnOvm+s8Wn
 lc9Z+O4hmCElPya/llp7PWaDZ5XlIJVzTTt2rGYknFZUcxJ3Lye4zRdT3KXhy+16ILFk
 3MKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5DqoWeFdaAExcw/eTh3jUffnj1IxKEYPwBICHQibxi8=;
 b=0ILoSc4l4kCz1FIjHcrGJLOOjVXv6KwCku6kKmroV6JDkfsy4lhzErlumBDIbKBHBi
 qnrCWoXN8S8R7o9eKKSJeTql0wYt2DeoXTNTsnWdRiLt9IZieSc6P3MqocG+yXS/Pg6F
 p8yUoQnfB1iO1x9dK4UQdCYfSANo8NYExspyydvGW9BFH9EVlCcwgQ4qD+Afh71P7mAN
 xa0B7+Zi7ZJvSmGE4oAMooGgLHo45RaU3ywHY/CcZUNe6aIYeR3qgvl6Qy3qc2nDllFf
 TEe0J8qDAlbGA9DCs/0H84ZVT6/P17/d6Xp6n5Wu8qRRVuimfa+55AaYn/MsWSOlmY01
 4t9w==
X-Gm-Message-State: AO0yUKXk5orRsbnnFT0h46B1s+CvhJnxiP36RL5Y86LyAvKSpCz6tcl2
 /dIL8s/9GTwd07VYgm0DoaKXWA==
X-Google-Smtp-Source: AK7set88SWSJDhodZz8jeG8LiCzfzmQpb3dSprkVCMUChmLArEyHtPZlcssUedtNsYGNYGbicFFUBA==
X-Received: by 2002:a17:906:475a:b0:883:3661:97e5 with SMTP id
 j26-20020a170906475a00b00883366197e5mr4674692ejs.50.1674983474777; 
 Sun, 29 Jan 2023 01:11:14 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 o5-20020a17090637c500b007bff9fb211fsm5134307ejc.57.2023.01.29.01.11.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 01:11:14 -0800 (PST)
Message-ID: <5101f3bc-fc14-b306-15a2-37b66661ba88@blackwall.org>
Date: Sun, 29 Jan 2023 11:11:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <9d183b709841456456c8a541a963eeb1f6ee2d1f.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <9d183b709841456456c8a541a963eeb1f6ee2d1f.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 05/16] net: bridge: Change a cleanup
 in br_multicast_new_port_group() to goto
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
> This function is getting more to clean up in the following patches.
> Structuring the cleanups in one labeled block will allow reusing the same
> cleanup from several places.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_multicast.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


