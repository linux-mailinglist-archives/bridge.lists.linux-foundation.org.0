Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3C6647EFD
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 09:09:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE49840127;
	Fri,  9 Dec 2022 08:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE49840127
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=woHSTtiI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFitKt4Sznn1; Fri,  9 Dec 2022 08:09:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6FF004021C;
	Fri,  9 Dec 2022 08:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FF004021C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3568EC007C;
	Fri,  9 Dec 2022 08:09:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B1F4FC002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C4F740273
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C4F740273
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rcicJJbeZOrT for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 08:09:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1CA64021C
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1CA64021C
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:09:14 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id y16so4403329wrm.2
 for <bridge@lists.linux-foundation.org>; Fri, 09 Dec 2022 00:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2KOkOgucQ711ynKTqc+6IMM+flOlcUVE7g4ZI5EOrFw=;
 b=woHSTtiIrAj78Rz3ZxZG+nd8ruRPitAPzXWV9EoJUF7uMNH+n6vjPpQ2JgkV+9Rz1f
 iFoeq3gaEzCYhjEIxQtuTr7CPcqeNIgCwAO4D7zTjDNkPOjpr2omaZ0kbUNfLX+47BGK
 nBK6X1eYH4sSe+B+Des5qIuLPiv1DqCo5AwuQmho7n6y+ksnMba3bWnQtfkW80Z+20mT
 +347qMWNPFeXmg8+/GSweKdbo6QYTGctQ/tsMuQ9ZFMKhlfTM4UTDM12fALJHwEWFHPy
 qF/oBdGWDV9sQhC+SKkY5OLWUC9xtNAMq9gZybbzJEFsna5rW1okZxy234QExtSIKObY
 1a0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2KOkOgucQ711ynKTqc+6IMM+flOlcUVE7g4ZI5EOrFw=;
 b=TO6Uy6PUGDUzSlgq/YRJAxszFIjWNsKltCYhBO3CymMJoMNT4IueRJvXpwxDGRot61
 0JHsdc7Bj85+vSTXl3Bf+QtpwBoLPjRNN1scGhPQx6qvikUANPc60pbAoKyX89n5BaNS
 D/L76+adk6q0biADeP+6Qohr0uTwBl58uiMwH+Ouc7ho6c75PIt1Oe429PYsXkQnEbca
 aonYpwYKPxsZ2ti944QAVOt7ZZlwyyVVdEyW6GT7/Rxkl5/odnxo7HrZPlxsqyaYhSLh
 /EgYgT2xRV2a/1IvnY71tV9tcU92M2NkRwy9wVS78U4VPb2yx/CfHCSGy7gy9zKz/LS4
 iOIQ==
X-Gm-Message-State: ANoB5pn/vvxm+6H+cy5WRxm9kw//cTfNRktQv+pGyBXHZe5S8KGfOVHA
 hZ7FxEuFEtcYiDL9zuWUkZL5Tw==
X-Google-Smtp-Source: AA0mqf4gebLZ7CKK0zKLSWUvcFlaDAX5wXn+JpBsh/zfayLOQ0b+ztAnXAkkUem8OqhBKX6bQxmxaQ==
X-Received: by 2002:adf:f604:0:b0:241:fb7d:2f15 with SMTP id
 t4-20020adff604000000b00241fb7d2f15mr3075499wrp.29.1670573352950; 
 Fri, 09 Dec 2022 00:09:12 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a5d50c7000000b00242209dd1ffsm720884wrt.41.2022.12.09.00.09.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Dec 2022 00:09:12 -0800 (PST)
Message-ID: <fabadfa4-b914-96b6-992e-dcebac1c0ef0@blackwall.org>
Date: Fri, 9 Dec 2022 10:09:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-14-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-14-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 13/14] selftests: forwarding: Rename
 bridge_mdb test
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
> The test is only concerned with host MDB entries and not with MDB
> entries as a whole. Rename the test to reflect that.
> 
> Subsequent patches will add a more general test that will contain the
> test cases for host MDB entries and remove the current test.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/Makefile                 | 2 +-
>  .../net/forwarding/{bridge_mdb.sh => bridge_mdb_host.sh}        | 0
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename tools/testing/selftests/net/forwarding/{bridge_mdb.sh => bridge_mdb_host.sh} (100%)
> 
> diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
> index a9c5c1be5088..f2df81ca3179 100644
> --- a/tools/testing/selftests/net/forwarding/Makefile
> +++ b/tools/testing/selftests/net/forwarding/Makefile
> @@ -2,7 +2,7 @@
>  
>  TEST_PROGS = bridge_igmp.sh \
>  	bridge_locked_port.sh \
> -	bridge_mdb.sh \
> +	bridge_mdb_host.sh \
>  	bridge_mdb_port_down.sh \
>  	bridge_mld.sh \
>  	bridge_port_isolation.sh \
> diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb_host.sh
> similarity index 100%
> rename from tools/testing/selftests/net/forwarding/bridge_mdb.sh
> rename to tools/testing/selftests/net/forwarding/bridge_mdb_host.sh

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
