Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E400D1EA45D
	for <lists.bridge@lfdr.de>; Mon,  1 Jun 2020 15:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E6B232038D;
	Mon,  1 Jun 2020 13:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XAUhsCNghCim; Mon,  1 Jun 2020 13:02:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 1677420134;
	Mon,  1 Jun 2020 13:02:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E83D7C0176;
	Mon,  1 Jun 2020 13:02:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 51301C0176
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 13:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CF0C86F88
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 13:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYpqWRkar2-b for <bridge@lists.linux-foundation.org>;
 Mon,  1 Jun 2020 13:02:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B3B581AC1
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 13:02:20 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id e1so11449951wrt.5
 for <bridge@lists.linux-foundation.org>; Mon, 01 Jun 2020 06:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zvdN0KlmX3wZK+orI8fawnIsdS+O3fazG4GsTX6VAMw=;
 b=glDPvZpDBHShxX0NxVM/DL3zWnixukRAJ0kclV+fg9UWRYFG+l0sxSBJB4ZQn5X42z
 qF2wNbjf8pi++voupgIx2DSHBGUbwIvEg7cFR2RSvhagj5UHYQxjWVASO4JYMnfLjVg5
 ZdMuu+rbpSI7t6EoSbHeama679hQyfITJMGtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zvdN0KlmX3wZK+orI8fawnIsdS+O3fazG4GsTX6VAMw=;
 b=oD+VP/N6JGKEbaW4sqmWpC0IWKNaFvXUq++Rl75CjLQ2iAfFgBV0Y9Lq5KB9gRdP9J
 0PSshP21TNy0XcXKaerPYyP33Ftv9KGcnPKNfAjfXVxW7aYrlpUGYkwQ+tDvb7P3dLfx
 7WFuNFFgN2JOrJ7ayB1zTnVCwOE9QgXcrJyTSgk5yi+/eKZuEE9tovN9eR6Z3tqwj0a7
 c7GtAGb2yjfCRACjkDU6lODVgfp2RkCkkiVksg8mBgAsELE/gDxoIv+EsrE0YrAklkSx
 1EdGG34v3zSzJRw6UYq3VbIC2oWz1bwSWDLF9hiC7hHh6M5vOxyOMWUWAmHZBImG5LT3
 LkoQ==
X-Gm-Message-State: AOAM532Kf82af5NsGvdauIGWa6nc3Mwfw7djxF9SpueEatXVETtuN4lA
 tuQSqxu1L0+pDls+VfYpyiqUGQ==
X-Google-Smtp-Source: ABdhPJzQKtYwLPVnq7gokB1pCd+55Kguwy/aCan4uC20Cs5DFU2CIeIlQb9adydVmm4U6wGkic9g0w==
X-Received: by 2002:a5d:5492:: with SMTP id h18mr21219699wrv.330.1591016538339; 
 Mon, 01 Jun 2020 06:02:18 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s132sm13750541wmf.12.2020.06.01.06.02.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 06:02:17 -0700 (PDT)
To: Ido Schimmel <idosch@idosch.org>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20200601125855.1751343-1-idosch@idosch.org>
 <20200601125855.1751343-2-idosch@idosch.org>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <7e2ffbf7-b756-04ee-1210-a11fd26d1237@cumulusnetworks.com>
Date: Mon, 1 Jun 2020 16:02:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200601125855.1751343-2-idosch@idosch.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: mlxsw@mellanox.com, roopa@cumulusnetworks.com, dlstevens@us.ibm.com,
 Ido Schimmel <idosch@mellanox.com>, allas@mellanox.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 1/2] bridge: Avoid infinite loop when
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
> When neighbor suppression is enabled the bridge device might reply to
> Neighbor Solicitation (NS) messages on behalf of remote hosts.
> 
> In case the NS message includes the "Source link-layer address" option
> [1], the bridge device will use the specified address as the link-layer
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
> Fixes: ed842faeb2bd ("bridge: suppress nd pkts on BR_NEIGH_SUPPRESS ports")
> Signed-off-by: Ido Schimmel <idosch@mellanox.com>
> Reported-by: Alla Segal <allas@mellanox.com>
> Tested-by: Alla Segal <allas@mellanox.com>
> ---
>  net/bridge/br_arp_nd_proxy.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
> index 37908561a64b..b18cdf03edb3 100644
> --- a/net/bridge/br_arp_nd_proxy.c
> +++ b/net/bridge/br_arp_nd_proxy.c
> @@ -276,6 +276,10 @@ static void br_nd_send(struct net_bridge *br, struct net_bridge_port *p,
>  	ns_olen = request->len - (skb_network_offset(request) +
>  				  sizeof(struct ipv6hdr)) - sizeof(*ns);
>  	for (i = 0; i < ns_olen - 1; i += (ns->opt[i + 1] << 3)) {
> +		if (!ns->opt[i + 1]) {
> +			kfree_skb(reply);
> +			return;
> +		}
>  		if (ns->opt[i] == ND_OPT_SOURCE_LL_ADDR) {
>  			daddr = ns->opt + i + sizeof(struct nd_opt_hdr);
>  			break;
> 

Good catch!
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
