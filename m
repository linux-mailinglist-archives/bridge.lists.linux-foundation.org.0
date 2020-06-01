Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 403CE1EA460
	for <lists.bridge@lfdr.de>; Mon,  1 Jun 2020 15:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBA2085E8A;
	Mon,  1 Jun 2020 13:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IW5Wbpn_CJXf; Mon,  1 Jun 2020 13:02:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E70985E93;
	Mon,  1 Jun 2020 13:02:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 43B48C088C;
	Mon,  1 Jun 2020 13:02:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A0E5C0176
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 13:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 08D7A85E8A
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 13:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q6egIM7XohPA for <bridge@lists.linux-foundation.org>;
 Mon,  1 Jun 2020 13:02:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9DF8A85C19
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 13:02:52 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id l11so11491834wru.0
 for <bridge@lists.linux-foundation.org>; Mon, 01 Jun 2020 06:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=c+QoV/HcMCTMVpf40QgOdghuE0cBC54AdoG6hgzUvEU=;
 b=bXNGLd36g19lQhm9wc2ucAu6ZWWI/gszeaBbB1NS+obGicxXFoHjlU2iinmTbvKo70
 Id6xXBUi/krErs7Q6DieEbq471E+GLthmwz5o/nNEmXxiyGvqE4VogS/eEnUeMnD5Th6
 pcrcl+e6USCW+qGg58swXjw+R6EjNCNcgQ5kY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c+QoV/HcMCTMVpf40QgOdghuE0cBC54AdoG6hgzUvEU=;
 b=seBkd1WXP4V5msyijgJQvIkXpOk43/unRokDpE540QT96pXlu4wGYJTI+hV+EzRbKC
 1pzp8KHqLYn1mhluVh/XwY4TiT6EyluZgMfmZT3w/FHbpNTwse+5xeLoscleNlwL7hUK
 TTW4jHNAMr+X0ZiPOSWUzZ4P/UnF4meaLI2dfPnSZHSzt8vUPm5gEkn4jYrnz6JGgZUm
 wlf0ZY3qaYP13J5YrySEjM+7ou+0LM8JxfMi6PURj8DkU7rMbUBHI8OwTk0gTpRQ11x9
 GXwf5/N+xfch0AsDXdTm59AZP/q/XLgzlRMWDqYUV9aUD+Etkc0U8tK4i7Jl/gVnJEvD
 X/iw==
X-Gm-Message-State: AOAM532+eSLvGVcxn67DeBnPhSMgzJyb1UOt/Nx6Ga87RfG0LsJjkpea
 7r4/ZxwA1Rfhw4uSrIBbRYSDIw==
X-Google-Smtp-Source: ABdhPJyvJgDBLwC4bSkCDVyoydG38HExBeyXwTCGezzxTjgwWFG8eRidscqY9ZUDo/lnnpjqVUHz/Q==
X-Received: by 2002:a5d:4a43:: with SMTP id v3mr23124419wrs.115.1591016570931; 
 Mon, 01 Jun 2020 06:02:50 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id l1sm12897330wrb.31.2020.06.01.06.02.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 06:02:50 -0700 (PDT)
To: Ido Schimmel <idosch@idosch.org>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20200601125855.1751343-1-idosch@idosch.org>
 <20200601125855.1751343-3-idosch@idosch.org>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <b0466e34-47a5-b71f-58bd-321955fdb9aa@cumulusnetworks.com>
Date: Mon, 1 Jun 2020 16:02:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200601125855.1751343-3-idosch@idosch.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: mlxsw@mellanox.com, roopa@cumulusnetworks.com, dlstevens@us.ibm.com,
 Ido Schimmel <idosch@mellanox.com>, allas@mellanox.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 2/2] vxlan: Avoid infinite loop when
 suppressing NS messages with invalid options
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

On 01/06/2020 15:58, Ido Schimmel wrote:
> From: Ido Schimmel <idosch@mellanox.com>
> 
> When proxy mode is enabled the vxlan device might reply to Neighbor
> Solicitation (NS) messages on behalf of remote hosts.
> 
> In case the NS message includes the "Source link-layer address" option
> [1], the vxlan device will use the specified address as the link-layer
> destination address in its reply.
> 
> To avoid an infinite loop, break out of the options parsing loop when
> encountering an option with length zero and disregard the NS message.
> 
> This is consistent with the IPv6 ndisc code and RFC 4886 which states
> that "Nodes MUST silently discard an ND packet that contains an option
> with length zero" [2].
> 
> [1] https://tools.ietf.org/html/rfc4861#section-4.3
> [2] https://tools.ietf.org/html/rfc4861#section-4.6
> 
> Fixes: 4b29dba9c085 ("vxlan: fix nonfunctional neigh_reduce()")
> Signed-off-by: Ido Schimmel <idosch@mellanox.com>
> ---
>  drivers/net/vxlan.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/vxlan.c b/drivers/net/vxlan.c
> index a5b415fed11e..779e56c43d27 100644
> --- a/drivers/net/vxlan.c
> +++ b/drivers/net/vxlan.c
> @@ -1924,6 +1924,10 @@ static struct sk_buff *vxlan_na_create(struct sk_buff *request,
>  	ns_olen = request->len - skb_network_offset(request) -
>  		sizeof(struct ipv6hdr) - sizeof(*ns);
>  	for (i = 0; i < ns_olen-1; i += (ns->opt[i+1]<<3)) {
> +		if (!ns->opt[i + 1]) {
> +			kfree_skb(reply);
> +			return NULL;
> +		}
>  		if (ns->opt[i] == ND_OPT_SOURCE_LL_ADDR) {
>  			daddr = ns->opt + i + sizeof(struct nd_opt_hdr);
>  			break;
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
