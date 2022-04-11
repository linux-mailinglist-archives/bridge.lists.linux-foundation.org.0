Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194F14FB692
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8575A404B0;
	Mon, 11 Apr 2022 08:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IwLSv-fJ-aOv; Mon, 11 Apr 2022 08:57:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EED4F408F5;
	Mon, 11 Apr 2022 08:57:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A7956C0082;
	Mon, 11 Apr 2022 08:57:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5D34C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E228460A8B
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2YW4kdsxgJOo for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:57:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AD65607F9
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:57:43 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 7CDE73202052;
 Mon, 11 Apr 2022 04:57:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 11 Apr 2022 04:57:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649667462; x=
 1649753862; bh=yNRP+BeaZ6KoeHmUkIOEOQrMJmaiMlpxTKCXBPTBYvM=; b=b
 Ljb6dEOxLaf4F4CwnDSZ+7lJvIcyfCLKU8wi6AeFRfUkJH8VF5TKN2ioFZJMOdzp
 UmLMj30sFUn/cr3Jn0bhFlZurtDJI1PwRvPBcqDfkfXe8vJ4QFjw7fyF1x2MQFjW
 vmWBHvO213lUfaGt+ScDUgdFUBDeTLI0db4AqlgE7pNZzawBt17jY1mX2UvWCu9C
 RTBYsftd61BkBKmZnHvr1REKkSBPlGnLIceV4sT0JD65CE1QFj/K2ahRgAb+91gO
 w1z7h8ZiTvzcOn5vvIsQcmA6gEMh/0KjfvlwDnazXtd+xoaNazGTMQH0psol/DQJ
 cJ0rlPN2NBHprZGTGpu/A==
X-ME-Sender: <xms:he1TYvBGOdipG_iNUplpETclk-GuX0ktfQ9LQrWJ4wXuF15-80KOJA>
 <xme:he1TYljwVFMlCjHnbuo_sTKsQytoXHE04J5qkDVw6aONeYsMnnuK3FqXSSHm2q-wZ
 SMEV6ynyCFJzqs>
X-ME-Received: <xmr:he1TYqm9maOzmV2U2_AEw_WPpLjQB9xaKZ7Nq4s5l7jloO-vwX3IIPpRw4U6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnheptdffkeekfeduffevgeeujeffjefhte
 fgueeugfevtdeiheduueeukefhudehleetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:hu1TYhwDi3OhHPFUzsUHo3U7qZWH8-yf6cPiuzazm7iEu-MDnmodNA>
 <xmx:hu1TYkQ_D3mzUJ3z4XiqlGEZS_nc2OGNta_rcFXPW38imsS1UoUmnw>
 <xmx:hu1TYkak6wnktXgvDZfe7yWfPf649Nh4nqDkEMHz24R_8ekyNvevPw>
 <xmx:hu1TYqcMLsBQjGyBtM2T8RCJN10DusjUtNQBdY9tlzr3fH8lC80MEw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 04:57:41 -0400 (EDT)
Date: Mon, 11 Apr 2022 11:57:39 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlPtg6eHuWaOEy/7@shredder>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-6-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409105857.803667-6-razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 5/6] net: bridge: fdb: add support for
 flush filtering based on ifindex
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

On Sat, Apr 09, 2022 at 01:58:56PM +0300, Nikolay Aleksandrov wrote:
> Add support for fdb flush filtering based on destination ifindex. The
> ifindex must either match a port's device ifindex or the bridge's.
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  include/uapi/linux/if_bridge.h | 1 +
>  net/bridge/br_fdb.c            | 7 +++++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 4638d7e39f2a..67ee12586844 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -819,6 +819,7 @@ enum {
>  	FDB_FLUSH_NDM_STATE_MASK,
>  	FDB_FLUSH_NDM_FLAGS,
>  	FDB_FLUSH_NDM_FLAGS_MASK,
> +	FDB_FLUSH_PORT_IFINDEX,
>  	__FDB_FLUSH_MAX
>  };
>  #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 340a2ace1d5e..53208adf7474 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -628,6 +628,7 @@ static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
>  	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
>  	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
>  	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },
> +	[FDB_FLUSH_PORT_IFINDEX]	= { .type = NLA_S32 },
>  };
>  
>  int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
> @@ -664,6 +665,12 @@ int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
>  		ndm_flags_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]);
>  		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
>  	}
> +	if (fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]) {
> +		int port_ifidx;
> +
> +		port_ifidx = nla_get_u32(fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]);
> +		desc.port_ifindex = port_ifidx;

Commit message says "ifindex must either match a port's device ifindex
or the bridge's", but there is no validation. I realize such an
operation won't flush anything, but it's cleaner to just reject it here.

> +	}
>  
>  	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
>  		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
> -- 
> 2.35.1
> 
