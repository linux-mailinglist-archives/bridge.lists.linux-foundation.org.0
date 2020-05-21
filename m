Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1846E1DC859
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 10:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FBFA87C76;
	Thu, 21 May 2020 08:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-USQc2sukf4; Thu, 21 May 2020 08:16:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45E8786EC0;
	Thu, 21 May 2020 08:16:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 22305C0891;
	Thu, 21 May 2020 08:16:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2AA00C0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 08:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 181E3857E6
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 08:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPjVBtF8--KT for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 08:16:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E69F786D5A
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 08:16:48 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id u12so665331wmd.3
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 01:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jBkf6P6nSXkyKzMFNo3bLUqW/4eqoq0c19s0e7M06zY=;
 b=LdVexujeEgbDGsiI0uzhi86AsBADHpO7fcAZkjSHwVByEZ1BzgfoNWK1h/S25Nn5uV
 q8MiB1Pkj2NFuHc53bE/hg3iJ8K1W5X16BokluyyxhBHZbx6aU5XuT4KkCgLzoANwp2z
 0IkrwffwDe1Q0bNIT7SNygMo1YJX/3KNKpJak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jBkf6P6nSXkyKzMFNo3bLUqW/4eqoq0c19s0e7M06zY=;
 b=LS1ceRpgUPDcbj3BqVc5A/gQqvKB3MyAmUiCxxsrra4y3Fg762f9LpJZP+IB6QHfR5
 QBcTIj58ADp0WR8ytipxNeCvVnWoEmxmeYKdga9kqgt4f3xxwgsnMCWLEOOvfml9EXIF
 ZTuuV+sQE3kVBvchImtEoCsHN3HWkmgKSduTUJ4oOAxCd1yNCovBco6F23OBcTQ0Os4J
 Q8myZwvAvb2zTdFRSY7BechC04A88O+JPSepFUNR+4tPLZ/wB9OAA/ldmybpyc6W/pe+
 /uUR+CrJFtfWRUBBpFRy4lsP3AX1D7UA8bPm1EvW184EqneKAnXsW37XdaodU/dmHygT
 /RVw==
X-Gm-Message-State: AOAM533VewkVb1maxBHDCLrZLGgHhCIWCV5ke2xWrbwUvWB8OR6EAF8K
 GDFsH2HQ95kUclSWTZ1TOfZCi0PVuEhx/w==
X-Google-Smtp-Source: ABdhPJy5zO/XnY8I5DXGdgeP4O6u+idOSeEQM2pULeJGWQoKIWpcgAPJbz/cElBzBm674NjeF6fIrg==
X-Received: by 2002:a1c:7d43:: with SMTP id y64mr8224264wmc.46.1590049006940; 
 Thu, 21 May 2020 01:16:46 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id n13sm5466384wrs.2.2020.05.21.01.16.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 01:16:46 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, jiri@resnulli.us,
 ivecera@redhat.com, davem@davemloft.net, kuba@kernel.org,
 roopa@cumulusnetworks.com, andrew@lunn.ch, UNGLinuxDriver@microchip.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
 <20200520130923.3196432-2-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <cecbdbf0-bb49-1e3c-c163-8e7412c6fcec@cumulusnetworks.com>
Date: Thu, 21 May 2020 11:16:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200520130923.3196432-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH 1/3] bridge: mrp: Add br_mrp_unique_ifindex
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

On 20/05/2020 16:09, Horatiu Vultur wrote:
> It is not allow to have the same net bridge port part of multiple MRP
> rings. Therefore add a check if the port is used already in a different
> MRP. In that case return failure.
> 
> Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp.c | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index d7bc09de4c139..a5a3fa59c078a 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -37,6 +37,32 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
>  	return res;
>  }
>  
> +static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
> +{
> +	struct br_mrp *mrp;
> +	bool res = true;
> +
> +	rcu_read_lock();

Why do you need the rcu_read_lock() here when lockdep_rtnl_is_held() is used?
You should be able to just do rtnl_dereference() below as this is used only
under rtnl.

> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
> +				lockdep_rtnl_is_held()) {
> +		struct net_bridge_port *p;
> +
> +		p = rcu_dereference(mrp->p_port);
> +		if (p && p->dev->ifindex == ifindex) {
> +			res = false;
> +			break;
> +		}
> +
> +		p = rcu_dereference(mrp->s_port);
> +		if (p && p->dev->ifindex == ifindex) {
> +			res = false;
> +			break;
> +		}
> +	}
> +	rcu_read_unlock();
> +	return res;
> +}
> +
>  static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
>  				       struct net_bridge_port *p)
>  {
> @@ -255,6 +281,11 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
>  	    !br_mrp_get_port(br, instance->s_ifindex))
>  		return -EINVAL;
>  
> +	/* It is not possible to have the same port part of multiple rings */
> +	if (!br_mrp_unique_ifindex(br, instance->p_ifindex) ||
> +	    !br_mrp_unique_ifindex(br, instance->s_ifindex))
> +		return -EINVAL;
> +
>  	mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
>  	if (!mrp)
>  		return -ENOMEM;
> 

