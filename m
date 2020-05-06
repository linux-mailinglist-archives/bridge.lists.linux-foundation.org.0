Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 607CB1C6D83
	for <lists.bridge@lfdr.de>; Wed,  6 May 2020 11:47:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC098876FF;
	Wed,  6 May 2020 09:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ufZ5sTQ2gDOV; Wed,  6 May 2020 09:47:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8127A87708;
	Wed,  6 May 2020 09:47:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 673B1C088B;
	Wed,  6 May 2020 09:47:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 43FBDC0859
 for <bridge@lists.linux-foundation.org>; Wed,  6 May 2020 09:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FC88876D7
 for <bridge@lists.linux-foundation.org>; Wed,  6 May 2020 09:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2qhIofzjymxe for <bridge@lists.linux-foundation.org>;
 Wed,  6 May 2020 09:47:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41A3286E6F
 for <bridge@lists.linux-foundation.org>; Wed,  6 May 2020 09:47:39 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id u4so785229lfm.7
 for <bridge@lists.linux-foundation.org>; Wed, 06 May 2020 02:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/9ah7zhuR4873GSpvZCqmYYEsJCcLFVCYyRiQ4J6Vdk=;
 b=GmeI+UP24kyAPTiBFvucgZ/V4AdmN9uFhZQV85PUDH3V01byOj0XccFF6diF/xZd4E
 +cSoNUycgb8W8kPHInzeAOkcj+nqZPlNvaGrwlGWqFZpY2eMaUa27ZP5I9tqihtthDnx
 6QQKERCXj5PH5svOqIuTE12LsGdy5dfxSTCXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/9ah7zhuR4873GSpvZCqmYYEsJCcLFVCYyRiQ4J6Vdk=;
 b=hYwFJrtgNu4R7iMfF/Yt7V/2wyeGM1OF4yO6QPvz13ZmKyV6OXmPqGW7Z8GgCZTSH3
 ZwqeYkQk6/sTNuMTfFzqitl7Aps6brv5WsqW8k73g4a6FCLCg+co0DLTXT2xW+kEwYUB
 xnkZ2dE0J80Y+WxM0ZqEdQXk75IZDhB9AO23ET/n9olNk9ixSy5lg05CYoeTsWB3mqSN
 +yiAYyM9wnpolM+YDUIycG+C/nO1Yr/oI+28Gyz2SwgH5DVBppv/IJJ4PHuN4W7t4phz
 IeNh1509SWdZhiPaagwqBPvkD/7ANekPo0Dhv7sHmDQUrukyRLTVZSvQ/brauk9CbN/h
 z8+g==
X-Gm-Message-State: AGi0PuagLd7/Iwssqs1fa+n79raxgyD2CS6YL9qpzZ2NCqKIspEjhSnm
 lB7FLfhxo7QeeFVNDgm9n95ZWA==
X-Google-Smtp-Source: APiQypLnD2AvkD2qPRRmjXwr/1RNm41CbdM9Hbn0xbk9jZ1SR3g4pCmCYNoosoZyqZS6x+UMJMpQzA==
X-Received: by 2002:a05:6512:455:: with SMTP id
 y21mr4691981lfk.202.1588758457377; 
 Wed, 06 May 2020 02:47:37 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 23sm954196lju.106.2020.05.06.02.47.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 02:47:36 -0700 (PDT)
To: Jason Yan <yanaijie@huawei.com>, roopa@cumulusnetworks.com,
 davem@davemloft.net, kuba@kernel.org, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200506061616.18929-1-yanaijie@huawei.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <80b3d01a-1bd5-f5c5-abaa-6f3114683617@cumulusnetworks.com>
Date: Wed, 6 May 2020 12:47:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200506061616.18929-1-yanaijie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next] net: bridge: return false in
	br_mrp_enabled()
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

On 06/05/2020 09:16, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> net/bridge/br_private.h:1334:8-9: WARNING: return of 0/1 in function
> 'br_mrp_enabled' with return type bool
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  net/bridge/br_private.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index c35647cb138a..78d3a951180d 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -1331,7 +1331,7 @@ static inline int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
>  
>  static inline bool br_mrp_enabled(struct net_bridge *br)
>  {
> -	return 0;
> +	return false;
>  }
>  
>  static inline void br_mrp_port_del(struct net_bridge *br,
> 
Fixes: 6536993371fab ("bridge: mrp: Integrate MRP into the bridge")
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

