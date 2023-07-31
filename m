Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869B7697D7
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58D86610EB;
	Mon, 31 Jul 2023 13:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58D86610EB
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=MioizldJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WcpQRF3m6uOR; Mon, 31 Jul 2023 13:38:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 77DE8610FD;
	Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77DE8610FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB4B2C0DE1;
	Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80440C0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 674F540970
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 674F540970
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=MioizldJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hAE6xh-zm5pO for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:52 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBD6740959
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBD6740959
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-2b9ba3d6157so60489691fa.3
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787870; x=1691392670;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RwBOPTRg/ixTL80VmebTXSLlDx0EjleTiSta/enZ0MQ=;
 b=MioizldJtzYyFM8fT/qRqCJ0/CjctsqnSH0k3cEfmrLcwzbKUd3/a7FibDvZOUeqHr
 CNn6eDjqFMUzZN3BjE+0fwUq6l9tGnys0JPfy/a96wh1yE+zxnI+ats2UApCpt8zFeGZ
 SbjwP3l4j0iFYhcoiomUMzX/SGAvTmimLUctQ5cC1n0LH2vxL6S4c19Ta1ZAE2LZxvF7
 DK8hcEFexsYWrx4rCJcea7GPTFa91ji0kF7S9aInAlwqgdJFHRaJ/etWjlzGJM386xy5
 t6mhQKzeRCghmF14N+qcPoBiTeqXPQFUAZQ8vs1cNT3zlb10a4q5c/HnmhR8nhtmJGRW
 t9AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787870; x=1691392670;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RwBOPTRg/ixTL80VmebTXSLlDx0EjleTiSta/enZ0MQ=;
 b=PQoqpxitjCJgHPEE7DtN4fJKExjpO+1kVtx965r+bRXTsh5lLWeFTT3a98P5hlwDoR
 dV9lHgYMb6ZPkdQqXqliMZSPWddY7ubjCULFxlXQkDboq3lt6nxX7RqzEWnbBS6b/3TF
 DoEv+mSFIOiEJ+Lc13NTYZ5FQ2iE+MkAGF1/vqeOGYZ1REdFuC3zoz6XRd/Y1E/3PX2A
 7nrpfMK5g/xionHHO08RWPNWFrWwgksJgtB1cgkVNi8+ixBECNYienm/d7FGBU5m+5ua
 kzjMQSbeMvwBtcsaor5wYfZ+S9ZeA7DNbFcY2FF5o/FdA07T5dVCE+PvfJHAkdNK0PPL
 /oBg==
X-Gm-Message-State: ABy/qLYpzvZyvwanqoYbrUuoYXuqZLT7Rp2P9Z8jlgChmXfBY3Q1P7/R
 YTFpYCG4IxPd55qcv778gXc=
X-Google-Smtp-Source: APBJJlGqCi9j5QGN4uPvR6N+rIkRlmGaOmThikAqjJ5JSam2jN9u636C4rfI/XmZvG+R89U2vR12Cw==
X-Received: by 2002:a2e:86d8:0:b0:2b9:eb9d:cc51 with SMTP id
 n24-20020a2e86d8000000b002b9eb9dcc51mr1133211ljj.49.1690787869690; 
 Mon, 31 Jul 2023 00:17:49 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 m9-20020a7bce09000000b003fe1ddd6ac0sm3226163wmc.35.2023.07.31.00.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:49 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:24 +0200
Message-Id: <20230731071728.3493794-11-j.granados@samsung.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230731071728.3493794-1-j.granados@samsung.com>
References: <20230731071728.3493794-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 31 Jul 2023 13:38:30 +0000
Cc: Joel Granados <j.granados@samsung.com>, Wen Gu <guwen@linux.alibaba.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Alexander Aring <alex.aring@gmail.com>, linux-sctp@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Iurii Zaikin <yzaikin@google.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, "D. Wythe" <alibuda@linux.alibaba.com>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 linux-wpan@vger.kernel.org, Karsten Graul <kgraul@linux.ibm.com>
Subject: [Bridge] [PATCH v2 10/14] netfilter: Update to
	register_net_sysctl_sz
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

Move from register_net_sysctl to register_net_sysctl_sz for all the
netfilter related files. Do this while making sure to mirror the NULL
assignments with a table_size of zero for the unprivileged users.

We need to move to the new function in preparation for when we change
SIZE_MAX to ARRAY_SIZE() in the register_net_sysctl macro. Failing to do
so would erroneously allow ARRAY_SIZE() to be called on a pointer. We
hold off the SIZE_MAX to ARRAY_SIZE change until we have migrated all
the relevant net sysctl registering functions to register_net_sysctl_sz
in subsequent commits.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 net/bridge/br_netfilter_hooks.c         |  3 ++-
 net/ipv6/netfilter/nf_conntrack_reasm.c |  3 ++-
 net/netfilter/ipvs/ip_vs_ctl.c          |  8 ++++++--
 net/netfilter/ipvs/ip_vs_lblc.c         | 10 +++++++---
 net/netfilter/ipvs/ip_vs_lblcr.c        | 10 +++++++---
 net/netfilter/nf_conntrack_standalone.c |  4 +++-
 net/netfilter/nf_log.c                  |  7 ++++---
 7 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
index 1a801fab9543..15186247b59a 100644
--- a/net/bridge/br_netfilter_hooks.c
+++ b/net/bridge/br_netfilter_hooks.c
@@ -1135,7 +1135,8 @@ static int br_netfilter_sysctl_init_net(struct net *net)
 
 	br_netfilter_sysctl_default(brnet);
 
-	brnet->ctl_hdr = register_net_sysctl(net, "net/bridge", table);
+	brnet->ctl_hdr = register_net_sysctl_sz(net, "net/bridge", table,
+						ARRAY_SIZE(brnf_table));
 	if (!brnet->ctl_hdr) {
 		if (!net_eq(net, &init_net))
 			kfree(table);
diff --git a/net/ipv6/netfilter/nf_conntrack_reasm.c b/net/ipv6/netfilter/nf_conntrack_reasm.c
index d13240f13607..b2dd48911c8d 100644
--- a/net/ipv6/netfilter/nf_conntrack_reasm.c
+++ b/net/ipv6/netfilter/nf_conntrack_reasm.c
@@ -87,7 +87,8 @@ static int nf_ct_frag6_sysctl_register(struct net *net)
 	table[2].data	= &nf_frag->fqdir->high_thresh;
 	table[2].extra1	= &nf_frag->fqdir->low_thresh;
 
-	hdr = register_net_sysctl(net, "net/netfilter", table);
+	hdr = register_net_sysctl_sz(net, "net/netfilter", table,
+				     ARRAY_SIZE(nf_ct_frag6_sysctl_table));
 	if (hdr == NULL)
 		goto err_reg;
 
diff --git a/net/netfilter/ipvs/ip_vs_ctl.c b/net/netfilter/ipvs/ip_vs_ctl.c
index 62606fb44d02..8d69e4c2d822 100644
--- a/net/netfilter/ipvs/ip_vs_ctl.c
+++ b/net/netfilter/ipvs/ip_vs_ctl.c
@@ -4266,6 +4266,7 @@ static int __net_init ip_vs_control_net_init_sysctl(struct netns_ipvs *ipvs)
 	struct net *net = ipvs->net;
 	struct ctl_table *tbl;
 	int idx, ret;
+	size_t ctl_table_size = ARRAY_SIZE(vs_vars);
 
 	atomic_set(&ipvs->dropentry, 0);
 	spin_lock_init(&ipvs->dropentry_lock);
@@ -4282,8 +4283,10 @@ static int __net_init ip_vs_control_net_init_sysctl(struct netns_ipvs *ipvs)
 			return -ENOMEM;
 
 		/* Don't export sysctls to unprivileged users */
-		if (net->user_ns != &init_user_ns)
+		if (net->user_ns != &init_user_ns) {
 			tbl[0].procname = NULL;
+			ctl_table_size = 0;
+		}
 	} else
 		tbl = vs_vars;
 	/* Initialize sysctl defaults */
@@ -4353,7 +4356,8 @@ static int __net_init ip_vs_control_net_init_sysctl(struct netns_ipvs *ipvs)
 #endif
 
 	ret = -ENOMEM;
-	ipvs->sysctl_hdr = register_net_sysctl(net, "net/ipv4/vs", tbl);
+	ipvs->sysctl_hdr = register_net_sysctl_sz(net, "net/ipv4/vs", tbl,
+						  ctl_table_size);
 	if (!ipvs->sysctl_hdr)
 		goto err;
 	ipvs->sysctl_tbl = tbl;
diff --git a/net/netfilter/ipvs/ip_vs_lblc.c b/net/netfilter/ipvs/ip_vs_lblc.c
index 1b87214d385e..cf78ba4ce5ff 100644
--- a/net/netfilter/ipvs/ip_vs_lblc.c
+++ b/net/netfilter/ipvs/ip_vs_lblc.c
@@ -550,6 +550,7 @@ static struct ip_vs_scheduler ip_vs_lblc_scheduler = {
 static int __net_init __ip_vs_lblc_init(struct net *net)
 {
 	struct netns_ipvs *ipvs = net_ipvs(net);
+	size_t vars_table_size = ARRAY_SIZE(vs_vars_table);
 
 	if (!ipvs)
 		return -ENOENT;
@@ -562,16 +563,19 @@ static int __net_init __ip_vs_lblc_init(struct net *net)
 			return -ENOMEM;
 
 		/* Don't export sysctls to unprivileged users */
-		if (net->user_ns != &init_user_ns)
+		if (net->user_ns != &init_user_ns) {
 			ipvs->lblc_ctl_table[0].procname = NULL;
+			vars_table_size = 0;
+		}
 
 	} else
 		ipvs->lblc_ctl_table = vs_vars_table;
 	ipvs->sysctl_lblc_expiration = DEFAULT_EXPIRATION;
 	ipvs->lblc_ctl_table[0].data = &ipvs->sysctl_lblc_expiration;
 
-	ipvs->lblc_ctl_header =
-		register_net_sysctl(net, "net/ipv4/vs", ipvs->lblc_ctl_table);
+	ipvs->lblc_ctl_header = register_net_sysctl_sz(net, "net/ipv4/vs",
+						       ipvs->lblc_ctl_table,
+						       vars_table_size);
 	if (!ipvs->lblc_ctl_header) {
 		if (!net_eq(net, &init_net))
 			kfree(ipvs->lblc_ctl_table);
diff --git a/net/netfilter/ipvs/ip_vs_lblcr.c b/net/netfilter/ipvs/ip_vs_lblcr.c
index ad8f5fea6d3a..9eddf118b40e 100644
--- a/net/netfilter/ipvs/ip_vs_lblcr.c
+++ b/net/netfilter/ipvs/ip_vs_lblcr.c
@@ -736,6 +736,7 @@ static struct ip_vs_scheduler ip_vs_lblcr_scheduler =
 static int __net_init __ip_vs_lblcr_init(struct net *net)
 {
 	struct netns_ipvs *ipvs = net_ipvs(net);
+	size_t vars_table_size = ARRAY_SIZE(vs_vars_table);
 
 	if (!ipvs)
 		return -ENOENT;
@@ -748,15 +749,18 @@ static int __net_init __ip_vs_lblcr_init(struct net *net)
 			return -ENOMEM;
 
 		/* Don't export sysctls to unprivileged users */
-		if (net->user_ns != &init_user_ns)
+		if (net->user_ns != &init_user_ns) {
 			ipvs->lblcr_ctl_table[0].procname = NULL;
+			vars_table_size = 0;
+		}
 	} else
 		ipvs->lblcr_ctl_table = vs_vars_table;
 	ipvs->sysctl_lblcr_expiration = DEFAULT_EXPIRATION;
 	ipvs->lblcr_ctl_table[0].data = &ipvs->sysctl_lblcr_expiration;
 
-	ipvs->lblcr_ctl_header =
-		register_net_sysctl(net, "net/ipv4/vs", ipvs->lblcr_ctl_table);
+	ipvs->lblcr_ctl_header = register_net_sysctl_sz(net, "net/ipv4/vs",
+							ipvs->lblcr_ctl_table,
+							vars_table_size);
 	if (!ipvs->lblcr_ctl_header) {
 		if (!net_eq(net, &init_net))
 			kfree(ipvs->lblcr_ctl_table);
diff --git a/net/netfilter/nf_conntrack_standalone.c b/net/netfilter/nf_conntrack_standalone.c
index 169e16fc2bce..0ee98ce5b816 100644
--- a/net/netfilter/nf_conntrack_standalone.c
+++ b/net/netfilter/nf_conntrack_standalone.c
@@ -1106,7 +1106,9 @@ static int nf_conntrack_standalone_init_sysctl(struct net *net)
 		table[NF_SYSCTL_CT_BUCKETS].mode = 0444;
 	}
 
-	cnet->sysctl_header = register_net_sysctl(net, "net/netfilter", table);
+	cnet->sysctl_header = register_net_sysctl_sz(net, "net/netfilter",
+						     table,
+						     ARRAY_SIZE(nf_ct_sysctl_table));
 	if (!cnet->sysctl_header)
 		goto out_unregister_netfilter;
 
diff --git a/net/netfilter/nf_log.c b/net/netfilter/nf_log.c
index 8a29290149bd..8cc52d2bd31b 100644
--- a/net/netfilter/nf_log.c
+++ b/net/netfilter/nf_log.c
@@ -487,9 +487,10 @@ static int netfilter_log_sysctl_init(struct net *net)
 	for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++)
 		table[i].extra2 = net;
 
-	net->nf.nf_log_dir_header = register_net_sysctl(net,
-						"net/netfilter/nf_log",
-						table);
+	net->nf.nf_log_dir_header = register_net_sysctl_sz(net,
+							   "net/netfilter/nf_log",
+							   table,
+							   ARRAY_SIZE(nf_log_sysctl_table));
 	if (!net->nf.nf_log_dir_header)
 		goto err_reg;
 
-- 
2.30.2

