Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A58642795
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F31841605;
	Mon,  5 Dec 2022 11:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F31841605
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=lwdFTnA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGqWau0by3sT; Mon,  5 Dec 2022 11:35:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8D8374157B;
	Mon,  5 Dec 2022 11:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D8374157B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35610C007C;
	Mon,  5 Dec 2022 11:35:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EEBE2C002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCE5D60BD9
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCE5D60BD9
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lwdFTnA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_HOLzmHB5ks for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:35:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0219B60BCC
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0219B60BCC
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:35:36 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id vv4so26995531ejc.2
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=p+lqCtUO2T8WzhIulXM5wgSeAQF83+0Hc2/jw5pbOGc=;
 b=lwdFTnA19ae+IgrYYz/npsYg4z4drRSms+h2HFXJ65hnj8HMzdJYauBUW5aca1nO9d
 SJNZ8J6dGdurvnrtyJU6u6AypJeexiE674nw0ITpZjMuapYtAvMJlCVaMsDP7bXJ2b+7
 oxN082d4/0bTMmJz3ngMMQxzcsYnYXPnFtmFYW/031sACWF77KK6yVA4pexvnDVHP37N
 Q7QGePxMKEx+WICz6lc4RsZ2LjBio8szNqEDHppgtcFSQ193VvgS2K41nIOCoa5VaURa
 pwLwjb4QHB4asK+nNqrXxNiRogzhLgaXaL30/4MMswEVVR/lhus3XjBJMZL18yl5GTpZ
 EBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=p+lqCtUO2T8WzhIulXM5wgSeAQF83+0Hc2/jw5pbOGc=;
 b=wXVUCPi8hlUhH+iOU+XsfW7zWoqw3hrhS4SZK7fD7XRcI6o9DNlO8Ny/LmnCU8iPhX
 mX09cIOs2Ie80A0XG7Aq/+9is0MjsdQVWgtgEYj637aTBXpaTSFFokIreIwvcNSqXYwW
 G4cKsJM8K40sGwusWtcrZlxEyW++jFyvrEknfqA9ZvXMTyvT6ThIdd6NmMCpmpvjiPqP
 RIYMkzRa8O/YdAUnt8vQ+lQuYNT8US/6ZHG2eO9QAGKH0F4Oi5Oi0WyqPgHDg55niDNu
 OgIr7Id3MKOyi+Y0WJHONZpXGZqaWF+PaD6Jaym4tQeiGBuJCup+7mZQc1UpjDd+/4EG
 paGQ==
X-Gm-Message-State: ANoB5pkLLI+fMWqhPn3mPntRYURKn1RPg2PS8AM43tgowsz7/L3oSMmA
 Q1vNhSDf7Ym6iAhgRYx6OEekFg==
X-Google-Smtp-Source: AA0mqf76r0I1QoL3RWx6mDzICgB8yYXYA+FECzos5QTD298Yo9rl8UzmMZXYT4AeYyh9b+swxXtQQQ==
X-Received: by 2002:a17:907:8b8d:b0:7c0:7dfb:ed4f with SMTP id
 tb13-20020a1709078b8d00b007c07dfbed4fmr22895394ejc.2.1670240135140; 
 Mon, 05 Dec 2022 03:35:35 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 bj15-20020a170906b04f00b007b5903e595bsm6113647ejb.84.2022.12.05.03.35.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:35:34 -0800 (PST)
Message-ID: <b83faf19-ec08-c009-572c-4c9868155ed6@blackwall.org>
Date: Mon, 5 Dec 2022 13:35:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/8] bridge: mcast: Use MDB
 configuration structure where possible
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

On 05/12/2022 09:42, Ido Schimmel wrote:
> The MDB configuration structure (i.e., struct br_mdb_config) now
> includes all the necessary information from the parsed RTM_{NEW,DEL}MDB
> netlink messages, so use it.
> 
> This will later allow us to delete the calls to br_mdb_parse() from
> br_mdb_add() and br_mdb_del().
> 
> No functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 34 +++++++++++++++-------------------
>  1 file changed, 15 insertions(+), 19 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


