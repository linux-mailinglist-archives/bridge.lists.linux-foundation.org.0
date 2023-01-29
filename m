Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3480067FE0C
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:09:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C35084044D;
	Sun, 29 Jan 2023 10:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C35084044D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=oWv2J6p4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vj6zrIcyE5H3; Sun, 29 Jan 2023 10:09:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E767540236;
	Sun, 29 Jan 2023 10:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E767540236
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9BC82C007C;
	Sun, 29 Jan 2023 10:09:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F32EFC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEB9481318
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEB9481318
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=oWv2J6p4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4mmb8caS5M8C for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:09:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 137A581317
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 137A581317
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:09:04 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id x10so8348013edd.10
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3NvzYniCjUdMvNLayLfXu1w44hZFmfdEq8cdlL/KaMc=;
 b=oWv2J6p4QX5lN/Lfv1wTpQskHVa3yKBDoOKnyIy9dS93hwW4eMp/iXjePewFqcCHmh
 pRlGBzQX8f2/88ao1YuDUJyr+phImdkiyGcXbq4pbs4GUVqNI4BPPvwlSPYprrQVHJi0
 y8S/9+IG0uSYdajht1k2wtdlaIDQR6KwvCzFX0Y+3Z0AsjSldAaYFtG13z7z3d/PFPJa
 xi3LLe9vRZAR1SQWTPna13qMH/LSWNgYrktpNGpfhjbkRXpkat6oDi/RTOtxwLioRGsF
 kIRWQ+n22wDbIpRBJ/JVY8L/LrmiHeNsP1Olub4Os3WORCbjA++JdYfdMR9qLpgKTyUJ
 Oa5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3NvzYniCjUdMvNLayLfXu1w44hZFmfdEq8cdlL/KaMc=;
 b=anHMX70vxBPt9tCANotT3p4xUhUhaWlwDqDGJGdFYARU1CrcT2Lc0MV6vaIricljD2
 niLJOP+4yd1eZhNEzQ8zoYm1utCyMg+Fti5TpAZesZzqfTseUc/3rb4Kj1QY7RBwPjkR
 OKoE18hF4hUbCo9idyzc0ZH6evOaOqsuUohErEibncx942uGVJjOWtmyjcd5fiFTmxUs
 RipxL4nWqVxC50uXH/XQLr8ERjuEPhHPeK3oAZ0BrkPLhuRn53ICD6wYltE4rd9Si5lC
 HPYnAel3I4p7UDmOdno9VQC2Ou2Uiushy+Dok9QRXB4rb5wBtXod77vtOS8QrMHUF5Ci
 2tuQ==
X-Gm-Message-State: AFqh2kqF42/cdAP1weW3k7/8cgR1PS2TJjmiePVQ3Z11hmGGy49aIrIC
 Fp9FXUktkGfzx1WURzk30g7p5Q==
X-Google-Smtp-Source: AMrXdXuweoKw++GbL9hgqCMc192lijw6eV171Rgzfqt8dV1jPHfC8wyeoQqmjDDDJm2iS5Vt3df5ZA==
X-Received: by 2002:a05:6402:528b:b0:49e:28c1:9375 with SMTP id
 en11-20020a056402528b00b0049e28c19375mr49520076edb.10.1674986943085; 
 Sun, 29 Jan 2023 02:09:03 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 n6-20020aa7d046000000b004a245d70f17sm59592edo.54.2023.01.29.02.09.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:09:02 -0800 (PST)
Message-ID: <bc462159-78bc-fe7e-2f58-9e02ccefdd54@blackwall.org>
Date: Sun, 29 Jan 2023 12:09:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <064ee17ac1c20603b3530a23e0ca533d57450cfc.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <064ee17ac1c20603b3530a23e0ca533d57450cfc.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 10/16] selftests: forwarding:
 bridge_mdb: Fix a typo
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
> Add the letter missing from the word "INCLUDE".
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/bridge_mdb.sh | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
> index 51f2b0d77067..4e16677f02ba 100755
> --- a/tools/testing/selftests/net/forwarding/bridge_mdb.sh
> +++ b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
> @@ -1054,7 +1054,7 @@ ctrl_igmpv3_is_in_test()
>  
>  	bridge mdb del dev br0 port $swp1 grp 239.1.1.1 vid 10
>  
> -	log_test "IGMPv3 MODE_IS_INCLUE tests"
> +	log_test "IGMPv3 MODE_IS_INCLUDE tests"
>  }
>  
>  ctrl_mldv2_is_in_test()


Oops :)

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

