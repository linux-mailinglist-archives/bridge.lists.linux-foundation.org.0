Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B2460211
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:24:41 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 477D3FD2;
	Fri,  5 Jul 2019 08:24:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4CF5FFC2
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:24:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B29FF70D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:24:30 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l2so1155456wmg.0
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=atSD+AC/JhTBLnkkNDGX0tjw7svVlM9Q+yrxINFZ3wE=;
	b=Znp8eCVfVNJmz6gkdBUp/VgIf0BCdgk/0mFrzc+BJQDL6TQpwEHJcUoFduUnZA5W8e
	EEKx/byuJKGWd+vtk+YMDaqSRTnRrkaiIQ/1b05ozsGmH/VrlL4kb29sF/izX776ild0
	tTRZdtJDSjJwgX/a4S2V2h7MWyhd4iGME9dX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=atSD+AC/JhTBLnkkNDGX0tjw7svVlM9Q+yrxINFZ3wE=;
	b=cdEQGvrD7S477C6CN/TasHpltwE0ERFJr3+z7c49Qua5FYdEENM7oNNs9Rue8QZ+xL
	f+pWpM5E00OVCmv8pO20qjwNsArsKEAu3tyXEJ+gnZqvkp4ugk9RYDw0ZdRayIuaivyb
	Erx2wZzWcdZLKa2eyEHP/6wE9jTBojKHrDszBwIezLIBSeuozGI/3B9wR61+bzUUGhQg
	C67LYz7tK0rdWPl3wJPa3EUTaCCs7/dzu14ziNCdFiNR78SFMDT8Tg9lG5LWTjJSumRr
	gtMHVhq+ctddXS2JQBQWVGFf3bJzmc5Svux5AnGeQDI0XdRMb5m87oTCZTDhqAY7arLc
	f+wA==
X-Gm-Message-State: APjAAAWGh9X6dZRgQafX/n6mBBnRt46WSouNnqGjEWf8f+nlZ+pfGobo
	HAiZSM3d/KKoU3X0UeTzmaRoy9B+YVKqyQ==
X-Google-Smtp-Source: APXvYqzbq8+MDwq1xh01uJRo7jXovlYNN3YkTIb8S5MJlomGowui0t6ZyYTNNNZviY5NMKIMgpfKww==
X-Received: by 2002:a05:600c:da:: with SMTP id
	u26mr2161859wmm.108.1562315069015; 
	Fri, 05 Jul 2019 01:24:29 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	n125sm11090164wmf.6.2019.07.05.01.24.28
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:24:28 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
	<1562224955-3979-4-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <33319d6b-1666-c083-6297-d618e2ae51f4@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:24:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-4-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 4/7 nf-next] netfilter: nft_meta_bridge: add
 NFT_META_BRI_IIFPVID support
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

On 04/07/2019 10:22, wenxu@ucloud.cn wrote:
> From: wenxu <wenxu@ucloud.cn>
> 
> nft add table bridge firewall
> nft add chain bridge firewall zones { type filter hook prerouting priority - 300 \; }
> nft add rule bridge firewall zones counter ct zone set vlan id map { 100 : 1, 200 : 2 }
> 
> As above set the bridge port with pvid, the received packet don't contain
> the vlan tag which means the packet should belong to vlan 200 through pvid.
> With this pacth user can get the pvid of bridge ports.
> 
> So add the following rule for as the first rule in the chain of zones.
> 
> nft add rule bridge firewall zones counter meta vlan set meta briifpvid
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/uapi/linux/netfilter/nf_tables.h |  2 ++
>  net/bridge/netfilter/nft_meta_bridge.c   | 15 +++++++++++++++
>  2 files changed, 17 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

