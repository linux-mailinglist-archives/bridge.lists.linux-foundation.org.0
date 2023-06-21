Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6538773B237
	for <lists.bridge@lfdr.de>; Fri, 23 Jun 2023 10:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99C2740901;
	Fri, 23 Jun 2023 08:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99C2740901
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=G30UblbI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCudaNVDLzVW; Fri, 23 Jun 2023 08:01:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9D10840B8D;
	Fri, 23 Jun 2023 08:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D10840B8D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3D14C0093;
	Fri, 23 Jun 2023 08:01:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B1E5BC0029
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 09:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C8DB4063F
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 09:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C8DB4063F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZbTnTTL3jt3 for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jun 2023 09:47:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B3B7401CA
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B3B7401CA
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 09:47:38 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-311367a3e12so4759136f8f.2
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 02:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1687340856; x=1689932856;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=W7vaP4COJw7cr7JoMrHnRrsTiKTA9ch4qqT7H54n5KE=;
 b=G30UblbIXu9IjjMqmFif9BgmLt3Q/wQTHEsMPkfLQ2oBmWTm5RII/sOqRztvRcsWzJ
 Ah1nQh48mmP5CCrE8aTcUVUSRu13vhQVf2MVFOCvM47xAA/Hiu+J9dk2gnQwl4QC7hes
 HAP+lqoeyWWN5jjl1ayxKa2WnWgnkphJfGXVAvPgzlV6KAYCB72zEOCUC1Fkgw2LG2RL
 qFScXp+08lWQ9ZxXHT9Qcij9NKqAiIrz+h+nz7blAAb2hEcKUuX4T5C8U7kkITRkk9FZ
 XqqvTK/GSalt63Du1qQniW+Vrm4MpysfSqjvspyrrmkcgIBSjkIMw+kflK9hW0VEDDaJ
 SBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687340856; x=1689932856;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W7vaP4COJw7cr7JoMrHnRrsTiKTA9ch4qqT7H54n5KE=;
 b=Hl5HBhVNIsjLhpawa3H7nekeMDjyz65YPhMfzXnbSnDBMqmnm72RGtk19bGRGE08Y3
 h5LyjaTBvL9I555CiKnx81Ucd9xW/19aFqur5HSir+O1QBY/zc2/i8/yRD1z19F2ZYm6
 2zYL7Tj3OZ9qa3aqXfj2sz331nSh68B6X/88PBwJcwArd4U8GO7b/4hsdDuMipDmFDrD
 RqO8gnoloPWliu7g5yrPYuqpged7okaoq0dA03B28LBEA33E93nXGkhaCGpA48DsFiFA
 xkHF1flFKRLhkn35D4tALyoXiMZp7/k/tCg5yNRNfBg2KBozgUMTwQ+aRJA+F6ryt0Kt
 IF/Q==
X-Gm-Message-State: AC+VfDyTvSOSn7+1YSKLmrE1vbR7ZzBoDu4piCzfZOh5dsXmVT5nvvWn
 hAzRI53OYBlSsWnzoh0eJR1zhA==
X-Google-Smtp-Source: ACHHUZ6ePCYgaia+iVpDq0611OUDvjZTLmyLBYbezvwjToiHn9G9AScJHP32anCsooi+7JwtVK2+aw==
X-Received: by 2002:adf:f00f:0:b0:30f:c679:793a with SMTP id
 j15-20020adff00f000000b0030fc679793amr12494668wro.3.1687340856153; 
 Wed, 21 Jun 2023 02:47:36 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 w18-20020a5d6812000000b0030ae69920c9sm3991595wru.53.2023.06.21.02.47.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 02:47:34 -0700 (PDT)
Date: Wed, 21 Jun 2023 12:47:30 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Joel Granados <j.granados@samsung.com>
Message-ID: <dab06c20-f8b0-4e34-b885-f3537e442d54@kadam.mountain>
References: <20230621091000.424843-1-j.granados@samsung.com>
 <CGME20230621091022eucas1p1c097da50842b23e902e1a674e117e1aa@eucas1p1.samsung.com>
 <20230621091000.424843-7-j.granados@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230621091000.424843-7-j.granados@samsung.com>
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

The patchset doesn't include the actual interesting changes, just a
bunch of mechanical prep work.

On Wed, Jun 21, 2023 at 11:09:55AM +0200, Joel Granados wrote:
> diff --git a/net/ieee802154/6lowpan/reassembly.c b/net/ieee802154/6lowpan/reassembly.c
> index a91283d1e5bf..7b717434368c 100644
> --- a/net/ieee802154/6lowpan/reassembly.c
> +++ b/net/ieee802154/6lowpan/reassembly.c
> @@ -379,7 +379,8 @@ static int __net_init lowpan_frags_ns_sysctl_register(struct net *net)
>  	table[1].extra2	= &ieee802154_lowpan->fqdir->high_thresh;
>  	table[2].data	= &ieee802154_lowpan->fqdir->timeout;
>  
> -	hdr = register_net_sysctl(net, "net/ieee802154/6lowpan", table);
> +	hdr = register_net_sysctl(net, "net/ieee802154/6lowpan", table,
> +				  ARRAY_SIZE(lowpan_frags_ns_ctl_table));

For example, in lowpan_frags_ns_sysctl_register() the sentinel is
sometimes element zero if the user doesn't have enough permissions.  I
would want to ensure that was handled correctly, but that's going to be
done later in a completely different patchset.  I'm definitely not going
to remember to check.

> diff --git a/net/mpls/af_mpls.c b/net/mpls/af_mpls.c
> index dc5165d3eec4..6f96aae76537 100644
> --- a/net/mpls/af_mpls.c
> +++ b/net/mpls/af_mpls.c
> @@ -1395,6 +1395,40 @@ static const struct ctl_table mpls_dev_table[] = {
>  	{ }
>  };
>  
> +static int mpls_platform_labels(struct ctl_table *table, int write,
> +				void *buffer, size_t *lenp, loff_t *ppos);
> +#define MPLS_NS_SYSCTL_OFFSET(field)		\
> +	(&((struct net *)0)->field)
> +
> +static const struct ctl_table mpls_table[] = {
> +	{
> +		.procname	= "platform_labels",
> +		.data		= NULL,
> +		.maxlen		= sizeof(int),
> +		.mode		= 0644,
> +		.proc_handler	= mpls_platform_labels,
> +	},
> +	{
> +		.procname	= "ip_ttl_propagate",
> +		.data		= MPLS_NS_SYSCTL_OFFSET(mpls.ip_ttl_propagate),
> +		.maxlen		= sizeof(int),
> +		.mode		= 0644,
> +		.proc_handler	= proc_dointvec_minmax,
> +		.extra1		= SYSCTL_ZERO,
> +		.extra2		= SYSCTL_ONE,
> +	},
> +	{
> +		.procname	= "default_ttl",
> +		.data		= MPLS_NS_SYSCTL_OFFSET(mpls.default_ttl),
> +		.maxlen		= sizeof(int),
> +		.mode		= 0644,
> +		.proc_handler	= proc_dointvec_minmax,
> +		.extra1		= SYSCTL_ONE,
> +		.extra2		= &ttl_max,
> +	},
> +	{ }
> +};
> +
>  static int mpls_dev_sysctl_register(struct net_device *dev,
>  				    struct mpls_dev *mdev)
>  {
> @@ -1410,7 +1444,7 @@ static int mpls_dev_sysctl_register(struct net_device *dev,
>  	/* Table data contains only offsets relative to the base of
>  	 * the mdev at this point, so make them absolute.
>  	 */
> -	for (i = 0; i < ARRAY_SIZE(mpls_dev_table); i++) {
> +	for (i = 0; i < ARRAY_SIZE(mpls_dev_table) - 1; i++) {

Adding the " - 1" is just a gratuitous change.  It's not required.
It makes that patch more confusing to review.  And you're just going
to have to change it back to how it was if you remove the sentinel.

>  		table[i].data = (char *)mdev + (uintptr_t)table[i].data;
>  		table[i].extra1 = mdev;
>  		table[i].extra2 = net;
> @@ -1418,7 +1452,8 @@ static int mpls_dev_sysctl_register(struct net_device *dev,
>  
>  	snprintf(path, sizeof(path), "net/mpls/conf/%s", dev->name);
>  
> -	mdev->sysctl = register_net_sysctl(net, path, table);
> +	mdev->sysctl = register_net_sysctl(net, path, table,
> +					   ARRAY_SIZE(mpls_dev_table));
>  	if (!mdev->sysctl)
>  		goto free;
>  
> @@ -1432,6 +1467,7 @@ static int mpls_dev_sysctl_register(struct net_device *dev,
>  	return -ENOBUFS;
>  }
>  
> +

Double blank line.

>  static void mpls_dev_sysctl_unregister(struct net_device *dev,
>  				       struct mpls_dev *mdev)
>  {

regards,
dan carpenter
