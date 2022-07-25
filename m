Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A79E57FA65
	for <lists.bridge@lfdr.de>; Mon, 25 Jul 2022 09:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E8386105B;
	Mon, 25 Jul 2022 07:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E8386105B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=rEUkYjeX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPuWR8CFJzJt; Mon, 25 Jul 2022 07:43:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0893761063;
	Mon, 25 Jul 2022 07:43:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0893761063
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94884C0078;
	Mon, 25 Jul 2022 07:43:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 219A5C002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jul 2022 07:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA0F4610A2
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jul 2022 07:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA0F4610A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYdlbl_wi_HN for <bridge@lists.linux-foundation.org>;
 Mon, 25 Jul 2022 07:43:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 476A360D5A
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 476A360D5A
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jul 2022 07:43:04 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id z23so18865199eju.8
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jul 2022 00:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=upMEmh+I6YGZG6c6EtpIGF8esGPJ+kf2J+SaVLbY2I8=;
 b=rEUkYjeXEtLqLitKufIF/+JMoLRGiStjaP6GGVJDdi4iNhj4M4CLvV/6xyNL9CzwvA
 5TRAs6YiDwKzOvASRhb89b+nR7JmZ+BgTSaM05KIS5vfNmj8V7i3CXf2IekscTvmwTMR
 8baikAG3zAEHoeIecgcQSyy6WkhaJLrtan6jx1eM6ZUBRKnIsMtcst7ZHpc18g1FGs/j
 rJfwdCECRKN4PAka0+bnscS8zRR/9PJes1X0CprM30757PFrin3tH0sNkeF7AV1zD4wo
 FMb9pwNeqCR9yVeYI6bfTzU6El+c7DOw2dK68ZqIIt4vUdUWv1h8A1jEjAcmE5M8UPDm
 dbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=upMEmh+I6YGZG6c6EtpIGF8esGPJ+kf2J+SaVLbY2I8=;
 b=xYxHmyR/MqvxrYGX0RdikinRBuKET6qoSP/l7EyuKKGYWBlDuN//u9yyHY8JxWqukU
 0jHrr8lsIeaE0vF4ArLts/4S4skkOnzF3J35DmbwtMQIZJghAOMoj5ZDTIDC43B+lLdB
 6nFgPSaaeH+ysxqABBgP+2Rz6/kSzwzXUySS0gY3BOLCXOMW924bTpuvFzJkMx8NIVk9
 X0RQEHbry1GnF5i3whFXmuWr68bm1Mpm1VrCzDsYgTrUMBRS1okqvaGkXkrUIeCctyFI
 CQPvHrvKGPdt86fO/4hj8TBFVvIXuk+Bx9D85pkDIZ3ud/T6YWdLaJAF8Ra14PpwaRHD
 OLFw==
X-Gm-Message-State: AJIora/FprGxGNbdXBxBCaBvu0N2llZcTUlPtaVhRf0d+UZihhdCMbFT
 cG2WUT4SK4cZ6w4SvVtvYJoCvg==
X-Google-Smtp-Source: AGRyM1skybWbDLS44Ol93Ugr6CHiFaJsDXTxjCIdLCP+KH4CRn6Q/07x/QWWtpXmRg0kI0Lty8ItqA==
X-Received: by 2002:a17:907:75d3:b0:72b:48de:e540 with SMTP id
 jl19-20020a17090775d300b0072b48dee540mr9370069ejc.547.1658734982328; 
 Mon, 25 Jul 2022 00:43:02 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 mc9-20020a170906eb4900b00715a02874acsm5092356ejb.35.2022.07.25.00.43.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Jul 2022 00:43:01 -0700 (PDT)
Message-ID: <fdc3a288-c342-1c6d-4cf0-640bbfd44f56@blackwall.org>
Date: Mon, 25 Jul 2022 10:43:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Benjamin Poirier <bpoirier@nvidia.com>, netdev@vger.kernel.org
References: <20220725001236.95062-1-bpoirier@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220725001236.95062-1-bpoirier@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>,
 Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 bridge@lists.linux-foundation.org,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net] bridge: Do not send empty IFLA_AF_SPEC
	attribute
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

On 25/07/2022 03:12, Benjamin Poirier wrote:
> After commit b6c02ef54913 ("bridge: Netlink interface fix."),
> br_fill_ifinfo() started to send an empty IFLA_AF_SPEC attribute when a
> bridge vlan dump is requested but an interface does not have any vlans
> configured.
> 
> iproute2 ignores such an empty attribute since commit b262a9becbcb
> ("bridge: Fix output with empty vlan lists") but older iproute2 versions as
> well as other utilities have their output changed by the cited kernel
> commit, resulting in failed test cases. Regardless, emitting an empty
> attribute is pointless and inefficient.
> 
> Avoid this change by canceling the attribute if no AF_SPEC data was added.
> 
> Fixes: b6c02ef54913 ("bridge: Netlink interface fix.")
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> Signed-off-by: Benjamin Poirier <bpoirier@nvidia.com>
> ---
>  net/bridge/br_netlink.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index bb01776d2d88..c96509c442a5 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -589,9 +589,13 @@ static int br_fill_ifinfo(struct sk_buff *skb,
>  	}
>  
>  done:
> +	if (af) {
> +		if (nlmsg_get_pos(skb) - (void *)af > nla_attr_size(0))
> +			nla_nest_end(skb, af);
> +		else
> +			nla_nest_cancel(skb, af);
> +	}
>  
> -	if (af)
> -		nla_nest_end(skb, af);
>  	nlmsg_end(skb, nlh);
>  	return 0;
>  

br_fill_ifinfo has been a mess, at some point we have to refactor it.

Anyway, thanks for the patch:
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

