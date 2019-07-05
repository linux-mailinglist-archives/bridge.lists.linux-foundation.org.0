Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AE25660234
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:34:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 79095105B;
	Fri,  5 Jul 2019 08:34:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 015F91048
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:34:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 422CB70D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:34:16 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f17so8457641wme.2
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=r3lGgRnicuPNFZr2O4ZtbEG+K1gZsD34WtCIEk2WtSk=;
	b=DG/iKCcta6FD6QtcOtoWdN2CfsoU+3XDeoI5rYX0407kk7AFVw6STuQStNtN+xdLKs
	yikrlqGHbJUvhnsCEnnoZd2pQFgzM4AkRYTZKdMStr23Mt9tYyrKQdyWYL7NU7fj0hZ0
	siyUiTLydRMLt9mItuGk+Tr7g6TOUNtNjMR9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=r3lGgRnicuPNFZr2O4ZtbEG+K1gZsD34WtCIEk2WtSk=;
	b=TVq89QuPavS8zQaNvVhKaUsds10gXLhbyl6oyHb0MS/0l+rbQ+6n+vzHwDB9S3wVuI
	7ZJd8VOB5jXJqtleTnUVQfE59NYW9KvDtQAbOJ5tZPNqNTNbQnu2KQ053sOrTQ59932A
	/ms7kA68NSFyEOvKMOi9C/B4kn3lInHdPVMXl3/sPxyN0Na4S+yB+rW8zHbrcwadyOR5
	E7EFjRL5RVYbKdYx6qIar//4Vv5Xag2YDvYLNBYQh0PV00/Bm8ac8dXNeb0PY4QBFSfc
	LG6QeZXrFYlRl4RYsI27+XP6g42pHPB04IKB0+CObPw2frt5a8PbX3Id8VgLkDhOClCI
	h/GQ==
X-Gm-Message-State: APjAAAUFFK4g6Y5H3H/Pb0QQnFHRxKCBay6hQfKMY56LHokOJA+mUpCX
	3m83UOjTktOI6mFYBEQwg4T7fDW5ZX/whg==
X-Google-Smtp-Source: APXvYqzce/PnY16d4yo9T7PQO2S3H5ArgZQfhRI7m1rjVcGRn2bqBnTLNfwgM+dzfe1SboVQvr2hVA==
X-Received: by 2002:a1c:a101:: with SMTP id k1mr2380862wme.98.1562315654588;
	Fri, 05 Jul 2019 01:34:14 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id 5sm7114089wmi.22.2019.07.05.01.34.13
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:34:13 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
	<1562224955-3979-7-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <fb62760f-aa41-111a-c2a6-e66e099533c0@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:34:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-7-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 7/7 nf-next] netfilter:nft_meta: add
	NFT_META_VLAN support
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

On 04/07/2019 10:22, wenxu@ucloud.cn wrote:
> From: wenxu <wenxu@ucloud.cn>
> 
> This patch provide a meta vlan to set the vlan tag of the packet.
> 
> for q-in-q outer vlan id 20:
> meta vlan set 0x88a8:20
> 
> set the default 0x8100 vlan type with vlan id 20
> meta vlan set 20
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/net/netfilter/nft_meta.h         |  5 ++++-
>  include/uapi/linux/netfilter/nf_tables.h |  4 ++++
>  net/netfilter/nft_meta.c                 | 22 ++++++++++++++++++++++
>  3 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net/netfilter/nft_meta.h b/include/net/netfilter/nft_meta.h
> index 5c69e9b..cb0f1e8 100644
> --- a/include/net/netfilter/nft_meta.h
> +++ b/include/net/netfilter/nft_meta.h
> @@ -6,7 +6,10 @@ struct nft_meta {
>  	enum nft_meta_keys	key:8;
>  	union {
>  		enum nft_registers	dreg:8;
> -		enum nft_registers	sreg:8;
> +		struct {
> +			enum nft_registers	sreg:8;
> +			enum nft_registers	sreg2:8;
> +		};
>  	};
>  };
>  
> diff --git a/include/uapi/linux/netfilter/nf_tables.h b/include/uapi/linux/netfilter/nf_tables.h
> index a0d1dbd..699524a 100644
> --- a/include/uapi/linux/netfilter/nf_tables.h
> +++ b/include/uapi/linux/netfilter/nf_tables.h
> @@ -797,6 +797,7 @@ enum nft_exthdr_attributes {
>   * @NFT_META_OIFKIND: packet output interface kind name (dev->rtnl_link_ops->kind)
>   * @NFT_META_BRI_IIFPVID: packet input bridge port pvid
>   * @NFT_META_BRI_IIFVPROTO: packet input bridge vlan proto
> + * @NFT_META_VLAN: packet vlan metadata
>   */
>  enum nft_meta_keys {
>  	NFT_META_LEN,
> @@ -829,6 +830,7 @@ enum nft_meta_keys {
>  	NFT_META_OIFKIND,
>  	NFT_META_BRI_IIFPVID,
>  	NFT_META_BRI_IIFVPROTO,
> +	NFT_META_VLAN,
>  };
>  
>  /**
> @@ -895,12 +897,14 @@ enum nft_hash_attributes {
>   * @NFTA_META_DREG: destination register (NLA_U32)
>   * @NFTA_META_KEY: meta data item to load (NLA_U32: nft_meta_keys)
>   * @NFTA_META_SREG: source register (NLA_U32)
> + * @NFTA_META_SREG2: source register (NLA_U32)
>   */
>  enum nft_meta_attributes {
>  	NFTA_META_UNSPEC,
>  	NFTA_META_DREG,
>  	NFTA_META_KEY,
>  	NFTA_META_SREG,
> +	NFTA_META_SREG2,
>  	__NFTA_META_MAX
>  };
>  #define NFTA_META_MAX		(__NFTA_META_MAX - 1)
> diff --git a/net/netfilter/nft_meta.c b/net/netfilter/nft_meta.c
> index 18a848b..9303de3 100644
> --- a/net/netfilter/nft_meta.c
> +++ b/net/netfilter/nft_meta.c
> @@ -271,6 +271,17 @@ void nft_meta_set_eval(const struct nft_expr *expr,
>  		skb->secmark = value;
>  		break;
>  #endif
> +	case NFT_META_VLAN: {
> +		u32 *sreg2 = &regs->data[meta->sreg2];
> +		__be16 vlan_proto;
> +		u16 vlan_tci;
> +
> +		vlan_tci = nft_reg_load16(sreg);
> +		vlan_proto = nft_reg_load16(sreg2);

Is there supposed to be any validation of these values below
when they're being added by the user ?
Otherwise you could add any tag here, even invalid one.

> +
> +		__vlan_hwaccel_put_tag(skb, vlan_proto, vlan_tci);
> +		break;
> +	}
>  	default:
>  		WARN_ON(1);
>  	}
> @@ -281,6 +292,7 @@ void nft_meta_set_eval(const struct nft_expr *expr,
>  	[NFTA_META_DREG]	= { .type = NLA_U32 },
>  	[NFTA_META_KEY]		= { .type = NLA_U32 },
>  	[NFTA_META_SREG]	= { .type = NLA_U32 },
> +	[NFTA_META_SREG2]	= { .type = NLA_U32 },
>  };
>  EXPORT_SYMBOL_GPL(nft_meta_policy);
>  
> @@ -432,6 +444,13 @@ int nft_meta_set_init(const struct nft_ctx *ctx,
>  	case NFT_META_PKTTYPE:
>  		len = sizeof(u8);
>  		break;
> +	case NFT_META_VLAN:
> +		len = sizeof(u16);
> +		priv->sreg2 = nft_parse_register(tb[NFTA_META_SREG2]);
> +		err = nft_validate_register_load(priv->sreg2, len);
> +		if (err < 0)
> +			return err;
> +		break;
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -457,6 +476,9 @@ int nft_meta_get_dump(struct sk_buff *skb,
>  		goto nla_put_failure;
>  	if (nft_dump_register(skb, NFTA_META_DREG, priv->dreg))
>  		goto nla_put_failure;
> +	if (priv->key == NFT_META_VLAN &&
> +	    nft_dump_register(skb, NFTA_META_SREG2, priv->sreg2))
> +		goto nla_put_failure;
>  	return 0;
>  
>  nla_put_failure:
> 

