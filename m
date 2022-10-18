Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8644B60271C
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 10:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB5E1813E9;
	Tue, 18 Oct 2022 08:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB5E1813E9
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=phft8sgd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bz4ZZbEenSxu; Tue, 18 Oct 2022 08:37:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 78FAD81434;
	Tue, 18 Oct 2022 08:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78FAD81434
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 437FFC007C;
	Tue, 18 Oct 2022 08:37:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E43C6C002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BAB41418A8
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAB41418A8
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=phft8sgd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjnAoRDWNTQA for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 08:37:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FACB418A4
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FACB418A4
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:33 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id a26so30468115ejc.4
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 01:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YKJw2qpF3iJxcC8WpvUyBdGxAEqGRGDuO70Dlx4m/SM=;
 b=phft8sgdI/bymGOE9M77QzP+qBHNW01yWqM+P73mHM9JVCzbekbC2ZEV1AEzvHfslD
 yqwzoi2yHaUb0WubzsnBgfg9YF5OHEWoPlWzKpr3dI9BNc0uDJZwGkxj2JyfEzxTKXjM
 xdLWYWZtaC6LFXbHGeYM4ZBcRaklt81h0qjhnMz6Vr/LOl+JYncoE5P0U2EGs4D2KIQg
 XHc8Ik49gwa9FOilvhqNppuoFoqgFelCgK/SWOC2Omb2NyKQbp3cf7UzTaX9D8W+WCsn
 cAx9r9kt15jvbYSh6f6sqbMgzXhYbouWps1PjdktRq4fjLSv5+15iOx2PF4yOiXMoIFr
 kjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YKJw2qpF3iJxcC8WpvUyBdGxAEqGRGDuO70Dlx4m/SM=;
 b=H015UnMwxIHAgcTArI9E7aXkocqHozFNYYNkYg+fvcAAsvfRhZm5g3x27EpaUsr5iu
 4dYNiJIJhlF1xNtsyTwGL8c+g/TFG8Gysrg6pOTl0JAOlrJkaGqOsZ+DTDUGXm5XYqnx
 IgNAEobAL5t0HGu60LInXtG5adnO0041HjYYkMJsaJVePiTuD9dY6N2Oe7vKRAcpOo40
 /I077rlgnmNTJPwXC9T8BMicZNnuhHz1T+M302cWr9kfDzci6Th3gwSemD0yz+ZO+bpV
 CpTqRRqY/EzUhutubIIhiuSHw4QonQYfikM9gwTOfFIcf2LamxsJ5xEG3fy9EJ9VXT7W
 H8lA==
X-Gm-Message-State: ACrzQf2hZy+u4OZSeCHc6TjD8EWq9Ugq/ik9drvaBym7/ZV2B1L+OCAT
 9DbEtwhk2zOEEcFk8QVqKFmf4Q==
X-Google-Smtp-Source: AMsMyM72WREq/OE/yIKI/tDDqHexwsOQL9HZOSmigNFNiyLgf8XyqHVjosxH26G5z2EFvzJHNgJ5Lg==
X-Received: by 2002:a17:907:1c8e:b0:78d:fd24:a596 with SMTP id
 nb14-20020a1709071c8e00b0078dfd24a596mr1459201ejc.534.1666082251350; 
 Tue, 18 Oct 2022 01:37:31 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 d23-20020a170906305700b0078afe360800sm7194257ejd.199.2022.10.18.01.37.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Oct 2022 01:37:31 -0700 (PDT)
Message-ID: <c8ca33cd-f0eb-e917-3fb3-c00a0f0ed753@blackwall.org>
Date: Tue, 18 Oct 2022 11:37:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221018064001.518841-1-idosch@nvidia.com>
 <20221018064001.518841-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221018064001.518841-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/4] bridge: mcast: Use spin_lock()
 instead of spin_lock_bh()
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

On 18/10/2022 09:40, Ido Schimmel wrote:
> IGMPv3 / MLDv2 Membership Reports are only processed from the data path
> with softIRQ disabled, so there is no need to call spin_lock_bh(). Use
> spin_lock() instead.
> 
> This is consistent with how other IGMP / MLD packets are processed.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_multicast.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

