Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4BC4FF665
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 14:06:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37862410BC;
	Wed, 13 Apr 2022 12:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dz-cUUVi_rr; Wed, 13 Apr 2022 12:06:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 662E6403CC;
	Wed, 13 Apr 2022 12:06:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 065AFC0088;
	Wed, 13 Apr 2022 12:06:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB87BC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C523B81779
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXs20OyUZoiP for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 12:06:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DD5781774
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:06:31 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 14C435C0342;
 Wed, 13 Apr 2022 08:06:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 13 Apr 2022 08:06:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1649851591; x=
 1649937991; bh=DbjiLnDcuCKqJ5TTO1JXb8FRcAxxf8xPR52NzVCOONs=; b=D
 BnU9I3Xh8A/ATVZML5J0l1c9TYlLNjDn+/MefX9lKpqt8GUgEAUb2j1tvkZPoVic
 LLEFP29l0IaXx/PwM4wTT0azml7+AjGkUKI7hzhAB1Uj2vdNR0mMN20LGqihyyTQ
 O4yVD2Q2cT7PfbLR6Mradrdo1OGtFs7GdEx/ic3d61k4Ma9tRT4WhHFVMAG4tsV2
 ZXw9xVOFZ6GlD+f4BAUXQrfP0+HKo9wSBjWuDDHgtabIsArU/0vbcteMdjR7WD6W
 mfw6N4z5E5hooLXabdSxZAJf5li2YKTS6oyfCRpKEY28GFTrkJGz7mNs7ttHixoI
 X4cCsj165n7RWcPYmbrqg==
X-ME-Sender: <xms:xrxWYojLvvzAJNPJDi22F4IrnzSdWWxl5YOOyP0xPnJ7-HcHdTfkNA>
 <xme:xrxWYhD1buHWC9lF6y4dZTcREYWlfHiXFwaUunfD6zLqYTFulNsq7YdTl7jKMQUph
 xhOJNQzIu1sp28>
X-ME-Received: <xmr:xrxWYgEQi27O3htZO74INrLhQr7224sQHcDL87Ff6QP2EJ1t5wRjDoq66sLkzo6SJhVvVlfbZXc0UB4tiEPKKpwcdSj-lQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeluddgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnheptdffkeekfeduffevgeeujeffjefhte
 fgueeugfevtdeiheduueeukefhudehleetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:xrxWYpQiZuWsMfVe2tgW1kKMp_GAHConBFE_mTOxv0MbRi_06c6HHw>
 <xmx:xrxWYlx1QeQLcMA8YaLAHnxfVP1wC8oABvnqBqYLfbAvoc0bl9yubw>
 <xmx:xrxWYn48BnmnQRSKSrWFUqCQCA0GNeNSrHOz4mhYfcvmHayzD3-PhA>
 <xmx:x7xWYntP2bVWqTn9ZWbvHDnSqsl5brce2_rROg_FBRWBwHH-J0p1zA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 08:06:30 -0400 (EDT)
Date: Wed, 13 Apr 2022 15:06:26 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <Yla8wj7khYxpwxan@shredder>
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-6-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220413105202.2616106-6-razor@blackwall.org>
Cc: netdev@vger.kernel.org, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 05/12] net: rtnetlink: add bulk
 delete support flag
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

On Wed, Apr 13, 2022 at 01:51:55PM +0300, Nikolay Aleksandrov wrote:
> Add a new rtnl flag (RTNL_FLAG_BULK_DEL_SUPPORTED) which is used to
> verify that the delete operation allows bulk object deletion. Also emit
> a warning if anyone tries to set it for non-delete kind.
> 
> Suggested-by: David Ahern <dsahern@kernel.org>
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
> v4: new patch
> 
>  include/net/rtnetlink.h | 3 ++-
>  net/core/rtnetlink.c    | 8 ++++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
> index 0bf622409aaa..bf8bb3357825 100644
> --- a/include/net/rtnetlink.h
> +++ b/include/net/rtnetlink.h
> @@ -10,7 +10,8 @@ typedef int (*rtnl_doit_func)(struct sk_buff *, struct nlmsghdr *,
>  typedef int (*rtnl_dumpit_func)(struct sk_buff *, struct netlink_callback *);
>  
>  enum rtnl_link_flags {
> -	RTNL_FLAG_DOIT_UNLOCKED = BIT(0),
> +	RTNL_FLAG_DOIT_UNLOCKED		= BIT(0),
> +	RTNL_FLAG_BULK_DEL_SUPPORTED	= BIT(1),
>  };
>  
>  enum rtnl_kinds {
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index beda4a7da062..63c7df52a667 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -249,6 +249,8 @@ static int rtnl_register_internal(struct module *owner,
>  	if (dumpit)
>  		link->dumpit = dumpit;
>  
> +	WARN_ON(rtnl_msgtype_kind(msgtype) != RTNL_KIND_DEL &&
> +		(flags & RTNL_FLAG_BULK_DEL_SUPPORTED));
>  	link->flags |= flags;
>  
>  	/* publish protocol:msgtype */
> @@ -6009,6 +6011,12 @@ static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
>  	}
>  
>  	flags = link->flags;
> +	if (kind == RTNL_KIND_DEL && (nlh->nlmsg_flags & NLM_F_BULK) &&
> +	    !(flags & RTNL_FLAG_BULK_DEL_SUPPORTED)) {
> +		NL_SET_ERR_MSG(extack, "Bulk delete is not supported");
> +		goto err_unlock;

If a buggy user space application is sending messages with NLM_F_BULK
set (unintentionally), will it break on newer kernel? I couldn't find
where the kernel was validating that reserved flags are not used (I
suspect it doesn't).

Assuming the above is correct and of interest, maybe just emit a warning
via extack and drop the goto? Alternatively, we can see if anyone
complains which might never happen

> +	}
> +
>  	if (flags & RTNL_FLAG_DOIT_UNLOCKED) {
>  		doit = link->doit;
>  		rcu_read_unlock();
> -- 
> 2.35.1
> 
