Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDF949AB62
	for <lists.bridge@lfdr.de>; Tue, 25 Jan 2022 06:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 714B440436;
	Tue, 25 Jan 2022 05:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 02gzrkCkzSGD; Tue, 25 Jan 2022 05:09:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DA42E40204;
	Tue, 25 Jan 2022 05:09:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9078DC007A;
	Tue, 25 Jan 2022 05:09:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E025CC002F
 for <bridge@lists.linux-foundation.org>; Tue, 25 Jan 2022 05:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA4A460B38
 for <bridge@lists.linux-foundation.org>; Tue, 25 Jan 2022 05:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6eLCkVZJtels for <bridge@lists.linux-foundation.org>;
 Tue, 25 Jan 2022 05:09:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4463F607F7
 for <bridge@lists.linux-foundation.org>; Tue, 25 Jan 2022 05:09:26 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 b1-20020a17090a990100b001b14bd47532so1596896pjp.0
 for <bridge@lists.linux-foundation.org>; Mon, 24 Jan 2022 21:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oeTEp2rB9dc4PJgyacmkSyq1DnjRfsybkwCycdXUsGs=;
 b=Hr9ia0X3q2nSdh1Yg8YMr9AAWSS8SVvWVgNhE6UYrGE5ZCVqKWYNluuId3WuC4LaTV
 Ivt1YKz1q/2uukeTwh49RYp/3015L8kuwEUB4lv9WsSvJ25loEEORzt7fxx42V0sOK9q
 jXv9jIZiekuycv+NoZOg/f7WSg0Psbr0EfFC+O9aQyNcJ54yfGKg/BH6+NF70INvBmlZ
 edwm83UJRLH1BO2A93v+xSSwEeuN8rv4/w2GbD+BHeNxC50K2xkcENur4jD3vzg0rH4k
 lOZpzSBv6T9BLSjARPFOY8lJiKM8Fi/ajHDRx0b/ZQ0hW562VK6jDlocp8xl0u6vEszg
 +S7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oeTEp2rB9dc4PJgyacmkSyq1DnjRfsybkwCycdXUsGs=;
 b=Er0pGo2yFEKL+sHZUtTq45Gc+NPfEBDoRY/2MopYStxKbhtXBYBaFBdlio1YJwqRJy
 ihnuVbp68B6akKgz6pT7DTm1tx0WMw+dc2tPejPGeEYfrwBXPWeCGbvyVf+v5NJEZ6tQ
 DXJVvb1OFEShrtH6KvD6AjqyaZQ8sfqXoeOR5D/pqzyKSKeXX6N/OupnyVZtlG23OjC3
 Cr7TElJwK82mceXj5ePT13R6uVkeAY2/TYBbvSRp/kas7UA7NzkytAbPBS+KhfyZ2osq
 XvJETpUlRNk8tDDs1jVU4kSBnpbVExCQQytD5+UtIPGcFY0dojNT2uo8BwE3w/KkZOpo
 Uteg==
X-Gm-Message-State: AOAM531x1uOUwaD0IddfW1bPzBpCFLkpkZo/r/XedbSbxnrDiZJy1IRU
 ffoQn8u7t/6DwSRfb+tdZJeUFek2i3Osgu1oz/g=
X-Google-Smtp-Source: ABdhPJyUtrKWz0OmWyEGNqCQX55GG982KCy3AQdz5/9oHR4o1sMC1wA2bpD+RF03LRejqB4Haey+WHxRFVLeNRYhHKg=
X-Received: by 2002:a17:90a:d203:: with SMTP id
 o3mr1762084pju.122.1643087365668; 
 Mon, 24 Jan 2022 21:09:25 -0800 (PST)
MIME-Version: 1.0
References: <cover.1643044381.git.lorenzo@kernel.org>
 <720907692575488526f06edc2cf5c8f783777d4f.1643044381.git.lorenzo@kernel.org>
 <61553c87-a3d3-07ae-8c2f-93cf0cb52263@nvidia.com>
In-Reply-To: <61553c87-a3d3-07ae-8c2f-93cf0cb52263@nvidia.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Mon, 24 Jan 2022 21:09:14 -0800
Message-ID: <CAADnVQLv=45+Symc-8Y9QuzOAG40e3XkvVxQ-ibO-HOCyJhETw@mail.gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Roopa Prabhu <roopa@nvidia.com>,
 Network Development <netdev@vger.kernel.org>, David Ahern <dsahern@kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Ido Schimmel <idosch@idosch.org>, Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Subject: Re: [Bridge] [RFC bpf-next 1/2] net: bridge: add unstable
 br_fdb_find_port_from_ifindex helper
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

On Mon, Jan 24, 2022 at 10:32 AM Nikolay Aleksandrov <nikolay@nvidia.com> wrote:
> >
> > +int br_fdb_find_port_from_ifindex(struct xdp_md *xdp_ctx,
> > +                               struct bpf_fdb_lookup *opt,
> > +                               u32 opt__sz)
> > +{
> > +     struct xdp_buff *ctx = (struct xdp_buff *)xdp_ctx;
> > +     struct net_bridge_port *port;
> > +     struct net_device *dev;
> > +     int ret = -ENODEV;
> > +
> > +     BUILD_BUG_ON(sizeof(struct bpf_fdb_lookup) != NF_BPF_FDB_OPTS_SZ);
> > +     if (!opt || opt__sz != sizeof(struct bpf_fdb_lookup))
> > +             return -ENODEV;
> > +
> > +     rcu_read_lock();
> > +
> > +     dev = dev_get_by_index_rcu(dev_net(ctx->rxq->dev), opt->ifindex);
> > +     if (!dev)
> > +             goto out;

imo that is way too much wrapping for an unstable helper.
The dev lookup is not cheap.

With all the extra checks the XDP acceleration gets reduced.
I think it would be better to use kprobe/fentry on bridge
functions that operate on fdb and replicate necessary
data into bpf map.
Then xdp prog would do a single cheap lookup from that map
to figure out 'port'.
