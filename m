Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E7F67DB3
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:07:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C18D46D29;
	Sun, 14 Jul 2019 06:04:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B8D581C2F
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 12:02:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDAB487E
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 12:02:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n9so3195529wrr.4
	for <bridge@lists.linux-foundation.org>;
	Sat, 06 Jul 2019 05:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=4EbNExg+eeJy8G4OPlBwKsMIGrrWxQfyRl+kvZT6XoE=;
	b=EQ3u+Arfn+T84bTpym4AoPrymvvWZgkDFzNQq0a/dq5Q4pDylnihfnFR1E6gfGNurD
	02tqdOt0ntAaUasXpwZQqY9RLJ2GVNCk0S71PSrO4wD1AsJS6Hxr5q0wgorXbKqxjjYU
	t8QvpnnsweerViwwVx1ZnuH1gHwkGhUFf2QzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=4EbNExg+eeJy8G4OPlBwKsMIGrrWxQfyRl+kvZT6XoE=;
	b=VeEBdzg6u5kF9qyz/aMaOrupz1WHJMhEKvWLSYBJPxO5InNI1h63bWhUgAPo68LFs+
	k17EI5TJrWfuAGkiYxNy+9TLjXOC0ZlpUaFZ7GxFTZip78qZLMBJkJwGPUEusDvFQcT4
	aJtA5DQmlHIiS1KC8VD22KRf480EfjYyLfRCqMq9hmbYyRDYICtldkNkXShuHiNQZnBn
	h2g7SK5IXA3UKChPwD9XZy0lnsVRpkDhGOHg3N12y2HocIFHxOJazvAqK2uhkRUthmSL
	EYNZ5ry2nEqHKbOaZH2T+eN1/DHmvAzav2IKGLdzEGZsXtEhEU21hmx3g9wsu46t654e
	Z15g==
X-Gm-Message-State: APjAAAXjwMxbCXsSpnxmnMipmmO6azzjfe6JPEKutvSZxiDMATclw7yF
	cCfXQFYXQDYXH/Byjgawa5a6fta+QBk=
X-Google-Smtp-Source: APXvYqwrND7Z7euDzBteINY2CyuK2aTxQFWf1dlkZ0Y1miBSdPadDvgU0QLveKN1v2Rydj+kRqqecw==
X-Received: by 2002:adf:ecc4:: with SMTP id s4mr9651980wro.331.1562414563602; 
	Sat, 06 Jul 2019 05:02:43 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id x6sm5674002wrt.63.2019.07.06.05.02.42
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 05:02:42 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
	<1562332598-17415-7-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <caaaa242-6bb8-9d5e-af66-a0cd6592f81d@cumulusnetworks.com>
Date: Sat, 6 Jul 2019 15:02:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562332598-17415-7-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH nf-next v2] netfilter:nft_meta: add
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

On 05/07/2019 16:16, wenxu@ucloud.cn wrote:
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
>  net/netfilter/nft_meta.c                 | 25 +++++++++++++++++++++++++
>  3 files changed, 33 insertions(+), 1 deletion(-)
> 

The patch looks fine, just a note: you'll only be able to work with the
outer tag, so guessing to achieve a double-tagged frame you'll have to
add another NFT_META_VLAN_INNER(?) and will have to organize them one
after another.

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

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
> index 18a848b..fb3d12e 100644
> --- a/net/netfilter/nft_meta.c
> +++ b/net/netfilter/nft_meta.c
> @@ -271,6 +271,20 @@ void nft_meta_set_eval(const struct nft_expr *expr,
>  		skb->secmark = value;
>  		break;
>  #endif
> +	case NFT_META_VLAN: {
> +		u32 *sreg2 = &regs->data[meta->sreg2];
> +		u16 vlan_proto;
> +		u16 vlan_tci;
> +
> +		vlan_tci = nft_reg_load16(sreg);
> +		vlan_proto = nft_reg_load16(sreg2);
> +
> +		if (vlan_proto != ETH_P_8021Q && vlan_proto != ETH_P_8021AD)
> +			return;
> +
> +		__vlan_hwaccel_put_tag(skb, htons(vlan_proto), vlan_tci & VLAN_VID_MASK);
> +		break;
> +	}
>  	default:
>  		WARN_ON(1);
>  	}
> @@ -281,6 +295,7 @@ void nft_meta_set_eval(const struct nft_expr *expr,
>  	[NFTA_META_DREG]	= { .type = NLA_U32 },
>  	[NFTA_META_KEY]		= { .type = NLA_U32 },
>  	[NFTA_META_SREG]	= { .type = NLA_U32 },
> +	[NFTA_META_SREG2]	= { .type = NLA_U32 },
>  };
>  EXPORT_SYMBOL_GPL(nft_meta_policy);
>  
> @@ -432,6 +447,13 @@ int nft_meta_set_init(const struct nft_ctx *ctx,
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
> @@ -457,6 +479,9 @@ int nft_meta_get_dump(struct sk_buff *skb,
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

