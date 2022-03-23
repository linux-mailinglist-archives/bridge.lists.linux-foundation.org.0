Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A364E509C
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 11:47:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9D68419B9;
	Wed, 23 Mar 2022 10:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYdEPLPF3G2K; Wed, 23 Mar 2022 10:47:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 70FE6419F1;
	Wed, 23 Mar 2022 10:47:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 389FDC0073;
	Wed, 23 Mar 2022 10:47:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B7796C000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DA244028D
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ISVXY9kbsJq for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 10:46:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08BDC4012A
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:46:58 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id a26so1963264lfg.10
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 03:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Pu11LzVwuByfb36IZDoOrF20LUpwOjWGCIQG1Ta8jIk=;
 b=Ntiazh9dgiTE4IwJgyUwQMnIG/ORs4kK1bZSFbSQydrSo/iK8bqJMWdRu/tsA3bDqG
 IoTMbmyQGQKSwc7re78cg6+wSgvrdWFZKBtGnE1ELpFS90Cxutl6ccSGIHp0OYvyqOuM
 d/BLjJwBQrtiqW4AFg99q/dh4ZEhJ5cJbdwIphqhcP4LGkjrgw5YMKVgnazbiLXpnf7E
 Joyliu8uqdz9KbVNSLnjKhtNvl5TCLXC2pyj449YPVK+J3D/ymqYNhR/wukKVYDsfsmS
 eaPCjYt4cZxsI8AiV6likmQID2ZhEISyR/JVfS/4s+cQnwyb+DJe3c+S8J5ZI9yIes4c
 exYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Pu11LzVwuByfb36IZDoOrF20LUpwOjWGCIQG1Ta8jIk=;
 b=I8Uei27AxD5+ItYrMxFlN/hl1K1Jrc9Pqd3qWvGKqB9qWIyoGupVx975qk2T54Ac9R
 KDZwJksTba++BANdzXEb5mgWyOvmkM7uU33n+us4k56deuYFlecudOH85SI8Xi4niaU+
 FZicMyUf1ShT9XtBcjhC5VUP3qf/AK6HCWhenN5tf0EkvYVGtW53JbZuqi8j6GSNtcNb
 Bzmz5j6XhDRZ+NKZQMSWzZ2KbX7iNuMAZibwrOX56qKDYp/80OU9IMMwAhhtpWNpZDgW
 /DJK5nunJNDV+l9HhS5QmAyhx9J2fvq33lNGCEs1v4Pr3/H3nBDZouxp4Hwusf9eMLAZ
 InCQ==
X-Gm-Message-State: AOAM5307Jaqj+3tMgaJQnazVF57PGzBFR1kvjhAMB5+QJAg/pT6dBTdN
 WqRRijHBgjC1dijzBFioo4ymJ9LEckeHKA==
X-Google-Smtp-Source: ABdhPJwS+x43AwVdf/Sg4bgW4u+6IvcsrHVM8+aAaoQWmLJD4WKc4uQK5ia9Z5ZW/bb2U0c4Qv33gQ==
X-Received: by 2002:a05:6512:c23:b0:44a:2c00:1a08 with SMTP id
 z35-20020a0565120c2300b0044a2c001a08mr10346655lfu.468.1648032416918; 
 Wed, 23 Mar 2022 03:46:56 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm2495587lfa.62.2022.03.23.03.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 03:46:56 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220323101643.kum3nuqctunakcfo@skbuf>
References: <20220317161808.psftauoz5iaecduy@skbuf>
 <8635jg5xe5.fsf@gmail.com> <20220317172013.rhjvknre5w7mfmlo@skbuf>
 <86tubvk24r.fsf@gmail.com> <20220318121400.sdc4guu5m4auwoej@skbuf>
 <86pmmjieyl.fsf@gmail.com> <20220318131943.hc7z52beztqlzwfq@skbuf>
 <86a6dixnd2.fsf@gmail.com> <20220322110806.kbdb362jf6pbtqaf@skbuf>
 <86fsn90ye8.fsf@gmail.com> <20220323101643.kum3nuqctunakcfo@skbuf>
Date: Wed, 23 Mar 2022 11:46:53 +0100
Message-ID: <86h77px7xe.fsf@gmail.com>
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

On ons, mar 23, 2022 at 12:16, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 11:13:51AM +0100, Hans Schultz wrote:
>> On tis, mar 22, 2022 at 13:08, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Tue, Mar 22, 2022 at 12:01:13PM +0100, Hans Schultz wrote:
>> >> On fre, mar 18, 2022 at 15:19, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> > On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
>> >> >> In the offloaded case there is no difference between static and dynamic
>> >> >> flags, which I see as a general issue. (The resulting ATU entry is static
>> >> >> in either case.)
>> >> >
>> >> > It _is_ a problem. We had the same problem with the is_local bit.
>> >> > Independently of this series, you can add the dynamic bit to struct
>> >> > switchdev_notifier_fdb_info and make drivers reject it.
>> >> >
>> >> >> These FDB entries are removed when link goes down (soft or hard). The
>> >> >> zero DPV entries that the new code introduces age out after 5 minutes,
>> >> >> while the locked flagged FDB entries are removed by link down (thus the
>> >> >> FDB and the ATU are not in sync in this case).
>> >> >
>> >> > Ok, so don't let them disappear from hardware, refresh them from the
>> >> > driver, since user space and the bridge driver expect that they are
>> >> > still there.
>> >> 
>> >> I have now tested with two extra unmanaged switches (each connected to a
>> >> seperate port on our managed switch, and when migrating from one port to
>> >> another, there is member violations, but as the initial entry ages out,
>> >> a new miss violation occurs and the new port adds the locked entry. In
>> >> this case I only see one locked entry, either on the initial port or
>> >> later on the port the host migrated to (via switch).
>> >> 
>> >> If I refresh the ATU entries indefinitly, then this migration will for
>> >> sure not work, and with the member violation suppressed, it will be
>> >> silent about it.
>> >
>> > Manual says that migrations should trigger miss violations if configured
>> > adequately, is this not the case?
>> >
>> >> So I don't think it is a good idea to refresh the ATU entries
>> >> indefinitely.
>> >> 
>> >> Another issue I see, is that there is a deadlock or similar issue when
>> >> receiving violations and running 'bridge fdb show' (it seemed that
>> >> member violations also caused this, but not sure yet...), as the unit
>> >> freezes, not to return...
>> >
>> > Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
>> > like that?
>> 
>> I have now determined that it is the rtnl_lock() that causes the
>> "deadlock". The doit() in rtnetlink.c is under rtnl_lock() and is what
>> takes care of getting the fdb entries when running 'bridge fdb show'. In
>> principle there should be no problem with this, but I don't know if some
>> interrupt queue is getting jammed as they are blocked from rtnetlink.c?
>
> Sorry, I forgot to respond yesterday to this.
> By any chance do you maybe have an AB/BA lock inversion, where from the
> ATU interrupt handler you do mv88e6xxx_reg_lock() -> rtnl_lock(), while
> from the port_fdb_dump() handler you do rtnl_lock() -> mv88e6xxx_reg_lock()?

Yes, I forgot that the whole handler is under mv88e6xxx_reg_lock(). I
hope then that I can release the mv88e6xxx_reg_lock() before calling the
handler function with issues?
