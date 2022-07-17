Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC4B5777CC
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 20:39:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C7844074E;
	Sun, 17 Jul 2022 18:39:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C7844074E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=FSw3Uh0a
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uv8-fFntqzy2; Sun, 17 Jul 2022 18:39:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EDC2C408F8;
	Sun, 17 Jul 2022 18:39:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDC2C408F8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8BEF3C0078;
	Sun, 17 Jul 2022 18:39:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21738C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 18:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E189983E3E
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 18:38:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E189983E3E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=FSw3Uh0a
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsENRSqNEheo for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 18:38:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F68680C1A
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F68680C1A
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 18:38:57 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id t3so12709993edd.0
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 11:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rTFmINRCtqE/PJSK+GbEjiZlx18s0u636RQP7OKv+PI=;
 b=FSw3Uh0aCHj2G4vLpNTO+ihKkjxUkreF/gNi8Cwu8jTP5BYI/PmJN4f5vcm48Llc0R
 BaDo3GnIbfA/JJNU+Ps7EqK7vtcgHtt6cRTQ9+bUKx1JyHJAiJhMy4wvs2m9j8uIMgud
 2Ppct74C67RPgKUlKcQcLrjDP666o2f0kPGLHoVPERzXZ+2vN88dFOChUlWYQxm5gNjT
 Lhc9R58TMeoAjDblGIwoAFWOzPRSGWWPO4t1R7tftZ7ImdUf8H43HDuGWklh9B+KjlMu
 kbx0DQuCXe0+1Rj1uSv7OinF2S6PY4Z59g0cAgY6DTw1OOy4pptk9e/Zk6K7bZ4XQ4QH
 uf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rTFmINRCtqE/PJSK+GbEjiZlx18s0u636RQP7OKv+PI=;
 b=aCAK6lQHqqHAx9tyo5Drpk6ytboPNfXdI+IHy5RoLQUHVI4ab4KT619Y40J07T6tr0
 DlXlxBhV/Kv0g1k5xBawIy2pf2yruylvS0+LyXsh1KNkPt2q6bIdSbFdLP2tzc2DnxFL
 qxhmjnvOveOCgqs4ZRHXeaz8Io5HF2c/SJ8RXFjH1wc0+zrxv0bWcul+8cU0N5avBze9
 GcF+x2GYDQJqECDs3sjCKmE0xMSzmLYrv3S0XlyJLg/wYGPGmznjUUAb/3S0ek0GAye+
 DuAPcOk3vq4v2XUobmwpJpqAMYAJZaWdlruzLRGmljmYcI2m0mVLyKn0b83mHRbRBoAB
 aOKg==
X-Gm-Message-State: AJIora963jjXQ2VY9qQckB3bHc4zUeInbCp+/6xMAWc0y8tRIdboluXL
 9VF3MSE33XGELeO8hDWRpjE=
X-Google-Smtp-Source: AGRyM1tk93eaC6IDq42PmwwrpHj5mupJZfCSM0zCfRbWL4Y3LieDgdqQ0zD1eisXUSf+AS2bpT2Gnw==
X-Received: by 2002:a05:6402:190e:b0:43a:e914:8c11 with SMTP id
 e14-20020a056402190e00b0043ae9148c11mr31803058edz.281.1658083135892; 
 Sun, 17 Jul 2022 11:38:55 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 r17-20020a056402035100b0043a6a7048absm7119672edw.95.2022.07.17.11.38.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 11:38:55 -0700 (PDT)
Date: Sun, 17 Jul 2022 21:38:52 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans S <schultz.hans@gmail.com>
Message-ID: <20220717183852.oi6yg4tgc5vonorp@skbuf>
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <20220717134610.k3nw6mam256yxj37@skbuf>
 <20220717140325.p5ox5mhqedbyyiz4@skbuf>
 <CAKUejP6g3HxS=Scj-2yhsQRJApxnq1e31Nkcc995s7gzfMJOew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKUejP6g3HxS=Scj-2yhsQRJApxnq1e31Nkcc995s7gzfMJOew@mail.gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

On Sun, Jul 17, 2022 at 06:22:57PM +0200, Hans S wrote:
> On Sun, Jul 17, 2022 at 4:03 PM Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > On Sun, Jul 17, 2022 at 04:46:10PM +0300, Vladimir Oltean wrote:
> > > Here, what happens is that a locked port learns the MAC SA from the
> > > traffic it didn't drop, i.e. link-local. In other words, the bridge
> > > behaves as expected and instructed: +locked +learning will cause just
> > > that. It's the administrator's fault for not disabling learning.
> > > It's also the mv88e6xxx driver's fault for not validating the "locked" +
> > > "learning" brport flag *combination* until it properly supports "+locked
> > > +learning" (the feature you are currently working on).
> > >
> > > I'm still confused why we don't just say that "+locked -learning" means
> > > plain 802.1X, "+locked +learning" means MAB where we learn locked FDB entries.
> >
> > Or is it the problem that a "+locked +learning" bridge port will learn
> > MAC SA from link-local traffic, but it will create FDB entries without
> > the locked flag while doing so? The mv88e6xxx driver should react to the
> > 'locked' flag from both directions (ADD_TO_DEVICE too, not just ADD_TO_BRIDGE).
> 
> Yes, it creates an FDB entry in the bridge without the locked flag
> set, and sends an ADD_TO_DEVICE notice with it.
> And furthermore link-local packets include of course EAPOL packets, so
> that's why +learning is a problem.

So if we fix that, and make the dynamically learned FDB entry be locked
because the port is locked (and offload them correctly in mv88e6xxx),
what would be the problem, exactly? The +learning is what would allow
these locked FDB entries to be created, and would allow the MAB to work.
User space may still decide to not authorize this address, and it will
remain locked.
