Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 896114FB63A
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2E8660F92;
	Mon, 11 Apr 2022 08:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6z4MhszcUiV; Mon, 11 Apr 2022 08:41:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5158460F05;
	Mon, 11 Apr 2022 08:41:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2DA7C0082;
	Mon, 11 Apr 2022 08:41:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BFCC2C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8ABBD408C3
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1qHyQ1Zt57Oy for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E46C40338
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:18 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 49F803201E78;
 Mon, 11 Apr 2022 04:41:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 11 Apr 2022 04:41:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649666475; x=
 1649752875; bh=Zpd0dbMP4Qqg9X4hnW+fvYt79OSKTVRKGbShdxRmpz8=; b=W
 EXBJUdrtt46g9rFPLJc2LK70WpYvV2dQ4uaEyx88GQ1MfNWOM1maljBdMlwyjpiN
 l2MER2ZQ+PcDhKd2W6pFcFPqW+65l5Gud7haY7TIhkoHHYFnSkTwhBPzV1LxQAcV
 ZIwrBD7w6qFW6PZ3VhEQXfUNDT9KVJbtLmqSb7OrV+o9mdm8n6YaZWDG21y4MXK/
 cQePpTYVyUjHDucETekE7dm9NKWQXcgvNTo74uTe8XbENk8MLOEWAE88u4A1FzQk
 YGRlOBN0YSj9SJbVd4MNU9+crMvpzfi1PcUQQGWTY/dhrtIAAP6PM0FOpUQ3j+Tj
 MOat/POqg+BCEWPbF8t7g==
X-ME-Sender: <xms:q-lTYjnhsLk7gyG8cvqSMnljjClXCYR6SuR0incil73dJhYpi0vBtw>
 <xme:q-lTYm03K1FPPnho_O6cXXMCDX-yUpcFQMX02fmG6f83DuocFico1T4rp2I7MKKAh
 i7aG0tG_J-k9xE>
X-ME-Received: <xmr:q-lTYprfDvl4XmXkh8dfO_hADWV_Ol7MSvj_Rp09AQfSonIk27t1Lm2IjSVP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnheptdffkeekfeduffevgeeujeffjefhte
 fgueeugfevtdeiheduueeukefhudehleetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:q-lTYrn8FFvXIPoiHeq5HKx7aGQkIHRuSqWT1QWtmEKGp6JE9mCTxg>
 <xmx:q-lTYh2VzUf_aCWdRVEFY-exWbIPSes7fnuMVogP0lLRHYBJ5ZfC3g>
 <xmx:q-lTYqsnI2Q6M3rdxSaldPz20vpjcM5z9148eofxtjoLYKZFtSaa0g>
 <xmx:q-lTYqy3ipQJa3XcL3VA_RoAxGXLsc_odlOyFM-kqQ-O1W6BwHg2KA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 04:41:15 -0400 (EDT)
Date: Mon, 11 Apr 2022 11:41:12 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlPpqKFeAs5oCHGD@shredder>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-4-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409105857.803667-4-razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 3/6] net: bridge: fdb: add new nl
 attribute-based flush call
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

On Sat, Apr 09, 2022 at 01:58:54PM +0300, Nikolay Aleksandrov wrote:
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 221a4256808f..2f3799cf14b2 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -807,7 +807,15 @@ enum {
>  /* embedded in IFLA_BRIDGE_FLUSH */
>  enum {
>  	BRIDGE_FLUSH_UNSPEC,
> +	BRIDGE_FLUSH_FDB,
>  	__BRIDGE_FLUSH_MAX
>  };
>  #define BRIDGE_FLUSH_MAX (__BRIDGE_FLUSH_MAX - 1)
> +
> +/* embedded in BRIDGE_FLUSH_FDB */
> +enum {
> +	FDB_FLUSH_UNSPEC,

BTW, is there a reason this is not called FLUSH_FDB_UNSPEC given it's
embedded in BRIDGE_FLUSH_FDB, which is embedded in IFLA_BRIDGE_FLUSH ?

Regardless, in the cover letter you have '[ BRIDGE_FDB_FLUSH ]', which
is actually BRIDGE_FLUSH_FDB. I only noticed it because the code didn't
match what I had in my notebook, which I copied from the cover letter :)

> +	__FDB_FLUSH_MAX
> +};
> +#define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
>  #endif /* _UAPI_LINUX_IF_BRIDGE_H */
