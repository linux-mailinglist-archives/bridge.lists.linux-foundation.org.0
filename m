Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D75E89E
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:17:39 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ADAE21398;
	Wed,  3 Jul 2019 16:15:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 11738F6D
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:58:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B622837
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:58:09 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x15so2110783wmj.3
	for <bridge@lists.linux-foundation.org>;
	Wed, 03 Jul 2019 05:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=+MSJ8g+/dnXpSUMhjnJv5IQm8OrAJX3Wk4TQq7okxSU=;
	b=ALqwCP2gVd5VcVxJD6z5Jv9C1Zo9zHXWPW7oNNVodHZHJVy6/oY2LZqGZXv0ONk/yy
	uDuzfbTyHCfgpYucZGs472x8tV18ZcqgLkeGyxrELHO6eaKwy/RH0PjwaQTZ6h/4bbeR
	rhlIxAHwIDhOT7N8pLLa8hHarv/F8wu9/S/ps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=+MSJ8g+/dnXpSUMhjnJv5IQm8OrAJX3Wk4TQq7okxSU=;
	b=YdMtQVgx+oqmUEhUdPPTifsyrvVpZRoLkDlWmamD1v760DRMFNdTLANfDF5/LLM1wp
	TOqK85uyUA5Oo/d8ay37VnMyGtFwXCqleX7sWeWVa6cchCKWerF+UjQLctsXMQPN5lJn
	1wrC1e7JsEY2BoxVXUJ1Z2kvWbsWk6aSn2ydXxJjZdDMPhIJxzmYObS5I0QGYqOYvggc
	mlqHX+qWO5hD0Jz3YbkyD5y/1iNll1P7rd0Hyyvz6SNek65CMnht7hxc5D3UptKt4w9N
	DG1JaWebP3fX5hSj2VCFJW17Qs/ZcVNq2AoLAVdG/KBvyO158K/a0rGlsSOOZ7q4N5Fr
	2dEQ==
X-Gm-Message-State: APjAAAURPx4DqDOXY3Z9/yexEUUnobg0OWTpFXSHbPPa7T//ogmcr0Pr
	qyz2L2/Psz/34vJOCPWsxhIJLxZcZ5MN7w==
X-Google-Smtp-Source: APXvYqyYMNYv0I4z1OXZwUl47W3nRpud1I/NMj1ClwAox7ibjJU0jQMvvHZlwfxIhoFthOFIj9fb8Q==
X-Received: by 2002:a7b:c455:: with SMTP id l21mr8206556wmi.114.1562158687811; 
	Wed, 03 Jul 2019 05:58:07 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
	by smtp.gmail.com with ESMTPSA id u25sm2812103wmc.3.2019.07.03.05.58.06
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 05:58:07 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>, netfilter-devel@vger.kernel.org
References: <20190703124040.19279-1-pablo@netfilter.org>
	<a5c31aff-669f-072e-b0f9-499edf6361a8@cumulusnetworks.com>
	<36eb3c84-0874-ff18-dfb8-02a907aaccdb@cumulusnetworks.com>
Message-ID: <8021c567-5ed5-037a-d177-8de4557ae359@cumulusnetworks.com>
Date: Wed, 3 Jul 2019 15:58:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <36eb3c84-0874-ff18-dfb8-02a907aaccdb@cumulusnetworks.com>
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

On 03/07/2019 15:53, Nikolay Aleksandrov wrote:
> On 03/07/2019 15:48, Nikolay Aleksandrov wrote:
>> On 03/07/2019 15:40, Pablo Neira Ayuso wrote:
>>> Use br_vlan_enabled() and br_vlan_get_pvid() helpers as Nikolay
>>> suggests.
>>>
>>> Rename NFT_META_BRI_PVID to NFT_META_BRI_IIFPVID before this patch hits
>>> the 5.3 release cycle, to leave room for matching for the output bridge
>>> port in the future.
>>>
>>> Reported-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>>> Fixes: da4f10a4265b ("netfilter: nft_meta: add NFT_META_BRI_PVID support")
>>> Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
>>> ---
>>>  include/uapi/linux/netfilter/nf_tables.h |  4 ++--
>>>  net/netfilter/nft_meta.c                 | 17 ++++++++++-------
>>>  2 files changed, 12 insertions(+), 9 deletions(-)
>>>
>>
>> Ah actually I might've hurried too much with the suggestion, we don't have a helper to
>> check through a port if vlan filtering has been enabled. The helper assumes that
>> the device is a bridge. So below you'll have to use p->br->dev with br_vlan_enabled().
>> And in fact the proper way would be to get the "upper" device via netdev_master_upper_dev_get()
>> and then to use that in order to avoid direct dereferencing.
>>
> 
> Sorry for the multiple replies, I just noticed this is running from fast-path so you'll
> have to use the _rcu variant and check for null since they are unlinked before the port
> flag is removed in del_nbp() (bridge/bf_if.c).
> 

And then just scratch all of that and use p->br->dev directly, I saw it's already dereferenced before. :)
Apologies for the noise.

>>> diff --git a/include/uapi/linux/netfilter/nf_tables.h b/include/uapi/linux/netfilter/nf_tables.h
>>> index 8859535031e2..8a1bd0b1ec8c 100644
>>> --- a/include/uapi/linux/netfilter/nf_tables.h
>>> +++ b/include/uapi/linux/netfilter/nf_tables.h
>>> @@ -795,7 +795,7 @@ enum nft_exthdr_attributes {
>>>   * @NFT_META_SECPATH: boolean, secpath_exists (!!skb->sp)
>>>   * @NFT_META_IIFKIND: packet input interface kind name (dev->rtnl_link_ops->kind)
>>>   * @NFT_META_OIFKIND: packet output interface kind name (dev->rtnl_link_ops->kind)
>>> - * @NFT_META_BRI_PVID: packet input bridge port pvid
>>> + * @NFT_META_BRI_IIFPVID: packet input bridge port pvid
>>>   */
>>>  enum nft_meta_keys {
>>>  	NFT_META_LEN,
>>> @@ -826,7 +826,7 @@ enum nft_meta_keys {
>>>  	NFT_META_SECPATH,
>>>  	NFT_META_IIFKIND,
>>>  	NFT_META_OIFKIND,
>>> -	NFT_META_BRI_PVID,
>>> +	NFT_META_BRI_IIFPVID,
>>>  };
>>>  
>>>  /**
>>> diff --git a/net/netfilter/nft_meta.c b/net/netfilter/nft_meta.c
>>> index 4f8116de70f8..b8d8adc0852e 100644
>>> --- a/net/netfilter/nft_meta.c
>>> +++ b/net/netfilter/nft_meta.c
>>> @@ -240,14 +240,17 @@ void nft_meta_get_eval(const struct nft_expr *expr,
>>>  			goto err;
>>>  		strncpy((char *)dest, p->br->dev->name, IFNAMSIZ);
>>>  		return;
>>> -	case NFT_META_BRI_PVID:
>>> +	case NFT_META_BRI_IIFPVID: {
>>> +		u16 p_pvid;
>>> +
>>>  		if (in == NULL || (p = br_port_get_rtnl_rcu(in)) == NULL)
>>>  			goto err;
>>> -		if (br_opt_get(p->br, BROPT_VLAN_ENABLED)) {
>>> -			nft_reg_store16(dest, br_get_pvid(nbp_vlan_group_rcu(p)));
>>> -			return;
>>> -		}
>>> -		goto err;
>>> +		if (!br_vlan_enabled(in))
>>> +			goto err;
>>> +		br_vlan_get_pvid(in, &p_pvid);
>>> +		nft_reg_store16(dest, p_pvid);
>>> +		return;
>>> +	}
>>>  #endif
>>>  	case NFT_META_IIFKIND:
>>>  		if (in == NULL || in->rtnl_link_ops == NULL)
>>> @@ -375,7 +378,7 @@ static int nft_meta_get_init(const struct nft_ctx *ctx,
>>>  			return -EOPNOTSUPP;
>>>  		len = IFNAMSIZ;
>>>  		break;
>>> -	case NFT_META_BRI_PVID:
>>> +	case NFT_META_BRI_IIFPVID:
>>>  		if (ctx->family != NFPROTO_BRIDGE)
>>>  			return -EOPNOTSUPP;
>>>  		len = sizeof(u16);
>>>
>>
> 

