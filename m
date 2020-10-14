Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0CE28D9D1
	for <lists.bridge@lfdr.de>; Wed, 14 Oct 2020 08:14:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D13787D53;
	Wed, 14 Oct 2020 06:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWazvsE5e8mh; Wed, 14 Oct 2020 06:13:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BFA787D5D;
	Wed, 14 Oct 2020 06:13:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1FA8FC0051;
	Wed, 14 Oct 2020 06:13:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE422C0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 06:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A44F7874FE
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 06:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-EspNAi1u_r for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 06:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D1190874FB
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 06:13:56 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id u8so3164006ejg.1
 for <bridge@lists.linux-foundation.org>; Tue, 13 Oct 2020 23:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aeWyu0fhicZ35ndvB5G7CKdKzKpJv3Q8+/dMeny8r3E=;
 b=ngUoDnD3ez3wPljEH7V6ZRJPxi6VyKPo3NxCEGkokrtq2QA/+s/lV/gHCbtL1ccOZM
 y4RF2dEUkDYGhH4MNBxZg/1KDQafk1w8ITyco6/45YqH8gEgwjnp0z6zsFzKn4IOHj4s
 SEgx35DPjNeiQzLyJktDf8AGW15iQC8AEp6CWP5YKxFjWBgY54Ck35nwJlqfo9PVt8+y
 bOUQNnEc8FKh9al2GBvmeJd6AXmxiWSD5M3XIfYFKi7rr36blaxM8b/XEUh/rGL1Hk8R
 zvF+ytnIvMGQMQUTRgQmPC6Nm15fiVz3SDDpT9DWCqkOjC2BvUYWeMwsgd6Mu48AXDAk
 ln9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aeWyu0fhicZ35ndvB5G7CKdKzKpJv3Q8+/dMeny8r3E=;
 b=jyXxQIpwsKa6r32b1WH0JRUH3pEk6m4ESQi9A30ToYuzBJJleOz/wPCjt3pettv/8c
 hJSZpaSVTk/GBtC9B8vZGCCNKZ6ZpT4xUpzeTLH0KZbU+d0vKwYm8an016htboyDE846
 EWTxs/Ecs6hX2JtpZmXbnsrc+U9PKN9y1eAK+wTkhEAdTTWcPj2UdcRtwkUEVvykQGNc
 5CEC3wz/v2xWhEtl6qAiGFRSJS1YxopcFUADDbvGovrAcAZz2GJyn16x6iUn3AV+w0/J
 uleWpInr5LKWYs7dRgcaHSm2pL3gK6iQo3iXV0lItsQ6as5Ie98557RBgoK6nwvr+Lmr
 qxjg==
X-Gm-Message-State: AOAM533mm4cZXcRKtiC6OHQ/RzTcGBveRMQi80jMBqhZqfL6kicywKWs
 gUT3I6n3EK9C4POnHgoja3EpHqsNqZo=
X-Google-Smtp-Source: ABdhPJyZIBVV6msuVArNaw4EDCFq2Apl0m8HnRD2XrtAzYoL6edLcNmhgdgke6mQaAV0e1pcOOmFPA==
X-Received: by 2002:a17:907:2179:: with SMTP id
 rl25mr3703878ejb.450.1602656034995; 
 Tue, 13 Oct 2020 23:13:54 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f23:2800:e563:1e0d:2b0d:aba7?
 (p200300ea8f232800e5631e0d2b0daba7.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:e563:1e0d:2b0d:aba7])
 by smtp.googlemail.com with ESMTPSA id oa19sm1016118ejb.95.2020.10.13.23.13.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Oct 2020 23:13:54 -0700 (PDT)
To: Leon Romanovsky <leon@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
References: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
 <20201013173951.25677bcc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20201014054250.GB6305@unreal>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <3be8fd19-1c7e-0e05-6039-e5404b2682b9@gmail.com>
Date: Wed, 14 Oct 2020 08:13:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201014054250.GB6305@unreal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next v2 00/12] net: add and use function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
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

On 14.10.2020 07:42, Leon Romanovsky wrote:
> On Tue, Oct 13, 2020 at 05:39:51PM -0700, Jakub Kicinski wrote:
>> On Mon, 12 Oct 2020 10:00:11 +0200 Heiner Kallweit wrote:
>>> In several places the same code is used to populate rtnl_link_stats64
>>> fields with data from pcpu_sw_netstats. Therefore factor out this code
>>> to a new function dev_fetch_sw_netstats().
>>>
>>> v2:
>>> - constify argument netstats
>>> - don't ignore netstats being NULL or an ERRPTR
>>> - switch to EXPORT_SYMBOL_GPL
>>
>> Applied, thank you!
> 
> Jakub,
> 
> Is it possible to make sure that changelogs are not part of the commit
> messages? We don't store previous revisions in the git repo, so it doesn't
> give too much to anyone who is looking on git log later. The lore link
> to the patch is more than enough.
> 
I remember that once I did it the usual way (changelog below the ---) David
requested the changelog to be part of the commit message. So obviously he
sees some benefit in doing so. 

> 44fa32f008ab ("net: add function dev_fetch_sw_netstats for fetching pcpu_sw_netstats")
> 
> Thanks
> 

