Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 400D324120A
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8A02879F8;
	Mon, 10 Aug 2020 21:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLqQ9a15lYKG; Mon, 10 Aug 2020 21:05:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3F4687871;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D0CC6C013C;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 75F51C004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63D9A20448
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nh9IkKsoHbXf for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 04:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BE5FA2042D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:45:13 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w19so3275851plq.3
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jul 2020 21:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r2Yg1heF9fxl++ije5V+tZ46UP8ORkDq+IRAfwbTvxk=;
 b=U3GTlWMCMbnB0a1a4nUTMWYWJEA32XbAALwB1tetqYaCWUPV85CJH9AqgkuB4OBKep
 WpOzzoXUc5MIukEcFMO3EkYy0pxv6Mg9nICkhOvBeFgg8LawSReCJw2VwYmIFG4dH25y
 d8BWAdluMZlCiU7fVwOkFbiS3Wvy0SYyGpaGAy6qvtc1+7WZFVqXvPN5pbkzxcvujvLh
 tjkdBC5kLtZ+ZxIEJ3spLamUORNU/mLyWd0LHDWTDN3EeqdbP3SkI5Hn0XQI5RQ9IALS
 gOf4QVsYRpb0n3jLtx0/LdF6sJWf/nWkGS2KM8fu/vy2x40SKFBzls8dOdsyXKeNh808
 oeCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r2Yg1heF9fxl++ije5V+tZ46UP8ORkDq+IRAfwbTvxk=;
 b=hy6urpCctMGsafgxs2Nl3BUtXAfMp46PYTyIOAZcVrlyW1nnk50hIuTa4s/+cgYLNX
 VPgCOAXnqygZ2lLwrXDDZvgTSyNBNqnDIxSk8vYUH6OF2F8QVflCnyFfQS0i6YOSz1OT
 9/mw3nqxqeQAQuKJeDhmnE4CS5CokZeKlGrI60pDZoW4WHaHaqO/5t764scwPnWuNlQE
 AbDlmcS/B1MWVDTUuYGb6Zh77oG0S5qPPROuPg/ztnQ+FDGm1Y5eaeE5DpwN35tMzF6B
 H4mW8ucYxZpFm4u6L80/SPZribOXlcE/mTPsc+hZBjWWCqyFa8Q817tl81hjaMihchZL
 Xe8g==
X-Gm-Message-State: AOAM533/0s8Xqg72PAhLvLI8pvVilbSnqTYhThwG1Md8DG4fNL8xkVF1
 LxcYfKf24ey9nay69zS5le8=
X-Google-Smtp-Source: ABdhPJyVhtfT74Io/E2Qh7f4S4+FadEzukz6ZhrG85nz5UiUS4gy0EGNZCVuDiagMx8DyKSn2C+Zrw==
X-Received: by 2002:a17:90b:24a:: with SMTP id
 fz10mr2332353pjb.36.1596170713251; 
 Thu, 30 Jul 2020 21:45:13 -0700 (PDT)
Received: from dali.ht.sfc.keio.ac.jp (dali.ht.sfc.keio.ac.jp. [133.27.170.2])
 by smtp.gmail.com with ESMTPSA id
 x6sm2329573pfd.53.2020.07.30.21.45.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jul 2020 21:45:12 -0700 (PDT)
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, KP Singh <kpsingh@chromium.org>,
 Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 David Ahern <dsahern@kernel.org>
Date: Fri, 31 Jul 2020 13:44:19 +0900
Message-Id: <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 bridge@lists.linux-foundation.org, Yoshiki Komachi <komachi.yoshiki@gmail.com>
Subject: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do forwarding
	lookups in kernel FDB table
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

This patch adds a new bpf helper to access FDB in the kernel tables
from XDP programs. The helper enables us to find the destination port
of master bridge in XDP layer with high speed. If an entry in the
tables is successfully found, egress device index will be returned.

In cases of failure, packets will be dropped or forwarded to upper
networking stack in the kernel by XDP programs. Multicast and broadcast
packets are currently not supported. Thus, these will need to be
passed to upper layer on the basis of XDP_PASS action.

The API uses destination MAC and VLAN ID as keys, so XDP programs
need to extract these from forwarded packets.

Signed-off-by: Yoshiki Komachi <komachi.yoshiki@gmail.com>
---
 include/uapi/linux/bpf.h       | 28 +++++++++++++++++++++
 net/core/filter.c              | 45 ++++++++++++++++++++++++++++++++++
 scripts/bpf_helpers_doc.py     |  1 +
 tools/include/uapi/linux/bpf.h | 28 +++++++++++++++++++++
 4 files changed, 102 insertions(+)

diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index 54d0c886e3ba..f2e729dd1721 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -2149,6 +2149,22 @@ union bpf_attr {
  *		* > 0 one of **BPF_FIB_LKUP_RET_** codes explaining why the
  *		  packet is not forwarded or needs assist from full stack
  *
+ * long bpf_fdb_lookup(void *ctx, struct bpf_fdb_lookup *params, int plen, u32 flags)
+ *	Description
+ *		Do FDB lookup in kernel tables using parameters in *params*.
+ *		If lookup is successful (ie., FDB lookup finds a destination entry),
+ *		ifindex is set to the egress device index from the FDB lookup.
+ *		Both multicast and broadcast packets are currently unsupported
+ *		in XDP layer.
+ *
+ *		*plen* argument is the size of the passed **struct bpf_fdb_lookup**.
+ *		*ctx* is only **struct xdp_md** for XDP programs.
+ *
+ *     Return
+ *		* < 0 if any input argument is invalid
+ *		*   0 on success (destination port is found)
+ *		* > 0 on failure (there is no entry)
+ *
  * long bpf_sock_hash_update(struct bpf_sock_ops *skops, struct bpf_map *map, void *key, u64 flags)
  *	Description
  *		Add an entry to, or update a sockhash *map* referencing sockets.
@@ -3449,6 +3465,7 @@ union bpf_attr {
 	FN(get_stack),			\
 	FN(skb_load_bytes_relative),	\
 	FN(fib_lookup),			\
+	FN(fdb_lookup),			\
 	FN(sock_hash_update),		\
 	FN(msg_redirect_hash),		\
 	FN(sk_redirect_hash),		\
@@ -4328,6 +4345,17 @@ struct bpf_fib_lookup {
 	__u8	dmac[6];     /* ETH_ALEN */
 };
 
+enum {
+	BPF_FDB_LKUP_RET_SUCCESS,      /* lookup successful */
+	BPF_FDB_LKUP_RET_NOENT,        /* entry is not found */
+};
+
+struct bpf_fdb_lookup {
+	unsigned char addr[6];     /* ETH_ALEN */
+	__u16 vlan_id;
+	__u32 ifindex;
+};
+
 enum bpf_task_fd_type {
 	BPF_FD_TYPE_RAW_TRACEPOINT,	/* tp name */
 	BPF_FD_TYPE_TRACEPOINT,		/* tp name */
diff --git a/net/core/filter.c b/net/core/filter.c
index 654c346b7d91..68800d1b8cd5 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -45,6 +45,7 @@
 #include <linux/filter.h>
 #include <linux/ratelimit.h>
 #include <linux/seccomp.h>
+#include <linux/if_bridge.h>
 #include <linux/if_vlan.h>
 #include <linux/bpf.h>
 #include <linux/btf.h>
@@ -5084,6 +5085,46 @@ static const struct bpf_func_proto bpf_skb_fib_lookup_proto = {
 	.arg4_type	= ARG_ANYTHING,
 };
 
+#if IS_ENABLED(CONFIG_BRIDGE)
+BPF_CALL_4(bpf_xdp_fdb_lookup, struct xdp_buff *, ctx,
+	   struct bpf_fdb_lookup *, params, int, plen, u32, flags)
+{
+	struct net_device *src, *dst;
+	struct net *net;
+
+	if (plen < sizeof(*params))
+		return -EINVAL;
+
+	net = dev_net(ctx->rxq->dev);
+
+	if (is_multicast_ether_addr(params->addr) ||
+	    is_broadcast_ether_addr(params->addr))
+		return BPF_FDB_LKUP_RET_NOENT;
+
+	src = dev_get_by_index_rcu(net, params->ifindex);
+	if (unlikely(!src))
+		return -ENODEV;
+
+	dst = br_fdb_find_port_xdp(src, params->addr, params->vlan_id);
+	if (dst) {
+		params->ifindex = dst->ifindex;
+		return BPF_FDB_LKUP_RET_SUCCESS;
+	}
+
+	return BPF_FDB_LKUP_RET_NOENT;
+}
+
+static const struct bpf_func_proto bpf_xdp_fdb_lookup_proto = {
+	.func		= bpf_xdp_fdb_lookup,
+	.gpl_only	= true,
+	.ret_type	= RET_INTEGER,
+	.arg1_type      = ARG_PTR_TO_CTX,
+	.arg2_type      = ARG_PTR_TO_MEM,
+	.arg3_type      = ARG_CONST_SIZE,
+	.arg4_type	= ARG_ANYTHING,
+};
+#endif
+
 #if IS_ENABLED(CONFIG_IPV6_SEG6_BPF)
 static int bpf_push_seg6_encap(struct sk_buff *skb, u32 type, void *hdr, u32 len)
 {
@@ -6477,6 +6518,10 @@ xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
 		return &bpf_xdp_adjust_tail_proto;
 	case BPF_FUNC_fib_lookup:
 		return &bpf_xdp_fib_lookup_proto;
+#if IS_ENABLED(CONFIG_BRIDGE)
+	case BPF_FUNC_fdb_lookup:
+		return &bpf_xdp_fdb_lookup_proto;
+#endif
 #ifdef CONFIG_INET
 	case BPF_FUNC_sk_lookup_udp:
 		return &bpf_xdp_sk_lookup_udp_proto;
diff --git a/scripts/bpf_helpers_doc.py b/scripts/bpf_helpers_doc.py
index 5bfa448b4704..49ebd2273614 100755
--- a/scripts/bpf_helpers_doc.py
+++ b/scripts/bpf_helpers_doc.py
@@ -448,6 +448,7 @@ class PrinterHelpers(Printer):
             '__wsum',
 
             'struct bpf_fib_lookup',
+            'struct bpf_fdb_lookup',
             'struct bpf_perf_event_data',
             'struct bpf_perf_event_value',
             'struct bpf_pidns_info',
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index 54d0c886e3ba..f2e729dd1721 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -2149,6 +2149,22 @@ union bpf_attr {
  *		* > 0 one of **BPF_FIB_LKUP_RET_** codes explaining why the
  *		  packet is not forwarded or needs assist from full stack
  *
+ * long bpf_fdb_lookup(void *ctx, struct bpf_fdb_lookup *params, int plen, u32 flags)
+ *	Description
+ *		Do FDB lookup in kernel tables using parameters in *params*.
+ *		If lookup is successful (ie., FDB lookup finds a destination entry),
+ *		ifindex is set to the egress device index from the FDB lookup.
+ *		Both multicast and broadcast packets are currently unsupported
+ *		in XDP layer.
+ *
+ *		*plen* argument is the size of the passed **struct bpf_fdb_lookup**.
+ *		*ctx* is only **struct xdp_md** for XDP programs.
+ *
+ *     Return
+ *		* < 0 if any input argument is invalid
+ *		*   0 on success (destination port is found)
+ *		* > 0 on failure (there is no entry)
+ *
  * long bpf_sock_hash_update(struct bpf_sock_ops *skops, struct bpf_map *map, void *key, u64 flags)
  *	Description
  *		Add an entry to, or update a sockhash *map* referencing sockets.
@@ -3449,6 +3465,7 @@ union bpf_attr {
 	FN(get_stack),			\
 	FN(skb_load_bytes_relative),	\
 	FN(fib_lookup),			\
+	FN(fdb_lookup),			\
 	FN(sock_hash_update),		\
 	FN(msg_redirect_hash),		\
 	FN(sk_redirect_hash),		\
@@ -4328,6 +4345,17 @@ struct bpf_fib_lookup {
 	__u8	dmac[6];     /* ETH_ALEN */
 };
 
+enum {
+	BPF_FDB_LKUP_RET_SUCCESS,      /* lookup successful */
+	BPF_FDB_LKUP_RET_NOENT,        /* entry is not found */
+};
+
+struct bpf_fdb_lookup {
+	unsigned char addr[6];     /* ETH_ALEN */
+	__u16 vlan_id;
+	__u32 ifindex;
+};
+
 enum bpf_task_fd_type {
 	BPF_FD_TYPE_RAW_TRACEPOINT,	/* tp name */
 	BPF_FD_TYPE_TRACEPOINT,		/* tp name */
-- 
2.20.1 (Apple Git-117)

