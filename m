Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4D2372C52
	for <lists.bridge@lfdr.de>; Tue,  4 May 2021 16:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9551060B53;
	Tue,  4 May 2021 14:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MSRHyI5Waj4X; Tue,  4 May 2021 14:44:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBC7C6088C;
	Tue,  4 May 2021 14:44:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0E92C0001;
	Tue,  4 May 2021 14:44:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 394A2C0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 14:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27ADF60B3D
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 14:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23IUfe5wZZ8w for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 14:44:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA0CC6088C
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 14:44:35 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id 2so13660562lft.4
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 07:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=cPrifclr87s/6R17fQyVakQEUFrMtvg1/O/9UfYkzbE=;
 b=OX4Lh5Fvq1Sw1rXFrs0XdzbfI0n/oZ01jUpaNJ41CclS/mRA+QYImCt2FEk0Z+uEA5
 ghM412tiqPcbw1rbjjnyV4KotpeH4aWllyTtXAxAc4Yytp+Fa3i3oTZ6lgNCGC/y6qH1
 eteZzm2rgmnpn++tlojY0G6RabkjDLVD80y80AJ8dqojO+6+xPZ2OwyWbHVIPXG/g/rM
 fXrzuM2aokmbtH4SKIT+bsW22arxzTx1sWP7VPJdFQk8igKSKYCQ4RvWB5CW7W5PRihX
 cGr1FevvGwXwCh9YpmS7I13Q59dj149XDn8p52REg2rhyl7hKWbifAiPd6aQOlyw5g4V
 Ozqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=cPrifclr87s/6R17fQyVakQEUFrMtvg1/O/9UfYkzbE=;
 b=P7qANMfdoQDM/twgAXAh13FROZuw8Gu17mUHEuKA0UAuVVBPFx5lk++fIVSJIaj6VJ
 /pd0m5s/7k+L2sSc4ZWf0Gun9Jl0T2BefJdYvelfecYn/6VFF3ThU5hhCHHu8Wfar28u
 /MNxsyIih3/L38WuoKtLwWZ/C2+ycxBh/wVhVRm5LXhRYKtKHKPZh3XxMI+EZWLu2PoK
 cAEzQ641x5rPBgreN+fgYyXEzNIgKcddRlJU41kZ2b/OenRwM5B/J513mV/iq1wWNdEZ
 qXU2bWezortsw4X/tfHKpW77E0eNDOpjV8fP54dbkvDUgI06fcmjZcSH82pxu6mAF/a8
 hSKw==
X-Gm-Message-State: AOAM530bFsV0snWqs0s10gz8DQihG+SVfJliDBLbMuED4MKDwCkRUp4Z
 YSKydM6bdKm9kYxZZbztKbNIS+c25wGoog==
X-Google-Smtp-Source: ABdhPJxXD7SD3GPvhgRiJZRX4Pi/EOZngGi/cORtCRHqo317F9Cxw6QWqfcU6uj7P+RpjpVsFpkFxw==
X-Received: by 2002:a05:6512:6d5:: with SMTP id
 u21mr17546323lff.586.1620139473484; 
 Tue, 04 May 2021 07:44:33 -0700 (PDT)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c21sm291466lfc.80.2021.05.04.07.44.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 07:44:32 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210427101747.n3y6w6o7thl5cz3r@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf>
Date: Tue, 04 May 2021 16:44:31 +0200
Message-ID: <878s4uo8xc.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, Apr 27, 2021 at 13:17, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Mon, Apr 26, 2021 at 07:04:08PM +0200, Tobias Waldekranz wrote:
>> Allow DSA drivers to support forward offloading from a bridge by:
>> 
>> - Passing calls to .ndo_dfwd_{add,del}_station to the drivers.
>> 
>> - Recording the subordinate device of offloaded skbs in the control
>>   buffer so that the tagger can take the appropriate action.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  include/net/dsa.h |  7 +++++++
>>  net/dsa/slave.c   | 36 ++++++++++++++++++++++++++++++++++--
>>  2 files changed, 41 insertions(+), 2 deletions(-)
>> 
>> diff --git a/include/net/dsa.h b/include/net/dsa.h
>> index 1f9ba9889034..77d4df819299 100644
>> --- a/include/net/dsa.h
>> +++ b/include/net/dsa.h
>> @@ -119,6 +119,7 @@ struct dsa_netdevice_ops {
>>  
>>  struct dsa_skb_cb {
>>  	struct sk_buff *clone;
>> +	struct net_device *sb_dev;
>>  };
>>  
>>  struct __dsa_skb_cb {
>> @@ -828,6 +829,12 @@ struct dsa_switch_ops {
>>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>>  	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
>>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>> +
>> +	/* L2 forward offloading */
>> +	void *	(*dfwd_add_station)(struct dsa_switch *ds, int port,
>> +				    struct net_device *sb_dev);
>> +	void	(*dfwd_del_station)(struct dsa_switch *ds, int port,
>> +				    struct net_device *sb_dev);
>>  };
>>  
>>  #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
>> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> index 77b33bd161b8..3689ffa2dbb8 100644
>> --- a/net/dsa/slave.c
>> +++ b/net/dsa/slave.c
>> @@ -657,6 +657,13 @@ static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
>>  	return dsa_enqueue_skb(nskb, dev);
>>  }
>>  
>> +static u16 dsa_slave_select_queue(struct net_device *dev, struct sk_buff *skb,
>> +				  struct net_device *sb_dev)
>> +{
>> +	DSA_SKB_CB(skb)->sb_dev = sb_dev;
>> +	return netdev_pick_tx(dev, skb, sb_dev);
>> +}
>> +
>
> DSA_SKB_CB is going away:
> https://patchwork.kernel.org/project/netdevbpf/patch/20210427042203.26258-5-yangbo.lu@nxp.com/
>
> Let's either negotiate with Yangbo on keeping it, or make
> .ndo_select_queue a bypass towards the tagger, where it can use its own
> SKB_CB structure and be more flexible in general (I think I'm leaning
> towards the latter).

Thus far, Yangbo is a tough negotiator, giving me the silent treatment:

https://lore.kernel.org/netdev/87y2d2noe5.fsf@waldekranz.com/

:)

That memset is giving me a hard time. I have just disabled it on my
branch at the moment. Any ideas on how to get rid of it without breaking
timestamping?
