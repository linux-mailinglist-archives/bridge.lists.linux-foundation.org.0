Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E724E423D
	for <lists.bridge@lfdr.de>; Tue, 22 Mar 2022 15:47:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14E4860F45;
	Tue, 22 Mar 2022 14:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1n-iz-vl0STG; Tue, 22 Mar 2022 14:47:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A2BDD60C33;
	Tue, 22 Mar 2022 14:47:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41529C0082;
	Tue, 22 Mar 2022 14:47:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 00F38C000B
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 14:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E246A60F45
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 14:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6eU-huiiZZq for <bridge@lists.linux-foundation.org>;
 Tue, 22 Mar 2022 14:47:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92CA960C33
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 14:47:10 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id k21so13688452lfe.4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 07:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Wb2ma3uVeIWnLHFtR3kKOKEIt80yrxzBwcG4cgGN60c=;
 b=mHSjbQq+OgyRwkqECYu3nqz5ujv01cV7cVXHUmooouQxNKsFWEUB4s48v5dviHz9Yd
 wBNrq5OIK0l2Lrh/4XmltSFrCs3Xvi7JTxfWj62cCOb0hQy0lSLzhCLOyuN881QCjJ+j
 YliwuttuJ4nuFGCdYsQoeawBMgz9neTb/DTmwE3WI//X98k9NoSvnmq9n9hl+DgR1RuU
 2EXvCywQEvcQK6VIKGAUFRHzLPUNy69o1hDrKTLjMsHVKCwS6WM6+xDX595GinO9ubbL
 URUnRL8fTTOM/Cc2Y1Wvf4akOeL6bE13ryIiTrDbw2TlyonSk2MmqzLNbJq9X/0Qc6jW
 3cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Wb2ma3uVeIWnLHFtR3kKOKEIt80yrxzBwcG4cgGN60c=;
 b=q6E1NhxudRCUwQwT0isRaqNn3eYSTd3qwIcJCCfy2ggF4Aipvs+RMmTGqowAqPfxEK
 IFcgwXMh/8bUi0lL6I1w5q862zXd8NhMzKo0flxFAXFY1IlIomqOqEXTTI4jZnFu8qK7
 pdnB62rlDmyRzFFy0hIeVGWyVXPAMzBPf6sFFGBEcSfrzzoZMx1e2O6EetDdXX8+qnDE
 2C42UhEbTFYKLi26z9OUwtDeI2XNVxo/xfjJzo5//30hhjXzft2IAox4WVTnQQLaaibs
 7eP7zcIkpbIV7WmLVvlCMbZuNwOOE5MV/FrLpqYOblElggMRo5oRWpe6BDsu1HOWvPeG
 ZrzA==
X-Gm-Message-State: AOAM531b3IrlCR4+uQq/wuZQhNXmCAVqlZRUxHrKmSWLrAHjkEepvCul
 yPnreIaS0cxVrEbFabw8uHM9mLsnOy9DhA==
X-Google-Smtp-Source: ABdhPJza5+qDIUgZlsYxL349CWJBQ13kC9g3HL7gLt26EQE8U0XWtKHGzDJSUk/i7YGp4UdGj6nfNw==
X-Received: by 2002:a05:6512:a8e:b0:44a:2db0:8045 with SMTP id
 m14-20020a0565120a8e00b0044a2db08045mr6747464lfu.30.1647960428432; 
 Tue, 22 Mar 2022 07:47:08 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 g2-20020a2ea4a2000000b0024983b1a8dcsm755478ljm.105.2022.03.22.07.47.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 07:47:07 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <86ee2ujf61.fsf@gmail.com>
References: <20220317153625.2ld5zgtuhoxbcgvo@skbuf>
 <86ilscr2a4.fsf@gmail.com> <20220317161808.psftauoz5iaecduy@skbuf>
 <8635jg5xe5.fsf@gmail.com> <20220317172013.rhjvknre5w7mfmlo@skbuf>
 <86tubvk24r.fsf@gmail.com> <20220318121400.sdc4guu5m4auwoej@skbuf>
 <86pmmjieyl.fsf@gmail.com> <20220318131943.hc7z52beztqlzwfq@skbuf>
 <86a6dixnd2.fsf@gmail.com> <20220322110806.kbdb362jf6pbtqaf@skbuf>
 <86ee2ujf61.fsf@gmail.com>
Date: Tue, 22 Mar 2022 15:47:05 +0100
Message-ID: <86r16u6o46.fsf@gmail.com>
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

On tis, mar 22, 2022 at 14:21, Hans Schultz <schultz.hans@gmail.com> wrote:
> On tis, mar 22, 2022 at 13:08, Vladimir Oltean <olteanv@gmail.com> wrote:
>> On Tue, Mar 22, 2022 at 12:01:13PM +0100, Hans Schultz wrote:
>>> On fre, mar 18, 2022 at 15:19, Vladimir Oltean <olteanv@gmail.com> wrote:
>>> > On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
>>> >> In the offloaded case there is no difference between static and dynamic
>>> >> flags, which I see as a general issue. (The resulting ATU entry is static
>>> >> in either case.)
>>> >
>>> > It _is_ a problem. We had the same problem with the is_local bit.
>>> > Independently of this series, you can add the dynamic bit to struct
>>> > switchdev_notifier_fdb_info and make drivers reject it.
>>> >
>>> >> These FDB entries are removed when link goes down (soft or hard). The
>>> >> zero DPV entries that the new code introduces age out after 5 minutes,
>>> >> while the locked flagged FDB entries are removed by link down (thus the
>>> >> FDB and the ATU are not in sync in this case).
>>> >
>>> > Ok, so don't let them disappear from hardware, refresh them from the
>>> > driver, since user space and the bridge driver expect that they are
>>> > still there.
>>> 
>>> I have now tested with two extra unmanaged switches (each connected to a
>>> seperate port on our managed switch, and when migrating from one port to
>>> another, there is member violations, but as the initial entry ages out,
>>> a new miss violation occurs and the new port adds the locked entry. In
>>> this case I only see one locked entry, either on the initial port or
>>> later on the port the host migrated to (via switch).
>>> 
>>> If I refresh the ATU entries indefinitly, then this migration will for
>>> sure not work, and with the member violation suppressed, it will be
>>> silent about it.
>>
>> Manual says that migrations should trigger miss violations if configured
>> adequately, is this not the case?
>>
> Yes, but that depends on the ATU entries ageing out. As it is now, it works.
>
>>> So I don't think it is a good idea to refresh the ATU entries
>>> indefinitely.
>>> 
>>> Another issue I see, is that there is a deadlock or similar issue when
>>> receiving violations and running 'bridge fdb show' (it seemed that
>>> member violations also caused this, but not sure yet...), as the unit
>>> freezes, not to return...

I have now verified that it is only on miss violations that the problem
occurs, so it seems that there is a deadlock (with 'bridge fdb show')
somehow with the nl lock that the handling of ATU miss violations
acquires.

>>
>> Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
>> like that?
>
> No, I haven't looked deeper into it yet. Maybe I was hoping someone had
> an idea... but I guess it cannot be a netlink deadlock?
