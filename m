Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27632234A3B
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 19:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 573AD86BA1;
	Fri, 31 Jul 2020 17:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1FnhzyT5diV4; Fri, 31 Jul 2020 17:27:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A925486B7A;
	Fri, 31 Jul 2020 17:27:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9839EC004D;
	Fri, 31 Jul 2020 17:27:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1FBDC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 938B68878B
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P0EkbGjD9G0V for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 17:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD50F88637
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:27:06 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id e13so29476086qkg.5
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 10:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dMAP5qZPgNkGYL/Es8e27wkRPcvMrbRpgL3nt2uv/U8=;
 b=DQpUmHoSUZ9Cd93537ypZkM+1dvS3gvkMWCoz3Qx13NPmBpmH4L+gKmanA4eodPVK+
 J04ciTphvC/32YS6/AsssAWJdCiJyeCIKz5NoES6FsgkNTeTMfBHwpqq/Y0st/RDULz1
 s90EGRs+oMbXy9wM0GoUZ2naiDEY9gSop5clWt0kv0vvi10hVW8C4NrFvOqm1/nyfGwr
 VqSlZFKNcLXmFmS3OPykN7Q7FfMF/aurchj96d1DyX+1/jlWq3xFkaX+jAweuOZ3N1oM
 Ffdz2TlQJTZ6E/1rQ7Nne2iW8IWlgbGeezgGumjp1cbCy0+8cSqHHZTwHyvW2HGy+2Gh
 Cg/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dMAP5qZPgNkGYL/Es8e27wkRPcvMrbRpgL3nt2uv/U8=;
 b=ovD5GUWvr4kiE2/Xdz2+SWVQiI3VFqLqkmProaRTicZvk81RN/L7Z/zgusJYOEFli5
 MYEg8NhqmmL8inB9Y7DKNC9ge7CuSeGEYdECMw0U6b7TIT8dY3tk5Vsg/Ad444rbAEBt
 GQmlOIhuuYapk4HkuVzAL/9eVZFlVZsVeGep1CoV0ygjwqxTeQ+t6d85eGqkwxqo4qrg
 o34jfuWTLwWN1ssdVawP84TEXSTtEjoXEWrIe1rHfoCoR/sU32Q7Yhoet6BJzUO7xOVo
 i4dA75nL5Q3vEl1j2miF7fmWuKXQdEy+DI39N9l2siz8z9GzZdPNDiXJGWuyLy7czOZt
 DWlg==
X-Gm-Message-State: AOAM532cEzszw5zxEzbgDS+DaycURRvh+ogjYRdjH2f/zly9Dk5tnLjH
 s5vInd+CNCRGzoLPfgUJ+wo=
X-Google-Smtp-Source: ABdhPJyrJF8gZ+2Ot8N+3QMSrr1x/JQDSN2YszfLrZbeCASgiu2Qgge4RLDx9HCfx3o3FrCKIodRNg==
X-Received: by 2002:a37:9b95:: with SMTP id d143mr4875785qke.272.1596216425945; 
 Fri, 31 Jul 2020 10:27:05 -0700 (PDT)
Received: from ?IPv6:2601:284:8202:10b0:c147:b41e:be5e:8b7a?
 ([2601:284:8202:10b0:c147:b41e:be5e:8b7a])
 by smtp.googlemail.com with ESMTPSA id 94sm9869305qtc.88.2020.07.31.10.27.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jul 2020 10:27:05 -0700 (PDT)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org
References: <20200731162616.345380-1-nikolay@cumulusnetworks.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <07823615-29a8-9553-d56b-1beef55a07bc@gmail.com>
Date: Fri, 31 Jul 2020 11:27:03 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200731162616.345380-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: clear bridge's private skb
	space on xmit
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

On 7/31/20 10:26 AM, Nikolay Aleksandrov wrote:
> We need to clear all of the bridge private skb variables as they can be
> stale due to the packet being recirculated through the stack and then
> transmitted through the bridge device. Similar memset is already done on
> bridge's input. We've seen cases where proxyarp_replied was 1 on routed
> multicast packets transmitted through the bridge to ports with neigh
> suppress which were getting dropped. Same thing can in theory happen with
> the port isolation bit as well.
> 
> Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> ---
>  net/bridge/br_device.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index 8c7b78f8bc23..9a2fb4aa1a10 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -36,6 +36,8 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
>  	const unsigned char *dest;
>  	u16 vid = 0;
>  
> +	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
> +
>  	rcu_read_lock();
>  	nf_ops = rcu_dereference(nf_br_ops);
>  	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
> 

What's the performance hit of doing this on every packet?

Can you just set a flag that tells the code to reset on recirculation?
Seems like br_input_skb_cb has space for that.
