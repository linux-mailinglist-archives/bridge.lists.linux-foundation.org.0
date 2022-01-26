Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3814A2CE9
	for <lists.bridge@lfdr.de>; Sat, 29 Jan 2022 09:15:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 610E04048E;
	Sat, 29 Jan 2022 08:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTgLQ6uf9axs; Sat, 29 Jan 2022 08:15:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6EEB040116;
	Sat, 29 Jan 2022 08:15:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71DE0C0079;
	Sat, 29 Jan 2022 08:15:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 430D7C002D
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F97F40132
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOa6f0yPCQ3k for <bridge@lists.linux-foundation.org>;
 Wed, 26 Jan 2022 12:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06E0F409A0
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643201457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e9hOV54Md4mkMW4fxi7kpJhvDxIQw3Di2qayJ9be2AQ=;
 b=DLSkFGgW2t4i1H8JMQrzOgXoTqD0KLaiDl8B6ei76G04jVzuUsDUNX+IqzeITKhcKNgMR5
 o/2OodU6UulwYgLWJ+lxqUJId0Vmj127SVFdlFLFcjNGueiIOSNBY4vp3t+LOqP8vkPdf8
 zpdi+P0ZKemknRoCVJ+zyxWAbIBSpps=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-G1C2oYtHPuiZzuQgGvDnPA-1; Wed, 26 Jan 2022 07:50:56 -0500
X-MC-Unique: G1C2oYtHPuiZzuQgGvDnPA-1
Received: by mail-ed1-f71.google.com with SMTP id
 w3-20020a50c443000000b0040696821132so9593252edf.22
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 04:50:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=e9hOV54Md4mkMW4fxi7kpJhvDxIQw3Di2qayJ9be2AQ=;
 b=qfGW5866ZCjOewt93ISnq+qCTsP3CDKxsfyFnUt0X1WCKEMLT1mVNcZisju9sjlwaZ
 37YFIf3tQjH0xC582TxfSgAp55LG39d7iPZHzZY98dusdiwBMx34cyuLz2bNX8yCOVaf
 QW1T+45iSic24+CSnu6CStqN3cPFGsEhWhkmh+DncblC/iKE8Nki+zLC1vhMAPEDK9HS
 ffj+2NUPT/jPA7MlGIwVUY+aB6mPuj+Ot4/pi3RSGVxJjRtVCUTF9LqjIPCvS1VqCb6f
 pj4lzYCjwI7gmJudfkhTaxca3kxMOMqJjKsZMwHIT/QP7nA9ORhmt7gYTz0azDbxOrLW
 bjmw==
X-Gm-Message-State: AOAM5312Tfb/NXY7p/V4Y0DC1huTTedmAKjVEkq1UAZyJ+E7eV3qYhUP
 clGw4lLusjsnhylUEqxWxYmJYS8DX1TBWagiHuiOenMoORsmKOcGagdaOt9mJCOh+5ktdxWwU0K
 v6NDGvcPggsWtNy4yf2yqpQUE/azstpI=
X-Received: by 2002:a05:6402:4405:: with SMTP id
 y5mr12529177eda.223.1643201455150; 
 Wed, 26 Jan 2022 04:50:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJymMzrQNTBr6KQtAAL2rYnA7z94zIvHXkQfemPJFKG3tbK1JiITdY/yWlO6BrrB0vG5KgMPIQ==
X-Received: by 2002:a05:6402:4405:: with SMTP id
 y5mr12529108eda.223.1643201454170; 
 Wed, 26 Jan 2022 04:50:54 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id a11sm9764879edv.76.2022.01.26.04.50.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 04:50:53 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E764A1805FA; Wed, 26 Jan 2022 13:50:51 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, Lorenzo Bianconi
 <lorenzo@kernel.org>
In-Reply-To: <113d070a-6df1-66c2-1586-94591bc5aada@nvidia.com>
References: <cover.1643044381.git.lorenzo@kernel.org>
 <720907692575488526f06edc2cf5c8f783777d4f.1643044381.git.lorenzo@kernel.org>
 <61553c87-a3d3-07ae-8c2f-93cf0cb52263@nvidia.com>
 <YfEwLrB6JqNpdUc0@lore-desk>
 <113d070a-6df1-66c2-1586-94591bc5aada@nvidia.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 26 Jan 2022 13:50:51 +0100
Message-ID: <878rv23bkk.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Approved-At: Sat, 29 Jan 2022 08:15:36 +0000
Cc: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 daniel@iogearbox.net, netdev@vger.kernel.org, dsahern@kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, komachi.yoshiki@gmail.com, ast@kernel.org,
 davem@davemloft.net, Ido Schimmel <idosch@idosch.org>, memxor@gmail.com,
 brouer@redhat.com, kuba@kernel.org, bpf@vger.kernel.org,
 andrii.nakryiko@gmail.com, lorenzo.bianconi@redhat.com
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

Nikolay Aleksandrov <nikolay@nvidia.com> writes:

> On 26/01/2022 13:27, Lorenzo Bianconi wrote:
>>> On 24/01/2022 19:20, Lorenzo Bianconi wrote:
>>>> Similar to bpf_xdp_ct_lookup routine, introduce
>>>> br_fdb_find_port_from_ifindex unstable helper in order to accelerate
>>>> linux bridge with XDP. br_fdb_find_port_from_ifindex will perform a
>>>> lookup in the associated bridge fdb table and it will return the
>>>> output ifindex if the destination address is associated to a bridge
>>>> port or -ENODEV for BOM traffic or if lookup fails.
>>>>
>>>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>>>> ---
>>>>  net/bridge/br.c         | 21 +++++++++++++
>>>>  net/bridge/br_fdb.c     | 67 +++++++++++++++++++++++++++++++++++------
>>>>  net/bridge/br_private.h | 12 ++++++++
>>>>  3 files changed, 91 insertions(+), 9 deletions(-)
>>>>
>>>
>>> Hi Lorenzo,
>> 
>> Hi Nikolay,
>> 
>> thx for the review.
>> 
>>> Please CC bridge maintainers for bridge-related patches, I've added Roopa and the
>>> bridge mailing list as well. Aside from that, the change is certainly interesting, I've been
>>> thinking about a similar helper for some time now, few comments below.
>> 
>> yes, sorry for that. I figured it out after sending the series out.
>> 
>>>
>>> Have you thought about the egress path and if by the current bridge state the packet would
>>> be allowed to egress through the found port from the lookup? I'd guess you have to keep updating
>>> the active ports list based on netlink events, but there's a lot of egress bridge logic that
>>> either have to be duplicated or somehow synced. Check should_deliver() (br_forward.c) and later
>>> egress stages, but I see how this is a good first step and perhaps we can build upon it.
>>> There are a few possible solutions, but I haven't tried anything yet, most obvious being
>>> yet another helper. :)
>> 
>> ack, right but I am bit worried about adding too much logic and slow down xdp
>> performances. I guess we can investigate first the approach proposed by Alexei
>> and then revaluate. Agree?
>> 
>
> Sure, that approach sounds very interesting, but my point was that
> bypassing the ingress and egress logic defeats most of the bridge
> features. You just get an fdb hash table which you can build today
> with ebpf without any changes to the kernel. :) You have multiple
> states, flags and options for each port and each vlan which can change
> dynamically based on external events (e.g. STP, config changes etc)
> and they can affect forwarding even if the fdbs remain in the table.

To me, leveraging all this is precisely the reason to have BPF helpers
instead of just replicating state in BPF maps: it's very easy to do that
and show a nice speedup, and then once you get all the corner cases
covered that the in-kernel code already deals with, you've chipped away
at that speedup and spent a lot of time essentially re-writing the
battle-tested code already in the kernel.

So I think figuring out how to do the state sync is the right thing to
do; a second helper would be fine for this, IMO, but I'm not really
familiar enough with the bridge code to really have a qualified opinion.

-Toke

