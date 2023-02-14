Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4060695D44
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 09:41:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0E7140AD1;
	Tue, 14 Feb 2023 08:40:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0E7140AD1
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Bg8GgDZY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7YftCbRj_bP1; Tue, 14 Feb 2023 08:40:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 967A440AB7;
	Tue, 14 Feb 2023 08:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 967A440AB7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D42BC0078;
	Tue, 14 Feb 2023 08:40:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C65A8C002B
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 08:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A104C81E05
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 08:40:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A104C81E05
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Bg8GgDZY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RudbMuo3FKrY for <bridge@lists.linux-foundation.org>;
 Tue, 14 Feb 2023 08:40:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E19E38137C
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E19E38137C
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 08:40:55 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id jg8so38241701ejc.6
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 00:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fpl2dYq09X1UimTogkpAO+pdBXIqBUdMeEeTg/7qSas=;
 b=Bg8GgDZY7kilURoRNLSzE7rxV3xwzXlJM55ZH1SFuchlelKg4/Oo2ByXZyYFUPpDax
 9Ju6E4HG3M6A+SBoj3mm1DCi5h38nSAxOxQcIVBUwkmszC1uj9DadSmk/AAGVd6B8zHk
 t70bGTz4hL1S82MoXdc7UpQsOOYDwEqKNbgvLD8Gkrc3zlxaNyieJY/tptgdf4lMKfOl
 qSHK0ls61o9vzdtYW4RmuFjluOFGVvl3IdigDrnZjuTxDTmdggijPGCfNzfpczqepD4a
 cz0HmuE6HZUh2La1hs25nVI/K16REIw7eMbVnw6HRdGInSwspQCzAqTkwMCniqKUK1G8
 jZYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fpl2dYq09X1UimTogkpAO+pdBXIqBUdMeEeTg/7qSas=;
 b=6gN4tDlnTSUujrLI/yDLMwnsCchw8eCH8AunK56wOGc5juEjQGvu6k6mTaEV9GoFvl
 9sGYYncOzNoDBbQ1DzE0H0zOjqMr8WU2A97qmnFytgubyFfTDPyKX3GEqv7HiTGS9KUy
 DcOFTL+ivpe1RWq8u+Am9m0y4jlPUl30jDn0IjkAvu62dtCBhwdGohTqe+yYef74iQRJ
 bVMOJ2NbSfiJ2lPAApYv2ZdrnA2O9QL3fOkFIhYyJiP/wa7aEqXHearBQFrWEHOqwPxR
 rGvcvlsroR2ZzPlqZL5AL151BG/RaJ42UmOOZR8OFLulvCjdrCe5sL4Sd3lVSehHxNtl
 w2Fw==
X-Gm-Message-State: AO0yUKXPOPZUogijVZ07weS2nXjN61NZPJ+7ivahDEqleRlbukBMfpzf
 8phJ9zapl8xZFR6O7Cl0B9q3bg==
X-Google-Smtp-Source: AK7set+I//8fpiZU3b0KhszicIsqrrq4SNLouZHvMeHfov9b5wupT38PcfS5I7rS9K0/QE6Ss3FaiA==
X-Received: by 2002:a17:906:ecb2:b0:878:5372:a34b with SMTP id
 qh18-20020a170906ecb200b008785372a34bmr1732692ejb.45.1676364054093; 
 Tue, 14 Feb 2023 00:40:54 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 t21-20020a170906179500b0088a9e083318sm7921654eje.168.2023.02.14.00.40.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Feb 2023 00:40:53 -0800 (PST)
Message-ID: <0a255859-9ec1-c808-d7d5-3500a6c49386@blackwall.org>
Date: Tue, 14 Feb 2023 10:40:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 Roopa Prabhu <roopa@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20230211-kobj_type-net-v2-0-013b59e59bf3@weissschuh.net>
 <20230211-kobj_type-net-v2-1-013b59e59bf3@weissschuh.net>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230211-kobj_type-net-v2-1-013b59e59bf3@weissschuh.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v2 1/2] net: bridge: make kobj_type
 structure constant
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

On 14/02/2023 06:23, Thomas Weißschuh wrote:
> Since commit ee6d3dd4ed48 ("driver core: make kobj_type constant.")
> the driver core allows the usage of const struct kobj_type.
> 
> Take advantage of this to constify the structure definition to prevent
> modification at runtime.
> 
> Signed-off-by: Thomas Weißschuh <linux@weissschuh.net>
> ---
>  net/bridge/br_if.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> index ad13b48e3e08..24f01ff113f0 100644
> --- a/net/bridge/br_if.c
> +++ b/net/bridge/br_if.c
> @@ -269,7 +269,7 @@ static void brport_get_ownership(const struct kobject *kobj, kuid_t *uid, kgid_t
>  	net_ns_get_ownership(dev_net(p->dev), uid, gid);
>  }
>  
> -static struct kobj_type brport_ktype = {
> +static const struct kobj_type brport_ktype = {
>  #ifdef CONFIG_SYSFS
>  	.sysfs_ops = &brport_sysfs_ops,
>  #endif
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

