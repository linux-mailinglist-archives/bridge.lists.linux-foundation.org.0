Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B56EF569178
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 20:13:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7DDA60BF0;
	Wed,  6 Jul 2022 18:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7DDA60BF0
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=PhRZLRHk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6OLKdoM_6RQT; Wed,  6 Jul 2022 18:13:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E296360BAE;
	Wed,  6 Jul 2022 18:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E296360BAE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 85C22C0077;
	Wed,  6 Jul 2022 18:13:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D858C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 18:13:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6449960BCC
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 18:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6449960BCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1j0vQ8UuDgt for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 18:13:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECDAD60BAE
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECDAD60BAE
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 18:13:20 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id m16so4803496edb.11
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 11:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pX1c7tkbngEdLSc5QrF58zs+4v7cOoVg7+Xo847yIwg=;
 b=PhRZLRHkYf1+ua61xSX0MnVhTwhoye/7cmZfqnzJn3nS7IVAcVX0VkWs5S/Cuz8Qk0
 bqjqwlMN+HJ1hYkLBoGQpM0CQr4Nv5EBC/j5U2Hyy1CG5oS7KK5rRfKHCDz1R/tHSi6v
 c9wbnZi68EIgkL6kFL+RBLpu6RkY7ygXas5E8QlCRrKzVIzanOg0WJwOwPnRAUMuLfIQ
 i3HxL5d8kS6YMzcm1CG2ngHM4V7u5c7npjDurc2+Wh6ssJdN/2pq74S0m/7kkICtSxLc
 ++iNzzrrSYwyrYyzASvaspGXD8T52nYrMiML5G2zryibzQKwIk7ReHFXBTPE6nnFxwyH
 UOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pX1c7tkbngEdLSc5QrF58zs+4v7cOoVg7+Xo847yIwg=;
 b=gpZbCsgTZcI86vfVuq7Nn4za84EPDq5FhJGXuBrsppCyypmxur4wZKXUKAY127d00q
 qbqd6eEZ1thHePYmnhWn+m8gGU14fbE+ZBR2LgmQbPXPOZtnuQEgepXNP8IwFOJLVSAP
 nZhhskVi4iXB5Zlq85AB0UMB6PF87p2SYjW0dj+tEJVO1GLf3FC8sSPnbR+OoCV6LoJr
 4/IsGCn59i4N2i4dwyzFxQVrZdBnsTFI1/pXXOZvUXFJycvJhsEloubph/iHPnS/v5EJ
 zvRBtk1ASi1Nc9N9DAF3PLdqVRH5INu3Ce+PZzNnYLkyLYXKwSVxPOr2NbBTZwxRH1Yq
 d6Cw==
X-Gm-Message-State: AJIora9YUvrvuApmxGX9ByzESbLW5UrTnbLVLugm+cH7jBigtYLSEiUd
 yRab5IflsiEpVFp24nCuXyo=
X-Google-Smtp-Source: AGRyM1v0wqNB7P0bE6b7zHd7nJIv/2p0KkO77B5JXnU5bRx+5kEidyTZ7dNKcjAbwxDLXeOPinMUxw==
X-Received: by 2002:a05:6402:3314:b0:43a:47e6:3f1 with SMTP id
 e20-20020a056402331400b0043a47e603f1mr25198186eda.270.1657131199145; 
 Wed, 06 Jul 2022 11:13:19 -0700 (PDT)
Received: from skbuf ([188.26.185.61]) by smtp.gmail.com with ESMTPSA id
 g26-20020a056402115a00b0043a52eda27esm7715964edw.9.2022.07.06.11.13.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jul 2022 11:13:18 -0700 (PDT)
Date: Wed, 6 Jul 2022 21:13:16 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>,
 Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220706181316.r5l5rzjysxow2j7l@skbuf>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
 <86v8tu7za3.fsf@gmail.com>
 <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

Hi Nikolay,

On Wed, May 25, 2022 at 01:18:49PM +0300, Nikolay Aleksandrov wrote:
> >>>>>> Hi Hans,
> >>>>>> So this approach has a fundamental problem, f->dst is changed without any synchronization
> >>>>>> you cannot rely on it and thus you cannot account for these entries properly. We must be very
> >>>>>> careful if we try to add any new synchronization not to affect performance as well.
> >>>>>> More below...
> >>>>>>
> >>>>>>> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
> >>>>>>>  	if (test_bit(BR_FDB_STATIC, &f->flags))
> >>>>>>>  		fdb_del_hw_addr(br, f->key.addr.addr);
> >>>>>>>  
> >>>>>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
> >>>>>>> +		atomic_dec(&f->dst->locked_entry_cnt);
> >>>>>>
> >>>>>> Sorry but you cannot do this for multiple reasons:
> >>>>>>  - f->dst can be NULL
> >>>>>>  - f->dst changes without any synchronization
> >>>>>>  - there is no synchronization between fdb's flags and its ->dst
> >>>>>>
> >>>>>> Cheers,
> >>>>>>  Nik
> >>>>>
> >>>>> Hi Nik,
> >>>>>
> >>>>> if a port is decoupled from the bridge, the locked entries would of
> >>>>> course be invalid, so maybe if adding and removing a port is accounted
> >>>>> for wrt locked entries and the count of locked entries, would that not
> >>>>> work?
> >>>>>
> >>>>> Best,
> >>>>> Hans
> >>>>
> >>>> Hi Hans,
> >>>> Unfortunately you need the correct amount of locked entries per-port if you want
> >>>> to limit their number per-port, instead of globally. So you need a
> >>>> consistent
> >>>
> >>> Hi Nik,
> >>> the used dst is a port structure, so it is per-port and not globally.
> >>>
> >>> Best,
> >>> Hans
> >>>
> >>
> >> Yeah, I know. :) That's why I wrote it, if the limit is not a feature requirement I'd suggest
> >> dropping it altogether, it can be enforced externally (e.g. from user-space) if needed.
> >>
> >> By the way just fyi net-next is closed right now due to merge window. And one more
> >> thing please include a short log of changes between versions when you send a new one.
> >> I had to go look for v2 to find out what changed.
> >>
> > 
> > Okay, I will drop the limit in the bridge module, which is an easy thing
> > to do. :) (It is mostly there to ensure against DOS attacks if someone
> > bombards a locked port with random mac addresses.)
> > I have a similar limitation in the driver, which should then probably be
> > dropped too?
> > 
> 
> That is up to you/driver, I'd try looking for similar problems in other switch drivers
> and check how those were handled. There are people in the CC above that can
> directly answer that. :)

Not sure whom you're referring to?

In fact I was pretty sure that I didn't see any OOM protection in the
source code of the Linux bridge driver itself either, so I wanted to
check that for myself, so I wrote a small "killswitch" program that's
supposed to, well, kill a switch. It took me a while to find a few free
hours to do the test, sorry for that.

https://github.com/vladimiroltean/killswitch/blob/master/src/killswitch.c

Sure enough, I can kill a Marvell Armada 3720 device with 1GB of RAM
within 3 minutes of running the test program.

[  273.864203] ksoftirqd/0: page allocation failure: order:0, mode:0x40a20(GFP_ATOMIC|__GFP_COMP), nodemask=(null),cpuset=/,mems_allowed=0
[  273.876426] CPU: 0 PID: 12 Comm: ksoftirqd/0 Not tainted 5.18.7-rc1-00013-g52b92343db13 #74
[  273.884775] Hardware name: CZ.NIC Turris Mox Board (DT)
[  273.889994] Call trace:
[  273.892437]  dump_backtrace.part.0+0xc8/0xd4
[  273.896721]  show_stack+0x18/0x70
[  273.900039]  dump_stack_lvl+0x68/0x84
[  273.903703]  dump_stack+0x18/0x34
[  273.907017]  warn_alloc+0x114/0x1a0
[  273.910508]  __alloc_pages+0xbb0/0xbe0
[  273.914257]  cache_grow_begin+0x60/0x300
[  273.918183]  fallback_alloc+0x184/0x220
[  273.922017]  ____cache_alloc_node+0x174/0x190
[  273.926373]  kmem_cache_alloc+0x1a4/0x220
[  273.930381]  fdb_create+0x40/0x430
[  273.933784]  br_fdb_update+0x198/0x210
[  273.937532]  br_handle_frame_finish+0x244/0x530
[  273.942063]  br_handle_frame+0x1c0/0x270
[  273.945986]  __netif_receive_skb_core.constprop.0+0x29c/0xd30
[  273.951734]  __netif_receive_skb_list_core+0xe8/0x210
[  273.956784]  netif_receive_skb_list_internal+0x180/0x29c
[  273.962091]  napi_gro_receive+0x174/0x190
[  273.966099]  mvneta_rx_swbm+0x6b8/0xb40
[  273.969935]  mvneta_poll+0x684/0x900
[  273.973506]  __napi_poll+0x38/0x18c
[  273.976988]  net_rx_action+0xe8/0x280
[  273.980643]  __do_softirq+0x124/0x2a0
[  273.984299]  run_ksoftirqd+0x4c/0x60
[  273.987871]  smpboot_thread_fn+0x23c/0x270
[  273.991963]  kthread+0x10c/0x110
[  273.995188]  ret_from_fork+0x10/0x20

(followed by lots upon lots of vomiting, followed by ...)

[  311.138590] Out of memory and no killable processes...
[  311.143774] Kernel panic - not syncing: System is deadlocked on memory
[  311.150295] CPU: 0 PID: 6 Comm: kworker/0:0 Not tainted 5.18.7-rc1-00013-g52b92343db13 #74
[  311.158550] Hardware name: CZ.NIC Turris Mox Board (DT)
[  311.163766] Workqueue: events rht_deferred_worker
[  311.168477] Call trace:
[  311.170916]  dump_backtrace.part.0+0xc8/0xd4
[  311.175188]  show_stack+0x18/0x70
[  311.178501]  dump_stack_lvl+0x68/0x84
[  311.182159]  dump_stack+0x18/0x34
[  311.185466]  panic+0x168/0x328
[  311.188515]  out_of_memory+0x568/0x584
[  311.192261]  __alloc_pages+0xb04/0xbe0
[  311.196006]  __alloc_pages_bulk+0x15c/0x604
[  311.200185]  alloc_pages_bulk_array_mempolicy+0xbc/0x24c
[  311.205491]  __vmalloc_node_range+0x238/0x550
[  311.209843]  __vmalloc_node_range+0x1c0/0x550
[  311.214195]  kvmalloc_node+0xe0/0x124
[  311.217856]  bucket_table_alloc.isra.0+0x40/0x150
[  311.222554]  rhashtable_rehash_alloc.isra.0+0x20/0x8c
[  311.227599]  rht_deferred_worker+0x7c/0x540
[  311.231775]  process_one_work+0x1d0/0x320
[  311.235779]  worker_thread+0x70/0x440
[  311.239435]  kthread+0x10c/0x110
[  311.242661]  ret_from_fork+0x10/0x20
[  311.246238] SMP: stopping secondary CPUs
[  311.250161] Kernel Offset: disabled
[  311.253642] CPU features: 0x000,00020009,00001086
[  311.258338] Memory Limit: none
[  311.261390] ---[ end Kernel panic - not syncing: System is deadlocked on memory ]---

That can't be quite alright? Shouldn't we have some sort of protection
in the bridge itself too, not just tell hardware driver writers to deal
with it? Or is it somewhere, but it needs to be enabled/configured?
