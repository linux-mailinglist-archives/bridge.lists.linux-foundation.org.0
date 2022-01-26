Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521134A2CE6
	for <lists.bridge@lfdr.de>; Sat, 29 Jan 2022 09:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D19F440123;
	Sat, 29 Jan 2022 08:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xy_PRTnBAoj5; Sat, 29 Jan 2022 08:15:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CEA014048E;
	Sat, 29 Jan 2022 08:15:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AC421C0072;
	Sat, 29 Jan 2022 08:15:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8B72BC002D
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68AA641610
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bv9INmbMuhmB for <bridge@lists.linux-foundation.org>;
 Wed, 26 Jan 2022 12:02:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B1994160A
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643198548;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JffvNSe2BvAV1CIblV/we+uBV7wt/SYCRMsaGQKbhCY=;
 b=bVM0tDtUtVXr0Mj6dbicCiqUP4CYbhp5hp7AZ2blCjRm3ikx6G589XY0qveoKVssd6Gwz1
 WfXcbVd+JfIsbG9q/+uEmCnc/oMeytqGidHDNqHM72wcVIYMfhBbTpGEEZJc5RVpDcZ+eS
 wdEb+AdyosdBzukZWqptWBlC+8yKAI4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-96-QkFikGu8M-2fOPbVajzOIw-1; Wed, 26 Jan 2022 07:02:27 -0500
X-MC-Unique: QkFikGu8M-2fOPbVajzOIw-1
Received: by mail-ej1-f72.google.com with SMTP id
 b12-20020a17090630cc00b006a7190bdfbaso4797183ejb.18
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 04:02:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=JffvNSe2BvAV1CIblV/we+uBV7wt/SYCRMsaGQKbhCY=;
 b=sp3JBXdTrMByGK4v7zUkGTWS5KjOE5QTy7hlFJixCNXVLkZ/4nxNRYO8j0bL5FA9iH
 qeZMFpVh/jJ6mRI0Ox7E5+DlhWY/70G713WMnQEjJxIfFSKEP2xlHii+vy9j18nCuoT8
 A6i6P+VQo069T5/aCIMj28bHVgf7e8ueSgOgP5B6+hqKncfjO9Trg/BSje0QhvBWcBTT
 2U2F5x31x7opvYDfv++C9M5ZJLSD0EM0dCeGsyJZmzsouPnmrc+yXs+rWlU1ynjgARnX
 9sY8JYFJ3nJVJp7Oq6rJpk0iJT/OBccBW4ll58HU0P23PfPoA7I56RMMJfTVq02X5I1r
 9qCQ==
X-Gm-Message-State: AOAM532WdvyMp39Z6lwjHzYE2S0wvnsHuXlrQFaMp06b4ORYoEFBe/W5
 3COchzDQRRj85jxNNGDi3JAaMjLLeLP4GHJND1k4DoybXPCrJ3D3AWQuKj7jgbKUOzW2TkZR5/h
 dmcZL98aCRG5cdNSUarKQop6hUqRTMgw=
X-Received: by 2002:a17:907:7208:: with SMTP id
 dr8mr20302104ejc.503.1643198546024; 
 Wed, 26 Jan 2022 04:02:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy0+dKaLOqKZ04M8CubkNiWEfd6Zntql4B7K4J5CdeX8Zg49omzBwDYV9V8DA87HIjWqq5ZZw==
X-Received: by 2002:a17:907:7208:: with SMTP id
 dr8mr20302068ejc.503.1643198545600; 
 Wed, 26 Jan 2022 04:02:25 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id e19sm6248161ejl.225.2022.01.26.04.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 04:02:25 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 513FF1805FA; Wed, 26 Jan 2022 13:02:24 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, Alexei Starovoitov
 <alexei.starovoitov@gmail.com>
In-Reply-To: <YfEr3Soy8YuJczHk@lore-desk>
References: <cover.1643044381.git.lorenzo@kernel.org>
 <720907692575488526f06edc2cf5c8f783777d4f.1643044381.git.lorenzo@kernel.org>
 <61553c87-a3d3-07ae-8c2f-93cf0cb52263@nvidia.com>
 <CAADnVQLv=45+Symc-8Y9QuzOAG40e3XkvVxQ-ibO-HOCyJhETw@mail.gmail.com>
 <YfEr3Soy8YuJczHk@lore-desk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 26 Jan 2022 13:02:24 +0100
Message-ID: <87ee4u3dtb.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Approved-At: Sat, 29 Jan 2022 08:15:36 +0000
Cc: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>, David Ahern <dsahern@kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>, Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Ido Schimmel <idosch@idosch.org>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>
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

Lorenzo Bianconi <lorenzo@kernel.org> writes:

>> On Mon, Jan 24, 2022 at 10:32 AM Nikolay Aleksandrov <nikolay@nvidia.com> wrote:
>> > >
>> > > +int br_fdb_find_port_from_ifindex(struct xdp_md *xdp_ctx,
>> > > +                               struct bpf_fdb_lookup *opt,
>> > > +                               u32 opt__sz)
>> > > +{
>> > > +     struct xdp_buff *ctx = (struct xdp_buff *)xdp_ctx;
>> > > +     struct net_bridge_port *port;
>> > > +     struct net_device *dev;
>> > > +     int ret = -ENODEV;
>> > > +
>> > > +     BUILD_BUG_ON(sizeof(struct bpf_fdb_lookup) != NF_BPF_FDB_OPTS_SZ);
>> > > +     if (!opt || opt__sz != sizeof(struct bpf_fdb_lookup))
>> > > +             return -ENODEV;
>> > > +
>> > > +     rcu_read_lock();
>> > > +
>> > > +     dev = dev_get_by_index_rcu(dev_net(ctx->rxq->dev), opt->ifindex);
>> > > +     if (!dev)
>> > > +             goto out;
>> 
>> imo that is way too much wrapping for an unstable helper.
>> The dev lookup is not cheap.
>> 
>> With all the extra checks the XDP acceleration gets reduced.
>> I think it would be better to use kprobe/fentry on bridge
>> functions that operate on fdb and replicate necessary
>> data into bpf map.
>> Then xdp prog would do a single cheap lookup from that map
>> to figure out 'port'.
>
> ack, right. This is a very interesting approach. I will investigate
> it. Thanks.

I think it would be interesting to try both, and compare their
performance. I'm a bit sceptical about Alexei's assertion that
dev_get_by_index_rcu() is that expensive: we do such a lookup in the XDP
redirect code when using the non-map bpf_redirect() helper, and I have
not been able to measure a significant performance difference between
the map and non-map variants (after we added bulking to the latter).

If looking up devices by ifindex does turn out to be too expensive,
maybe what we really need is a way to pass around 'struct net_device'
pointers to BPF helpers, so a given BPF program only has to do the
lookup once if it's calling multiple dev-based helpers? I think this
should be doable with BTF, no?

-Toke

