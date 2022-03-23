Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B767A4E51A6
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 12:54:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 607C0419B4;
	Wed, 23 Mar 2022 11:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KhQNhzqCZYWY; Wed, 23 Mar 2022 11:54:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F07B9403B4;
	Wed, 23 Mar 2022 11:54:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9422FC0073;
	Wed, 23 Mar 2022 11:54:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B1E9CC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AD2460E72
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htIOufzINKKE for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 11:54:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7591160E26
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 11:54:23 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id d10so2295146eje.10
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 04:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tjXHN/eiBOH25O5STfPTfLcMinZ5HpozLUsy3qwmmWQ=;
 b=In1lSLjOxNHM4lD+mv/8ysYHAWkl7ETBHGwMnp4xudlx8mi44elGLdb08B5eEJSRlu
 k+iECO8zs1svCZSfH4zbgyfFRAvnMe3vyv6q82h6/+/IXlukfE2oLslpiPBYzHaXtdkj
 kaLB+YrriT+JdvU/D3xm7ZTyiuPei5ti+aDRpHp+B1f7CWoQQ0QauEUpOqYkiMe+fkQy
 mD67albiSCRCVe0v1H3qySwvrUJsTgaRmiYcs1P5gXkIX1jRxChiFmcyN1ZWi06TxHRs
 64AnXEgUCSupTx+TEEBR/YUY227lWtixDt2APmAM7LPtMh/O/CepNNQlzPCYj4kfV1zH
 fk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tjXHN/eiBOH25O5STfPTfLcMinZ5HpozLUsy3qwmmWQ=;
 b=x3XzwmleVsZnJILOX/XbsBZT6fbAbvAgMoCpJejl2E+97aM7GHf1GkgJc5ZnNKFj91
 k/I86NhOpiHgVQ3KlbtQsnrwc8JmnCA9WuiJur6JoRzgzmYXfXWvKaegjrqubgfSF1XX
 /8QpNdrALksOlfiKUL+IT/4x+8yQscwMgV93hRX4iS7lFbHwz7xmTlQwfxeE+nTLgyK+
 XATBqVN+tlaxI0xkeW+XWgTFplK+cf5BFTOqzcsW7s4baTnEi291Uh2sZuX9O/x9grft
 TzzWUrbx8Rmz5bwZJhfx2pFLaj1qWl4jUy2UM0zUMWilHegCVSeVQPZEhAmhIJKa2TFq
 cPsg==
X-Gm-Message-State: AOAM530DKqa6jOOFXrpeFZ17q9c7AMXUe19U8xqzIKEaYyMjDjh9d6tI
 ayMi6gha8BUGJMYaj7tEFO8=
X-Google-Smtp-Source: ABdhPJzQdK6GZGqgS6tUs7KA2VUiibYqbOoA4gUyryiq0os00EyiyyvnXylRtnBUGjSvy1PZNlmCnQ==
X-Received: by 2002:a17:906:c211:b0:6ce:e221:4c21 with SMTP id
 d17-20020a170906c21100b006cee2214c21mr30817095ejz.691.1648036461593; 
 Wed, 23 Mar 2022 04:54:21 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 j17-20020a05640211d100b00419357a2647sm5517586edw.25.2022.03.23.04.54.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 04:54:20 -0700 (PDT)
Date: Wed, 23 Mar 2022 13:54:19 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220323115419.svxnbcqqd7pyargn@skbuf>
References: <20220318121400.sdc4guu5m4auwoej@skbuf> <86pmmjieyl.fsf@gmail.com>
 <20220318131943.hc7z52beztqlzwfq@skbuf> <86a6dixnd2.fsf@gmail.com>
 <20220322110806.kbdb362jf6pbtqaf@skbuf> <86fsn90ye8.fsf@gmail.com>
 <20220323101643.kum3nuqctunakcfo@skbuf> <864k3p5437.fsf@gmail.com>
 <20220323112116.q6shx2g4r23ungtc@skbuf> <86tuboao8o.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86tuboao8o.fsf@gmail.com>
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

On Wed, Mar 23, 2022 at 12:43:03PM +0100, Hans Schultz wrote:
> On ons, mar 23, 2022 at 13:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Wed, Mar 23, 2022 at 11:57:16AM +0100, Hans Schultz wrote:
> >> >> >> Another issue I see, is that there is a deadlock or similar issue when
> >> >> >> receiving violations and running 'bridge fdb show' (it seemed that
> >> >> >> member violations also caused this, but not sure yet...), as the unit
> >> >> >> freezes, not to return...
> >> >> >
> >> >> > Have you enabled lockdep, debug atomic sleep, detect hung tasks, things
> >> >> > like that?
> >> >> 
> >> >> I have now determined that it is the rtnl_lock() that causes the
> >> >> "deadlock". The doit() in rtnetlink.c is under rtnl_lock() and is what
> >> >> takes care of getting the fdb entries when running 'bridge fdb show'. In
> >> >> principle there should be no problem with this, but I don't know if some
> >> >> interrupt queue is getting jammed as they are blocked from rtnetlink.c?
> >> >
> >> > Sorry, I forgot to respond yesterday to this.
> >> > By any chance do you maybe have an AB/BA lock inversion, where from the
> >> > ATU interrupt handler you do mv88e6xxx_reg_lock() -> rtnl_lock(), while
> >> > from the port_fdb_dump() handler you do rtnl_lock() -> mv88e6xxx_reg_lock()?
> >> 
> >> If I release the mv88e6xxx_reg_lock() before calling the handler, I need
> >> to get it again for the mv88e6xxx_g1_atu_loadpurge() call at least. But
> >> maybe the vtu_walk also needs the mv88e6xxx_reg_lock()?
> >> I could also just release the mv88e6xxx_reg_lock() before the
> >> call_switchdev_notifiers() call and reacquire it immediately after?
> >
> > The cleanest way to go about this would be to have the call_switchdev_notifiers()
> > portion of the ATU interrupt handling at the very end of mv88e6xxx_g1_atu_prob_irq_thread_fn(),
> > with no hardware access needed, and therefore no reg_lock() held.
> 
> So something like?
> 	mv88e6xxx_reg_unlock(chip);
> 	rtnl_lock();
> 	err = call_switchdev_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, brport, &info.info, NULL);
> 	rtnl_unlock();
> 	mv88e6xxx_reg_lock(chip);

No, call_switchdev_notifiers() should be the very end, no reg_lock() afterwards.
Do all the hardware handling you need, populate some variables to denote
that you need to notify switchdev, and if you do, lock the rtnetlink
mutex and do it.
