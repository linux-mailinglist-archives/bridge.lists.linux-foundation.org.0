Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E91514D801A
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 11:43:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 904A44148A;
	Mon, 14 Mar 2022 10:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s441fGCHx5gI; Mon, 14 Mar 2022 10:43:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 38FE0410B8;
	Mon, 14 Mar 2022 10:43:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB975C0012;
	Mon, 14 Mar 2022 10:43:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92ED1C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8138A60ED7
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEGdyGlJFcAn for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 10:43:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4FBD60EB8
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:43:14 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id qt6so32787590ejb.11
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 03:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=A7EqDn+Rvpx8UXeNB7ju/W8rAWMhJLZzf0YL/c7EbsM=;
 b=R9FlibjV7YbRYHtNtmZ8gtRoaI/OqgLDDsvIOf3Nna/kMrJKoO2Diw1xJYXOdFMzNe
 eVfypM8Up5u0iHhizU6sIocI0SNbPJbzdQv8Ij8W7wpXkCKeh84v4GmDoVgvHii5FWT3
 GdN6qq+nsKIYd0xgNHR41sr8NQUoSMz6Tofd9TsZXuGYp/bqCEt20UZK70YOM0qaL3lu
 Woy8tXCsY4dC5ScaFoePtavo0uiax78Jfoat3ahD9sOSepgUJZvvsZbvxT7XDlZ8xAwI
 kWe/+9uPXcsL9avWiyXaxxwl40n29bgAFDocnLoaPo5x2IvO5vKoO9+6CMwmWW3l+ouS
 ozMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=A7EqDn+Rvpx8UXeNB7ju/W8rAWMhJLZzf0YL/c7EbsM=;
 b=QQdoJaCtmfHoutbtQiLMP8oMXjyaJJj+NDJ8lrPqJKIL0AvnBkQ1/6Dtljdk0+MWBM
 stpDTPSnaJTAm5Pt5AA7rl2bttPZhb7a7yPrbV23f8G9o4mWgVtofezCt2hNPT5Qz6YQ
 HZY9csZYQm8GxL04wqcuWhH9kceQpGFQmWnImyco3XLmqEMybgRpkyrxg6BV61NfXide
 MHEc8XUYuDXBr7/uVBZ9c8L6mHEXH+Mbjqvs4rCeia1tTMNd+G3niCU14KtP3gJagUZM
 +HQPrPRGnb9CvSu5z7xIE709jUGFBw+BB6mHYd46t1baSmLxw8kv8PdcvZn1o+sv7uGe
 Cm8A==
X-Gm-Message-State: AOAM533P1FYeE4l/CoZ2ffqTxTGS1aCFeW8cyYBCsfbfbnTrIx9SuCDb
 5mlsHnCG9qGtFYvrOku2AHlcoA==
X-Google-Smtp-Source: ABdhPJxTHRTQNFE5kKAa4DCdyAQWIglAKntXNPflLiu//qCYFNVof0yRClCccCCCjGwXKUlnQCWMvQ==
X-Received: by 2002:a17:906:1613:b0:6cf:1161:eab6 with SMTP id
 m19-20020a170906161300b006cf1161eab6mr17257995ejd.315.1647254593012; 
 Mon, 14 Mar 2022 03:43:13 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 f15-20020a50e08f000000b004134a121ed2sm8023894edl.82.2022.03.14.03.43.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 03:43:12 -0700 (PDT)
Message-ID: <ace79051-0f73-8e04-5ac6-6098ffb15acd@blackwall.org>
Date: Mon, 14 Mar 2022 12:43:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-9-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220314095231.3486931-9-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 08/14] net: bridge: mst: Add helper
 to check if MST is enabled
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

On 14/03/2022 11:52, Tobias Waldekranz wrote:
> This is useful for switchdev drivers that might want to refuse to join
> a bridge where MST is enabled, if the hardware can't support it.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/linux/if_bridge.h | 5 +++++
>  net/bridge/br_mst.c       | 9 +++++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 46e6327fef06..5dbab0a280a6 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  		     struct bridge_vlan_info *p_vinfo);
>  int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  			 struct bridge_vlan_info *p_vinfo);
> +bool br_mst_enabled(struct net_device *dev);
>  int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids);
>  #else
>  static inline bool br_vlan_enabled(const struct net_device *dev)
> @@ -152,6 +153,10 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  {
>  	return -EINVAL;
>  }
> +static inline bool br_mst_enabled(struct net_device *dev)
> +{
> +	return false;
> +}
>  static inline int br_mst_get_info(struct net_device *dev, u16 msti,
>  				  unsigned long *vids)
>  {
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index eb18dbd5838f..e5ab2ce451c2 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -13,6 +13,15 @@
>  
>  DEFINE_STATIC_KEY_FALSE(br_mst_used);
>  
> +bool br_mst_enabled(struct net_device *dev)

const dev

> +{
> +	if (!netif_is_bridge_master(dev))
> +		return false;
> +
> +	return br_opt_get(netdev_priv(dev), BROPT_MST_ENABLED);
> +}
> +EXPORT_SYMBOL(br_mst_enabled);

EXPORT_SYMBOL_GPL

> +
>  int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids)
>  {
>  	struct net_bridge_vlan_group *vg;

