Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D261C4E5029
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 11:16:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23A14849B0;
	Wed, 23 Mar 2022 10:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L8v0IBSuF_7w; Wed, 23 Mar 2022 10:16:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7E4D1849B1;
	Wed, 23 Mar 2022 10:16:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 47842C0073;
	Wed, 23 Mar 2022 10:16:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC3BBC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA4DE41908
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o2XGWww6Zo22 for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 10:16:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12BA741906
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 10:16:46 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id x34so1225548ede.8
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 03:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZKZgJV4GC9xGEIlfzshMoCdAQMdiXn2rDfscno1TubQ=;
 b=aBrNChj78Oc4I8xD0ZMbS+VO4sBtz26t6Nd+xP9MfFXKkPsiB/l7qjWZ0nudoelSAK
 1QUlFr2TMAOgt3nnZiEb+Ts/K365LL7vzPtDO0WmdgKE1AMufYd4dO93CDFWALOU2zIC
 9EKtzTp/+kQ3KUlUtO+5lQ6XVQqi6rjOIrearEFDryiZpof2kT6pYvn9gxAtf8pYvUQG
 5v82fG0lnc06nJdnFT4UiFslCDSq+duB+Veop3nwlqd3Grf4TAI9nyVuMhl3H6bor7Sp
 oPqcx6o9RBaijMrgmrFnIfBclgD9/YBv994AG8bhgT274PwaJ2kubAFhIuiHFoZzvkKo
 pFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZKZgJV4GC9xGEIlfzshMoCdAQMdiXn2rDfscno1TubQ=;
 b=Oz0MIPbWSN9iI9S+DQhK8Ko80h5Gr3Sng1suP7MEhe7QKunCG+MhBG3rjZQY3DXs2F
 +6TyUlI1wFV/Cs65c3HuyBTTx6Pk5I4MZernUbiq99veRgdZoCdjGcSLiKOgrP01Yp7m
 7i8lwf/dRq4KON591Hgy8p0z187HOYky13rShtS5cXMPCaohVWJUsJyDqUP9sZl5ozph
 z2vsvxkUwSed/23DCNqy+NxdlqTbyI9d+MIKutuIgasd8M8KZVy39RXCIyfRkFP3j0f5
 foBEzcTUqNIMqrDHVvx6RvOx4htI2jX345I12p4//wQ5nRqGeiauh0JXk6AVCTJb8slA
 iM7g==
X-Gm-Message-State: AOAM531yu2+O9HC1+K7tpgIRdQmHROVXsn8yaID5Ek3l4J6urSQauwMr
 nXolRken66RaCfOveVIZUFzytCatUXs=
X-Google-Smtp-Source: ABdhPJy3i8eh06rnBx6JiEKkwZ+VLalCP/MotS2slHhsBrTTRJ39l4k1Q4orQtxWVE24RG+jTTGPwQ==
X-Received: by 2002:a05:6402:c81:b0:410:a329:e27a with SMTP id
 cm1-20020a0564020c8100b00410a329e27amr34321304edb.142.1648030605082; 
 Wed, 23 Mar 2022 03:16:45 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 u5-20020a170906b10500b006ce6fa4f510sm9634623ejy.165.2022.03.23.03.16.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 03:16:44 -0700 (PDT)
Date: Wed, 23 Mar 2022 12:16:43 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220323101643.kum3nuqctunakcfo@skbuf>
References: <20220317161808.psftauoz5iaecduy@skbuf> <8635jg5xe5.fsf@gmail.com>
 <20220317172013.rhjvknre5w7mfmlo@skbuf> <86tubvk24r.fsf@gmail.com>
 <20220318121400.sdc4guu5m4auwoej@skbuf> <86pmmjieyl.fsf@gmail.com>
 <20220318131943.hc7z52beztqlzwfq@skbuf> <86a6dixnd2.fsf@gmail.com>
 <20220322110806.kbdb362jf6pbtqaf@skbuf> <86fsn90ye8.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86fsn90ye8.fsf@gmail.com>
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

On Wed, Mar 23, 2022 at 11:13:51AM +0100, Hans Schultz wrote:
> On tis, mar 22, 2022 at 13:08, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Tue, Mar 22, 2022 at 12:01:13PM +0100, Hans Schultz wrote:
> >> On fre, mar 18, 2022 at 15:19, Vladimir Oltean <olteanv@gmail.com> wrote:
> >> > On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
> >> >> In the offloaded case there is no difference between static and dynamic
> >> >> flags, which I see as a general issue. (The resulting ATU entry is static
> >> >> in either case.)
> >> >
> >> > It _is_ a problem. We had the same problem with the is_local bit.
> >> > Independently of this series, you can add the dynamic bit to struct
> >> > switchdev_notifier_fdb_info and make drivers reject it.
> >> >
> >> >> These FDB entries are removed when link goes down (soft or hard). The
> >> >> zero DPV entries that the new code introduces age out after 5 minutes,
> >> >> while the locked flagged FDB entries are removed by link down (thus the
> >> >> FDB and the ATU are not in sync in this case).
> >> >
> >> > Ok, so don't let them disappear from hardware, refresh them from the
> >> > driver, since user space and the bridge driver expect that they are
> >> > still there.
> >> 
> >> I have now tested with two extra unmanaged switches (each connected to a
> >> seperate port on our managed switch, and when migrating from one port to
> >> another, there is member violations, but as the initial entry ages out,
> >> a new miss violation occurs and the new port adds the locked entry. In
> >> this case I only see one locked entry, either on the initial port or
> >> later on the port the host migrated to (via switch).
> >> 
> >> If I refresh the ATU entries indefinitly, then this migration will for
> >> sure not work, and with the member violation suppressed, it will be
> >> silent about it.
> >
> > Manual says that migrations should trigger miss violations if configured
> > adequately, is this not the case?
> >
> >> So I don't think it is a good idea to refresh the ATU entries
> >> indefinitely.
> >> 
> >> Another issue I see, is that there is a deadlock or similar issue when
> >> receiving violations and running 'bridge fdb show' (it seemed that
> >> member violations also caused this, but not sure yet...), as the unit
> >> freezes, not to return...
> >
> > Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
> > like that?
> 
> I have now determined that it is the rtnl_lock() that causes the
> "deadlock". The doit() in rtnetlink.c is under rtnl_lock() and is what
> takes care of getting the fdb entries when running 'bridge fdb show'. In
> principle there should be no problem with this, but I don't know if some
> interrupt queue is getting jammed as they are blocked from rtnetlink.c?

Sorry, I forgot to respond yesterday to this.
By any chance do you maybe have an AB/BA lock inversion, where from the
ATU interrupt handler you do mv88e6xxx_reg_lock() -> rtnl_lock(), while
from the port_fdb_dump() handler you do rtnl_lock() -> mv88e6xxx_reg_lock()?
