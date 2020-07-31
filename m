Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7293241200
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68D9286169;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPbjQK9L0Fby; Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAADA8614A;
	Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DCDE8C004D;
	Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BECFDC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 21:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4C5B88472
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 21:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVB9scKz5YH3 for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 21:52:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0864C88453
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 21:52:56 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id l1so33071947ioh.5
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 14:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=u0WnrEEbki1i/hcaafYSzslvQ7FMlY7zypF99r+3B/o=;
 b=c/MJnMa7iFlRBOG02m0T54NzFYPRsxOii1CeQ16KYQkd4QKokIa0N/RND9PSnQzmJx
 he9XFY1jf5LZkpWxNbD2SAbwnXGmTsUf+VIG9o6VK8HcaUB6LUdwqB6beOhniK9hlW00
 Ey4PLP49xYvfKkd8cAiURWATEuBPmZvqdnM2gDOnRfJUjd5FHSivmvmcYbazmgN6gE4B
 ApzN7hy16Bcmn9cYtU1venxzbdUkcaoGF0JmfArVDW++ro0Vr2c7RbREEBR3VlyEcYn9
 JKWbYSAeva3koTpN+9Jun6O6QJ+r3yZn4oqqeVj8ldWj70afnW8AmqVF/7rG5JjcSKuM
 OYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=u0WnrEEbki1i/hcaafYSzslvQ7FMlY7zypF99r+3B/o=;
 b=LOCGm5ec9No+DmNNaa3m3RjafLZWxw/bFukzlwsZ+0xmKyzWt95MKMNjjSSYCLaeCM
 rvik20ZLQqXbAJ0tNO4T9eyBC3njDKxrmW/LsuGV8S+F+3wGtJvvbIjch1XpftjqwUaF
 XyHlQAje4PhfEC1VTxOVMHgxgb6arPKX07pQyR0CcVthUKWsos0LI7mcQq9ZAoJsth5X
 C/vE6WxElbDC3zwo1/X8oSmZro/Q4tbJ35twmbaMe6gAdYWl1tkF7r0llFNpg6LRgROa
 PUNafOIJCVOI7t9dKaMtn9+p6aJL3Botf04wb+EOXiatA0WmeQCAZgZ/33EScbECQBy2
 biTA==
X-Gm-Message-State: AOAM532h/KwSDQBqEhHYSLIE+RuIdjk8NEXLSplIPED29fpu+JqovqXb
 JagDLyROV3hzqHicntTQVpU=
X-Google-Smtp-Source: ABdhPJxmhDOHE3IYhuUvM8ElPOuraNw5ha7HN+/8fJSXcVpziYlysuTOoW+LwbRrGLtKjy4Q+ntKag==
X-Received: by 2002:a05:6638:2164:: with SMTP id
 p4mr7123522jak.57.1596232375349; 
 Fri, 31 Jul 2020 14:52:55 -0700 (PDT)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id h1sm5330588iob.8.2020.07.31.14.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jul 2020 14:52:54 -0700 (PDT)
Date: Fri, 31 Jul 2020 14:52:46 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, Martin KaFai Lau <kafai@fb.com>, 
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
 Andrii Nakryiko <andriin@fb.com>, KP Singh <kpsingh@chromium.org>, 
 Roopa Prabhu <roopa@cumulusnetworks.com>, 
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, 
 David Ahern <dsahern@kernel.org>
Message-ID: <5f2492aedba05_54fa2b1d9fe285b42d@john-XPS-13-9370.notmuch>
In-Reply-To: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 bridge@lists.linux-foundation.org, Yoshiki Komachi <komachi.yoshiki@gmail.com>
Subject: Re: [Bridge] [RFC PATCH bpf-next 0/3] Add a new bpf helper for FDB
	lookup
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

Yoshiki Komachi wrote:
> This series adds a new bpf helper for doing FDB lookup in the kernel
> tables from XDP programs. This helps users to accelerate Linux bridge
> with XDP.
> =

> In the past, XDP generally required users to reimplement their own
> networking functionalities with specific manners of BPF programming
> by themselves, hindering=C2=A0its=C2=A0potential=C2=A0uses. IMO, bpf he=
lpers to
> access networking stacks in kernel help to mitigate the programming
> costs because users reuse mature Linux networking feature more easily.
> =

> The previous commit 87f5fc7e48dd ("bpf: Provide helper to do forwarding=

> lookups in kernel FIB table") have already added a bpf helper for acces=
s
> FIB in the kernel tables from XDP programs. As a next step, this series=

> introduces the API for FDB lookup. In the future, other bpf helpers for=

> learning and VLAN filtering will also be required in order to realize
> fast XDP-based bridge although these are not included in this series.

Just to clarify for myself. I expect that with just the helpers here
we should only expect static configurations to work, e.g. any learning
and/or aging is not likely to work if we do redirects in the XDP path.

Then next to get a learning/filtering/aging we would need to have a
set of bridge helpers to get that functionality as well? I believe
I'm just repeating what you are saying above, but wanted to check.

Then my next question is can we see some performance numbers? These
things are always trade-off between performance and ease of
use, but would be good to know roughly what we are looking at vs
a native XDP bridge functionality.

Do you have a use case for a static bridge setup? Nothing wrong to
stage things IMO if the 'real' use case needs learning and filtering.

I guess to get STP working you would minimally need learning and
aging?

Thanks,
John=
