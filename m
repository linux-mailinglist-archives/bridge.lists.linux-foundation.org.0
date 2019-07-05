Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0527660205
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:19:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4DBAEF9A;
	Fri,  5 Jul 2019 08:18:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3928BF89
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:18:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AABE387B
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:18:52 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id p74so4862998wme.4
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=xNaeeNQ+DrT/MDlwiypulX86a/vhe/+Mo0zzZKV7q8c=;
	b=JehHPgs6sR8BLe7UByCaHBk14ZJNP0GNmUXJbLqc1ZTfXPb8PUTWfJ2nZ6RLnGFo1L
	J1k+aGLyEvR5cwemuYJ5jXbTdE/3GDchqRdGac05YNIAXbxIgzJrDjUoZF2bZCIs0LHd
	8UsvftCyyEzzFDGFryG44SKvKD2/6OgSjMYQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=xNaeeNQ+DrT/MDlwiypulX86a/vhe/+Mo0zzZKV7q8c=;
	b=erOAq/W5FVZic3XrzS1wtDOGOMvLeFcvWwhC4EU4yWWcVlJ0GF1eTQd88vmB4AwP9L
	IHwUOZcLAoDQ4GwwqTdmoiXEmAya7w4yyFnlYMgAB6L50M0ZGqYJZR4jrR/yc8jUml7f
	CLS7T1ihxpL5O6ChXif2HrZBE6LOQ+r6Z/NNOywuRKWIVrfCIcDbWjoVzE4guCG/tJCN
	AAWIIYGRfTYZR8ivwOvywMXReeXmNfuPSy5mCEg2WR88GVuDPc1gQIbBJDc3nCpfqVDy
	v9pGkwBMf+WjpYDYU7mMQ82ElqJ80Xt6VIi5lsj1o8ROf2GD54EA/y8vro/YXSaMBtCz
	4MAg==
X-Gm-Message-State: APjAAAXtIsLn5GNgbA8m79gwqmW1msMGr1bVS3IpyGPAxzIYY0TaDL5c
	498v3rQhkC2ReHhgXEkpL7t3dUwrIfBmCg==
X-Google-Smtp-Source: APXvYqwua5wSPZZ5dvFM8Gh/e9hvNksw/eFcfk0k+YX6EbO3Bha7QwvoFSozmIDDGxTTdpCfdOHPZw==
X-Received: by 2002:a7b:c766:: with SMTP id x6mr2302197wmk.40.1562314731102;
	Fri, 05 Jul 2019 01:18:51 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id 72sm8076210wrk.22.2019.07.05.01.18.50
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:18:50 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
	<1562224955-3979-2-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <ccca906e-eb4f-efa0-abc5-664be9d8044b@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:18:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-2-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 2/7 nf-next] netfilter: nft_meta_bridge: Remove
 the br_private.h header
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
> Mkae the nft_bridge_meta can't direct access the bridge
> internal API.
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  net/bridge/netfilter/nft_meta_bridge.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 

Nice, thanks!
Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


