Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBB173B239
	for <lists.bridge@lfdr.de>; Fri, 23 Jun 2023 10:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 216D940B8D;
	Fri, 23 Jun 2023 08:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 216D940B8D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=S/CdoZua
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1I6_yU2k3Ou; Fri, 23 Jun 2023 08:01:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 55F5C40C1E;
	Fri, 23 Jun 2023 08:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55F5C40C1E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2AEF0C0099;
	Fri, 23 Jun 2023 08:01:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 705CFC0029
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 10:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4442F81F18
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 10:24:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4442F81F18
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=S/CdoZua
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FVLBMLb44T04 for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jun 2023 10:24:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0B0181A6D
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0B0181A6D
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 10:23:59 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2b46d4e1b0aso58923411fa.2
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 03:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1687343037; x=1689935037;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qIP/RgUHzsZiGVBRB71b7glXbG7VXiyuTjWvBX5krQg=;
 b=S/CdoZua/1rLl8yRwjaUF9IfJ2JcWeppWIYsAe/kEWbp+VzSobUM4iS9eeLWZHt5FO
 j/+mECwtEut66NCJpjuzLpLobjA7fzCyDUwpVOGTHl1cVmF3qTtFzfRaBX7G+Tegl8Tm
 87Q/OZiSy1hpcxgY+MGptzKzvpXBNnTUuiwawnXX2OiPypV+k03lx7aTLBlVlmFPyOCK
 oOwW0/iZyWnJ4lfaT24bKv+GYWW44GzHrflM4FjMvA3v2Bo8q5EMHhya2b4FnBXvqkic
 qrcQPaiA4BdDNTsbHtCocDQbJDuuggPiCViWJpmfQFFiYemQpuO3YqlziZ0eyW6vOYiK
 i8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687343037; x=1689935037;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qIP/RgUHzsZiGVBRB71b7glXbG7VXiyuTjWvBX5krQg=;
 b=JKgEZgXQD7sEtZDUGrH7rwuHD7RMhdTCpvWfCQwlMNmPvygRgaXemtQClmfg97Jq5h
 XKgGhex+eOwKa+4oHh23yePaCyI/snm2zLQiOwiC3umAz64/ANNNS0RRI0T9jHJX9HpM
 ul+OAt6ctZXm5qdIAfHGa7TeDvcDJbuo+Pge8IHJvV4eqP2gbtpOijxNh/lYH1nIIXnY
 4bAO4RW4VPSXQiKp4UNnLpt+V8AqHn8xMdIRYbD96U5qquqzXtBHCqI5K0cB5sKgARtK
 B8dXwCF0XHFd0c+DzPk0mR3UdwmojjqgfbEpRAy5n+SGYMLWvp8UVoQ4aHRoJA7DP9cJ
 WpeQ==
X-Gm-Message-State: AC+VfDyVIl/sLNK0qs/zJ4uFfjFQkShSUJHvdiBv60HYozUSpJzFn1Y0
 KVd2CIzwr36UXdobgmbiLsEkfw==
X-Google-Smtp-Source: ACHHUZ47T18xkAbbJT1Ek0oO9Y+tEkoagA5plZsIhQf/ly6xrGEeqlbNRj/M5efxydPdN9Sgu8PD7g==
X-Received: by 2002:a2e:94c1:0:b0:2b3:4621:b6e3 with SMTP id
 r1-20020a2e94c1000000b002b34621b6e3mr9804142ljh.34.1687343037327; 
 Wed, 21 Jun 2023 03:23:57 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 d2-20020adff842000000b00312793cc763sm4142979wrq.15.2023.06.21.03.23.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 03:23:55 -0700 (PDT)
Date: Wed, 21 Jun 2023 13:23:52 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Joel Granados <j.granados@samsung.com>
Message-ID: <5aba7eee-7a6e-4f3b-9921-e4220d479346@kadam.mountain>
References: <20230621091000.424843-1-j.granados@samsung.com>
 <CGME20230621091022eucas1p1c097da50842b23e902e1a674e117e1aa@eucas1p1.samsung.com>
 <20230621091000.424843-7-j.granados@samsung.com>
 <dab06c20-f8b0-4e34-b885-f3537e442d54@kadam.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dab06c20-f8b0-4e34-b885-f3537e442d54@kadam.mountain>
X-Mailman-Approved-At: Fri, 23 Jun 2023 08:01:14 +0000
Cc: Alexander Aring <alex.aring@gmail.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 David Howells <dhowells@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Marc Dionne <marc.dionne@auristor.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, linux-afs@lists.infradead.org,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 dccp@vger.kernel.org, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Julian Anastasov <ja@ssi.bg>, coreteam@netfilter.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Martin Schiller <ms@dev.tdt.de>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-sctp@vger.kernel.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Remi Denis-Courmont <courmisch@gmail.com>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, tipc-discussion@lists.sourceforge.net,
 linux-x25@vger.kernel.org, Neil Horman <nhorman@tuxdriver.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Karsten Graul <kgraul@linux.ibm.com>,
 Jon Maloy <jmaloy@redhat.com>, mcgrof@kernel.org,
 netfilter-devel@vger.kernel.org, Joerg Reuter <jreuter@yaina.de>,
 Ying Xue <ying.xue@windriver.com>,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 06/11] sysctl: Add size to register_net_sysctl
	function
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

On Wed, Jun 21, 2023 at 12:47:30PM +0300, Dan Carpenter wrote:
> The patchset doesn't include the actual interesting changes, just a
> bunch of mechanical prep work.
> 
> On Wed, Jun 21, 2023 at 11:09:55AM +0200, Joel Granados wrote:
> > diff --git a/net/ieee802154/6lowpan/reassembly.c b/net/ieee802154/6lowpan/reassembly.c
> > index a91283d1e5bf..7b717434368c 100644
> > --- a/net/ieee802154/6lowpan/reassembly.c
> > +++ b/net/ieee802154/6lowpan/reassembly.c
> > @@ -379,7 +379,8 @@ static int __net_init lowpan_frags_ns_sysctl_register(struct net *net)
> >  	table[1].extra2	= &ieee802154_lowpan->fqdir->high_thresh;
> >  	table[2].data	= &ieee802154_lowpan->fqdir->timeout;
> >  
> > -	hdr = register_net_sysctl(net, "net/ieee802154/6lowpan", table);
> > +	hdr = register_net_sysctl(net, "net/ieee802154/6lowpan", table,
> > +				  ARRAY_SIZE(lowpan_frags_ns_ctl_table));
> 
> For example, in lowpan_frags_ns_sysctl_register() the sentinel is
> sometimes element zero if the user doesn't have enough permissions.  I
> would want to ensure that was handled correctly, but that's going to be
> done later in a completely different patchset.  I'm definitely not going
> to remember to check.

On reflecting the patch is obviously wrong.  It should be pass zero as
table_size in that case.  See diff at the end.

There is a similar bug in neigh_sysctl_register() where we use memset to
zero out the whole table.  And another in __ip_vs_lblc_init().  I used
the smatch cross function database
	`smdb.py where ctl_table procname | grep '(null)' | grep min-max`
to make a list of functions which set procname to zero.

Probably we should add a WARN_ON() if procname is zero in the new code
which doesn't use sentinels.

regards,
dan carpenter

drivers/char/random.c          | proc_do_uuid                   | (struct ctl_table)->procname | 0
fs/proc/proc_sysctl.c          | new_dir                        | (struct ctl_table)->procname | 48,3906148897379000352
fs/proc/proc_sysctl.c          | new_links                      | (struct ctl_table)->procname | 4096-ptr_max
arch/arm64/kernel/fpsimd.c     | vec_proc_do_default_vl         | (struct ctl_table)->procname | 0
arch/arm64/kernel/armv8_deprecated.c | register_insn_emulation        | (struct ctl_table)->procname | 0-u64max
kernel/sysctl-test.c           | sysctl_test_api_dointvec_null_tbl_data | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_api_dointvec_table_maxlen_unset | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_api_dointvec_table_len_is_zero | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_api_dointvec_table_read_but_position_set | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_dointvec_read_happy_single_positive | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_dointvec_read_happy_single_negative | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_dointvec_write_happy_single_positive | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_dointvec_write_happy_single_negative | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_api_dointvec_write_single_less_int_min | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl-test.c           | sysctl_test_api_dointvec_write_single_greater_int_max | (struct ctl_table)->procname | 7612622206476333056
kernel/sysctl.c                | proc_do_static_key             | (struct ctl_table)->procname | 0
kernel/kexec_core.c            | kexec_limit_handler            | (struct ctl_table)->procname | 0
kernel/bpf/syscall.c           | bpf_stats_handler              | (struct ctl_table)->procname | 0
net/core/sysctl_net_core.c     | rps_sock_flow_sysctl           | (struct ctl_table)->procname | 0
net/core/sysctl_net_core.c     | set_default_qdisc              | (struct ctl_table)->procname | 0
net/core/neighbour.c           | neigh_sysctl_register          | (struct ctl_table)->procname | 0
net/netfilter/ipvs/ip_vs_lblc.c | __ip_vs_lblc_init              | (struct ctl_table)->procname | 0-u64max
net/netfilter/ipvs/ip_vs_lblcr.c | __ip_vs_lblcr_init             | (struct ctl_table)->procname | 0-u64max
net/netfilter/ipvs/ip_vs_ctl.c | proc_do_defense_mode           | (struct ctl_table)->procname | 0
net/netfilter/ipvs/ip_vs_ctl.c | proc_do_sync_threshold         | (struct ctl_table)->procname | 0
net/netfilter/ipvs/ip_vs_ctl.c | proc_do_sync_ports             | (struct ctl_table)->procname | 0
net/netfilter/ipvs/ip_vs_ctl.c | ipvs_proc_est_nice             | (struct ctl_table)->procname | 0
net/netfilter/ipvs/ip_vs_ctl.c | ipvs_proc_run_estimation       | (struct ctl_table)->procname | 0
net/netfilter/ipvs/ip_vs_ctl.c | ip_vs_control_net_init_sysctl  | (struct ctl_table)->procname | 0-u64max
net/netfilter/nf_log.c         | netfilter_log_sysctl_init      | (struct ctl_table)->procname | 0-u64max
net/sctp/sysctl.c              | proc_sctp_do_hmac_alg          | (struct ctl_table)->procname | 0
net/sctp/sysctl.c              | proc_sctp_do_rto_min           | (struct ctl_table)->procname | 0
net/sctp/sysctl.c              | proc_sctp_do_rto_max           | (struct ctl_table)->procname | 0
net/sctp/sysctl.c              | proc_sctp_do_auth              | (struct ctl_table)->procname | 0
net/sctp/sysctl.c              | proc_sctp_do_udp_port          | (struct ctl_table)->procname | 0
net/sctp/sysctl.c              | proc_sctp_do_probe_interval    | (struct ctl_table)->procname | 0
net/ipv6/route.c               | ipv6_route_sysctl_init         | (struct ctl_table)->procname | 0-u64max
net/ipv6/addrconf.c            | addrconf_sysctl_addr_gen_mode  | (struct ctl_table)->procname | 0
net/ieee802154/6lowpan/reassembly.c | lowpan_frags_ns_sysctl_register | (struct ctl_table)->procname | 0-u64max
net/xfrm/xfrm_sysctl.c         | xfrm_sysctl_init               | (struct ctl_table)->procname | 0-u64max
net/phonet/sysctl.c            | proc_local_port_range          | (struct ctl_table)->procname | 0
net/ipv4/route.c               | sysctl_route_net_init          | (struct ctl_table)->procname | 0-u64max
net/ipv4/sysctl_net_ipv4.c     | ipv4_local_port_range          | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | ipv4_privileged_ports          | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | ipv4_ping_group_range          | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_tcp_congestion_control    | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_tcp_available_congestion_control | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_allowed_congestion_control | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_tcp_fastopen_key          | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_tcp_available_ulp         | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_tcp_ehash_entries         | (struct ctl_table)->procname | 0
net/ipv4/sysctl_net_ipv4.c     | proc_udp_hash_entries          | (struct ctl_table)->procname | 0

diff --git a/net/ieee802154/6lowpan/reassembly.c b/net/ieee802154/6lowpan/reassembly.c
index a91283d1e5bf..749238d38014 100644
--- a/net/ieee802154/6lowpan/reassembly.c
+++ b/net/ieee802154/6lowpan/reassembly.c
@@ -360,6 +360,7 @@ static int __net_init lowpan_frags_ns_sysctl_register(struct net *net)
 	struct ctl_table_header *hdr;
 	struct netns_ieee802154_lowpan *ieee802154_lowpan =
 		net_ieee802154_lowpan(net);
+	size_t table_size = ARRAY_SIZE(lowpan_frags_ns_ctl_table);
 
 	table = lowpan_frags_ns_ctl_table;
 	if (!net_eq(net, &init_net)) {
@@ -369,8 +370,10 @@ static int __net_init lowpan_frags_ns_sysctl_register(struct net *net)
 			goto err_alloc;
 
 		/* Don't export sysctls to unprivileged users */
-		if (net->user_ns != &init_user_ns)
+		if (net->user_ns != &init_user_ns) {
 			table[0].procname = NULL;
+			table_size = 0;
+		}
 	}
 
 	table[0].data	= &ieee802154_lowpan->fqdir->high_thresh;
@@ -379,7 +382,7 @@ static int __net_init lowpan_frags_ns_sysctl_register(struct net *net)
 	table[1].extra2	= &ieee802154_lowpan->fqdir->high_thresh;
 	table[2].data	= &ieee802154_lowpan->fqdir->timeout;
 
-	hdr = register_net_sysctl(net, "net/ieee802154/6lowpan", table);
+	hdr = register_net_sysctl(net, "net/ieee802154/6lowpan", table, table_size);
 	if (hdr == NULL)
 		goto err_reg;
 
