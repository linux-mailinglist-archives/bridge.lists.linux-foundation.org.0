Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A640069AD31
	for <lists.bridge@lfdr.de>; Fri, 17 Feb 2023 14:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 787F48140A;
	Fri, 17 Feb 2023 13:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 787F48140A
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=bCo4B0Q5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D7g6F3DldSMe; Fri, 17 Feb 2023 13:53:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1BC0681EBF;
	Fri, 17 Feb 2023 13:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BC0681EBF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B8418C0078;
	Fri, 17 Feb 2023 13:53:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FA27C002B
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8EA060608
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:53:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8EA060608
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=bCo4B0Q5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WB9ffeFnNHkT for <bridge@lists.linux-foundation.org>;
 Fri, 17 Feb 2023 13:53:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C1A960009
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C1A960009
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:53:46 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id h14so4795469edz.10
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 05:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/QW0mj2OAwfXeURyYtHmXL5vROau39LeBC17qnk7LD0=;
 b=bCo4B0Q5rTWvnptIaqqrFHU0ozKR8b6G2NtIoKP/rXOM5kYGhY/9MgG+9Dk5ob5X1x
 uP8SxSMwBE9MEAa1nMLnlVfdVrkLMXfqvEa+hLxmkLNrUprgDi4i9V6TZhEM4uZcddVN
 qmvutDpS3yBHWXzzom6bp6mo8zrhq1q65Zb9JQuTIYMeq6/3WKvsDG9VgVew99q+iAL3
 aH3r9lG39mpvX2gL5x2UPttzDH3jP8pFTX61xxSWsFFfSNgjRjwfPsBDaayFh54Zam2Q
 U3ArUvoMZKzdh1XqQMv1YnXa1vqrfVH4ddkWU/bUDMamoRg6xvRa+PqpfnppxqVnUMKc
 xXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/QW0mj2OAwfXeURyYtHmXL5vROau39LeBC17qnk7LD0=;
 b=3JIMePgoCrErZ9nO+QB9l1lPN+IjSC4gkv2JmJiN6uJmOQ0caEVt0St6gq+l1xzTAn
 MzwLF/2nhk8gOG1lqHR2gIN5R2FyD6Tve1DlX/eJ4/q6bg24+6WhCg+1j3JoG6coaRuT
 Q+yLEvaVnlRUY9lQvD6k2UK9SuPqJ5FkfnT1Sms4yDJ9dlSp/CnSPkVSFbgCpfL5nVlo
 1ib+nD3U9L9pTKxhjQSzleCGRBy3paHvKaR/ZXteDTLf8JNA/q37tklVh3RkXFd2lTwp
 Vd1Cay9IoRKu3YbVdEXKzMGfKnHyddxLP2GUMZuSV53oSoKs8RgaAWqtOC/+OwGwDEEr
 MZHw==
X-Gm-Message-State: AO0yUKU1k38eUWETcmeA/YrhBe2DfCXzOU536q9GcLKlA4Fy0QNX37bQ
 f1sxunM6pG5UUcY9HBefYPwTQA==
X-Google-Smtp-Source: AK7set8WnNQRokhh3f4p2tA8kO1L7bydhK5WNBEkMBrcDrUpnWHpUemEoXtA4/LfrZ7tzcRD706OWw==
X-Received: by 2002:aa7:c695:0:b0:4ad:66b:84a8 with SMTP id
 n21-20020aa7c695000000b004ad066b84a8mr2008729edq.6.1676642024370; 
 Fri, 17 Feb 2023 05:53:44 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 i28-20020a50d75c000000b004acde0a1ae5sm2321073edj.89.2023.02.17.05.53.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Feb 2023 05:53:44 -0800 (PST)
Message-ID: <a7cef78d-81fb-7de6-1f6e-a948cca1b46b@blackwall.org>
Date: Fri, 17 Feb 2023 15:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Alexander Sapozhnikov <alsp705@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20230217131657.12649-1-alsp705@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230217131657.12649-1-alsp705@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: lvc-project@linuxtesting.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net-bridge: fix unsafe dereference of
 potential null ptr in __vlan_del()
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

On 17/02/2023 15:16, Alexander Sapozhnikov wrote:
> After having been compared to NULL value at br_vlan.c:399,
> pointer 'p' is passed as 1st parameter in call to function
> 'nbp_vlan_set_vlan_dev_state' at br_vlan.c:420, 
> where it is dereferenced at br_vlan.c:1722.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Signed-off-by: Alexander Sapozhnikov <alsp705@gmail.com>
> ---
>  net/bridge/br_vlan.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index bc75fa1e4666..87091e270adf 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -417,7 +417,8 @@ static int __vlan_del(struct net_bridge_vlan *v)
>  		rhashtable_remove_fast(&vg->vlan_hash, &v->vnode,
>  				       br_vlan_rht_params);
>  		__vlan_del_list(v);
> -		nbp_vlan_set_vlan_dev_state(p, v->vid);
> +		if (p)
> +			nbp_vlan_set_vlan_dev_state(p, v->vid);
>  		br_multicast_toggle_one_vlan(v, false);
>  		br_multicast_port_ctx_deinit(&v->port_mcast_ctx);
>  		call_rcu(&v->rcu, nbp_vlan_rcu_free);

This cannot happen, read the code more carefully.
If you have a trace or have hit a bug, please provide the log.
Thanks,

Nacked-by: Nikolay Aleksandrov <razor@blackwall.org>


