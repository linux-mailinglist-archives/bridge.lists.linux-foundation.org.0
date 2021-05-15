Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF6381B10
	for <lists.bridge@lfdr.de>; Sat, 15 May 2021 22:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00C0C40461;
	Sat, 15 May 2021 20:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ymEKPHPgoyU; Sat, 15 May 2021 20:46:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44AC64046D;
	Sat, 15 May 2021 20:46:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C41BC0024;
	Sat, 15 May 2021 20:46:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F44BC0001
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 20:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2047B83CB3
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 20:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yhV9a7g7xTJk for <bridge@lists.linux-foundation.org>;
 Sat, 15 May 2021 20:46:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0583683CB2
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 20:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=UoJ9DFfErbajmQEYJKCqN6Ov0S2aMEodekeWmwF9UXs=; b=Ha8GFjiLgIF5p/vutkuHnNkj8X
 +ZHJeYbzLAFq6/hYfPXadLpKaV5J+MI6LN6bdkCmzce1FbH6whyMJLnWo8E93Kyq7Lv0Hj1uO0dx1
 5FoyvdvrjChkAzsYT8qmpAnkxvxS5/wdr4mTlDDRSZtgQru4PsQGGeOvtngUq9K90ODOV+QBU/rZ7
 bID5QH8oDiadMzrMjGHmtUAioBsGbeUWYvbdl4mr2jBqcIpX49L4LkkrPCvZhlPMXuEebvKx9ui3l
 u86V92lEYBy1wF3O32tMQ92QNPfK+9aiT+QgIJLj4V111PJfn+bKg+aDa64BxdXDdrV17SKWbYQ3U
 9mJMb+hQ==;
Received: from [2601:1c0:6280:3f0::7376]
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1li1B3-00CgFX-GE; Sat, 15 May 2021 20:46:25 +0000
To: trix@redhat.com, roopa@nvidia.com, nikolay@nvidia.com,
 davem@davemloft.net, kuba@kernel.org
References: <20210515203849.1756371-1-trix@redhat.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <17c9c0cb-6f7a-20e7-62dd-9a2845e962ba@infradead.org>
Date: Sat, 15 May 2021 13:46:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210515203849.1756371-1-trix@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH] net: bridge: fix signature of stub
	br_multicast_is_router
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

On 5/15/21 1:38 PM, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Building with CONFIG_IPV6 off causes this build error
> 
> br_input.c:135:8: error: too many arguments to function
>   ‘br_multicast_is_router’
>         br_multicast_is_router(br, skb)) {
>         ^~~~~~~~~~~~~~~~~~~~~~
> In file included from net/bridge/br_input.c:23:
> net/bridge/br_private.h:1059:20: note: declared here
>  static inline bool br_multicast_is_router(struct net_bridge *br)
>                     ^~~~~~~~~~~~~~~~~~~~~~
> 
> Comparing the stub with the real function shows the stub needs
> another parameter.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Hi,

A similar patch has already been merged:

https://lore.kernel.org/netdev/20210514073233.2564187-1-razor@blackwall.org/

> ---
>  net/bridge/br_private.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index f9a381fcff094..9fd54626ca809 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -1056,7 +1056,7 @@ static inline void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
>  {
>  }
>  
> -static inline bool br_multicast_is_router(struct net_bridge *br)
> +static inline bool br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
>  {
>  	return false;
>  }
> 


-- 
~Randy

