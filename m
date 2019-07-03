Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9105E896
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:16:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 082691355;
	Wed,  3 Jul 2019 16:15:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12D15FD9
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:42:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 98C1B873
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:42:31 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f9so2619236wre.12
	for <bridge@lists.linux-foundation.org>;
	Wed, 03 Jul 2019 05:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=73Z6yaJsbbbf40V41AoK++cX14SZrBNYZG3bmClY4Bw=;
	b=d6A9vpWiEVL4F9MfpBZtNmambPX5TD74hHk4/m94ZZJ32OR7y41As3AoBuhMqn5Fvm
	A60sXgnHhItyvcr8+f/b44l0kevZgPqUq1QkZzuMsE+QgE6yvmA3HuVrLc/ptgrIoQHq
	OTweLldz3cbbKaDZ/aXxE+LMdTJNFhA9EQBmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=73Z6yaJsbbbf40V41AoK++cX14SZrBNYZG3bmClY4Bw=;
	b=tmmLwiAwRnkysLCyM8xX+VkQw2i/7j7x9wqo705JRjWc/qWOl8FMq6zBN5okHpE0OF
	eUXrparRHm92oTsXrkNpnbETouNHUCM/lX3R2NwRsa1VFgbp7fPaoDhb2hVzBRWE2FWj
	H0/7Jb0LgPR56gAupQuW2XUiH42VJyyS+pVBv0l7J5NItkSJJQjECsSUX7CmD5zwVwlE
	qEXafqLANFhZCaFOqLFPvatZmJlNGnoPRWAugFDqw0Keg/T5LFX4tJtYXFVT60qYiyBL
	pthD54Gh7mWm2iZ96tjrIjZd1Gj62aP++yaOlUtM6cyQiZWTT7znTSfQTYYlc3GbYHoh
	xbPw==
X-Gm-Message-State: APjAAAVAR8rsw8YipugAegR8xg8033A7L4D+LGt6dZjApHbraZLx36sX
	ZMElSB6oS4JH/wewulHRzfEWUIYJSAsldQ==
X-Google-Smtp-Source: APXvYqwu+ZNLwsh1hRenpZ4VYj7OEO7jKkoRjzsBqLhzuKo3EkkLagaCVt/csDku21rsxRpSdwFekg==
X-Received: by 2002:adf:de07:: with SMTP id b7mr5117612wrm.318.1562157749989; 
	Wed, 03 Jul 2019 05:42:29 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
	by smtp.gmail.com with ESMTPSA id v4sm2368048wmg.22.2019.07.03.05.42.28
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 05:42:29 -0700 (PDT)
To: Pablo Neira Ayuso <pablo@netfilter.org>, netfilter-devel@vger.kernel.org
References: <20190703124040.19279-1-pablo@netfilter.org>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <f7763540-dd87-9ba6-3d18-451427eaeb0d@cumulusnetworks.com>
Date: Wed, 3 Jul 2019 15:42:28 +0300
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

Awesome, thanks!
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

