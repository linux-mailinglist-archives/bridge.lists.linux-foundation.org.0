Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C894067FDC1
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 10:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59E6381BFA;
	Sun, 29 Jan 2023 09:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59E6381BFA
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=KQXdpTO2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m_eJSFvegrp8; Sun, 29 Jan 2023 09:10:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 03A3681BF5;
	Sun, 29 Jan 2023 09:10:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03A3681BF5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BEF34C0078;
	Sun, 29 Jan 2023 09:10:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 41853C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DE2860E78
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:10:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DE2860E78
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=KQXdpTO2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CK6G0lGXn0X4 for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 09:10:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ACF160E72
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5ACF160E72
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:10:01 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id p26so12904844ejx.13
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 01:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KkhJszckOgi9i3ykTlFdmdnbfURMFjaDRKTo2ouL/8I=;
 b=KQXdpTO2l7eflMDTxAo+OqiIZRIGgjFFrJno0xVwoM6PhpKu+vMsdsibjIlsLOmwNw
 iLrmb2UnWHBAQwLRemvpmJHK5kdP99o8HNaTeuY2NHjfRueldoCDuqIj8stOiiwTlyzE
 DYVRkAumts29JRRiOm1A1wGQwYkLAJ+F0sWPvKrOK3JyIGXhidPCgW+zQ+fcCWZaSXiC
 CLBgAtaBYxcK/Jl9Ol1nOt4bpu949Ek31+R0lO7fk1uoavkAB9pL+lJ5pIV04QwNyare
 Ed321hNXlsq2KYWQF/6TI6thPnWMJvoNF7yNcQtMu6W3Qtg/1R+OJzp2IhanG9YXymcc
 ugYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KkhJszckOgi9i3ykTlFdmdnbfURMFjaDRKTo2ouL/8I=;
 b=Ymtmlaz7O3l1Gbqq6WEC2ejpQGIKvoB5iqLDEP37VB+Ypo2CKZmr/UQuVywAEnr6G1
 +V5lU0PFzZ7FP0+PogPGM+n1Nv0IXkwnFOfxpS0xSz/ec5nStlTHMxX4UFrmsWt0/vRu
 S5ndSOg/aNHuweVj5TU3974ZSZNAucvymnhho9W7uxMyZdV2MczsPD1Y1Hp1bOv0mqTW
 DTLxgP+FIxsmMONDNhwIX1+6zG9RTjeEhBd9fhrhprIFROm6yf+sKAmzADpYbsGO2M9j
 T23SG4FIv1ggWMEjWWRlRUlkahWXCL0ExyoyJ3WsNX3MjcrAbC1eqivJzd73w6L0C71s
 enDA==
X-Gm-Message-State: AFqh2kouuhAI6QnbvnTRVT2719/PGfY5ZwYdAss0MRnRkbnbakZYeY0+
 9bt23dFZH+SEKlH0thyuAuJ1qg==
X-Google-Smtp-Source: AMrXdXtElGYKsvTmyJYy3LnKrzKTs2DvzsIMhG236FKtuO/rQWGCwcfkY0GlxUpOoYbTSBaxfDZk6w==
X-Received: by 2002:a17:906:40a:b0:86f:a21d:62b7 with SMTP id
 d10-20020a170906040a00b0086fa21d62b7mr50082815eja.9.1674983399414; 
 Sun, 29 Jan 2023 01:09:59 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 kv5-20020a17090778c500b0087c4f420af2sm3223493ejc.4.2023.01.29.01.09.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 01:09:59 -0800 (PST)
Message-ID: <3e057185-b978-efa8-b2cd-c53e65796d3e@blackwall.org>
Date: Sun, 29 Jan 2023 11:09:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <16e6b1f664e053bd5c057b7c5b0bd23e3d7652f9.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <16e6b1f664e053bd5c057b7c5b0bd23e3d7652f9.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 03/16] net: bridge: Move
 extack-setting to br_multicast_new_port_group()
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
> Now that br_multicast_new_port_group() takes an extack argument, move
> setting the extack there. The downside is that the error messages end
> up being less specific (the function cannot distinguish between (S,G)
> and (*,G) groups). However, the alternative is to check in the caller
> whether the callee set the extack, and if it didn't, set it. But that
> is only done when the callee is not exactly known. (E.g. in case of a
> notifier invocation.)
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c       | 9 +++------
>  net/bridge/br_multicast.c | 5 ++++-
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


