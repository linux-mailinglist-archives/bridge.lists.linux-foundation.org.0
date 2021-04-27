Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2065F36C303
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 12:17:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 015A24057F;
	Tue, 27 Apr 2021 10:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CH6RIHx6kNuc; Tue, 27 Apr 2021 10:17:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33CA24058C;
	Tue, 27 Apr 2021 10:17:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E9E0EC001C;
	Tue, 27 Apr 2021 10:17:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3CB47C000B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 10:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D6234058C
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 10:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7W_qIpQyI-s1 for <bridge@lists.linux-foundation.org>;
 Tue, 27 Apr 2021 10:17:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDAB34057F
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 10:17:50 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id y3so33004170eds.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 03:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jS8mRrVLDbaMyDpr/LGOADIkfzJVPQFO2ymhmDViSxs=;
 b=SC93pnBiT+4OyRyZhIROJviKb++caWsXnBmTV1wQ3TZY6NhVBd3et/G1sQ3466kKlS
 vAQ+JgWSgaMdsbFZKGMNbUh+l96p3DbPA/WmAPgGgi/N01hmElZhWWo1XWB9GDFADatC
 elGzzyKuwK7ZTM030Aw91J4T4nk14zB/GxCDnoXma3eGbamlrTlfiKTzIeRIEK58x7Za
 0Z4Nm1Xuu0oiH3HQZiJniOr8oU+BEod+mP3BC41o0dWG1GOj6tyQAW/9qFp+kBpnRHgH
 IOT2w+kMPC39nE7DvPfoF8AHoAWN5o1BR3+iP0vataH6fDt2i0nznbLqBPqU1YPTv5+k
 fTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jS8mRrVLDbaMyDpr/LGOADIkfzJVPQFO2ymhmDViSxs=;
 b=Kt1S3D9BQo0sckqJD93+dZNqdQjgubsDcSSVrhmJKqKehdE0AfzUFsGC1E/uWGcHYT
 TjAgWiYmLkNPIGicIL6gcZx88s4G0i6Z6EQu++CQCnbs2yq9Vb4wGuANRbZCfwUZ3/Bq
 0YMhXi2x5LUKRuw9MW2fLVR8IMdjoBk/Jg3ELl3b/BcDTt3C1pQjMhpD6VFVqJIhhAKW
 OZ3pAWOfr6RkW1kaj0JBGC7b6FRjAoRO8/TQ9mrogCfCLPIgAjaL2AC4UIFST0S38u0g
 VbK72Z1+B9Wkd+oZglSQDRUCLhZBUu4WC9gRYo5ExQX3VJNUI01k3zLWMLLkVf3Wv5g5
 T2Fg==
X-Gm-Message-State: AOAM532NX7Bhc5RLjrd+yaStGz4IxaQMiynFPmudO1e7zGsyp9Mxq2mw
 hc0785fgpE07nd43dureOM0=
X-Google-Smtp-Source: ABdhPJxjDMDMo8VcnQL2Lb0Y87IRi8VmuUXJgxrC2XEChV1z2EakDAQrLKfRhoUSxPxoMjtQYcjMQg==
X-Received: by 2002:aa7:cdcc:: with SMTP id h12mr3415621edw.273.1619518669191; 
 Tue, 27 Apr 2021 03:17:49 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id n21sm7583832ejx.74.2021.04.27.03.17.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 03:17:48 -0700 (PDT)
Date: Tue, 27 Apr 2021 13:17:47 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210427101747.n3y6w6o7thl5cz3r@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426170411.1789186-7-tobias@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 6/9] net: dsa: Forward offloading
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

On Mon, Apr 26, 2021 at 07:04:08PM +0200, Tobias Waldekranz wrote:
> Allow DSA drivers to support forward offloading from a bridge by:
> 
> - Passing calls to .ndo_dfwd_{add,del}_station to the drivers.
> 
> - Recording the subordinate device of offloaded skbs in the control
>   buffer so that the tagger can take the appropriate action.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/dsa.h |  7 +++++++
>  net/dsa/slave.c   | 36 ++++++++++++++++++++++++++++++++++--
>  2 files changed, 41 insertions(+), 2 deletions(-)
> 
> diff --git a/include/net/dsa.h b/include/net/dsa.h
> index 1f9ba9889034..77d4df819299 100644
> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -119,6 +119,7 @@ struct dsa_netdevice_ops {
>  
>  struct dsa_skb_cb {
>  	struct sk_buff *clone;
> +	struct net_device *sb_dev;
>  };
>  
>  struct __dsa_skb_cb {
> @@ -828,6 +829,12 @@ struct dsa_switch_ops {
>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>  	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
>  					  const struct switchdev_obj_ring_role_mrp *mrp);
> +
> +	/* L2 forward offloading */
> +	void *	(*dfwd_add_station)(struct dsa_switch *ds, int port,
> +				    struct net_device *sb_dev);
> +	void	(*dfwd_del_station)(struct dsa_switch *ds, int port,
> +				    struct net_device *sb_dev);
>  };
>  
>  #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index 77b33bd161b8..3689ffa2dbb8 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -657,6 +657,13 @@ static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
>  	return dsa_enqueue_skb(nskb, dev);
>  }
>  
> +static u16 dsa_slave_select_queue(struct net_device *dev, struct sk_buff *skb,
> +				  struct net_device *sb_dev)
> +{
> +	DSA_SKB_CB(skb)->sb_dev = sb_dev;
> +	return netdev_pick_tx(dev, skb, sb_dev);
> +}
> +

DSA_SKB_CB is going away:
https://patchwork.kernel.org/project/netdevbpf/patch/20210427042203.26258-5-yangbo.lu@nxp.com/

Let's either negotiate with Yangbo on keeping it, or make
.ndo_select_queue a bypass towards the tagger, where it can use its own
SKB_CB structure and be more flexible in general (I think I'm leaning
towards the latter).
