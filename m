Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A70241202
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3151687D60;
	Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07Z-BUwn-yVW; Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BF8687D75;
	Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 550B8C0891;
	Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0A4DAC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 11:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E366186925
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 11:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAZQqmqdAMkv for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 11:57:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E222868C4
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 11:57:35 +0000 (UTC)
IronPort-SDR: /ciFPDdHNj7CPMWG1jQtzKMQboWj8dEYUaXG0+SexdfEw32lvifOL7IBy0owPZw5nbi7ksBxWp
 VdZR1IJyWYEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="150960445"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="150960445"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 04:57:35 -0700
IronPort-SDR: UV5QW84xK48nz9lwg8jlfgUhOqpgtAmFGH6RZt4+t7VUGSTXVddFB3X2WbiBEi6dQ1GAhukv6/
 ke6SHS4Qe82g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="304922209"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 31 Jul 2020 04:57:30 -0700
Date: Fri, 31 Jul 2020 13:52:25 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>
Message-ID: <20200731115225.GA5097@ranger.igk.intel.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, David Ahern <dsahern@kernel.org>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do
 forwarding lookups in kernel FDB table
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

On Fri, Jul 31, 2020 at 01:44:19PM +0900, Yoshiki Komachi wrote:
> This patch adds a new bpf helper to access FDB in the kernel tables
> from XDP programs. The helper enables us to find the destination port
> of master bridge in XDP layer with high speed. If an entry in the
> tables is successfully found, egress device index will be returned.
> 
> In cases of failure, packets will be dropped or forwarded to upper
> networking stack in the kernel by XDP programs. Multicast and broadcast
> packets are currently not supported. Thus, these will need to be
> passed to upper layer on the basis of XDP_PASS action.
> 
> The API uses destination MAC and VLAN ID as keys, so XDP programs
> need to extract these from forwarded packets.
> 
> Signed-off-by: Yoshiki Komachi <komachi.yoshiki@gmail.com>
> ---
>  include/uapi/linux/bpf.h       | 28 +++++++++++++++++++++
>  net/core/filter.c              | 45 ++++++++++++++++++++++++++++++++++
>  scripts/bpf_helpers_doc.py     |  1 +
>  tools/include/uapi/linux/bpf.h | 28 +++++++++++++++++++++
>  4 files changed, 102 insertions(+)
> 

[...]

> diff --git a/net/core/filter.c b/net/core/filter.c
> index 654c346b7d91..68800d1b8cd5 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -45,6 +45,7 @@
>  #include <linux/filter.h>
>  #include <linux/ratelimit.h>
>  #include <linux/seccomp.h>
> +#include <linux/if_bridge.h>
>  #include <linux/if_vlan.h>
>  #include <linux/bpf.h>
>  #include <linux/btf.h>
> @@ -5084,6 +5085,46 @@ static const struct bpf_func_proto bpf_skb_fib_lookup_proto = {
>  	.arg4_type	= ARG_ANYTHING,
>  };
>  
> +#if IS_ENABLED(CONFIG_BRIDGE)
> +BPF_CALL_4(bpf_xdp_fdb_lookup, struct xdp_buff *, ctx,
> +	   struct bpf_fdb_lookup *, params, int, plen, u32, flags)
> +{
> +	struct net_device *src, *dst;
> +	struct net *net;
> +
> +	if (plen < sizeof(*params))
> +		return -EINVAL;
> +
> +	net = dev_net(ctx->rxq->dev);
> +
> +	if (is_multicast_ether_addr(params->addr) ||
> +	    is_broadcast_ether_addr(params->addr))
> +		return BPF_FDB_LKUP_RET_NOENT;

small nit: you could move that validation before dev_net() call.

> +
> +	src = dev_get_by_index_rcu(net, params->ifindex);
> +	if (unlikely(!src))
> +		return -ENODEV;
> +
> +	dst = br_fdb_find_port_xdp(src, params->addr, params->vlan_id);
> +	if (dst) {
> +		params->ifindex = dst->ifindex;
> +		return BPF_FDB_LKUP_RET_SUCCESS;
> +	}
> +
> +	return BPF_FDB_LKUP_RET_NOENT;
> +}
