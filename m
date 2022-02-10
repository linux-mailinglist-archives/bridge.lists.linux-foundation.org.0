Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2664B084B
	for <lists.bridge@lfdr.de>; Thu, 10 Feb 2022 09:31:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EEBD82681;
	Thu, 10 Feb 2022 08:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCd3u7u5LF1e; Thu, 10 Feb 2022 08:31:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9487482404;
	Thu, 10 Feb 2022 08:31:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59861C0039;
	Thu, 10 Feb 2022 08:31:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7E07C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A924A60E86
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rn4UInADydV6 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Feb 2022 08:31:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D08C860E7A
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:31:47 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id co28so9668385edb.1
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 00:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=5HYctMBlbUcF9ELod876PiSjtl+wZnwlHpBP7i180qk=;
 b=4W/BEEtH+1u66zjUlg4i2buOw0kWN7KslsuQrXrs1aoBF7XRoS/XyLbdULBOvzjoMT
 ins3ef8qYhlshV9+4JrVgxpTcOlD1Z8rw4ZqH1UnEqKnW+PcD52kneTOgDNX16W7F+2V
 XH4xaYi8qs3mcZHKcJKRSceaMVlzwlt1WKtb5wGZ2lL08nvwFNxHQ/sfhy3ZKmHp/Gzt
 DUh2dZ2EuIsFdZDYNYd61JGy5o8fGmHq93ganHtWDC0PfyCKdoakDFNlr8JWE6kBXh41
 Ha9b5YRx+36+UFJsKwrEOuYDyzxtZC404qHuszZ6tuxQgrhmtd55868dn+z1HZLd+2Eq
 t81A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5HYctMBlbUcF9ELod876PiSjtl+wZnwlHpBP7i180qk=;
 b=00g9jBvJhvv+TeC0XNJHNRFUIX3/bgY1+Q2XtOKdW9XGfC+qTDu/r8iGiTkHsyWx4W
 G/p3vCTxl6Z+Nm58ylsYXYgzie3nu3LElSUzjUf1hAblRl+E9GGsWcfeyetvBIauGXob
 ma/ijFubtgxRyvNd935yU4QgJqxiyM+mWARG+lryMuQfE8fQtgzv3RLIBN4n4AAv4Fpx
 Wh2B1Bvusxl9V4ASej+YNWAWyarXygfDbZiUmJw+dDSNCSFMCXSe3MeYRAjypzRlwPI6
 ZkdiKOop2FfZxltDevk+T5mEaxtm1QpZNrL2tcsTsNi9TfjuGncZHMZUUjk2cKJB9XEi
 uB6A==
X-Gm-Message-State: AOAM532M2197ZfrfceMEIFab+vFDZTeXJlSQGPfaCpBL7WaVe1uUSJD5
 IU1rXMw/LWSBnVfnh9p7LqfLqA==
X-Google-Smtp-Source: ABdhPJwkXWdDIgFnjmrqo4fAjO79Uexv7RWGiFdCHB/qPMBgT6O3kyw4f4gWUqmqti/XKFNiaJkzog==
X-Received: by 2002:a05:6402:2691:: with SMTP id
 w17mr7107853edd.126.1644481905658; 
 Thu, 10 Feb 2022 00:31:45 -0800 (PST)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id gq1sm5882254ejb.58.2022.02.10.00.31.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Feb 2022 00:31:45 -0800 (PST)
Message-ID: <fed43e8d-de8c-aa76-1451-877cf4cc76d2@blackwall.org>
Date: Thu, 10 Feb 2022 10:31:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
 <20220209130538.533699-6-schultz.hans+netdev@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220209130538.533699-6-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Hans Schultz <schultz.hans+lkml@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2 5/5] net: bridge: Refactor bridge
 port in locked mode to use jump labels
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

On 09/02/2022 15:05, Hans Schultz wrote:
> From: Hans Schultz <schultz.hans+lkml@gmail.com>
> 
> As the locked mode feature is in the hot path of the bridge modules
> reception of packets, it needs to be refactored to use jump labels
> for optimization.
> 
> Signed-off-by: Hans Schultz <schultz.hans+lkml@gmail.com>
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---

Why two (almost) identical sign-offs?

Also, as Ido mentioned, please fold this patch into patch 01.

>  net/bridge/br_input.c   | 22 ++++++++++++++++++----
>  net/bridge/br_netlink.c |  6 ++++++
>  net/bridge/br_private.h |  2 ++
>  3 files changed, 26 insertions(+), 4 deletions(-)
> 
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 469e3adbce07..6fc428d6bac5 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -23,6 +23,18 @@
>  #include "br_private.h"
>  #include "br_private_tunnel.h"
>  
> +static struct static_key_false br_input_locked_port_feature;
> +
> +void br_input_locked_port_add(void)
> +{
> +	static_branch_inc(&br_input_locked_port_feature);
> +}
> +
> +void br_input_locked_port_remove(void)
> +{
> +	static_branch_dec(&br_input_locked_port_feature);
> +}
> +
>  static int
>  br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
>  {
> @@ -91,10 +103,12 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  				&state, &vlan))
>  		goto out;
>  
> -	if (p->flags & BR_PORT_LOCKED) {
> -		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
> -		if (!(fdb_entry && fdb_entry->dst == p))
> -			goto drop;
> +	if (static_branch_unlikely(&br_input_locked_port_feature)) {
> +		if (p->flags & BR_PORT_LOCKED) {
> +			fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
> +			if (!(fdb_entry && fdb_entry->dst == p))
> +				goto drop;
> +		}
>  	}
>  
>  	nbp_switchdev_frame_mark(p, skb);
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 7d4432ca9a20..e3dbe9fed75c 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -860,6 +860,7 @@ static int br_set_port_state(struct net_bridge_port *p, u8 state)
>  static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
>  			     int attrtype, unsigned long mask)
>  {
> +	bool locked = p->flags & BR_PORT_LOCKED;
>  	if (!tb[attrtype])
>  		return;
>  
> @@ -867,6 +868,11 @@ static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
>  		p->flags |= mask;
>  	else
>  		p->flags &= ~mask;
> +
> +	if ((p->flags & BR_PORT_LOCKED) && !locked)
> +		br_input_locked_port_add();
> +	if (!(p->flags & BR_PORT_LOCKED) && locked)
> +		br_input_locked_port_remove();
>  }
>  
>  /* Process bridge protocol info on port */
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 2661dda1a92b..0ec3ef897978 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -832,6 +832,8 @@ void br_manage_promisc(struct net_bridge *br);
>  int nbp_backup_change(struct net_bridge_port *p, struct net_device *backup_dev);
>  
>  /* br_input.c */
> +void br_input_locked_port_add(void);
> +void br_input_locked_port_remove(void);
>  int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb);
>  rx_handler_func_t *br_get_rx_handler(const struct net_device *dev);
>  

