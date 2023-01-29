Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC1A67FE14
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23A4760EFE;
	Sun, 29 Jan 2023 10:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23A4760EFE
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Upyq9ukT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHbRuncdoo3c; Sun, 29 Jan 2023 10:11:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C67E660E8E;
	Sun, 29 Jan 2023 10:11:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C67E660E8E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 891D4C007C;
	Sun, 29 Jan 2023 10:11:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0CD1CC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9C4581419
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9C4581419
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Upyq9ukT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lH5gLZ_dM0fV for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:11:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E6D3813EE
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E6D3813EE
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:11:37 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id ml19so762809ejb.0
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WGEur4ZImg+eboS3WKEGWQySrzE5jLwrJWc4aJbdxO8=;
 b=Upyq9ukTht74rZcR5Xt5AYL8dRAaLLsu2mgmtKAlw27RORtnQVTR/cMugKdJn9133p
 jb8EyEeD2MMWQ460sVZiATkzfBitfITUgIkqPdkFtNNrF/n/KztvFAL8kRokBp58E/bC
 OZbciMu2pXLcRkEevNng74DoWr+KCF/UbaPvHr+RioJIac8vTx82xDp3rPMbTXU3aoTQ
 3a/Is+PsG9awAP11q2fjlUxY2fyB+UZ0sx5xLOsznHP86J15+YaSiOWUN3okCunhLJgD
 iXRgqC2NAvEykBYdwX7GpBEj4yJCzDuW05wdFmUZjgvbH9mW0eg+fSkrKzS87SFQkk4j
 z/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WGEur4ZImg+eboS3WKEGWQySrzE5jLwrJWc4aJbdxO8=;
 b=HUb8MgANYekCXzNSDqFm2uv6J+OMpXay0vRPmW3h9okL0VS71b6ryg1Z6S2uFWD5Qv
 51zz+E5lS7/BkHJloeyiuBSI0sq+0eNVl/cxAVOmO920COxQHz8SdorxyNQ56q5sLy4w
 L83g9Uv9Hv47NZ+lXmhpVk1kKvUdKWEb6TfELufcaLaEocUTBYSHfJ3TqkRStX9VWCOX
 D5dU8M6XzKQuksoyeUf0dVz+1NG6/NpAkRWQtlBM/ORegS2oU2x819wA7b83uIC4c8ZQ
 zOGBGEFXETRiUaihMYO91DDuTjVzAeu2QKTrw+BTkl9rjSTd9b48Nc8KSaJYVnhWo/DS
 bDIQ==
X-Gm-Message-State: AO0yUKX42K0HFN171al2+6gFey85Yku8VhWEZSdUTSvpf/M6FNewgpQj
 lh4WgNoQkM+1ik8eVGz6mCLE8A==
X-Google-Smtp-Source: AK7set970quRC4KMo1FnKwsZMwePweLpetzv9GuXAD4nqHwDJpP9nPkFFTVqlEpDX9jH7bIZhdf3GQ==
X-Received: by 2002:a17:907:2989:b0:883:5b33:e019 with SMTP id
 eu9-20020a170907298900b008835b33e019mr4303568ejc.61.1674987096320; 
 Sun, 29 Jan 2023 02:11:36 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 b18-20020a170906709200b0087bd2ebe474sm3765960ejk.208.2023.01.29.02.11.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:11:35 -0800 (PST)
Message-ID: <7fd7a5a3-2ca9-d42c-f0a7-5b03760ab507@blackwall.org>
Date: Sun, 29 Jan 2023 12:11:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <273051ca0cae7bcd2957e44803fed128efc80336.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <273051ca0cae7bcd2957e44803fed128efc80336.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 14/16] selftests: forwarding: lib:
 Allow list of IPs for IGMPv3/MLDv2
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
> The testsuite that checks for mcast_max_groups functionality will need
> to generate IGMP and MLD packets with configurable number of (S,G)
> addresses. To that end, further extend igmpv3_is_in_get() and
> mldv2_is_in_get() to allow a list of IP addresses instead of one
> address.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/lib.sh | 22 +++++++++++++------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


