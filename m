Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C4167FE0D
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:09:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94BCB40236;
	Sun, 29 Jan 2023 10:09:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94BCB40236
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=gcT8L98x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OiF3xTJNPcpr; Sun, 29 Jan 2023 10:09:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3590140453;
	Sun, 29 Jan 2023 10:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3590140453
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CFE19C007C;
	Sun, 29 Jan 2023 10:09:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8B77FC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65F4781345
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65F4781345
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=gcT8L98x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIlpDCRvbP7r for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:09:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0353A8133A
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0353A8133A
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:09:50 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id p26so13080386ejx.13
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4CsT+NMYktzeydFPAHImkzr8929Eu6j85d9i8GMD/Zk=;
 b=gcT8L98xIM2tz4DFl9Z7r2oIUKwwC/eZt8BCs7XuG9aT99dv1SgOcGFHnIXKJY/mAD
 qNPHKq0iQThy10UVMpv11YjuM1n4xbpFDccX8MoOPCz+ptqOx8uEiKji623v86GMAWOA
 TzuYCaAbnEmkWGvSUsWB9conRzTdgDTtZc2OzowO+AYqhrMvVNugUwitCrJXTp5pwA9c
 C8MR+unp1bAdjRcSj6XiBxu1dfoqNCsMPafoM8HYVFXofxgTD/ZxOmfY/j9kxonPCeGL
 WjXX2x7+U/HsbID1xGMDN4dMZGhbE6vF7fQcqwRkRlMyOp80m0IfJZwo9svh+JDZzIIG
 plWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4CsT+NMYktzeydFPAHImkzr8929Eu6j85d9i8GMD/Zk=;
 b=GCBdmKIndwFV9/RKuCV1p4ctLjcs8A2FWMD/kVX0VMT8HrLp1CIbNLj2JGnBw6k0mh
 X3LPqv15aBk9k0PpwPer/2o4EFkrr9SesEoL8pHLTfxD6U48RmWdCyUb0+tZuvzd9B4/
 efXM71MfwKDtGkQRTuVz1QB7kspBYxO6yk+LvawPhRzvZJEoL2Fe5YRpsd62CoqrNzxN
 6tvheNZp5vnUWlBRl3sHZ/qei7Ji//4BURkhsaKRZuyeKKxdgnvu7KcZE8xrCNSkbxNi
 q5Vd213gP9rq5BzwXfnMa0gqIU7pBz4BawtrtMgZjiCvE550d10rOWuBdeiTvwTdKJR8
 0B9Q==
X-Gm-Message-State: AO0yUKUiBC1WGVGtzvgozj+B8LanJdvSsFIEcJFDopp1Oo7pJkg2hT4t
 fHn2MOuxRy3q72mwrDn0r9dHPA==
X-Google-Smtp-Source: AK7set91jVdgKfpsBHwRb75uJfTU4zF4sKaDS1QHpXUYyfDwAC5zCwt7nkYS6fzT3G1pRwc7b7wRxw==
X-Received: by 2002:a17:906:3da:b0:887:d0e6:fa24 with SMTP id
 c26-20020a17090603da00b00887d0e6fa24mr751395eja.76.1674986989208; 
 Sun, 29 Jan 2023 02:09:49 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 gy13-20020a170906f24d00b008787edd2f74sm117317ejb.50.2023.01.29.02.09.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:09:48 -0800 (PST)
Message-ID: <273f85f3-0eee-467e-29bb-018b7c0b8fd6@blackwall.org>
Date: Sun, 29 Jan 2023 12:09:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <cc8762f78b2468f9b48288235470bd606fddbd96.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <cc8762f78b2468f9b48288235470bd606fddbd96.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 11/16] selftests: forwarding: lib: Add
 helpers for IP address handling
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
> In order to generate IGMPv3 and MLDv2 packets on the fly, we will need
> helpers to expand IPv4 and IPv6 addresses given as parameters in
> mausezahn payload notation. Add helpers that do it.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/lib.sh | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
