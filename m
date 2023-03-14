Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 974EE6B91EB
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 12:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25807418D0;
	Tue, 14 Mar 2023 11:43:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25807418D0
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=mRixeqMf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOnTpH7YL5Ue; Tue, 14 Mar 2023 11:43:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 77CDB418CC;
	Tue, 14 Mar 2023 11:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77CDB418CC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2F609C008A;
	Tue, 14 Mar 2023 11:43:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ECAC0C0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA79940919
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA79940919
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=mRixeqMf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMY2Bnm719nL for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 11:43:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BB6140354
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BB6140354
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:43:14 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id i9so5035651wrp.3
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 04:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678794192;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MCrsF1Bkt9UxCTo/05ahhMR6IA2FanOVtp8JvR2CXcc=;
 b=mRixeqMfSYUD/Ww8F7phJ61EE22o699N+ef7bjGAnnpvqg78eN/3vGhiV/g1Ak7qyJ
 EgObHJqU9BxCXL3+eu11BJBn62LAr0sNifx1p2Iudhx5lAIK1Kz3+HRBg2XLWoDVzqmC
 IHW+P9HQje9rVz8XbDBi+tfyCs6Z/qV1OH7EzBFNOdvHBfrYwrdN/0BobmqzVj5HDnpn
 9Tryc8C7qp8ACWJ2j+3STRCtSQO8X4qdF4QU0TqpdYIPJSy/TobUn98OlpLpqc+X8ckq
 /yB4fwRZSuc9B6pPlZTv4NXbQcwdKaOtEU6xXfvQHoLwuWGSB4LAqwg97KAA7oXt09hw
 xJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678794192;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MCrsF1Bkt9UxCTo/05ahhMR6IA2FanOVtp8JvR2CXcc=;
 b=KcfEoY0sBfumrmbnublMxS5Z9Fo2SV99MVetvyvjROWppH8H28pdRrYoQubLF8Bg03
 VCmwicWukQNhKuB/Y8hUOelV+BNOhB0WpFSz3b3t4vkjs2Z90kh2JaVnO3ts9cvmvfOI
 DUo3r+YTSxA8QdBvduoHos6DPdThREagMmgs8xquxSJmXur58jKQ9vLGXoMyvmFV+Qho
 jzOtQ7018cPVWzwNdNCZdtcvSJt41kEBZhCgjPrfdmgaFFfwUKq5duKQgguo5aKsjl1G
 3tM60S8xnO47ZTeRkB8NSKJgSMs110PkgRSTbr/OajeRMjeu+HrI5A5A9ltCwQlbMGUe
 Xmrw==
X-Gm-Message-State: AO0yUKUR2wPq9k0WCY++yZMHyOIjkFIgy+cW1PiH15JVi6RPDrZuPyAf
 Ip3hJ14FoCgZG0Xb8Tcq+Yu76w==
X-Google-Smtp-Source: AK7set9/7mFutLCjFLkQdwPNg7UOCH5RjV1NNkq8p0eHzVDka8cX3XPm06RYa/8xSb94GCko7azR4A==
X-Received: by 2002:a5d:6504:0:b0:2ce:3e8d:1e3 with SMTP id
 x4-20020a5d6504000000b002ce3e8d01e3mr25849977wru.46.1678794192618; 
 Tue, 14 Mar 2023 04:43:12 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 c15-20020adfef4f000000b002c55ec7f661sm1984443wrp.5.2023.03.14.04.43.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 04:43:12 -0700 (PDT)
Message-ID: <d4a39646-ed81-d900-6cd7-a87c561f8049@blackwall.org>
Date: Tue, 14 Mar 2023 13:43:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 02/11] bridge: mcast: Implement MDB
 net device operations
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> Implement the previously added MDB net device operations in the bridge
> driver so that they could be invoked by core rtnetlink code in the next
> patch.
> 
> The operations are identical to the existing br_mdb_{dump,add,del}
> functions. The '_new' suffix will be removed in the next patch. The
> functions are re-implemented in this patch to make the conversion in the
> next patch easier to review.
> 
> Add dummy implementations when 'CONFIG_BRIDGE_IGMP_SNOOPING' is
> disabled, so that an error will be returned to user space when it is
> trying to add or delete an MDB entry. This is consistent with existing
> behavior where the bridge driver does not even register rtnetlink
> handlers for RTM_{NEW,DEL,GET}MDB messages when this Kconfig option is
> disabled.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_device.c  |   3 +
>  net/bridge/br_mdb.c     | 124 ++++++++++++++++++++++++++++++++++++++++
>  net/bridge/br_private.h |  25 ++++++++
>  3 files changed, 152 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


