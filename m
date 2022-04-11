Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D93E2502760
	for <lists.bridge@lfdr.de>; Fri, 15 Apr 2022 11:28:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED9428418B;
	Fri, 15 Apr 2022 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zd78pnq44LMt; Fri, 15 Apr 2022 09:28:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8E1E58417C;
	Fri, 15 Apr 2022 09:28:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A21EAC002C;
	Fri, 15 Apr 2022 09:28:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E7D7FC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 22:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C13378308B
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 22:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NAnliSvzwXgj for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 22:57:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 964AF8308A
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 22:57:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D6104B819A5;
 Mon, 11 Apr 2022 22:57:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43F90C385A4;
 Mon, 11 Apr 2022 22:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649717866;
 bh=a/3DmNUvz8+SO6ZFsddHOOslw+E1jUtBf6lFjrPFsJA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OtFGbLMQr5tthdn03lz+hSR8JVx1ccVMqBNQd2iJxZq93/l+hDtqxuev5YIxHFbcU
 hwor0Tj2r/OGlwwYWz26qvyPprjoUvOcz32b7Dk5JlHsH30tKcBxgSeC+2JI10CVuK
 Hz79TNshZ26pu1sGVCh86vtiIx2DjGR0zubwD7JIXcFlLzP6sDmpQ18hhLLwocCjYk
 VYOc5HAs0zI6VCbcSo3zraRvb1KPGilLEB5Y+R5kHllP4ABBheR8vvlR0LirqSEa+7
 HFjzng7ZtVAsN7ILNCWpgSdl24AFafaHQfvRqpXiqQ5RTop5jT7Iji9JW+CALt0oZ6
 u8s4gm+/EE2aA==
Date: Mon, 11 Apr 2022 16:57:43 -0600
From: David Ahern <dsahern@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220411225743.GA8838@u2004-local>
References: <20220411172934.1813604-1-razor@blackwall.org>
 <20220411172934.1813604-2-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220411172934.1813604-2-razor@blackwall.org>
X-Mailman-Approved-At: Fri, 15 Apr 2022 09:28:38 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 idosch@idosch.org, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 1/8] net: rtnetlink: add
	RTM_FLUSHNEIGH
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

On Mon, Apr 11, 2022 at 08:29:27PM +0300, Nikolay Aleksandrov wrote:
> Add a new rtnetlink type used to flush neigh objects. It will be
> initially used to add flush with filtering support for bridge fdbs, but
> it also opens the door to add similar support to others (e.g. vxlan).
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  include/uapi/linux/rtnetlink.h | 3 +++
>  security/selinux/nlmsgtab.c    | 3 ++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
> index 83849a37db5b..06001cfd404b 100644
> --- a/include/uapi/linux/rtnetlink.h
> +++ b/include/uapi/linux/rtnetlink.h
> @@ -194,6 +194,9 @@ enum {
>  	RTM_GETTUNNEL,
>  #define RTM_GETTUNNEL	RTM_GETTUNNEL
>  
> +	RTM_FLUSHNEIGH = 124,
> +#define RTM_FLUSHNEIGH	RTM_FLUSHNEIGH
> +

rtm message types are "new, del, get, set" quadruplets; making this a
flush breaks the current consistent style. Can this be done by adding
a FLUSH flag to the RTM_DELNEIGH message?

>  	__RTM_MAX,
>  #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
>  };
