Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483F84E5184
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 12:43:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 477C440256;
	Wed, 23 Mar 2022 11:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwym7KK4Tfc3; Wed, 23 Mar 2022 11:43:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9E2BE40354;
	Wed, 23 Mar 2022 11:43:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 569F0C0073;
	Wed, 23 Mar 2022 11:43:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60150C000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46DEA40354
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0or7WXiZPxvy for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 11:43:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C83B540256
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:43:08 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id bn33so1433758ljb.6
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 04:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=GUNacRM0Kzot4Ci3+9/rQiAP6HGdFO8cNfIKSh2/JpE=;
 b=Jdm0puZZ/Q6dFz353KCoDZvifEBG6tzHxW6igmTgxd+obwpPQAudDXwNknS/hhz/dn
 qCVif8Hnrp91CoRN93+vhhSXQr3O0aViX2rpkgbxco2CgKXm4vcj3xV/rB7waIx9ztsB
 R0mmMVc818zGQV6acVGBsI2XRGtQi23j0NZdJQ3tP5uOe3ghbIsHipM4baigfeZK+Sfz
 9sAsxvFUgiFl3NTSys9UjwoH0U+wR2PDNR7Z1KBKZCVkk4oU810jgtSTRDxyYTPoLCQd
 Dlvwu7iShS+Uf6N70yehFjkjjuL8gZFZjRNybtYbtHRcPvurxM4JhK/VMh4Hvuhcn2/e
 dgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=GUNacRM0Kzot4Ci3+9/rQiAP6HGdFO8cNfIKSh2/JpE=;
 b=baSQSK90c7nJ8JuUdZjikUCmVAMMGxEYAi099XWefKx0vynsZmK3SeR/jV6hxRBcs5
 rCUG5oiIexCbNhAj0yeGggeGUiNy4ZEtbZhORfv0Jc9fH4tSW9yrOKX6gGj4ig4QyBOr
 GVeh3+Y34ZCuFzFx3/TjD1JroL8Zcjd/JNxpFNdogV+01YinJ27zdd2MrJrQQJ3loxe2
 Yd7ZJcKaw8lK2qnMlx9NlQjRa77brqKuFyLk2f1ex/fXYerjZP0m32QyKBKKYysxO9Yk
 rY+eIfoEG0hYjxX3Lfe1zXRPiOGcAFVoG+cfXj6yaUjLhjXCbdiE9S66Yft6zCs/d5Eq
 tPiA==
X-Gm-Message-State: AOAM530bv8mWBnQvww/VpOwv4EdI9R4K4KHECMQVG+KboC9N5v5KgFnR
 vGY/gHppQu1CoD5OeCy+vR7DHuyUFAflsw==
X-Google-Smtp-Source: ABdhPJykafU9a03wA5avbF9HT0x528x5zTqhH1AL31w9rXO/uO4pFDwD6bruH4dLIxrv5tOUpAMGvQ==
X-Received: by 2002:a2e:7d18:0:b0:247:f205:96fa with SMTP id
 y24-20020a2e7d18000000b00247f20596famr23072028ljc.269.1648035786533; 
 Wed, 23 Mar 2022 04:43:06 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 k2-20020a056512330200b0044a096ea7absm2008256lfe.54.2022.03.23.04.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 04:43:06 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220323112116.q6shx2g4r23ungtc@skbuf>
References: <20220317172013.rhjvknre5w7mfmlo@skbuf>
 <86tubvk24r.fsf@gmail.com> <20220318121400.sdc4guu5m4auwoej@skbuf>
 <86pmmjieyl.fsf@gmail.com> <20220318131943.hc7z52beztqlzwfq@skbuf>
 <86a6dixnd2.fsf@gmail.com> <20220322110806.kbdb362jf6pbtqaf@skbuf>
 <86fsn90ye8.fsf@gmail.com> <20220323101643.kum3nuqctunakcfo@skbuf>
 <864k3p5437.fsf@gmail.com> <20220323112116.q6shx2g4r23ungtc@skbuf>
Date: Wed, 23 Mar 2022 12:43:03 +0100
Message-ID: <86tuboao8o.fsf@gmail.com>
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

On ons, mar 23, 2022 at 13:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 11:57:16AM +0100, Hans Schultz wrote:
>> >> >> Another issue I see, is that there is a deadlock or similar issue when
>> >> >> receiving violations and running 'bridge fdb show' (it seemed that
>> >> >> member violations also caused this, but not sure yet...), as the unit
>> >> >> freezes, not to return...
>> >> >
>> >> > Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
>> >> > like that?
>> >> 
>> >> I have now determined that it is the rtnl_lock() that causes the
>> >> "deadlock". The doit() in rtnetlink.c is under rtnl_lock() and is what
>> >> takes care of getting the fdb entries when running 'bridge fdb show'. In
>> >> principle there should be no problem with this, but I don't know if some
>> >> interrupt queue is getting jammed as they are blocked from rtnetlink.c?
>> >
>> > Sorry, I forgot to respond yesterday to this.
>> > By any chance do you maybe have an AB/BA lock inversion, where from the
>> > ATU interrupt handler you do mv88e6xxx_reg_lock() -> rtnl_lock(), while
>> > from the port_fdb_dump() handler you do rtnl_lock() -> mv88e6xxx_reg_lock()?
>> 
>> If I release the mv88e6xxx_reg_lock() before calling the handler, I need
>> to get it again for the mv88e6xxx_g1_atu_loadpurge() call at least. But
>> maybe the vtu_walk also needs the mv88e6xxx_reg_lock()?
>> I could also just release the mv88e6xxx_reg_lock() before the
>> call_switchdev_notifiers() call and reacquire it immediately after?
>
> The cleanest way to go about this would be to have the call_switchdev_notifiers()
> portion of the ATU interrupt handling at the very end of mv88e6xxx_g1_atu_prob_irq_thread_fn(),
> with no hardware access needed, and therefore no reg_lock() held.

So something like?
	mv88e6xxx_reg_unlock(chip);
	rtnl_lock();
	err = call_switchdev_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, brport, &info.info, NULL);
	rtnl_unlock();
	mv88e6xxx_reg_lock(chip);
