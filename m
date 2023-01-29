Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC3F67FE17
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:12:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEA27401CD;
	Sun, 29 Jan 2023 10:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA27401CD
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=3Rm/xLsm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GsPu0tuGFju5; Sun, 29 Jan 2023 10:12:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6AE07414DE;
	Sun, 29 Jan 2023 10:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AE07414DE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2184CC007C;
	Sun, 29 Jan 2023 10:12:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54980C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:12:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FA6E8146B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FA6E8146B
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=3Rm/xLsm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGeySun9E_a3 for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:12:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F2418146A
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F2418146A
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:12:51 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id kt14so24355027ejc.3
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4573WNrB5FF9KwFCy2MksCXmBgaLnWObBAuKFtrdwIo=;
 b=3Rm/xLsmR+ZsqU2licFREtxpDXVf4RkBEpthTk0ryZYfOrooi4j/eSOMdZ+sfvvr3w
 rKTacinZoadKM1PSA6WWWU9GTe+5ckkpopkFhZmwdn0o2TO6Vd+lX9xQVHzSujzCqgpZ
 vLrhwtPqhTtM0BLS2fUAHx7F88LFQr1sxZasR0qNehko8VJ/au9lg7Yke5dFdhka6RBO
 nbE2VxjuMPd7/RUU2rljrBQJ+pSfMrDuNTrMdeaJCE05/9iGQg4JxZqHS0JxQplKLr5/
 WDcT+JTvJ+JaC+ltsJsDHTNqJRDz9C3q/VD4ddkxI3G6es12RkYaG2SSzp0NIJK5xmmV
 pPYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4573WNrB5FF9KwFCy2MksCXmBgaLnWObBAuKFtrdwIo=;
 b=oVs+oPQY2oyD5sXHimeIyOr3T1Co7Gthd18PAuEtJYqVmdI5UScjXCMbfKOeocZ6ts
 H8/6Hzwh72McdeQ11pnH12IVBNAsdcbbt9zj3ALZzeJ47v+XfPDn3BxwEC+ewEqGF/iU
 itF/jHa46m1WL/sAJB8H2QdSkrLMCvbxEr9F35qdblFMv5gbNGUI+5KVpCevm+xQOlDm
 0c/mBTv+uAXa2qiZdYAjEeCZNhl04pw4rTYC3BaARM/K5pMr6mM+Q5U920xVLd7N+z1H
 IbMwMnhz1IePEYH7ukxmVNt0kJ3DNkVNcf3Fka5t51eK1vtYctRd41AifjcQrFpioie8
 ijcw==
X-Gm-Message-State: AFqh2krbvYQyorcaGJCRzlRbBiZWIKwgMkk1B3LpevF1+V+p0dormpe7
 yJIuXVpZBdW9+4PtpPH5jd0yGQ==
X-Google-Smtp-Source: AMrXdXs1zy4W8Ktd34w5MoSR5ueW6FCh8fcWLUMcFtP4UzBvKef+N3nTzhVSXF/Oj9jDg/w/e7e87A==
X-Received: by 2002:a17:906:8d86:b0:870:dceb:696d with SMTP id
 ry6-20020a1709068d8600b00870dceb696dmr53919292ejc.43.1674987169706; 
 Sun, 29 Jan 2023 02:12:49 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 n21-20020a170906689500b00877961fbaffsm5271663ejr.15.2023.01.29.02.12.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:12:49 -0800 (PST)
Message-ID: <e38b1c50-2e6a-b2b4-47d0-3ebc707b56a3@blackwall.org>
Date: Sun, 29 Jan 2023 12:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <b3e7988954d5db878b8e2c97638646b25ab0350c.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <b3e7988954d5db878b8e2c97638646b25ab0350c.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 16/16] selftests: forwarding:
 bridge_mdb_max: Add a new selftest
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
> Add a suite covering mcast_n_groups and mcast_max_groups bridge features.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
>  .../testing/selftests/net/forwarding/Makefile |   1 +
>  .../net/forwarding/bridge_mdb_max.sh          | 970 ++++++++++++++++++
>  2 files changed, 971 insertions(+)
>  create mode 100755 tools/testing/selftests/net/forwarding/bridge_mdb_max.sh
> 

Nice test coverage!
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

