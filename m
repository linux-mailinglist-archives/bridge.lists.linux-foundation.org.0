Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0E367D9A
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:01:39 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A81E0170A;
	Sun, 14 Jul 2019 06:00:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72F181D5C
	for <bridge@lists.linux-foundation.org>;
	Sun,  7 Jul 2019 10:18:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3598827
	for <bridge@lists.linux-foundation.org>;
	Sun,  7 Jul 2019 10:18:40 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x4so13976702wrt.6
	for <bridge@lists.linux-foundation.org>;
	Sun, 07 Jul 2019 03:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=KXHWxa+UIM+ThdVUlxz38rZf4jSw8EKB5eFGTypm9Ag=;
	b=QgKXGMFsdVMywqzdKUqCAG91YW26BFQYhEKmHy4VVOZ7lDfZLlNlRY5fmPtcGMQ/4C
	HjsPCdjYcv1i4fG4t8vt1ZV8HbOZN6jbENOWCbdRgFhdT/bD7/CiDpCF/6Ev5LmfAej1
	Nuamn/hJfbUyQW1JlNKs7Ifz4XlY7dVmQ3mPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=KXHWxa+UIM+ThdVUlxz38rZf4jSw8EKB5eFGTypm9Ag=;
	b=MEtdOMs8miXylbU9rHFbOzVNZfuFR901SMzTb8b28htZCKEOqc8dLD3+rmz0ESKqUm
	u5tnj+5M4yvh02ZH4S/h4tWc88cQprV+s8ca6MZ63WBcB4j3X2KfMiuE7FG90s4xE2oH
	UTVU/bkr3jB7N7XiIxNfsswHOEBNJy0TgQmYd/9JaCBhc+RBaI6CZ45oMsfywUfArE1M
	+dblvms3s+ggmQFvOMOl2Cz7R9bBVkKjDLH5ziqzz69qoSOWRFTDrDDnntAh2lc+qMFO
	NIRnJQwMs9IFn276+ltW4Vl6Z+J65MBiHTWeGV/vfJdeIs54RFMVbTsD7b/qQuIcRXkf
	Gd2g==
X-Gm-Message-State: APjAAAX0siBuQjz3DakfiCbNCqq2xsF6CWiQCXpVGHIK7lEQbsXHQbyh
	o7T3IoppuzMwiLBDKRJNkKttPbAL3Xc=
X-Google-Smtp-Source: APXvYqwgLB4g+IEeu3Z0Y9B8ohFGqSc8X3Y9QYq/vE/DNIAa1Yvcf8Odiw7mhGj4lSooVuF2kENe2g==
X-Received: by 2002:adf:e9c6:: with SMTP id l6mr13694052wrn.216.1562494719206; 
	Sun, 07 Jul 2019 03:18:39 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	a64sm18257285wmf.1.2019.07.07.03.18.38
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 Jul 2019 03:18:38 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org, fw@strlen.de
References: <1562422552-26065-1-git-send-email-wenxu@ucloud.cn>
	<1562422552-26065-3-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <970ad7dd-60bd-c731-287f-9ebc12ee0427@cumulusnetworks.com>
Date: Sun, 7 Jul 2019 13:18:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562422552-26065-3-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 3/5 nf-next v4] bridge: add
	br_vlan_get_info_rcu()
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

On 06/07/2019 17:15, wenxu@ucloud.cn wrote:
> From: wenxu <wenxu@ucloud.cn>
> 
> This new function allows you to fetch vlan info from packet path.
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/linux/if_bridge.h |  7 +++++++
>  net/bridge/br_vlan.c      | 25 +++++++++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 

Looks good, thanks!
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


