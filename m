Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB35241211
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4BEE878B5;
	Mon, 10 Aug 2020 21:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5dVPm055cYAq; Mon, 10 Aug 2020 21:05:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A97E87916;
	Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7BABAC004D;
	Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C33B4C004C
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 08:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A787720481
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 08:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3L95H5m0iqE for <bridge@lists.linux-foundation.org>;
 Fri,  7 Aug 2020 08:06:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id BF4F32010D
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 08:06:48 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bh1so681283plb.12
 for <bridge@lists.linux-foundation.org>; Fri, 07 Aug 2020 01:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4XLPHo6ufXjqCRDRX6dlamDg8saN7x8jg/SbIqu516I=;
 b=fNAJf5Jqo/OU8MSnbks8APaPlFcPTPed8hIm+RF5uEP0MVlFRE51bceB9XUr97PQOy
 t6JhhXMLqUxUYPRhiV5Yk1xKUw8Ize2YilArRhUK6PbX1zZxbzxL7mGxtkTUFatf3xll
 KoUvM2lP7agOvM+akXjePCzMdgYg/X+PlOlZdn5eDXtURGPCItCgGqfuIlBTNuDfJj3D
 7TnsxcrRYWps8jln59GtRWMo2qM6VyQ3yARXqFDFYvVUg6OCWZiUVYueGX8WkkjGLkoE
 YDa3/nZKhZx3hCu8N6Xb+GIvHiJU4EuLktAM83d5WbjLPv6M4CELkaqtZp66hsIXbo3S
 szYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4XLPHo6ufXjqCRDRX6dlamDg8saN7x8jg/SbIqu516I=;
 b=B3NestI605Fn6Q5PHgQm2t1tDdErVkLRWR7Laqo36uWiwxq/L3B2R9J6OIF8BDCJwX
 yir0TGtsR7J0fhVL2Rioge/kPPADMmXZX0WPVsCEr+oeJ63RIJjI6jVzOMYdvSlRv3JB
 ntzv0NttJg5gG2MuTQwyo9bvTNMDox0bPs0G0tjsOZb7+/Cq9XL4ULO5UMKcIsxrNocY
 JColP2/AOXkKV947eG8e/MEzIRwfnORhKVN9Tgm9wSmppm2UhDm5cYKawUyURIJaSwZ0
 Tkn3KDKKkAjchRKvV90KBCOUvRsOa123g+H8G6v6ZsBkZxd/pbIsjcAhj/0H/KgiuW3j
 B+bA==
X-Gm-Message-State: AOAM533bJl0pPhs4cOKzWP2U99mn5eqBZqjZ6N9btnohE+Hx8qEOuJmI
 02nS89Avl8+2ALGdAUnGOmU=
X-Google-Smtp-Source: ABdhPJxui7Oprix2e/G48+E3w+lKpjo8L5GpoGRIpjJb1/SpBdQvuTty/P4PmydhlX0r3jPrBRzFkg==
X-Received: by 2002:a17:902:9f85:: with SMTP id
 g5mr11035469plq.13.1596787608321; 
 Fri, 07 Aug 2020 01:06:48 -0700 (PDT)
Received: from [192.168.97.34] (p7925058-ipngn38401marunouchi.tokyo.ocn.ne.jp.
 [122.16.223.58])
 by smtp.gmail.com with ESMTPSA id b13sm11307575pgd.36.2020.08.07.01.06.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Aug 2020 01:06:47 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
In-Reply-To: <e92455ce-3a3f-7c52-1388-da40e8ceefd0@gmail.com>
Date: Fri, 7 Aug 2020 17:06:41 +0900
Content-Transfer-Encoding: quoted-printable
Message-Id: <3B486A33-7A46-436A-A563-80F842A16F23@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
 <5970d82b-3bb9-c78f-c53a-8a1c95a1fad7@gmail.com>
 <F99B20F3-4F88-4AFC-9DF8-B32EFD417785@gmail.com>
 <e92455ce-3a3f-7c52-1388-da40e8ceefd0@gmail.com>
To: David Ahern <dsahern@gmail.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, David Ahern <dsahern@kernel.org>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do
 forwarding lookups in kernel FDB table
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


> 2020/08/06 1:38=E3=80=81David Ahern <dsahern@gmail.com>=E3=81=AE=E3=83=A1=
=E3=83=BC=E3=83=AB:
>=20
> On 8/4/20 5:27 AM, Yoshiki Komachi wrote:
>>=20
>> I guess that no build errors will occur because the API is allowed =
when
>> CONFIG_BRIDGE is enabled.
>>=20
>> I successfully build my kernel applying this patch, and I don=E2=80=99t=
 receive any
>> messages from build robots for now.
>=20
> If CONFIG_BRIDGE is a module, build should fail: filter.c is built-in
> trying to access a symbol from module.

When I tried building my kernel with CONFIG_BRIDGE set as a module, I =
got
the following error as you pointed out:

    ld: net/core/filter.o: in function `____bpf_xdp_fdb_lookup':
    /root/bpf-next/net/core/filter.c:5108: undefined reference to =
`br_fdb_find_port_xdp'

It may be necessary to fix it to support kernels built with =
CONFIG_BRIDGE set
as a mfodule, so let me make sure if it should be called via netdev ops =
to get
destination port in a bridge again.

Thanks & Best regards,


=E2=80=94
Yoshiki Komachi
komachi.yoshiki@gmail.com

