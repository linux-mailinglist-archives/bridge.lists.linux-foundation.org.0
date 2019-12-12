Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA8E11C61F
	for <lists.bridge@lfdr.de>; Thu, 12 Dec 2019 07:55:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F86585044;
	Thu, 12 Dec 2019 06:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIa-77svNBCZ; Thu, 12 Dec 2019 06:55:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED8B985C7D;
	Thu, 12 Dec 2019 06:55:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B659FC0881;
	Thu, 12 Dec 2019 06:55:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7DE09C0881
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 06:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6702585ADB
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 06:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dmCJlK2QpY52 for <bridge@lists.linux-foundation.org>;
 Thu, 12 Dec 2019 06:55:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 981DF85044
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 06:55:35 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id h23so984258ljc.8
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 22:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ag166LO41mmIdH93hcAzJxPUu6DQ+iUSSg9O8F3Mz+8=;
 b=bOiADHgew3Ea4mYbibX0J/zHUQu24msSSDM1WwGDDvtHFiRtPwzVvTlAznwc5T8Usd
 /0NaheD+OFNIMT07YicGgnBkfBcqlnixQYJ8SUcl2sFpDaZ98qChoqfsIpUnD8dW3fSt
 FXg1lZcDeIK4fBamc7bQ3xx+ZdnAasH906KQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ag166LO41mmIdH93hcAzJxPUu6DQ+iUSSg9O8F3Mz+8=;
 b=lNc1LL60zLs84JB9PDfuUZIuyRWktGH/e3INiqM7ZZCez/ITij7VjfGhlka9ij9a7u
 SVzvjTLeX/MyqKnAy+eEtzqqD0HIxfIrQD1XXMPWnrq5ShQdDp2OgZzVJJiCG9M90akL
 sLWmdBbMc/lfoKTQG+QcTfNKL5BG+geu10kWVXaL8dWhX03G8e9atcEGrxRqU0WXisYr
 9slpcg7ia+JWkUBe69CRXNNzG4l2cXkBZJR5pA56h3mHX317DbOOqjzqU0hTtWBb3sbC
 e8QsY2V/n3BB+HJh2iqRwdy5opWDJkjjPX7nKeUsMunrpJXnOvK0bKk5AD9+V7/2/QRR
 ay4w==
X-Gm-Message-State: APjAAAWMNODYxgl3EGFvg13/o4MXdIZ+OJr2Jqx1PtZt5FjsgbNMbRU2
 6w9313vX+Hyh0Bu0J3/7P4URzg==
X-Google-Smtp-Source: APXvYqxfmn1yC+2iKxoENGwinteXcKfYcMJw6Ta1Md7l2HIh9+ngK2JufWxhXRmcIjvZOX7CAViBHQ==
X-Received: by 2002:a2e:8505:: with SMTP id j5mr4286573lji.235.1576133733488; 
 Wed, 11 Dec 2019 22:55:33 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x12sm2401731ljd.92.2019.12.11.22.55.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 22:55:32 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20191212010711.1664000-1-vivien.didelot@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <15115a6a-b95f-8de0-12ac-c3c98301ae25@cumulusnetworks.com>
Date: Thu, 12 Dec 2019 08:55:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191212010711.1664000-1-vivien.didelot@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v3] net: bridge: add STP xstats
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

On 12/12/2019 03:07, Vivien Didelot wrote:
> This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
> transition_fwd xstats counters to the bridge ports copied over via
> netlink, providing useful information for STP.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  include/uapi/linux/if_bridge.h | 10 ++++++++++
>  net/bridge/br_netlink.c        | 13 +++++++++++++
>  net/bridge/br_private.h        |  2 ++
>  net/bridge/br_stp.c            | 15 +++++++++++++++
>  net/bridge/br_stp_bpdu.c       |  4 ++++
>  5 files changed, 44 insertions(+)
> 

Looks good to me, thanks!

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


