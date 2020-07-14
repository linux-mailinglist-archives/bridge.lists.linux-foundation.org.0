Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A473721F252
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:20:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDF968A19F;
	Tue, 14 Jul 2020 13:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0dsfaDmb0X51; Tue, 14 Jul 2020 13:20:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59A888A27B;
	Tue, 14 Jul 2020 13:20:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37FE8C08A9;
	Tue, 14 Jul 2020 13:20:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74F7BC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F73D8A19F
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9dlmIEdMywa for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:20:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FE2E89F70
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:20:43 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f18so5873233wml.3
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=PCjcGLeWxMEylzBxwOcSQmoCFLwBY4GeEPrQDHmN/hY=;
 b=geA+GGrTz3JLPWFWmv855lCH2TrzOQtleq9xQCcvZYkx8Pcwg47lgdJNzni68Cp64p
 Wla75b8GIDQiTGQtNmilmCu/SWFZa58Tacicf6TlInFN+RkF1bCcln+Tdt+bu3SDMlMW
 LESiqBsNlzgULNDuM3ANCXWzxQMUvBJh35yOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PCjcGLeWxMEylzBxwOcSQmoCFLwBY4GeEPrQDHmN/hY=;
 b=eLYLwf+LZF6I4GreIYjFLTN+LZy5xd9Q8yHOTmCjc4MfCfifesRETqsy0rMIBT6x8+
 8dI488cWgNH33Oz/LHNgVJtgmE7domRC+88iU5xZuAfl4CPR4ztx3JpomuLbm22i25VW
 Y1KOzNUJ8cEFiTJP1wNqTrA3UKwK6sMyqVY7D+mGKqAd7yVS0+HAX3jIcOBRvjnPwrMU
 aZaC/LAGjt9EzY7LNj7dUdL6pAJXDkf++Wc+cqd5eOwp4uk2dNCIXVDY1JTM9MfYQk1K
 Xw/e15lWs+uaegtUXK6O7Gm+TSUrTguhOFTJjIx9mmwiH9DxXdqRHEUPVM0LrNjiBuz0
 dRFQ==
X-Gm-Message-State: AOAM530AoKSEqJ8pSoq54ScZroZiLvu27roV/Meabj6BDdRK4PBJNJy0
 u3HXGUcJ4qQe203fc3zyv8R2teQx+xobFA==
X-Google-Smtp-Source: ABdhPJyEe1ow3LNk8kioPrAZ9Q992uWvxW6P8mLOO0Q3aUY9OtPFWs/c9le3UPglodIrcMaHX3khYA==
X-Received: by 2002:a1c:98c1:: with SMTP id a184mr4550304wme.116.1594732523087; 
 Tue, 14 Jul 2020 06:15:23 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a22sm4072894wmb.4.2020.07.14.06.15.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:15:22 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-5-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <6267e42e-4f40-db44-e132-98fb29889830@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:15:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-5-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 04/12] bridge: mrp: Extend br_mrp
 for MRP interconnect
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

On 14/07/2020 10:34, Horatiu Vultur wrote:
> This patch extends the 'struct br_mrp' to contain information regarding
> the MRP interconnect. It contains the following:
> - the interconnect port 'i_port', which is NULL if the node doesn't have
>   a interconnect role
> - the interconnect id, which is similar with the ring id, but this field
>   is also part of the MRP_InTest frames.
> - the interconnect role, which can be MIM or MIC.
> - the interconnect state, which can be open or closed.
> - the interconnect delayed_work for sending MRP_InTest frames and check
>   for lost of continuity.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_private_mrp.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index 315eb37d89f0f..8841ba847fb29 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -12,8 +12,10 @@ struct br_mrp {
>  
>  	struct net_bridge_port __rcu	*p_port;
>  	struct net_bridge_port __rcu	*s_port;
> +	struct net_bridge_port __rcu	*i_port;
>  
>  	u32				ring_id;
> +	u16				in_id;
>  	u16				prio;
>  
>  	enum br_mrp_ring_role_type	ring_role;
> @@ -21,6 +23,11 @@ struct br_mrp {
>  	enum br_mrp_ring_state_type	ring_state;
>  	u32				ring_transitions;
>  
> +	enum br_mrp_in_role_type	in_role;
> +	u8				in_role_offloaded;
> +	enum br_mrp_in_state_type	in_state;
> +	u32				in_transitions;
> +
>  	struct delayed_work		test_work;
>  	u32				test_interval;
>  	unsigned long			test_end;
> @@ -28,6 +35,12 @@ struct br_mrp {
>  	u32				test_max_miss;
>  	bool				test_monitor;
>  
> +	struct delayed_work		in_test_work;
> +	u32				in_test_interval;
> +	unsigned long			in_test_end;
> +	u32				in_test_count_miss;
> +	u32				in_test_max_miss;
> +
>  	u32				seq_id;
>  
>  	struct rcu_head			rcu;
> 

