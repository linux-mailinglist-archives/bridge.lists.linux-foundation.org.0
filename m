Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 314065E898
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:17:04 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0B1DBE95;
	Wed,  3 Jul 2019 16:15:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8EA96F14
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:48:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC4D7837
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:48:09 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id u18so2692518wru.1
	for <bridge@lists.linux-foundation.org>;
	Wed, 03 Jul 2019 05:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=beqYsILooqRPW3j0RSUwQUyxblh5vuyCYKgrIaG7cDk=;
	b=eTdOf/3PTTzB7SaenC7d5D7p0FczTETZ16YprhH+vkQOZJywwCIVup1WxyvBJxxdTi
	AcGcS5EAEB507Q2P6AY8QPGAc0Yg9MImBRlL0+ZSXmujgYLDDFIYR2vlmJH43v3jKTnu
	CkCqDJeyIhjUAK6VXB3jB90vDJrPytTVHN/44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=beqYsILooqRPW3j0RSUwQUyxblh5vuyCYKgrIaG7cDk=;
	b=atksQd6NhoBXrYsc7ikVTvcMD0vLb92vPzthlyEbssf+W0zn8taStDXQeaaG6PHIVn
	ZvQiuAQYt0+lUKC3YwgWpgOlRuDXuVYwBd1PBFhRYuJQCNfpn4emAxCSRff/46ze5ME3
	+fKeXoijfwy2agriDoP5larOD7J1gkGFv+hksQ6tI61kYK+xMY1LtJEVgNyQhIkCrdBF
	aqStuasVjCadZOeWLUQyRhHyPf+doap8phsaSc7avhmK9mrkxc1XMpfF+akTBQQM6kmw
	opZp+MfOxIFaB9/G2XJxVgRN45nbN9qfIdEv8kxYBEJk//3TEKS+oOPk031o78LfWRBf
	g7Pg==
X-Gm-Message-State: APjAAAVcgAhrmWo0z7tlvhnm4uE2LwVz98qbAPGNwmF6opYtwPF4rion
	9R7hGnyljGg1MhvMSC8Ob5nAoeis/BfhTg==
X-Google-Smtp-Source: APXvYqwIyd5diie6+hmYeFi9EFpuMbVQh28dRfWIAB5u5riXOfrISNiMja+WnzOc9lhcuRUE7TQFWg==
X-Received: by 2002:a05:6000:42:: with SMTP id
	k2mr27896814wrx.80.1562158088234; 
	Wed, 03 Jul 2019 05:48:08 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
	by smtp.gmail.com with ESMTPSA id
	p11sm2716670wrm.53.2019.07.03.05.48.07
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 05:48:07 -0700 (PDT)
To: Pablo Neira Ayuso <pablo@netfilter.org>, netfilter-devel@vger.kernel.org
References: <20190703124040.19279-1-pablo@netfilter.org>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a5c31aff-669f-072e-b0f9-499edf6361a8@cumulusnetworks.com>
Date: Wed, 3 Jul 2019 15:48:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190703124040.19279-1-pablo@netfilter.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: wenxu@ucloud.cn, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH] netfilter: nft_meta: fix bridge port vlan ID
	selector
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 03/07/2019 15:40, Pablo Neira Ayuso wrote:
> Use br_vlan_enabled() and br_vlan_get_pvid() helpers as Nikolay
> suggests.
> 
> Rename NFT_META_BRI_PVID to NFT_META_BRI_IIFPVID before this patch hits
> the 5.3 release cycle, to leave room for matching for the output bridge
> port in the future.
> 
> Reported-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Fixes: da4f10a4265b ("netfilter: nft_meta: add NFT_META_BRI_PVID support")
> Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
> ---
>  include/uapi/linux/netfilter/nf_tables.h |  4 ++--
>  net/netfilter/nft_meta.c                 | 17 ++++++++++-------
>  2 files changed, 12 insertions(+), 9 deletions(-)
> 

Ah actually I might've hurried too much with the suggestion, we don't have a helper to
check through a port if vlan filtering has been enabled. The helper assumes that
the device is a bridge. So below you'll have to use p->br->dev with br_vlan_enabled().
And in fact the proper way would be to get the "upper" device via netdev_master_upper_dev_get()
and then to use that in order to avoid direct dereferencing.

> diff --git a/include/uapi/linux/netfilter/nf_tables.h b/include/uapi/linux/netfilter/nf_tables.h
> index 8859535031e2..8a1bd0b1ec8c 100644
> --- a/include/uapi/linux/netfilter/nf_tables.h
> +++ b/include/uapi/linux/netfilter/nf_tables.h
> @@ -795,7 +795,7 @@ enum nft_exthdr_attributes {
>   * @NFT_META_SECPATH: boolean, secpath_exists (!!skb->sp)
>   * @NFT_META_IIFKIND: packet input interface kind name (dev->rtnl_link_ops->kind)
>   * @NFT_META_OIFKIND: packet output interface kind name (dev->rtnl_link_ops->kind)
> - * @NFT_META_BRI_PVID: packet input bridge port pvid
> + * @NFT_META_BRI_IIFPVID: packet input bridge port pvid
>   */
>  enum nft_meta_keys {
>  	NFT_META_LEN,
> @@ -826,7 +826,7 @@ enum nft_meta_keys {
>  	NFT_META_SECPATH,
>  	NFT_META_IIFKIND,
>  	NFT_META_OIFKIND,
> -	NFT_META_BRI_PVID,
> +	NFT_META_BRI_IIFPVID,
>  };
>  
>  /**
> diff --git a/net/netfilter/nft_meta.c b/net/netfilter/nft_meta.c
> index 4f8116de70f8..b8d8adc0852e 100644
> --- a/net/netfilter/nft_meta.c
> +++ b/net/netfilter/nft_meta.c
> @@ -240,14 +240,17 @@ void nft_meta_get_eval(const struct nft_expr *expr,
>  			goto err;
>  		strncpy((char *)dest, p->br->dev->name, IFNAMSIZ);
>  		return;
> -	case NFT_META_BRI_PVID:
> +	case NFT_META_BRI_IIFPVID: {
> +		u16 p_pvid;
> +
>  		if (in == NULL || (p = br_port_get_rtnl_rcu(in)) == NULL)
>  			goto err;
> -		if (br_opt_get(p->br, BROPT_VLAN_ENABLED)) {
> -			nft_reg_store16(dest, br_get_pvid(nbp_vlan_group_rcu(p)));
> -			return;
> -		}
> -		goto err;
> +		if (!br_vlan_enabled(in))
> +			goto err;
> +		br_vlan_get_pvid(in, &p_pvid);
> +		nft_reg_store16(dest, p_pvid);
> +		return;
> +	}
>  #endif
>  	case NFT_META_IIFKIND:
>  		if (in == NULL || in->rtnl_link_ops == NULL)
> @@ -375,7 +378,7 @@ static int nft_meta_get_init(const struct nft_ctx *ctx,
>  			return -EOPNOTSUPP;
>  		len = IFNAMSIZ;
>  		break;
> -	case NFT_META_BRI_PVID:
> +	case NFT_META_BRI_IIFPVID:
>  		if (ctx->family != NFPROTO_BRIDGE)
>  			return -EOPNOTSUPP;
>  		len = sizeof(u16);
> 

