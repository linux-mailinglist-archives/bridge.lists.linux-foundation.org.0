Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7F4234790
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 16:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BAAC88691;
	Fri, 31 Jul 2020 14:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMX5+1u9AuLu; Fri, 31 Jul 2020 14:15:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 529AC88365;
	Fri, 31 Jul 2020 14:15:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2EC04C004D;
	Fri, 31 Jul 2020 14:15:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37787C004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 14:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E12F20117
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 14:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acB4aHHH-RVl for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 14:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C7A420385
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 14:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596204940;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DankDH11Q6vNwTW57OQtB5IPGpcTvQpg8ZnqamXZDWQ=;
 b=a8mMzz/t1og5tGp0UsKQe7F6+b3DkDNfbZHvAGd3Qn8VR6Ukeccz7jwL1EKNUNU8OVAO/p
 k1q3/M5ubf+4j2vAETeK5L/ZWW/RD2RNsPQCy0vAbeD2qTIb+dRuGAZfmiEJBFB5SblCIs
 CCQDNndPadrAwbAHTLam8SFDvLK8RPs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-fKjEzFvyNYy-vtdY0432fA-1; Fri, 31 Jul 2020 10:15:33 -0400
X-MC-Unique: fKjEzFvyNYy-vtdY0432fA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 646B280BCC3;
 Fri, 31 Jul 2020 14:15:30 +0000 (UTC)
Received: from carbon (unknown [10.40.208.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D1E2987B1D;
 Fri, 31 Jul 2020 14:15:21 +0000 (UTC)
Date: Fri, 31 Jul 2020 16:15:19 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>
Message-ID: <20200731161519.5f413f82@carbon>
In-Reply-To: <1596170660-5582-4-git-send-email-komachi.yoshiki@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-4-git-send-email-komachi.yoshiki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, Yonghong Song <yhs@fb.com>,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, David Ahern <dsahern@kernel.org>,
 netdev@vger.kernel.org, brouer@redhat.com, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 3/3] samples/bpf: Add a simple
 bridge example accelerated with XDP
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


I really appreciate that you are working on adding this helper.
Some comments below.

On Fri, 31 Jul 2020 13:44:20 +0900
Yoshiki Komachi <komachi.yoshiki@gmail.com> wrote:

> diff --git a/samples/bpf/xdp_bridge_kern.c b/samples/bpf/xdp_bridge_kern.c
> new file mode 100644
> index 000000000000..00f802503199
> --- /dev/null
> +++ b/samples/bpf/xdp_bridge_kern.c
> @@ -0,0 +1,129 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2020 NTT Corp. All Rights Reserved.
> + *
[...]
> +
> +struct {
> +	__uint(type, BPF_MAP_TYPE_DEVMAP_HASH);
> +	__uint(key_size, sizeof(int));
> +	__uint(value_size, sizeof(int));
> +	__uint(max_entries, 64);
> +} xdp_tx_ports SEC(".maps");
> +
> +static __always_inline int xdp_bridge_proto(struct xdp_md *ctx, u16 br_vlan_proto)
> +{
> +	void *data_end = (void *)(long)ctx->data_end;
> +	void *data = (void *)(long)ctx->data;
> +	struct bpf_fdb_lookup fdb_lookup_params;
> +	struct vlan_hdr *vlan_hdr = NULL;
> +	struct ethhdr *eth = data;
> +	u16 h_proto;
> +	u64 nh_off;
> +	int rc;
> +
> +	nh_off = sizeof(*eth);
> +	if (data + nh_off > data_end)
> +		return XDP_DROP;
> +
> +	__builtin_memset(&fdb_lookup_params, 0, sizeof(fdb_lookup_params));
> +
> +	h_proto = eth->h_proto;
> +
> +	if (unlikely(ntohs(h_proto) < ETH_P_802_3_MIN))
> +		return XDP_PASS;
> +
> +	/* Handle VLAN tagged packet */
> +	if (h_proto == br_vlan_proto) {
> +		vlan_hdr = (void *)eth + nh_off;
> +		nh_off += sizeof(*vlan_hdr);
> +		if ((void *)eth + nh_off > data_end)
> +			return XDP_PASS;
> +
> +		fdb_lookup_params.vlan_id = ntohs(vlan_hdr->h_vlan_TCI) &
> +					VLAN_VID_MASK;
> +	}
> +
> +	/* FIXME: Although Linux bridge provides us with vlan filtering (contains
> +	 * PVID) at ingress, the feature is currently unsupported in this XDP program.
> +	 *
> +	 * Two ideas to realize the vlan filtering are below:
> +	 *   1. usespace daemon monitors bridge vlan events and notifies XDP programs
                   ^^
Typo: usespace -> userspace

> +	 *      of them through BPF maps
> +	 *   2. introduce another bpf helper to retrieve bridge vlan information

The comment appears two times time this file.

> +	 *
> +	 *
> +	 * FIXME: After the vlan filtering, learning feature is required here, but
> +	 * it is currently unsupported as well. If another bpf helper for learning
> +	 * is accepted, the processing could be implemented in the future.
> +	 */
> +
> +	memcpy(&fdb_lookup_params.addr, eth->h_dest, ETH_ALEN);
> +
> +	/* Note: This program definitely takes ifindex of ingress interface as
> +	 * a bridge port. Linux networking devices can be stacked and physical
> +	 * interfaces are not necessarily slaves of bridges (e.g., bonding or
> +	 * vlan devices can be slaves of bridges), but stacked bridge ports are
> +	 * currently unsupported in this program. In such cases, XDP programs
> +	 * should be attached to a lower device in order to process packets with
> +	 * higher speed. Then, a new bpf helper to find upper devices will be
> +	 * required here in the future because they will be registered on FDB
> +	 * in the kernel.
> +	 */
> +	fdb_lookup_params.ifindex = ctx->ingress_ifindex;
> +
> +	rc = bpf_fdb_lookup(ctx, &fdb_lookup_params, sizeof(fdb_lookup_params), 0);
> +	if (rc != BPF_FDB_LKUP_RET_SUCCESS) {
> +		/* In cases of flooding, XDP_PASS will be returned here */
> +		return XDP_PASS;
> +	}
> +
> +	/* FIXME: Although Linux bridge provides us with vlan filtering (contains
> +	 * untagged policy) at egress as well, the feature is currently unsupported
> +	 * in this XDP program.
> +	 *
> +	 * Two ideas to realize the vlan filtering are below:
> +	 *   1. usespace daemon monitors bridge vlan events and notifies XDP programs
> +	 *      of them through BPF maps
> +	 *   2. introduce another bpf helper to retrieve bridge vlan information
> +	 */

(2nd time the comment appears)

> +

A comment about below bpf_redirect_map() would be good.  Explaining
that we depend on fallback behavior, to let normal bridge code handle
other cases (e.g. flood/broadcast). And also that if lookup fails,
XDP_PASS/fallback also happens.

> +	return bpf_redirect_map(&xdp_tx_ports, fdb_lookup_params.ifindex, XDP_PASS);
> +}
> +
> +SEC("xdp_bridge")
> +int xdp_bridge_prog(struct xdp_md *ctx)
> +{
> +	return xdp_bridge_proto(ctx, 0);
> +}
> +
> +SEC("xdp_8021q_bridge")
> +int xdp_8021q_bridge_prog(struct xdp_md *ctx)
> +{
> +	return xdp_bridge_proto(ctx, htons(ETH_P_8021Q));
> +}
> +
> +SEC("xdp_8021ad_bridge")
> +int xdp_8021ad_bridge_prog(struct xdp_md *ctx)
> +{
> +	return xdp_bridge_proto(ctx, htons(ETH_P_8021AD));
> +}
> +
> +char _license[] SEC("license") = "GPL";


-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

