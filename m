Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB5122CD0F
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 964B787371;
	Fri, 24 Jul 2020 18:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRYr1St7mUbd; Fri, 24 Jul 2020 18:22:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00B6787330;
	Fri, 24 Jul 2020 18:22:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D2070C004C;
	Fri, 24 Jul 2020 18:22:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 198D7C004C
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 08:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 08A8C852FE
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 08:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDn3K3Tq9U8Q for <bridge@lists.linux-foundation.org>;
 Wed, 22 Jul 2020 08:52:25 +0000 (UTC)
X-Greylist: delayed 00:25:38 by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B04A384FA5
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 08:52:24 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id g20so1065623edm.4
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 01:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ijnpSqTzlWs7OuuIHaz94zTqsgZ4TkbrlxGL7rF8SvM=;
 b=xFRbFe5eYCppxJ62qFkLFv33fQa9ER4RHEl34g5WwIC4xdcR+4tivo7mnn1S+rNlbS
 cMN8QwQ1eW0avv9rFxBRIQMUktSGW06zNgKrNWQvq5F25hq8QLzdYCQ1hmqL4iSIvq09
 Szc8YdqC97qHUqKRHbhQr8/oguhWktZDZtVMGTavTEfzVAENBpjq7LQbsQSFC/Qb56AS
 G/7MNxNktsXQmENPoH9ousqNoZVBW0eyiSYtxkhGP/mapdbBWtSCpZCTmHbB+1rtyqO0
 wY2Oxf7ffMMplrOPj5lpx8Ya/rpegVFUOFLBmwqnjZVN6pLS4eW+iRKkCxAtMw4/FDqK
 d09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ijnpSqTzlWs7OuuIHaz94zTqsgZ4TkbrlxGL7rF8SvM=;
 b=jyFat5SneYemGoR2rOTOvgf1iCV7ElUa6tZWtWhvU8E1GCXZubr0R+8hD9zQcUBK+x
 eJ33OkzYzPWiGYYb152IMxrT2wTTRRAIMtPW7NqlVqBAm+XXoEV2pggOLKzAFlykbcpi
 glxdrtIQHP4BsZ+nAa1b6zJuuyJ9w7O9aLwNAAGv6+JuOerxxks1NjA9bQY2O68FH1O0
 3RBT2vnHigewczWL1A3PJ70yo2Do+JyAfAsA71MIqzxce0mRkSlpQXOGi4xaCTGJM22S
 06nf6xqsA7MOvgvzCxCGsFP9XSikD3wCVL0AyrwKVOIG/4XlZS+rOlJ7f/UKARKa1zkB
 v4ig==
X-Gm-Message-State: AOAM531tqQYE3A6DJ9rBSnnag6g92Swf2q94E4pmFhdfNVROr+Hv8A9V
 sbYPJtgmzMpxU9RTS3lhdDfpN2wXLOplyw==
X-Google-Smtp-Source: ABdhPJxnWSvai+9iaNos8sJtXdeBHraQbZUkyduEvMUxv8nKJJQfjOWUUSDiYYhu744BzkT/PRbBSQ==
X-Received: by 2002:aa7:d341:: with SMTP id m1mr28525320edr.50.1595406404862; 
 Wed, 22 Jul 2020 01:26:44 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net ([79.132.248.22])
 by smtp.gmail.com with ESMTPSA id x16sm19025267edr.52.2020.07.22.01.26.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Jul 2020 01:26:44 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-25-hch@lst.de>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <b3665200-2476-9d35-8dea-d5da141c6b70@tessares.net>
Date: Wed, 22 Jul 2020 10:26:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200720124737.118617-25-hch@lst.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [MPTCP] [PATCH 24/24] net: pass a sockptr_t into
	->setsockopt
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

Hi Christoph,

On 20/07/2020 14:47, Christoph Hellwig wrote:
> Rework the remaining setsockopt code to pass a sockptr_t instead of a
> plain user pointer.  This removes the last remaining set_fs(KERNEL_DS)
> outside of architecture specific code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

...
> diff --git a/net/mptcp/protocol.c b/net/mptcp/protocol.c
> index 27b6f250b87dfd..30a8e697b9db9c 100644
> --- a/net/mptcp/protocol.c
> +++ b/net/mptcp/protocol.c
> @@ -1627,7 +1627,7 @@ static void mptcp_destroy(struct sock *sk)
>   }
>   
>   static int mptcp_setsockopt_sol_socket(struct mptcp_sock *msk, int optname,
> -				       char __user *optval, unsigned int optlen)
> +				       sockptr_t optval, unsigned int optlen)
>   {
>   	struct sock *sk = (struct sock *)msk;
>   	struct socket *ssock;
> @@ -1643,8 +1643,8 @@ static int mptcp_setsockopt_sol_socket(struct mptcp_sock *msk, int optname,
>   			return -EINVAL;
>   		}
>   
> -		ret = sock_setsockopt(ssock, SOL_SOCKET, optname,
> -				      USER_SOCKPTR(optval), optlen);
> +		ret = sock_setsockopt(ssock, SOL_SOCKET, optname, optval,
> +				      optlen);

A very small detail related to the modifications in MPTCP code, only if 
you have to send a v2 and if you don't mind: may you move "optlen" to 
the previous line like it was before your patch 7/24. Same below at the 
end of the function.

That would reduce the global diff in MPTCP files to function signatures 
only.

Cheers,
Matt
-- 
Tessares | Belgium | Hybrid Access Solutions
www.tessares.net
