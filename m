Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADBA6B93F2
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 13:35:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0D6C61098;
	Tue, 14 Mar 2023 12:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0D6C61098
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Mld9CHmB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pz4_ae162IcT; Tue, 14 Mar 2023 12:35:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 69AC660E2F;
	Tue, 14 Mar 2023 12:35:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69AC660E2F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26AE7C008A;
	Tue, 14 Mar 2023 12:35:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FC6FC0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87FA881E29
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87FA881E29
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Mld9CHmB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zidigb9ilkMN for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 12:35:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD37F81E24
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD37F81E24
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:35:31 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 fm20-20020a05600c0c1400b003ead37e6588so13028762wmb.5
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 05:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678797330;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=p84TLvp+HdQDxexv0ZVgLjFCMe9ll2v7yG7+lC1ClDs=;
 b=Mld9CHmB4FHTzkBAeS0Rb14jtQAWfKlcWa1tq0b3sPZ80TE2e0u/zDdJr1uYgJsYu5
 m42BB9k5pGSnurOlsoN5ACj9DT+SZs4Gy7nlcAX0Bvfh/TIGqkkDKA+CW775OlHUF1BY
 7E0+vEXZiVDJEs8ZuGxv9QwcwZCoYYoMo3UFmz8VSaiZgMfZbtgQ8+sHsY+Yy1fb5E0s
 M3Xo29UGyw1SSxVIH17lg4HsIbDef2pkRMkHD7EP+W++6Edj+ycq3mMIJ+mgCP1Ne86k
 yDrBDrkYVbocUKJfvKYD7vFZl4K4JgSb6vX/pupmNdSU0JHx0Fx+vAH0k2tF1HQ/3F0n
 6vGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678797330;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=p84TLvp+HdQDxexv0ZVgLjFCMe9ll2v7yG7+lC1ClDs=;
 b=Gq7d5jMZ88TXAkT7LouVgFLnNK08C5pBKmeOI8fRB25w7dT/QrdpjJvqoY2Mh1cAIe
 Xkdmu2XNyPpzuOjSTxqCO3E9dIVRWClwzkScTm6dn4Z9Y3unog3fiVSBX8pEYyRl+jxn
 Hbtq8EI7Rsxl98jINZHT2lBFm0YBYCw8KHo2aZ5WUjV06ZHo4pQ/qnp5wzLtuImhHN9d
 lugMfH0qyY7X0otdXAM7yS4s+SnT94M/TvlxE0cJ6QI+hPsBG6BZzQHS/LyNhEVgQBZn
 WcYAr2fSaQvJ0SLrCOoRkR/kcVUjxm+cyaevlCyenbQfQFaS6zQTkrz7eMAeZJ9cOTfi
 xfpQ==
X-Gm-Message-State: AO0yUKWj95lVbOS7ZCBs5x8S05LWNkYAp1D8PX0gFB2/K7NQgTAIyFTl
 KHSPJuTzKt5k6/Eym6j7DTBDTA==
X-Google-Smtp-Source: AK7set9SEJBVMu/4jgX0Tq5pWXfXaPcangezvpLj6M40QeGTXvm8Jl+5woVo+iRDTQfXr4I6JXcA1A==
X-Received: by 2002:a05:600c:314c:b0:3eb:2f06:c989 with SMTP id
 h12-20020a05600c314c00b003eb2f06c989mr14509179wmo.22.1678797330012; 
 Tue, 14 Mar 2023 05:35:30 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a7bc387000000b003e7f1086660sm2773592wmj.15.2023.03.14.05.35.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 05:35:29 -0700 (PDT)
Message-ID: <ce921c1d-2acf-6e67-8bf3-3d5a133c15b9@blackwall.org>
Date: Tue, 14 Mar 2023 14:35:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-11-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-11-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 10/11] vxlan: Enable MDB support
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
> Now that the VXLAN MDB control and data paths are in place we can expose
> the VXLAN MDB functionality to user space.
> 
> Set the VXLAN MDB net device operations to the appropriate functions,
> thereby allowing the rtnetlink code to reach the VXLAN driver.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  drivers/net/vxlan/vxlan_core.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
> index 1e55c5582e67..e473200b731f 100644
> --- a/drivers/net/vxlan/vxlan_core.c
> +++ b/drivers/net/vxlan/vxlan_core.c
> @@ -3083,6 +3083,9 @@ static const struct net_device_ops vxlan_netdev_ether_ops = {
>  	.ndo_fdb_del		= vxlan_fdb_delete,
>  	.ndo_fdb_dump		= vxlan_fdb_dump,
>  	.ndo_fdb_get		= vxlan_fdb_get,
> +	.ndo_mdb_add		= vxlan_mdb_add,
> +	.ndo_mdb_del		= vxlan_mdb_del,
> +	.ndo_mdb_dump		= vxlan_mdb_dump,
>  	.ndo_fill_metadata_dst	= vxlan_fill_metadata_dst,
>  };
>  

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

