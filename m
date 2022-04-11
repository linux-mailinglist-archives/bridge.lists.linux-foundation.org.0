Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418DF4FB64D
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E70140906;
	Mon, 11 Apr 2022 08:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFzDfEaAMD2r; Mon, 11 Apr 2022 08:47:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 78AA740915;
	Mon, 11 Apr 2022 08:47:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17711C0082;
	Mon, 11 Apr 2022 08:47:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F319DC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C47ED607F6
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sg04FAbYU5t8 for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:47:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28A84607F2
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:47:38 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id E97253201F9F;
 Mon, 11 Apr 2022 04:47:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 11 Apr 2022 04:47:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649666855; x=
 1649753255; bh=DLzd+11ar8C9kgIOPbcqjBzeEwPEufkGvlYVemikKPo=; b=T
 ZZRqCZkhc85oRd1KmDz9vCSrOaHQnj7nfS1FrTDcvhCRTxXkYwhPBWUdrNdjHsoM
 D3hqEwFrey1bOdwHllDdb6ILuC9BOMcHacGJhw4eviwmb2Nc2OgAorDtAhVqe9Nk
 dRga2Bua5PzU5FiithwVKhVhh0Pt3FXGJQZmITgEm+IFPcqI06k6AO+d+liqzU+4
 VoR7mC1pHYzxpLtMPVPACdfXORI+5qdPbQvRb/VTtxWiQrOZW1EVw+xCJ7poLCEU
 6PyaVZ68fnUzSjmpGHPI3iJ4Oi76zhfiyosyogL8xjnBdPKYFsWrji+Q2zsTcIEU
 U6cx0x4K0l0Gqe41ctD1g==
X-ME-Sender: <xms:J-tTYgFDRCbtbVkPJLSYeRR9REMHZ8lLPaGUUm950edTw0fWBArL4Q>
 <xme:J-tTYpWJJYqzeL1fa0w10uDx5nBX2r3_IO6f3L3YDTHy9YRR5IIf3gKp5yGPCGsL1
 RzYTV5IOg8MDWI>
X-ME-Received: <xmr:J-tTYqLKU46XEQHz1Eu27AOnOT7q4jaLca_Q0DE94-rYwc5_08a04kANv23T>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtro
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepgfejvefhvdegiedukeetudevgeeuje
 efffeffeetkeekueeuheejudeltdejuedunecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:J-tTYiE_9m_edRNQhURoLdvDuD_-Q67-RLqs4y6uRYUS42fI5Z8LsA>
 <xmx:J-tTYmVLQPUwG3wQlOlrpZ37iLT1W7OQZc42LLEd42c92hDU6Why1A>
 <xmx:J-tTYlN0H8gm0QbrNP5ZW8MOTi7UiCWXrA9Ihbda02LlTp7yvA_5jA>
 <xmx:J-tTYlTx9JfXEIxphbmzn_ZTz4RXL9a_DCNbajGpenKrg46PQvfixA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 04:47:34 -0400 (EDT)
Date: Mon, 11 Apr 2022 11:47:33 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlPrJaWjeObhxmwb@shredder>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-5-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409105857.803667-5-razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 4/6] net: bridge: fdb: add support for
 flush filtering based on ndm flags and state
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

On Sat, Apr 09, 2022 at 01:58:55PM +0300, Nikolay Aleksandrov wrote:
> Add support for fdb flush filtering based on ndm flags and state. The
> new attributes allow users to specify a mask and value which are mapped
> to bridge-specific flags. NTF_USE is used to represent added_by_user
> flag since it sets it on fdb add and we don't have a 1:1 mapping for it.
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  include/uapi/linux/if_bridge.h |  4 +++
>  net/bridge/br_fdb.c            | 55 ++++++++++++++++++++++++++++++++++
>  2 files changed, 59 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 2f3799cf14b2..4638d7e39f2a 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -815,6 +815,10 @@ enum {
>  /* embedded in BRIDGE_FLUSH_FDB */
>  enum {
>  	FDB_FLUSH_UNSPEC,
> +	FDB_FLUSH_NDM_STATE,
> +	FDB_FLUSH_NDM_STATE_MASK,
> +	FDB_FLUSH_NDM_FLAGS,
> +	FDB_FLUSH_NDM_FLAGS_MASK,
>  	__FDB_FLUSH_MAX
>  };
>  #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 62f694a739e1..340a2ace1d5e 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -594,8 +594,40 @@ void br_fdb_flush(struct net_bridge *br,
>  	rcu_read_unlock();
>  }
>  
> +static unsigned long __ndm_state_to_fdb_flags(u16 ndm_state)
> +{
> +	unsigned long flags = 0;
> +
> +	if (ndm_state & NUD_PERMANENT)
> +		__set_bit(BR_FDB_LOCAL, &flags);
> +	if (ndm_state & NUD_NOARP)
> +		__set_bit(BR_FDB_STATIC, &flags);
> +
> +	return flags;
> +}
> +
> +static unsigned long __ndm_flags_to_fdb_flags(u16 ndm_flags)
> +{
> +	unsigned long flags = 0;
> +
> +	if (ndm_flags & NTF_USE)
> +		__set_bit(BR_FDB_ADDED_BY_USER, &flags);
> +	if (ndm_flags & NTF_EXT_LEARNED)
> +		__set_bit(BR_FDB_ADDED_BY_EXT_LEARN, &flags);
> +	if (ndm_flags & NTF_OFFLOADED)
> +		__set_bit(BR_FDB_OFFLOADED, &flags);
> +	if (ndm_flags & NTF_STICKY)
> +		__set_bit(BR_FDB_STICKY, &flags);
> +
> +	return flags;
> +}
> +
>  static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
>  	[FDB_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
> +	[FDB_FLUSH_NDM_STATE]	= { .type = NLA_U16 },
> +	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
> +	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
> +	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },

Might be better to use NLA_POLICY_MASK(NLA_U16, mask) and reject
unsupported states / flags instead of just ignoring them?

>  };
>  
>  int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
> @@ -610,6 +642,29 @@ int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
>  	if (err)
>  		return err;
>  
> +	if (fdb_flush_tb[FDB_FLUSH_NDM_STATE]) {
> +		u16 ndm_state = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_STATE]);
> +
> +		desc.flags |= __ndm_state_to_fdb_flags(ndm_state);
> +	}
> +	if (fdb_flush_tb[FDB_FLUSH_NDM_STATE_MASK]) {
> +		u16 ndm_state_mask;
> +
> +		ndm_state_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_STATE_MASK]);
> +		desc.flags_mask |= __ndm_state_to_fdb_flags(ndm_state_mask);
> +	}
> +	if (fdb_flush_tb[FDB_FLUSH_NDM_FLAGS]) {
> +		u16 ndm_flags = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS]);
> +
> +		desc.flags |= __ndm_flags_to_fdb_flags(ndm_flags);
> +	}
> +	if (fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]) {
> +		u16 ndm_flags_mask;
> +
> +		ndm_flags_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]);
> +		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
> +	}
> +
>  	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
>  		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
>  
> -- 
> 2.35.1
> 
