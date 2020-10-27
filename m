Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED829B3F7
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 15:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F44D843E9;
	Tue, 27 Oct 2020 14:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIgXPHbkzvhe; Tue, 27 Oct 2020 14:59:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A01C684138;
	Tue, 27 Oct 2020 14:59:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81D18C1AD5;
	Tue, 27 Oct 2020 14:59:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 638F1C0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 14:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51C8D87096
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 14:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z99ELkeGMAeL for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 14:59:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9EB9187094
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 14:59:31 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id g12so932275pgm.8
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 07:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fp9DOIG89yQphhVtnUaB6Uhgg6cfJ/f6CEZSpcBxAQ4=;
 b=UYbkYuZz+V4mrSNGV9sOj772Km/E4ZB7bT64Rbq2OmBMBkMYpC/7uQ71Ta7B2pS0a2
 WLcDodpDC1YTDYaBRw1CbZbZOSp5ejCOMFhRTSm3DDK3rUHnvIQVXpUAP7h/bavtyd9B
 AffszAuFp9L/C2x3u4KNpH126oHbtsOE0aVWv7t3FTD3lS67vj/zsohznzCAa6YABlL2
 3edS17Pwz9ME/qPhAlc7lKiLmqmxq9d8kGG0ADppn1UWSKP1c9YqopZqB7918qfr+ep/
 r2T39MEnfS2D3B9VQosD2qQEohJjelHEvQu8vgQdqqd5Z/sg+A0mgpmrBvaNIuXBQI0p
 YG4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fp9DOIG89yQphhVtnUaB6Uhgg6cfJ/f6CEZSpcBxAQ4=;
 b=Q2/ve4tXBTdbEvLA8oZ45Uq2ojtEh9m5BU10JNFV3j3aedMkvUaAfZIbSKse6mJ6kz
 QHtiK1I4yVFxRJQIGYolO/3HB32kdPQDVW+ocD6IQUWbT8RN195XJvljymNBJNhjtpwl
 2M1xlK9otEBQplWujjn3D8Zb+cNohuFF8ClT+pdXlCHgplbKKedmWtmKT+/NDcSYxcx/
 n4aXYEYVIp2qjJ88Y+/o6LYyTpUz/nSojKg+au11+LkPd23YyPkq9IwBb1ulYT/vSIr4
 7ZdZRy773HOZ5qgpRjzQ1D7jUOhW3DuXOKz42kRGQ0vj0Mev8D2YBuOO5ADO2KmQwAzd
 M9TQ==
X-Gm-Message-State: AOAM533W88obyL0s/9hBG6G/1qKXdFz6tzDYxjAzGa+es+w2alKI3Kq1
 i8EwN2tM5RabSpMclvxa6A1yjRCp/qsENUo3
X-Google-Smtp-Source: ABdhPJw8wLAWDU2hwTitO+GzNGBx1HZNCIcF13OgdjBXdNjI95nxmzgizBezFv/ZOrXBhMUNoGXivA==
X-Received: by 2002:a63:3202:: with SMTP id y2mr2189277pgy.97.1603810770619;
 Tue, 27 Oct 2020 07:59:30 -0700 (PDT)
Received: from hermes.local (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id u4sm2340541pjy.19.2020.10.27.07.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 07:59:30 -0700 (PDT)
Date: Tue, 27 Oct 2020 07:59:21 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Message-ID: <20201027075921.69976131@hermes.local>
In-Reply-To: <20201027100251.3241719-2-henrik.bjoernlund@microchip.com>
References: <20201027100251.3241719-1-henrik.bjoernlund@microchip.com>
 <20201027100251.3241719-2-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, jiri@mellanox.com, linux-kernel@vger.kernel.org,
 idosch@mellanox.com, Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 UNGLinuxDriver@microchip.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v7 01/10] net: bridge: extend the
 process of special frames
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

On Tue, 27 Oct 2020 10:02:42 +0000
Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org> wrote:

> +/* Return 0 if the frame was not processed otherwise 1
> + * note: already called with rcu_read_lock
> + */
> +static int br_process_frame_type(struct net_bridge_port *p,
> +				 struct sk_buff *skb)
> +{
> +	struct br_frame_type *tmp;
> +
> +	hlist_for_each_entry_rcu(tmp, &p->br->frame_type_list, list)
> +		if (unlikely(tmp->type == skb->protocol))
> +			return tmp->frame_handler(p, skb);
> +
> +	return 0;
> +}

Does the linear search of frame types have noticable impact on performance?
Hint: maybe a bitmap or something would be faster.
