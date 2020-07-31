Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD04724120C
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58F2387897;
	Mon, 10 Aug 2020 21:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LZlZLHWd44Sc; Mon, 10 Aug 2020 21:05:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B417787896;
	Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A114AC004D;
	Mon, 10 Aug 2020 21:05:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B669CC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D71520336
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Azn4cH61Fwd1 for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 17:48:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C44B20117
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:48:29 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id q16so14424171ybk.6
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 10:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7yuTOXkhnjtQaEm9idGZaO/zfXegMB7ywvDDyNQyj/I=;
 b=Ia2KG8Dg+BQsHF7ZvXuqhVIIBXIEfPHODcfnL2p5ZboFoSn9gTATt5RC0apvua39Hk
 HdaIBqspB9J4V0exyzKhHQoo5hJcRMKO3jb99ftPqkLACSyTaBO+vU3hGwvRVG0Mkg3O
 XNcFh05JPS/txkOomOZQ0DqaK6erwgFsy2e5T1w2p562foq96lFZPfZ9oPSgHasLEuaS
 wAJLELm7a5mQXCzR4L68bqSRsxxXFcnI8mDwBw+9vth3cnfOu27NHeT8vn775fzCw3ku
 VajG0UgaXUiv0ntVgRB656n01g3b6EkUexByh7gvYQ6yz6rSP48rqTABWFwTKrPk0fBg
 waoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7yuTOXkhnjtQaEm9idGZaO/zfXegMB7ywvDDyNQyj/I=;
 b=hyNS4pkTedEv1NJFUc/06O8S58g1jIzE1C7/UyYt/QrFEPYzkYH4EG42rbanRmTy5h
 EfDPMX+puM9O6kQlNJdXBmeGlLkIgIZCJVRZ9ni98kY4rhTqhYdwlS6NfDZeEK4wB4iI
 ODeqS+uIHGl2WeluDmm6Gms6lSV8PRoF+lrZg2TsVHxQIMdujuew4F02jClsBRFK4YTW
 bBd65TXUN3T5eDe7KZhVgzSlzlT53OobbozsG6GXa80imJqT1vhGaPSlhdEkUilTnQNE
 4Kug5TeZa6mXzPPvgHUdT9aAbF4xpyYE3/wTJgOktTU1Hz7ZXCchDjxWGwQJOSN89anX
 2kAQ==
X-Gm-Message-State: AOAM5333RODjF2dUyX3mWsuo0pT2++quEhibOnb5yTYFP1lFGqDN1ZeG
 7gH4uWzZ4BUa6cbskF6dKeeeFrXUGMDa3KoRFPU=
X-Google-Smtp-Source: ABdhPJxIKeLVgVoTxPWDwUwBAi6m9zUbpLSULVkwM/J75oOYyUrhoQQj2Ky9cRsM5qWbNAOu69NDamEetiIgIjzJLpo=
X-Received: by 2002:a25:d84a:: with SMTP id p71mr8363157ybg.347.1596217708673; 
 Fri, 31 Jul 2020 10:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-4-git-send-email-komachi.yoshiki@gmail.com>
In-Reply-To: <1596170660-5582-4-git-send-email-komachi.yoshiki@gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 31 Jul 2020 10:48:18 -0700
Message-ID: <CAEf4BzaRKhJqFmXJEQy5LOjKx9nkPgAKHa3cesvywy2qqg93YA@mail.gmail.com>
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Networking <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 David Ahern <dsahern@kernel.org>, Yonghong Song <yhs@fb.com>,
 KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 3/3] samples/bpf: Add a simple
 bridge example accelerated with XDP
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

On Thu, Jul 30, 2020 at 9:45 PM Yoshiki Komachi
<komachi.yoshiki@gmail.com> wrote:
>
> This patch adds a simple example of XDP-based bridge with the new
> bpf_fdb_lookup helper. This program simply forwards packets based
> on the destination port given by FDB in the kernel. Note that both
> vlan filtering and learning features are currently unsupported in
> this example.
>
> There is another plan to recreate a userspace application
> (xdp_bridge_user.c) as a daemon process, which helps to automate
> not only detection of status changes in bridge port but also
> handling vlan protocol updates.
>
> Note: David Ahern suggested a new bpf helper [1] to get master
> vlan/bonding devices in XDP programs attached to their slaves
> when the master vlan/bonding devices are bridge ports. If this
> idea is accepted and the helper is introduced in the future, we
> can handle interfaces slaved to vlan/bonding devices in this
> sample by calling the suggested bpf helper (I guess it can get
> vlan/bonding ifindex from their slave ifindex). Notice that we
> don't need to change bpf_fdb_lookup() API to use such a feature,
> but we just need to modify bpf programs like this sample.
>
> [1]: http://vger.kernel.org/lpc-networking2018.html#session-1
>
> Signed-off-by: Yoshiki Komachi <komachi.yoshiki@gmail.com>
> ---

Have you tried using a BPF skeleton for this? It could have saved a
bunch of mechanical code for your example. Also libbpf supports map
pinning out of the box now, I wonder if it would just work in your
case. Also it would be nice if you tried using BPF link-based approach
for this example, to show how it can be used. Thanks!


>  samples/bpf/Makefile          |   3 +
>  samples/bpf/xdp_bridge_kern.c | 129 ++++++++++++++++++
>  samples/bpf/xdp_bridge_user.c | 239 ++++++++++++++++++++++++++++++++++
>  3 files changed, 371 insertions(+)
>  create mode 100644 samples/bpf/xdp_bridge_kern.c
>  create mode 100644 samples/bpf/xdp_bridge_user.c
>

[...]
