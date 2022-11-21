Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4C5631ECE
	for <lists.bridge@lfdr.de>; Mon, 21 Nov 2022 11:53:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B234480C00;
	Mon, 21 Nov 2022 10:53:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B234480C00
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=KOwk43K2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0cLrykIQFth; Mon, 21 Nov 2022 10:53:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4120F80C1E;
	Mon, 21 Nov 2022 10:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4120F80C1E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D1C7BC007B;
	Mon, 21 Nov 2022 10:53:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32B5CC002D
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 10:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8D1D80B8D
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 10:53:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8D1D80B8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOQvdXL-0rnO for <bridge@lists.linux-foundation.org>;
 Mon, 21 Nov 2022 10:53:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCEF080B6E
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CCEF080B6E
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 10:53:30 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id me22so10982852ejb.8
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 02:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oVR9zxWFI/yiTfyZ4zmDueQDkqj32nHPs9Uh0PG4vPE=;
 b=KOwk43K2prxMCTWU5zSDoD7OjmzMBpZe59DoyncDt6F+Tc+Qtsvgf+G5R0i17IT+Nj
 3gvfVY0T0UI3OCVP31Cq8Ar0xgsEjJD4bJn5jEFhuvh0dEd7Z0nFgvwKuA6na0brxsD4
 YoLyr+iMi5GVBqKJsZYB1KlyEU41+29Va65MF/LNUJq3dEJA2A0PSFCdO1UnYKiKH8TK
 A1o6q7JMNuSS3kDcOWAHOUt3HLy6qmD3lSiknCa1sZtShQ0PMymnlJxVg1/gfvzGsVIs
 kCydES3mx6bQxzdRK2QcZgTLQLu68suH5cg2TxcFPmrtS7oFhHTx4ZIoeyyF9xHVJA7E
 1yMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oVR9zxWFI/yiTfyZ4zmDueQDkqj32nHPs9Uh0PG4vPE=;
 b=xh5PHMLsDDCggsHdCwOzXJV4GZIqYsS0pg90HEvXYbeGpltkp16u4Nc0eX2zvYgoGh
 Qa1XfTSXBbElIDbTnWcoa1P5ObpUISf8BdPfs88RSS/mnse6JFfH9WPUTYdTjgOaPFzI
 wNlT9QTytZYmpFbh9AJBPhQfZss8gVUrEvrRi6gJE2JuRYNKr+PmOaFnJEHDrwP/VeY+
 IlR8INsxVqw84Hg47CVcoZpREBYDzUI+/VipDwUbZz5sQS0ZdmONm4E3Po5GcuN6Rgwd
 fCxvU2P/YvolK69LgxBUiOTamJkXuGqiVls4P/RBgRmGi7KZqiJ6jfn0Vq797mV/8pJ6
 CYQQ==
X-Gm-Message-State: ANoB5pkKjJbwbzo5+Q8o8Eu5AF1Zr/z9MKaLryOTs8ezxdrLTGIpIDc9
 eACrLD+yuvUAc2j58MH1oRSxDw==
X-Google-Smtp-Source: AA0mqf70BnFvfvb0IuSIgQsK2SzIyUkBrZLyuZoXrSWjPOnvQcHmbXrvzYpC3wtlID8hDdv5F+6kMg==
X-Received: by 2002:a17:906:81c4:b0:78d:9858:e538 with SMTP id
 e4-20020a17090681c400b0078d9858e538mr15153542ejx.502.1669028008557; 
 Mon, 21 Nov 2022 02:53:28 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 i17-20020aa7c9d1000000b004638ba0ea96sm4962888edt.97.2022.11.21.02.53.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Nov 2022 02:53:25 -0800 (PST)
Message-ID: <a153b239-26f4-9813-beb8-bf74d19808ef@blackwall.org>
Date: Mon, 21 Nov 2022 12:53:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
References: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: linux-nfs@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Jeff Layton <jlayton@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Eric Dumazet <edumazet@google.com>, Chuck Lever <chuck.lever@oracle.com>,
 Anna Schumaker <anna@kernel.org>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 1/5] kobject: make kobject_get_ownership() take
 a constant kobject *
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

On 21/11/2022 11:46, Greg Kroah-Hartman wrote:
> The call, kobject_get_ownership(), does not modify the kobject passed
> into it, so make it const.  This propagates down into the kobj_type
> function callbacks so make the kobject passed into them also const,
> ensuring that nothing in the kobject is being changed here.
> 
> This helps make it more obvious what calls and callbacks do, and do not,
> modify structures passed to them.
> 
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Trond Myklebust <trond.myklebust@hammerspace.com>
> Cc: Anna Schumaker <anna@kernel.org>
> Cc: Roopa Prabhu <roopa@nvidia.com>
> Cc: Nikolay Aleksandrov <razor@blackwall.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: Jeff Layton <jlayton@kernel.org>
> Cc: linux-nfs@vger.kernel.org
> Cc: bridge@lists.linux-foundation.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/base/class.c    | 2 +-
>  drivers/base/core.c     | 8 ++++----
>  fs/nfs/sysfs.c          | 4 ++--
>  include/linux/kobject.h | 8 ++++----
>  lib/kobject.c           | 4 ++--
>  net/bridge/br_if.c      | 2 +-
>  net/core/net-sysfs.c    | 8 ++++----
>  net/sunrpc/sysfs.c      | 8 ++++----
>  8 files changed, 22 insertions(+), 22 deletions(-)
> 

For the bridge:
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


