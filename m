Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CF42A6020F
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:23:26 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 12157FB6;
	Fri,  5 Jul 2019 08:23:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 984B9FA7
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:23:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 088D470D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:23:15 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 207so7929836wma.1
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=SuddDTHB7Z8B8sUF248QER9k0T7rIWuLc0Ru7WUYpI8=;
	b=CQlzpE/JiVprrt8EiTO+bozfQKK8Y/Yo4zm31B3qCHkUQTMk8a4+Eff4PLY6l6cRyr
	XkE8646Rw53crfH57uOjDtBSPOHBctswexkDT5385oZ2EEvLoQp6byYLMUSxF9OhTX/b
	y3qQhK7+weZ8ks4JNowADfs+sFpy6s6/6kQgw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=SuddDTHB7Z8B8sUF248QER9k0T7rIWuLc0Ru7WUYpI8=;
	b=tziZx7Tn1A/KeDAf8C6BexLFf/zd/1YffutSYL5xR7mpHNe+2NssPeHG9Z03ZVRqM6
	2z0FfhdoJKuQZvmOYD3/sTlw8tTURu/4WWXIrSLPd8FBTo+b9peg4/eu1ga9leP853en
	PQ8VzmfW+ZT36G2tMSoHBbv6VZIR6BwEIRFhLLK+GqiTrOa1Z7FzL+4FY2dcalJCRmbT
	9t7fIdlfiRipRMw5ZDHJsySjx2EXPH4hRi8d4io57ELtF85UVw5crwATA6LkulFp6ZqX
	V7teVlf1Oi/5r+Up2kVfAKqEs4hDoP1usf9NWlqnII1a+VKd6FwBA/pMefvgRo0WZN8e
	K2zw==
X-Gm-Message-State: APjAAAU8MTHr/wGUnuSyTvTQS1twbHapJdW8tQJOFlLIFsNrb9Gccvt6
	4g4Ah9WXmLxF7I/RqnK4A9GjOm5JEdxHLg==
X-Google-Smtp-Source: APXvYqxdnZo7N3/z/bFZdw1B/goBTojtQ8+zC+jf1AbPoqUB+6h4+38BbJ/sPfkQvMMlRctGujI9XQ==
X-Received: by 2002:a05:600c:21d4:: with SMTP id
	x20mr2035423wmj.61.1562314994458; 
	Fri, 05 Jul 2019 01:23:14 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	r16sm21785293wrr.42.2019.07.05.01.23.13
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:23:13 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
	<1562224955-3979-3-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <df83723a-4dd5-7c38-4240-9ef47fde55cf@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:23:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-3-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 3/7 nf-next] bridge: add br_vlan_get_pvid_rcu()
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
> This new function allows you to fetch bridge pvid from packet path.
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/linux/if_bridge.h |  6 ++++++
>  net/bridge/br_vlan.c      | 19 +++++++++++++++----
>  2 files changed, 21 insertions(+), 4 deletions(-)
> 

While the patch looks fine, you've taken authorship of Pablo's patch.
From technical POV:
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


