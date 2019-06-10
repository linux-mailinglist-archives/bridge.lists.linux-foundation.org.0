Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 223C33BB2E
	for <lists.bridge@lfdr.de>; Mon, 10 Jun 2019 19:42:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7699EE47;
	Mon, 10 Jun 2019 17:41:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E6EAE25
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 17:41:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2532D775
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 17:41:42 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 0BEF8C1A21
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 19:41:39 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id F0499DA709
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 19:41:38 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id D5E14DA712; Mon, 10 Jun 2019 19:41:38 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id AC6E3DA702;
	Mon, 10 Jun 2019 19:41:36 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Mon, 10 Jun 2019 19:41:36 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 6EDBF4265A2F;
	Mon, 10 Jun 2019 19:41:36 +0200 (CEST)
Date: Mon, 10 Jun 2019 19:41:36 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Christian Brauner <christian@brauner.io>
Message-ID: <20190610174136.p3fbcbn33en5bb7f@salvia>
References: <20190609162304.3388-1-christian@brauner.io>
	<20190609162304.3388-2-christian@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190609162304.3388-2-christian@brauner.io>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	bhthompson@google.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, joelhockey@chromium.org,
	tyhicks@canonical.com, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kadlec@blackhole.kfki.hu,
	smbarber@chromium.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v1 1/1] br_netfilter: namespace bridge
 netfilter sysctls
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Thanks for updating this patch to use struct brnf_net.

A few comments below.

On Sun, Jun 09, 2019 at 06:23:04PM +0200, Christian Brauner wrote:
[...]
> diff --git a/include/net/netfilter/br_netfilter.h b/include/net/netfilter/br_netfilter.h
> index 89808ce293c4..302fcd3aade2 100644
> --- a/include/net/netfilter/br_netfilter.h
> +++ b/include/net/netfilter/br_netfilter.h
> @@ -85,17 +82,42 @@ static inline __be16 vlan_proto(const struct sk_buff *skb)
>  		return 0;
>  }
>  
> -#define IS_VLAN_IP(skb) \
> -	(vlan_proto(skb) == htons(ETH_P_IP) && \
> -	 brnf_filter_vlan_tagged)
> +static inline bool is_vlan_ip(const struct sk_buff *skb, const struct net *net)
> +{

I like this conversion from macro to static inline a lot.

But if you let me ask for one more change, would you split this in two
patches? One to replace #defines by static inline.

Then, second patch introduces the sysctl update you need.

It will make it easier for me to review.

[...]
> +static inline bool is_vlan_ipv6(const struct sk_buff *skb,
> +				const struct net *net)
> +{
> +#ifdef CONFIG_SYSCTL

Probably we can reduce #ifdef pollution a bit if you always add
'filter_vlan_tagged' and other fields to the brnf_net structure. No
matter if CONFIG_SYSCTL is set on or off. I think it's worth consuming
a bit more memory to simplify this code, so both CONFIG_SYSCTL=y and
CONFIG_SYSCTL=n run the same codepath.

Most vendors will just turn on to CONFIG_SYSCTL=y, and I don't think
it's worth the extra code for the CONFIG_SYSCTL=n case.

> +	struct brnf_net *brnet = net_generic(net, brnf_net_id);
> +
> +	return (vlan_proto(skb) == htons(ETH_P_IPV6) &&
> +		brnet->filter_vlan_tagged);
> +#else
> +	return (vlan_proto(skb) == htons(ETH_P_IPV6));

BTW, I think parens are not needed, ie.

	return vlan_proto(skb) == htons(ETH_P_IPV6);

should be fine?

Thanks!
