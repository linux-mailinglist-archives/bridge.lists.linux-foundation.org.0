Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B9260216
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:25:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CB9991017;
	Fri,  5 Jul 2019 08:25:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 46A04FF9
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:25:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B94B570D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:25:31 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id u18so9017503wru.1
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=QdI/+SYCsxY3INQuhw7JvmpOSaPdcwC03yXDxoauh68=;
	b=eMcRgBYSbFPn9Ig6FBm++m3rc1Cye/pYaPigJLOeUBQFd2yutFghxgh6eE2nSJEeQI
	zB9KDtX1Lx+bSRwHWtK2UI0au2xOR3vDON4hYXT+FvLIwmhdyDUXl84uJL6U+MBxLO+e
	wl38roNL4UgcF8vyHJ6w8fLzNxZodvm+oMlEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=QdI/+SYCsxY3INQuhw7JvmpOSaPdcwC03yXDxoauh68=;
	b=ao6HSuJs8tsaoEn/KePg4Y1xfLauXtlIdJLmbTGgh4a5mw2SbYovvah0TdHfeAbLo6
	FTJcLI/ExBjpTu0lM/hYPzi0WjZIglEMwuaRwGsmfmHsm1Eru2511d3v59rerCYG3IQ6
	/Bk9vWUArYhPqyZ21OEKPHZYm5kW3+yQyqToZTlciSm/upNKBl1+/dK3snRO0Gz8OdS6
	5Rbis9zf0oEd2ZBLmOrS6UYQr0a3Idg/JNNRGwUKrVb86Ew8fJuFsPP/7GReCxqEFT1q
	xRBKhYVCXFaEyVp/JftrjPOBDDDALkQUW7Nn8I2YCeowwokrXzpanwV/n00jLZga+mkv
	Vkrg==
X-Gm-Message-State: APjAAAWZH/b8Xd+pPqWUawNbOyisfsNb8Blb4VLJUBSdNX/en+gNhyD1
	BA3F7Tg4zkb71/rA0r635qdXLCg+6fWTpg==
X-Google-Smtp-Source: APXvYqzaXHgRS8ho7/358mwiQMYodkjXtM4Gb6lO97yClj8UHkbvPtb8jNzlUOYqLpBWoJ9cp00eSA==
X-Received: by 2002:a5d:4a02:: with SMTP id m2mr2668157wrq.193.1562315130141; 
	Fri, 05 Jul 2019 01:25:30 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	o6sm14729172wra.27.2019.07.05.01.25.29
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:25:29 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
	<1562224955-3979-5-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a598a8b7-caa5-af39-609e-42e53ecf3727@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:25:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-5-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 5/7 nf-next] bridge: add br_vlan_get_proto()
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
> This new function allows you to fetch bridge vlan proto.
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/linux/if_bridge.h |  6 ++++++
>  net/bridge/br_vlan.c      | 10 ++++++++++
>  2 files changed, 16 insertions(+)
> 


Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
