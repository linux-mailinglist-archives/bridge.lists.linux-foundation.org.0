Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9444B0840
	for <lists.bridge@lfdr.de>; Thu, 10 Feb 2022 09:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98C3260E70;
	Thu, 10 Feb 2022 08:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ux8VRCFJ_Dq; Thu, 10 Feb 2022 08:30:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3C3A660E7A;
	Thu, 10 Feb 2022 08:30:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7691C0039;
	Thu, 10 Feb 2022 08:30:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5502DC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 417664051C
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3dzAPY_xjMlk for <bridge@lists.linux-foundation.org>;
 Thu, 10 Feb 2022 08:30:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47E3C40127
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:30:33 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id ka4so13325007ejc.11
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 00:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=4BAbC2SrKWiikj9sQCe8GZxvTJd08+U2hgXBpuolPto=;
 b=s8pXpBQeUNug2WzF/0ZLJCiDOoSVGmUqybFpEraPZF/lCgswGicM3tDaouz3TeHrOF
 fBsGbAotjowRZ30ET4SpUOXQgWE9T28ljK8qGn0WnjalcAZoppJweaNPqvC6QXowV8oP
 fdGNJk7/6sv/lUAIGXi/0+qClfMjGhbglUkLcjUljRKSIXvi/os3LiG3/CqUOfEWnp2k
 a34gA/sTvHlyxXDs+nNZXdc+mLT8E/kNVL+VXr4qgu9PzX4CJHxJdZIU69fC+VILbQw4
 rnYIgYPV+7eYuHVFwlTVVsalqXogXw30U7cEAi2EOqTVgP4MnQDfyUQv3eklF8LBtG8l
 G0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=4BAbC2SrKWiikj9sQCe8GZxvTJd08+U2hgXBpuolPto=;
 b=7dQ7mgaUHzPQ98NHbnZNtEQKy1OXGFTWp/FETp9nH9KJfzr8r+cO2zw7vFvHXY9JxJ
 UEyFhxvJ5OKCQSH9gKbhpl9w3UAa02PHDyjjumqZLrJoZGBVIFMaNl9OPdzRUKANW/PT
 TO5TR4BZCN5BGLhw2xdEfFWv2smEXv4mMNEpMNHykP+jmAnsnHIZuDQ93DIcSuOq34Cv
 fY5JxgxFfH/gWL2sem0jC76YuvO/iQFBkfe9nAdRhaCjIWIB2riunmr0XrhPW+BZb/uc
 pDVu8ZA1Sb7lmOuy0afCZ4TE72jujseduucUsibqfMg7JN6xUU1HG5do84Cz0Wo6wNaj
 qW4g==
X-Gm-Message-State: AOAM532f3ZME0hDZVOg4lFPsJ47w1oxWmRZDH0lk1kM+/atnJOh8qUuT
 YM2O8tWH3qM3CyF84rHCYyC3qA==
X-Google-Smtp-Source: ABdhPJwCH5pjvaVVQ6C2muwLRjFSPeu+sMuohXKnxHQ79qrclhxZguUvuBpNEXUFqL18/R6lx8jyfg==
X-Received: by 2002:a17:907:d9f:: with SMTP id
 go31mr5614027ejc.282.1644481832240; 
 Thu, 10 Feb 2022 00:30:32 -0800 (PST)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id h8sm9384574edk.14.2022.02.10.00.30.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Feb 2022 00:30:31 -0800 (PST)
Message-ID: <c9374232-00a3-d046-87f6-29f471b50f5c@blackwall.org>
Date: Thu, 10 Feb 2022 10:30:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
 <20220209130538.533699-3-schultz.hans+netdev@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220209130538.533699-3-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2 2/5] net: bridge: Add support for
 offloading of locked port flag
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

On 09/02/2022 15:05, Hans Schultz wrote:
> Various switchcores support setting ports in locked mode, so that
> clients behind locked ports cannot send traffic through the port
> unless a fdb entry is added with the clients MAC address.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  net/bridge/br_switchdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index f8fbaaa7c501..bf549fc22556 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -72,7 +72,7 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
>  
>  /* Flags that can be offloaded to hardware */
>  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
> +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
>  
>  int br_switchdev_set_port_flag(struct net_bridge_port *p,
>  			       unsigned long flags,

Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

