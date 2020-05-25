Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1FA1E08DD
	for <lists.bridge@lfdr.de>; Mon, 25 May 2020 10:34:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B9E686268;
	Mon, 25 May 2020 08:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KafVFQobZcUr; Mon, 25 May 2020 08:34:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B20085FC7;
	Mon, 25 May 2020 08:34:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41FF5C016F;
	Mon, 25 May 2020 08:34:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EE216C016F
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 08:34:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDD8486246
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 08:34:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJzReZJV6D+c for <bridge@lists.linux-foundation.org>;
 Mon, 25 May 2020 08:34:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2B78860BF
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 08:34:21 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id y5so2039510wmj.4
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 01:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xsaSOL3nxn5UWojYLGHf0GidZv1f0eBsy1Kan4mSPis=;
 b=WiBv6JwgwoGFabLxJtlkNV2QTT18NNEhPH3iMNUS8TNvE4V38+UFSMP4ahMe76Z26m
 3WZNnG0LPNH7VrsaC39jgTQrROurGyfDpKw9DM/HRotlOw/dSjLuFAmFmcccTchAX/FM
 JBqeHfDHPNhynj+Szb4t+GSyQIGsQ902ccVIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xsaSOL3nxn5UWojYLGHf0GidZv1f0eBsy1Kan4mSPis=;
 b=YbJyZLgO3prOqxCSA+gxjG433p9tHcrknpwKwMXyDtF7rBNERilEbbnHYBFFg7nsNm
 5sCiLRjLF6zqODAc5lhA04b0SS6AVR2ppREPLS8LSpfUpLdyuWPdvU8PCcbkV6bnhpq8
 6yxx09iJb/n8xa20pwIP1XG4ar6FZ+a1lWZG6mS2Xp9vFchHqeTCNt4Yh0JksS1LsQCM
 PsnA+jD+N8g4VyjyrkihqOYo5XVhe+RDznN9XAIppgmrsKGcxE2g/81J5uD5BTNZWJRf
 ugo8rfjfW/jGtsa5iIRYyCaPE7bwh0YKM8wn9EVnl37/5cJe+4UkPzGAJAcW8cGhuTbj
 Svpw==
X-Gm-Message-State: AOAM532D7XwW/uBhFhAfSn2K0mS+XMOKK15VL5m32knoSDWa0u8tgwfS
 qEpI+M9DyarAC786YKWyemfAmw==
X-Google-Smtp-Source: ABdhPJw2JzSdmK+zGATfwn4L+ZqcmuGdyIA8qCQDbzPpHHsPfwKHLuj/teLJ0K9DtYwDmAbqpesjOw==
X-Received: by 2002:a1c:808d:: with SMTP id b135mr1598301wmd.94.1590395660196; 
 Mon, 25 May 2020 01:34:20 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id p4sm17583856wrq.31.2020.05.25.01.34.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 01:34:19 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200525095541.46673-1-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a44f412e-dbde-93e9-be72-78515fa5b9d4@cumulusnetworks.com>
Date: Mon, 25 May 2020 11:34:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200525095541.46673-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com
Subject: Re: [Bridge] [PATCH] bridge: mrp: Fix out-of-bounds read in
	br_mrp_parse
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

On 25/05/2020 12:55, Horatiu Vultur wrote:
> The issue was reported by syzbot. When the function br_mrp_parse was
> called with a valid net_bridge_port, the net_bridge was an invalid
> pointer. Therefore the check br->stp_enabled could pass/fail
> depending where it was pointing in memory.
> The fix consists of setting the net_bridge pointer if the port is a
> valid pointer.
> 
> Reported-by: syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com
> Fixes: 6536993371fa ("bridge: mrp: Integrate MRP into the bridge")
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp_netlink.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index 397e7f710772a..4a08a99519b04 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -27,6 +27,12 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  	struct nlattr *tb[IFLA_BRIDGE_MRP_MAX + 1];
>  	int err;
>  
> +	/* When this function is called for a port then the br pointer is
> +	 * invalid, therefor set the br to point correctly
> +	 */
> +	if (p)
> +		br = p->br;
> +
>  	if (br->stp_enabled != BR_NO_STP) {
>  		NL_SET_ERR_MSG_MOD(extack, "MRP can't be enabled if STP is already enabled");
>  		return -EINVAL;
> 

You should tag the fix for net-next when it's intended for it.

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
