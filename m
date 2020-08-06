Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1D223E3EE
	for <lists.bridge@lfdr.de>; Fri,  7 Aug 2020 00:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B86D88355;
	Thu,  6 Aug 2020 22:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1C38H7yjPWI; Thu,  6 Aug 2020 22:21:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D2168835D;
	Thu,  6 Aug 2020 22:21:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2F144C004C;
	Thu,  6 Aug 2020 22:21:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 122A7C004C
 for <bridge@lists.linux-foundation.org>; Thu,  6 Aug 2020 22:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EEEF487059
 for <bridge@lists.linux-foundation.org>; Thu,  6 Aug 2020 22:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QQXpEYawu0lH for <bridge@lists.linux-foundation.org>;
 Thu,  6 Aug 2020 22:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D27AD86EB0
 for <bridge@lists.linux-foundation.org>; Thu,  6 Aug 2020 22:21:31 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id mw10so3697905pjb.2
 for <bridge@lists.linux-foundation.org>; Thu, 06 Aug 2020 15:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t1TN4T3jQ2jrlk3a/d7SaKfk2DJyftZUv6bXnlt6NPQ=;
 b=GyumodkGmYKsGSwVnzxjXGz3Hc6dDp/7EX3r4spkycDyPVNN0ciFP2qEtF0XPhrBf4
 +cCI0OWrH6x101NHuYUTOaXPwuCecyhxfEvjJRna72hDnNI+bib+8AzwceW3eJdE75Gn
 SeIJKEi14my/hEJw+qU/KCE5RSHazXH9KHIfKLNltLm7ADcruE5/tGFOBJjd/g0Mnrl5
 TD9+5yjblEpGaVz4M1LHrXLmcdWRpP5c2NV1JaW3i6df06bY03MlPUl3EghFXAFM5iLk
 Ox9KU5vu5QYQH83zkF+ICm8Q2r+16LLLSd84hY8z6dVmhZCgoIg7vDd5Gd8rg9nvzxvN
 9EXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t1TN4T3jQ2jrlk3a/d7SaKfk2DJyftZUv6bXnlt6NPQ=;
 b=Ljlu1WpuXd6lS2Phe/i266r+w8G+2HV0iQ72S786HQUBAx72+abj+AHJpNQ7ERWTBi
 1Y10tYHBr8khdeptx3HCkaMbPMboLscC2jNqlZVvFZwaUOgKJNKMSzYjDgo6c2nuU8Bv
 3mCs96qBriy5V+3992FQGRxMP552R0ZvV3CMhScN2JYTGOhRBQz8G86cpL7/JxWQc5Uo
 g9t3GKFy4ECb2E6E9ioq5nr2NaDGCK/KSMA/dgCvJqdQa5NWTKMe+TrBelpyP3WGyIg9
 0ZDDN78v6g9L9cSM+Y5+ThvDx5ODKEAZNV9uwAGS8FCv12GD8+nblxN3qa4EfrE7AM+d
 YnrA==
X-Gm-Message-State: AOAM532bH7ocJZOhOiwaLMovOY3LFpdhAtnrXc1exNlGlkIUJIrOZd5N
 1/D3sSVCC4eX+Mj0WypGSt4=
X-Google-Smtp-Source: ABdhPJwdY4ryrXf97t2P6yPCseaEpoaitTdHlZtd60UHAYlnINemi0RFvJHHjsz9ZaSHJyy7n+NjVw==
X-Received: by 2002:a17:902:45:: with SMTP id 63mr9766294pla.179.1596752491350; 
 Thu, 06 Aug 2020 15:21:31 -0700 (PDT)
Received: from [10.1.10.11] (c-73-241-150-58.hsd1.ca.comcast.net.
 [73.241.150.58])
 by smtp.gmail.com with ESMTPSA id w82sm9912017pff.7.2020.08.06.15.21.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Aug 2020 15:21:30 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-26-hch@lst.de>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <6357942b-0b6e-1901-7dce-e308c9fac347@gmail.com>
Date: Thu, 6 Aug 2020 15:21:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200723060908.50081-26-hch@lst.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: linux-sctp@vger.kernel.org, linux-afs@lists.infradead.org,
 Stefan Schmidt <stefan@datenfreihafen.org>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-x25@vger.kernel.org, dccp@vger.kernel.org,
 bridge@lists.linux-foundation.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org, netfilter-devel@vger.kernel.org,
 linux-can@vger.kernel.org, linux-hams@vger.kernel.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Subject: Re: [Bridge] [PATCH 25/26] net: pass a sockptr_t into ->setsockopt
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



On 7/22/20 11:09 PM, Christoph Hellwig wrote:
> Rework the remaining setsockopt code to pass a sockptr_t instead of a
> plain user pointer.  This removes the last remaining set_fs(KERNEL_DS)
> outside of architecture specific code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Stefan Schmidt <stefan@datenfreihafen.org> [ieee802154]
> ---


...

> diff --git a/net/ipv6/raw.c b/net/ipv6/raw.c
> index 594e01ad670aa6..874f01cd7aec42 100644
> --- a/net/ipv6/raw.c
> +++ b/net/ipv6/raw.c
> @@ -972,13 +972,13 @@ static int rawv6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
>  }
>  

...

>  static int do_rawv6_setsockopt(struct sock *sk, int level, int optname,
> -			    char __user *optval, unsigned int optlen)
> +			       sockptr_t optval, unsigned int optlen)
>  {
>  	struct raw6_sock *rp = raw6_sk(sk);
>  	int val;
>  
> -	if (get_user(val, (int __user *)optval))
> +	if (copy_from_sockptr(&val, optval, sizeof(val)))
>  		return -EFAULT;
>  

converting get_user(...)   to  copy_from_sockptr(...) really assumed the optlen
has been validated to be >= sizeof(int) earlier.

Which is not always the case, for example here.

User application can fool us passing optlen=0, and a user pointer of exactly TASK_SIZE-1


