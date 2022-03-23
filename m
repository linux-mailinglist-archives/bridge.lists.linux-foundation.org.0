Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7344E5021
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 11:14:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B13F41902;
	Wed, 23 Mar 2022 10:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oF4oOyZ10yUJ; Wed, 23 Mar 2022 10:14:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 18B5E40474;
	Wed, 23 Mar 2022 10:14:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9D45C0073;
	Wed, 23 Mar 2022 10:13:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 57D3CC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4701D40529
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K64D5XSrVB3r for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 10:13:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63EB040474
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:13:57 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id 5so1878590lfp.1
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 03:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=hLvX9In1jxN1MmiovYwJxjgsn4VqeCvwwYBZvBi7CO8=;
 b=Zf5pwO/z+b6zqpeN5dacXhHvcrf713zmafvc8sSy8t0z52u5r1uZRhyV4XZIRIwmbC
 x9n8Lqxv0rn1j4Nbm2QnMzECR8pvFJTiTByr1e3drc2Iq2NcfyvHfg0L8zdP/N2L8lJO
 vzobpHKPSZIJE5msoH0TE9nsoYQRU3+MUmXzi470pixY+ZU9XG0skAFJXWd300AP9qfr
 vllNF++PhJAARRziXJriMiGeMnSlZ924JgNJDW16l+7DdV0C9GF9n0NqZI3rzpfyLPXo
 Gt7+b+rHI0t6L9g7xL6ZsKc2lth/J6/rJBTHaZti4GGG6cH7za1zCFafr8a+2CJZ+4kc
 aBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=hLvX9In1jxN1MmiovYwJxjgsn4VqeCvwwYBZvBi7CO8=;
 b=kbYDUEyddz6DayJ7ENPiDueWAg8d/CsfGj81ksOTQFvhCrptxiQxxlMxzq8IGMRBoO
 JseaYg4rmKFdznNSL+7z3UEGAmC0UbYJbh6ArLKERk/yZlexL0Rk1LHnwqgQOw74iM4v
 mosm/gm0hWP9NCDfOZ9QdR88BBfALUoWfwmNnZ6t32oZ2FCAJPBIMlxsbELGyLfrAed8
 UTniZibBwKnH70WAjcX3rUH2KKecO87aHHNCgzbsaZcNVlYOuWBvTOQuuVGN5Lo0hd2j
 3VnNRufuvXbppq1kkSKiDUjs6QOm0kjjzCQpGr7kkjSbsqha6kyPHdMgV0r9NzxE0asv
 00Lg==
X-Gm-Message-State: AOAM530nypv16CcPb44ghTS5GT6VmaBoMOi2kIs9nvoxv60544JO9mwR
 HLRe3LSgB1pZ58MUnv3k+x5JrB8tJM0ECw==
X-Google-Smtp-Source: ABdhPJzYM1NapzxHCy1ebX8F9FoanQrXK+KeduV/abULBsUOa0ZN8ZAlyDoW0Fm24AVD44I00Czx2Q==
X-Received: by 2002:ac2:4c56:0:b0:44a:5592:9fe1 with SMTP id
 o22-20020ac24c56000000b0044a55929fe1mr838691lfk.162.1648030435054; 
 Wed, 23 Mar 2022 03:13:55 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 c20-20020a196554000000b0044a1181c527sm1714363lfj.9.2022.03.23.03.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 03:13:54 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220322110806.kbdb362jf6pbtqaf@skbuf>
References: <20220317153625.2ld5zgtuhoxbcgvo@skbuf>
 <86ilscr2a4.fsf@gmail.com> <20220317161808.psftauoz5iaecduy@skbuf>
 <8635jg5xe5.fsf@gmail.com> <20220317172013.rhjvknre5w7mfmlo@skbuf>
 <86tubvk24r.fsf@gmail.com> <20220318121400.sdc4guu5m4auwoej@skbuf>
 <86pmmjieyl.fsf@gmail.com> <20220318131943.hc7z52beztqlzwfq@skbuf>
 <86a6dixnd2.fsf@gmail.com> <20220322110806.kbdb362jf6pbtqaf@skbuf>
Date: Wed, 23 Mar 2022 11:13:51 +0100
Message-ID: <86fsn90ye8.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On tis, mar 22, 2022 at 13:08, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 22, 2022 at 12:01:13PM +0100, Hans Schultz wrote:
>> On fre, mar 18, 2022 at 15:19, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
>> >> In the offloaded case there is no difference between static and dynamic
>> >> flags, which I see as a general issue. (The resulting ATU entry is static
>> >> in either case.)
>> >
>> > It _is_ a problem. We had the same problem with the is_local bit.
>> > Independently of this series, you can add the dynamic bit to struct
>> > switchdev_notifier_fdb_info and make drivers reject it.
>> >
>> >> These FDB entries are removed when link goes down (soft or hard). The
>> >> zero DPV entries that the new code introduces age out after 5 minutes,
>> >> while the locked flagged FDB entries are removed by link down (thus the
>> >> FDB and the ATU are not in sync in this case).
>> >
>> > Ok, so don't let them disappear from hardware, refresh them from the
>> > driver, since user space and the bridge driver expect that they are
>> > still there.
>> 
>> I have now tested with two extra unmanaged switches (each connected to a
>> seperate port on our managed switch, and when migrating from one port to
>> another, there is member violations, but as the initial entry ages out,
>> a new miss violation occurs and the new port adds the locked entry. In
>> this case I only see one locked entry, either on the initial port or
>> later on the port the host migrated to (via switch).
>> 
>> If I refresh the ATU entries indefinitly, then this migration will for
>> sure not work, and with the member violation suppressed, it will be
>> silent about it.
>
> Manual says that migrations should trigger miss violations if configured
> adequately, is this not the case?
>
>> So I don't think it is a good idea to refresh the ATU entries
>> indefinitely.
>> 
>> Another issue I see, is that there is a deadlock or similar issue when
>> receiving violations and running 'bridge fdb show' (it seemed that
>> member violations also caused this, but not sure yet...), as the unit
>> freezes, not to return...
>
> Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
> like that?

I have now determined that it is the rtnl_lock() that causes the
"deadlock". The doit() in rtnetlink.c is under rtnl_lock() and is what
takes care of getting the fdb entries when running 'bridge fdb show'. In
principle there should be no problem with this, but I don't know if some
interrupt queue is getting jammed as they are blocked from rtnetlink.c?
