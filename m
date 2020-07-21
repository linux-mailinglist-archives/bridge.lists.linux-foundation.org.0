Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E86C22CD4D
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9CD78956F;
	Fri, 24 Jul 2020 18:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxFpzd5OG6wl; Fri, 24 Jul 2020 18:22:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F6DC89451;
	Fri, 24 Jul 2020 18:22:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6348BC0052;
	Fri, 24 Jul 2020 18:22:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3FEFC016F
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 02:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A028386781
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 02:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_u3CBtl6D_V for <bridge@lists.linux-foundation.org>;
 Tue, 21 Jul 2020 02:40:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCA3E86745
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 02:40:20 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id y10so20115245eje.1
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 19:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uGJfiXXxVHM7zniHW3sl0xVltZ7h7OdT0FRQ5H6GgQM=;
 b=OeoCW/0tbvMmfJG3/GXVxS0sf0NU1F3vv5ek0RwSeUB4oL3xBRF4212opG/Qca2oMt
 w/LznXXPQ/9latRxVyAN7HoUeXaNxvpuCBnCtE8R4VgfJiFrlJWGUZ3AudCWWBSFASY5
 rHitPZwk5CzwZGC9yY+cINRMFHfhNoff5Hs0bqMLp86BM3TNE6gCd0fujLU9Jp1gGqkn
 fbgcZ3ejttQ6DUlGWTOX05MbhnYkq6NEeVjuv6BJvSSMm0lLza1F8vnXHY24yVrWhuUw
 mE4fVqq6wL70udwjlBJkWv9YZBUUfIIT74p06ZRe0yu4iR7nwWtzJQYm2S7oIsa47DMh
 Anhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uGJfiXXxVHM7zniHW3sl0xVltZ7h7OdT0FRQ5H6GgQM=;
 b=ctcs3xH7YaZIm8UQcfab62jtDPVyl81GifCmW+kujQxQ9oOdww8oDEZUkYQ1dnfA2C
 m7Ea+b9NUdjr9ccg2DcMDXjpLQ+JVvjdqBED0IpCM8+Gv0Uy0u44AgU3Oc3p86WhVtxP
 fCsBizUnaxqLj4i5kC+Ek/0KZDAL3/ZqTxgK3HJ5Chv6tSI3d65ETsYxU8gHHW1SKcQs
 9pV7Ax8etHk0IFSHRwO7O1REKOhhqH/bjU/fnfjMBAQHy/3YCTauUITiXhJi2pJ8MM8o
 VjvfignX3Vn4IXdDo+5XZ2SGx+bKOVuuyriuTWvAQChzBXnxl54ibAOrEu9h7xrX8toJ
 S2Ww==
X-Gm-Message-State: AOAM532vtU3epgRfvpvr5IVxFnDbhNQkjjvqUWGAQQmo+VtphLKprklJ
 ocCbR/tgW3J5CrpLmvogvCc=
X-Google-Smtp-Source: ABdhPJxwHHfj4AzpvPUUwMsSPbeGFb02Lr8Q1E98GpxaDKbKNy5p2S/jP2546lXFLYroLU3vdKdQBA==
X-Received: by 2002:a17:906:c41:: with SMTP id
 t1mr23432470ejf.18.1595299219166; 
 Mon, 20 Jul 2020 19:40:19 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:a7fb:e200:d978:aa6c:4528:f5b1])
 by smtp.gmail.com with ESMTPSA id y22sm15676844ejj.67.2020.07.20.19.40.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 19:40:18 -0700 (PDT)
Date: Tue, 21 Jul 2020 04:40:16 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200721024016.2talwdt5hjqvirr6@ltop.local>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-3-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200720124737.118617-3-hch@lst.de>
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
Subject: Re: [Bridge] [PATCH 02/24] bpfilter: fix up a sparse annotation
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

On Mon, Jul 20, 2020 at 02:47:15PM +0200, Christoph Hellwig wrote:
> The __user doesn't make sense when casting to an integer type.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  net/bpfilter/bpfilter_kern.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bpfilter/bpfilter_kern.c b/net/bpfilter/bpfilter_kern.c
> index 977e9dad72ca4f..713b4b3d02005d 100644
> --- a/net/bpfilter/bpfilter_kern.c
> +++ b/net/bpfilter/bpfilter_kern.c
> @@ -49,7 +49,7 @@ static int __bpfilter_process_sockopt(struct sock *sk, int optname,
>  	req.is_set = is_set;
>  	req.pid = current->pid;
>  	req.cmd = optname;
> -	req.addr = (long __force __user)optval;
> +	req.addr = (__force long)optval;

For casts to integers, even '__force' is not needed (since integers
can't be dereferenced, the concept of address-space is meaningless
for them, so it's never useful to warn when it's dropped and
'__force' is thus not needed).

-- Luc
