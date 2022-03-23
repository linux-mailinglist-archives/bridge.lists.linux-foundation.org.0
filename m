Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8C84E5134
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 12:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7A334168E;
	Wed, 23 Mar 2022 11:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQBJK-N48leL; Wed, 23 Mar 2022 11:21:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6CF73415EA;
	Wed, 23 Mar 2022 11:21:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2D6C8C0073;
	Wed, 23 Mar 2022 11:21:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E31F2C000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D25EA84964
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BcjLXpuCy0xO for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 11:21:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76C328484D
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:21:20 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id o10so2188250ejd.1
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 04:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=87E72TCYXIHs+TxIG+l3uw9PKroKBbtdliBk27X7cqU=;
 b=mZuOPUC1JPNEyLejK7a7msjQdh9oyGwx2iT5PQH8gXq9SYl5RA1ogmBF8TJrWyPBsO
 0d4YI6s3it4uHjEO5v9MjyYDck6aKZ2ASjWnL73UagE8pP5Ber56NrCV2wpa23Vg9d7t
 3jooRkr6m/d/Pu8ModCXLY3UP+ZFHuAk+2Z/MgM1meqKYV80Czohn5b+yeiXqWJKvZf6
 9uuVrJvCLgRvgWwjy7ZyscxLwlxsnSdAHYg9NhSmWVULxmAu1KQhafhnjW78XVw0oF1O
 n6XCZZLLGVcODUjD//HRBnnYjzdRyCklW+S1zt+anW3LanIPnNkF7Qt4qihcAZSBv6uX
 69aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=87E72TCYXIHs+TxIG+l3uw9PKroKBbtdliBk27X7cqU=;
 b=s7GNUNw0kGfM0ERuOMGcIC8PpH5GdvCN6dyDjNhS3OLVFpp/3zFloSoEqyKXdNWhFe
 6FFFdiUI7N+RFqHh7CM5VwsFdepEtHVFYXw8xOif00AcCaWhTfWjmAJR89GrK8O+7Tw8
 tkO2GI4OOnZRkcHXlpM1NJX7RY8Bp5839Ah/VoEznnoA3R7M9SbSH/1+2t62xC3ZXGeF
 NDU/GnmGsKOfJFe9Up3HG4D4OAHUXUvFQyv1vxFXdAwvHjqqkVkTluz6WNEcMMMVgR45
 JvbM1NjHX9wgS9jJYw5BdqWNRD982wrAXCG86NpjHD+Fpcuv9h4Fj7QeOib1I6oBoOJp
 DxeA==
X-Gm-Message-State: AOAM530EdvSaSPmA6bN9QeEyHX6eHYGgo9w11ZFLuBJ/pidX2tuB47bu
 nvXQ/PFmMUes/WAN7mgHxB0=
X-Google-Smtp-Source: ABdhPJybO4BiYPAi/fg3VFIMEzE591UHnNC3gbe30chy4gmV4funJuWxJSRkeJ/Zs57SqVYNE2lZng==
X-Received: by 2002:a17:906:c214:b0:6b3:d0d6:9fe6 with SMTP id
 d20-20020a170906c21400b006b3d0d69fe6mr30833372ejz.150.1648034478453; 
 Wed, 23 Mar 2022 04:21:18 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 og49-20020a1709071df100b006db0dcf673esm9856923ejc.27.2022.03.23.04.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 04:21:18 -0700 (PDT)
Date: Wed, 23 Mar 2022 13:21:16 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220323112116.q6shx2g4r23ungtc@skbuf>
References: <20220317172013.rhjvknre5w7mfmlo@skbuf> <86tubvk24r.fsf@gmail.com>
 <20220318121400.sdc4guu5m4auwoej@skbuf> <86pmmjieyl.fsf@gmail.com>
 <20220318131943.hc7z52beztqlzwfq@skbuf> <86a6dixnd2.fsf@gmail.com>
 <20220322110806.kbdb362jf6pbtqaf@skbuf> <86fsn90ye8.fsf@gmail.com>
 <20220323101643.kum3nuqctunakcfo@skbuf> <864k3p5437.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <864k3p5437.fsf@gmail.com>
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

On Wed, Mar 23, 2022 at 11:57:16AM +0100, Hans Schultz wrote:
> >> >> Another issue I see, is that there is a deadlock or similar issue when
> >> >> receiving violations and running 'bridge fdb show' (it seemed that
> >> >> member violations also caused this, but not sure yet...), as the unit
> >> >> freezes, not to return...
> >> >
> >> > Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
> >> > like that?
> >> 
> >> I have now determined that it is the rtnl_lock() that causes the
> >> "deadlock". The doit() in rtnetlink.c is under rtnl_lock() and is what
> >> takes care of getting the fdb entries when running 'bridge fdb show'. In
> >> principle there should be no problem with this, but I don't know if some
> >> interrupt queue is getting jammed as they are blocked from rtnetlink.c?
> >
> > Sorry, I forgot to respond yesterday to this.
> > By any chance do you maybe have an AB/BA lock inversion, where from the
> > ATU interrupt handler you do mv88e6xxx_reg_lock() -> rtnl_lock(), while
> > from the port_fdb_dump() handler you do rtnl_lock() -> mv88e6xxx_reg_lock()?
> 
> If I release the mv88e6xxx_reg_lock() before calling the handler, I need
> to get it again for the mv88e6xxx_g1_atu_loadpurge() call at least. But
> maybe the vtu_walk also needs the mv88e6xxx_reg_lock()?
> I could also just release the mv88e6xxx_reg_lock() before the
> call_switchdev_notifiers() call and reacquire it immediately after?

The cleanest way to go about this would be to have the call_switchdev_notifiers()
portion of the ATU interrupt handling at the very end of mv88e6xxx_g1_atu_prob_irq_thread_fn(),
with no hardware access needed, and therefore no reg_lock() held.
