Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AFF647E91
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E35D4014A;
	Fri,  9 Dec 2022 07:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E35D4014A
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=HqdUkj4S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4MVO2ihnhAnv; Fri,  9 Dec 2022 07:30:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C7C7C4014B;
	Fri,  9 Dec 2022 07:30:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7C7C4014B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7C7A0C007C;
	Fri,  9 Dec 2022 07:30:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6FCBDC002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D7B981CE9
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D7B981CE9
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=HqdUkj4S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snwir2J3_uGr for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:30:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BD8E81C93
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BD8E81C93
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:30:24 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id h7so4313350wrs.6
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=e8ok8dp6S7YvgkcFRjV3Iy77BKsNsOh23uWLYPjfni4=;
 b=HqdUkj4Sr3Sjf0oIj/n7uWMxpYgSghv876bfGCbd0v/QlQobwmMHTLVqR8Y+geJER9
 Peno6DmUNhOXOEayXlJmxNoUFRTJpM2fwAuJzljCg6KaDJ6lWQ37Th+FrqZWBlNWBZu6
 Px301IalmUidhxrEna0DytuK2nt0ozmzIL7NkIqsUEoCf8B6NjKPeDdIz+lWH4Gkf8sX
 9N50Jx0dfFp6wJlanN6iC9TXlZAK7AEjO6MC17Q5xjOGqc2qak1Rv5FdUuBvHyvIYrfm
 zHsQiJg3QmFj3vh+JxBdrP8eidG+5y6deGD815Di6RhwAdmrccjCcyDYCFXNcYc/rRMu
 8NYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e8ok8dp6S7YvgkcFRjV3Iy77BKsNsOh23uWLYPjfni4=;
 b=17pLSO7bc+wYNgg5vO63Hz5lqfhaXoZo4VUKwlNEosgowwW26MNkezeBA6BEtC25Lt
 2J0IlnJo4FECWRCg5VcQWf24upEpImyvXO7DxI/Y5/gCXwY0JMa9AAWvgDdEHqeUdIND
 6QB8OFBXxAdMYlrdECG6Uu3XsfImZlsP9Rd011QryNpiB47krcDpd63S7BfABED4I2qd
 MGvhANme1Eq2Hb+ItdPq03l7xFv59if8TrLKP0XbljfiDgwBWDx01OFoiNsNmxlnOwMH
 R8YwVixwlBOCmdqReQSnqR9I6vrWoIjHPOkE/iylkt+5h2pX/C6o4HUkjwzVigXfS+0L
 crTw==
X-Gm-Message-State: ANoB5pkT8MoiXzcq6peS3IDsOHtJI0tyyVWalluWTCyAUXUzyjkMO7Ev
 ogXhegvTGXLVOh2sgSk8FX7FWg==
X-Google-Smtp-Source: AA0mqf4vFxC0TQkwfzHb9izTIv86s8znirs7oYyFppPMb+ac0rtZ40JVkpQqZhkEU93whSAX20rfAQ==
X-Received: by 2002:adf:e345:0:b0:236:7215:44a5 with SMTP id
 n5-20020adfe345000000b00236721544a5mr2846869wrj.32.1670571022638; 
 Thu, 08 Dec 2022 23:30:22 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 z9-20020a5d4c89000000b0022cc3e67fc5sm643328wrs.65.2022.12.08.23.30.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:30:22 -0800 (PST)
Message-ID: <2fa88776-fc7e-564c-18d9-83c75414b838@blackwall.org>
Date: Fri, 9 Dec 2022 09:30:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 04/14] bridge: mcast: Add a
 centralized error path
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
> Subsequent patches will add memory allocations in br_mdb_config_init()
> as the MDB configuration structure will include a linked list of source
> entries. This memory will need to be freed regardless if br_mdb_add()
> succeeded or failed.
> 
> As a preparation for this change, add a centralized error path where the
> memory will be freed.
> 
> Note that br_mdb_del() already has one error path and therefore does not
> require any changes.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


