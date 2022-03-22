Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E20D4E3F65
	for <lists.bridge@lfdr.de>; Tue, 22 Mar 2022 14:22:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B95E81398;
	Tue, 22 Mar 2022 13:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgpbHOQiV6h3; Tue, 22 Mar 2022 13:22:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2607C842AC;
	Tue, 22 Mar 2022 13:22:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CEF0CC0082;
	Tue, 22 Mar 2022 13:22:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C498C000B
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 13:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 097A6842AC
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 13:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5e94F-ILXT6F for <bridge@lists.linux-foundation.org>;
 Tue, 22 Mar 2022 13:22:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3155981398
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 13:22:05 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id q5so23876074ljb.11
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 06:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=AjcCl508/3oBfoVa+HHFPodqa5oQijS6CmLfzMEJ/u4=;
 b=RbgTHNgJumkKhypcVJzqThV2d98m5yX0RD5BZKNJlLmXSNgMuLiLI24cCu53Me2Y41
 kFFJPAq2f+tJChxDH/EPhvnv5EnETOgWfdtGRGm2jijKSd2anzrZEG6GYmHaxxLEpNHE
 ki3QBs951g5pKa6JoS9uSl2NWDERGyfhhT3If/gClFoO0owTBcU+bW5dcSeiVNzrUQr+
 GYah0ydJN+vLiU7DBBSjo7XlkmcB64QodtXu7Bsssvb0CTNrkR9OhyyK1KDFj5eWVPF2
 pPfLPxmeUl/JtK3y93wMJRS2xBBYUgp6feZdgCppceRbeg881nn/wlcQSuETg3D0yCWL
 W3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=AjcCl508/3oBfoVa+HHFPodqa5oQijS6CmLfzMEJ/u4=;
 b=nTkRO6RZqgc2GqvuU8boki2yPBZAncTvOI/JuTi1ubBVEoqdy2gy2S2VV/mGUwLCGs
 ZHEQUs5TpOA9axX/0JYxSCK8Y0BvKGV2IGrXR19pp+iHIEE8BK9loTIxnop2RMNgb2N2
 iXEXNpc8zGHUBaK4rWZTBaynfmj0ypVvIhUv2pTsA05zC14Ce0rH5i6dbwtDKKtWPK+c
 p5KXIB5DI208RZ1bIIh5+FjokCfXhyaV/2lYsyOP5Lot/ztj3nEnSyy+cuPGh775nys5
 vBy/6l3BV9gPtkkLEbfMi/8Ctf8x+GUVH1IUIE/JNY1oYVEd3dHioy7rExIsCv1MbZa/
 xLdA==
X-Gm-Message-State: AOAM532ytjh1A8UGd1mwIyvFvkKLqswx5eqoMhovRZScxQsoWkE/328c
 r4GR2s1NmjIxsLAr4k88u2ggtHyQdriW7g==
X-Google-Smtp-Source: ABdhPJzFswqUOAuAWZ/WBTHRItFTQwUGjyxdjYGlpcmIQYC2z/Bnt3kcgiq8Zgmq2gEsp5Ka7wtgyQ==
X-Received: by 2002:a2e:bf04:0:b0:246:7ace:e157 with SMTP id
 c4-20020a2ebf04000000b002467acee157mr19388105ljr.241.1647955322452; 
 Tue, 22 Mar 2022 06:22:02 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 x11-20020a19e00b000000b004488bf4137esm2204467lfg.245.2022.03.22.06.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 06:22:01 -0700 (PDT)
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
Date: Tue, 22 Mar 2022 14:21:58 +0100
Message-ID: <86ee2ujf61.fsf@gmail.com>
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
Yes, but that depends on the ATU entries ageing out. As it is now, it works.

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

No, I haven't looked deeper into it yet. Maybe I was hoping someone had
an idea... but I guess it cannot be a netlink deadlock?
