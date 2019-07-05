Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A85E601FB
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:16:35 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7F1FEF81;
	Fri,  5 Jul 2019 08:16:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6FE3F74
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:16:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 607F787B
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:16:16 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a15so7885834wmj.5
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=4peepLiWhCkWmJMx6sNyd4wCIbHYDrXG09wLZE8Lxtc=;
	b=WuvrBzJuIaPhIsJY2lVj5+75oQzyfNhGBKNHDIEFWqo92/jIr+1VspbpsiPsDzJSQA
	Q1SYdbnJR4rOGf9zfl/Uaz+WEE0tjO2eB6FvPoYbGj/xsNch+8A+Z7gawDLtDz/ShT9B
	8tosHgNaNTU7sGjt7pRvrVdA5DNSXMbGbM4VA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=4peepLiWhCkWmJMx6sNyd4wCIbHYDrXG09wLZE8Lxtc=;
	b=m/lOurY7+VoQ6pD4wA331Xexr2NIo2/u6yPLUu0liT2mYDnI35UXKV2aGCVX6cKdA8
	Lnusor2kFhuipG/uZgmYrj6PtywPREotu0p0WJezF8NsPR71vSizUi5oJc/y+51S44jk
	bXez0g8dX+i8xIbg0mdJ0PqKyBLhm/6o40syzRQgxci3W/2f+/dW/RcIBhhzVZZ6Edmr
	xBn3vldBXvFGvgBS7d2Q6XbEZHi4+t3C0TBVp7I9GgkWpQCYQDnMqqGjIjuTAk0swILy
	jcgzuEvKt8WOC6BXqbShSIovKJVmTp/N+i84biu4ylckRwqpaXIWoPstaDOMqKKohlWF
	3WLw==
X-Gm-Message-State: APjAAAVU7lC8bwoeOzKNmQhfr70GRoAi8tJZyw9fBW17w5C/Z1+/fsB7
	lFUsI0Bd6+o4URqskjGlmTKgZPEfYSf8Lg==
X-Google-Smtp-Source: APXvYqzZJph7epRe6tGfT1xdpagVt6kzFr4EeMRWBPNDYo0lw2rPWvhCN5tFvTMfnv+KM7IDDWHJLw==
X-Received: by 2002:a1c:c545:: with SMTP id v66mr2259142wmf.51.1562314574850; 
	Fri, 05 Jul 2019 01:16:14 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id u1sm6898650wml.14.2019.07.05.01.16.13
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:16:14 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <2b5f91c9-c564-ea90-89c9-85443cae4bd7@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:16:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 1/7 nf-next] netfilter: separate bridge meta
 key from nft_meta into meta_bridge
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
> Separate bridge meta key from nft_meta to meta_bridge for other key
> support. So there is n dependency between nft_meta and the bridge
> module
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/net/netfilter/nft_meta.h       |  44 ++++++++++++
>  net/bridge/netfilter/Kconfig           |   6 ++
>  net/bridge/netfilter/Makefile          |   1 +
>  net/bridge/netfilter/nft_meta_bridge.c | 127 +++++++++++++++++++++++++++++++++
>  net/netfilter/nf_tables_core.c         |   1 +
>  net/netfilter/nft_meta.c               |  81 ++++++++-------------
>  6 files changed, 207 insertions(+), 53 deletions(-)
>  create mode 100644 include/net/netfilter/nft_meta.h
>  create mode 100644 net/bridge/netfilter/nft_meta_bridge.c
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


