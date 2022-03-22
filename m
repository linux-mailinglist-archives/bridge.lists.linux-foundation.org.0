Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BD54E3D33
	for <lists.bridge@lfdr.de>; Tue, 22 Mar 2022 12:08:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17864611E3;
	Tue, 22 Mar 2022 11:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vvm7fObxJr4Y; Tue, 22 Mar 2022 11:08:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A08AC611DD;
	Tue, 22 Mar 2022 11:08:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5BB0FC0082;
	Tue, 22 Mar 2022 11:08:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 924D0C000B
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 11:08:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8700940133
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 11:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlwXvsfrx9Rc for <bridge@lists.linux-foundation.org>;
 Tue, 22 Mar 2022 11:08:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B00A401FB
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 11:08:10 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id g20so21210904edw.6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 04:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9ZYK2bO0oPIhpErMM+q2xzW2Mm6s9oaP61Irqyq44+o=;
 b=Nvd7dfWXP+MA7dn8CeB7ApslVwt7Ch4qLfscmiSOHeFbaOF9/tK1poS1ifcMe3ghNg
 DnCEz0wXmVONAozXAWG/QpUZ4hiqnzDPu35fl+Oht/1JY2MNekzvFurIZPRK9t/7rxZS
 jQDTi9f0zRetFMQRsN1rLdQSRxaaGPNqka4iqCdbRHdX/PjP+gv6AxOPBUGud1P0psXO
 BCooV9cbBp7iFmg4K8E0k9YVVMJWkK8r3oJTpljeWkfSp9Y9W+mb7xk88H/CNd5BtcM3
 SSlFK/VVUIZV5bVyZBvk+zDc7RNpT/k+MCpku+Wej43wkkN4k2xU3ruiYTp8mggUiK4h
 ez/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9ZYK2bO0oPIhpErMM+q2xzW2Mm6s9oaP61Irqyq44+o=;
 b=JaiDcw9H6zHH7uPz8IK5jXlT0s5Fjsd91BQfSIJrTAWxz8GWhWkCFNRz9EyuQkclvl
 L9AovozTC2dGL6CXhM/kU4+ktrOq39XEUCh3H7z3JUmruSy4eFGMMNtsoN/bSkg9N69z
 uaRqut6Bj7yvoKplNsaH9UcaFnoqbLHPJAtUGX2eZd8bEQDnZzKnvb87oAzadRzZ8Smw
 zPJ4gQ3PPVr5gly0JRbLHuiWozOu0PXX6uwYNFUYIzUm0hE5/3FGGw+/yJ/bAhcWGj5Y
 uZLxxC4oNFTvC1dYRZfkezk3FK/lVtLVMChVrEQvMpfLDE07/RV12oKBCfe5S8EIH+JT
 sKGA==
X-Gm-Message-State: AOAM532JHGLv6WKqupeP6Y6pp/5tpF5AkKuaUPsNKUeyF6NieJcwji+g
 IQaVMLrIRREajVV+ZJlMbio=
X-Google-Smtp-Source: ABdhPJxwzHI14us8PNdJyGZCDFh1poffoPsaBjmk5C1HtrUqXOCt2KvM/2Sr02yEmj1OjpVrpDyDEQ==
X-Received: by 2002:a05:6402:168a:b0:3fb:600e:4cc3 with SMTP id
 a10-20020a056402168a00b003fb600e4cc3mr27599944edv.32.1647947288419; 
 Tue, 22 Mar 2022 04:08:08 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 u9-20020a170906124900b006ce88a505a1sm8482338eja.179.2022.03.22.04.08.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 04:08:07 -0700 (PDT)
Date: Tue, 22 Mar 2022 13:08:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220322110806.kbdb362jf6pbtqaf@skbuf>
References: <20220317153625.2ld5zgtuhoxbcgvo@skbuf> <86ilscr2a4.fsf@gmail.com>
 <20220317161808.psftauoz5iaecduy@skbuf> <8635jg5xe5.fsf@gmail.com>
 <20220317172013.rhjvknre5w7mfmlo@skbuf> <86tubvk24r.fsf@gmail.com>
 <20220318121400.sdc4guu5m4auwoej@skbuf> <86pmmjieyl.fsf@gmail.com>
 <20220318131943.hc7z52beztqlzwfq@skbuf> <86a6dixnd2.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86a6dixnd2.fsf@gmail.com>
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

On Tue, Mar 22, 2022 at 12:01:13PM +0100, Hans Schultz wrote:
> On fre, mar 18, 2022 at 15:19, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
> >> In the offloaded case there is no difference between static and dynamic
> >> flags, which I see as a general issue. (The resulting ATU entry is static
> >> in either case.)
> >
> > It _is_ a problem. We had the same problem with the is_local bit.
> > Independently of this series, you can add the dynamic bit to struct
> > switchdev_notifier_fdb_info and make drivers reject it.
> >
> >> These FDB entries are removed when link goes down (soft or hard). The
> >> zero DPV entries that the new code introduces age out after 5 minutes,
> >> while the locked flagged FDB entries are removed by link down (thus the
> >> FDB and the ATU are not in sync in this case).
> >
> > Ok, so don't let them disappear from hardware, refresh them from the
> > driver, since user space and the bridge driver expect that they are
> > still there.
> 
> I have now tested with two extra unmanaged switches (each connected to a
> seperate port on our managed switch, and when migrating from one port to
> another, there is member violations, but as the initial entry ages out,
> a new miss violation occurs and the new port adds the locked entry. In
> this case I only see one locked entry, either on the initial port or
> later on the port the host migrated to (via switch).
> 
> If I refresh the ATU entries indefinitly, then this migration will for
> sure not work, and with the member violation suppressed, it will be
> silent about it.

Manual says that migrations should trigger miss violations if configured
adequately, is this not the case?

> So I don't think it is a good idea to refresh the ATU entries
> indefinitely.
> 
> Another issue I see, is that there is a deadlock or similar issue when
> receiving violations and running 'bridge fdb show' (it seemed that
> member violations also caused this, but not sure yet...), as the unit
> freezes, not to return...

Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
like that?
