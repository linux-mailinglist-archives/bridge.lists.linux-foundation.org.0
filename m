Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA14E6267
	for <lists.bridge@lfdr.de>; Thu, 24 Mar 2022 12:23:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35509812A8;
	Thu, 24 Mar 2022 11:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id by6bnPpMRaFo; Thu, 24 Mar 2022 11:23:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CCD96812A9;
	Thu, 24 Mar 2022 11:23:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8C0CDC0082;
	Thu, 24 Mar 2022 11:23:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 62E02C000B
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 11:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50DC18129F
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 11:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWaqJRUgdf_T for <bridge@lists.linux-foundation.org>;
 Thu, 24 Mar 2022 11:23:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B6BE81295
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 11:23:45 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id r22so5717828ljd.4
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 04:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=zbdwVgmEzDHA4WNpeMf8bwrU5wjzXUixO+mPzgyLSZI=;
 b=UpFKoE+XZn1XgesQCFLWG+c4rStcpUK9jHmSYwU5uRzUVpZXQnBJDo+rMH+3h7n/12
 72ptiKgHeuDJZPiu6fwyPB26xc0C2Vs/ZeE3hjWjx4SM3AC7FhLRs2j+5pwfeHhuSiaA
 KBG2+6ngx4lRKZLxTRkgJG5JrySYO5rMXWM1nCC+hXprBjkk7l144WjsfcQaZ/bwMyPv
 BDpy0tIM0YCzILV5Nlnces8sVUAIrtdezsexH7cu9PR2YPfcRRdpb3gYTOlzxC7FohSq
 6dOVBzI0kiyYFTd5biaLHNaRmOLpy1HsIg2L13+u6BaSTot8UcrGL0UCPAbu2iZOn01X
 Q9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=zbdwVgmEzDHA4WNpeMf8bwrU5wjzXUixO+mPzgyLSZI=;
 b=kiMHDXeUh/V6DMWZUMStOWB276jkOlZri3gDnybtavRBMTDXIw9GVw8o/JEKZP6AHs
 5ab2cWUi2p0BmYYFmR8Dkcugu3WoM3bjGPt+DkXoOM8IUbxz5P/melks1OMHw/+Xe4ya
 uukpM3zCvz0rUr4xEXG+P9gkuPc9GpFfH8t8BH8Zf7tTqfdvZ88tK0e8Mkvo/7sQABMt
 iuwUMinG3GvORThLSGCNtvHelc5uyuoYVJZtb2vL/wMLVmwgoB/eg5wr3hC8l3erUjcf
 +dJxTW+9v6HcAfbT1gv12C5091ul8w75JC1PYmYpztg0psYzypK2BBvaxHNdo16T5ZEV
 oYIw==
X-Gm-Message-State: AOAM531N40iOmqY1q0S4kgNIaVm319AUKy8XXuR32c9OMWWpig+1VOU0
 SwXIUFKRHp0k3IjHhTszIGo=
X-Google-Smtp-Source: ABdhPJzUbdvFK0PzuPbcYo1YnvFUJKYjAXVakppqx3v8jhG8emZHBuIPJU6uBBIjOEdMZeQZ+8rh0w==
X-Received: by 2002:a2e:8547:0:b0:248:b0a:bc45 with SMTP id
 u7-20020a2e8547000000b002480b0abc45mr3774397ljj.271.1648121023224; 
 Thu, 24 Mar 2022 04:23:43 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 i6-20020a2ea366000000b00248073ae9a2sm311183ljn.84.2022.03.24.04.23.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 04:23:42 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220324110959.t4hqale35qbrakdu@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com> <20220323144304.4uqst3hapvzg3ej6@skbuf>
 <86lewzej4n.fsf@gmail.com> <20220324110959.t4hqale35qbrakdu@skbuf>
Date: Thu, 24 Mar 2022 12:23:39 +0100
Message-ID: <86v8w3vbk4.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On tor, mar 24, 2022 at 13:09, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 24, 2022 at 11:32:08AM +0100, Hans Schultz wrote:
>> On ons, mar 23, 2022 at 16:43, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Wed, Mar 23, 2022 at 01:49:32PM +0100, Hans Schultz wrote:
>> >> >> Does someone have an idea why there at this point is no option to add a
>> >> >> dynamic fdb entry?
>> >> >> 
>> >> >> The fdb added entries here do not age out, while the ATU entries do
>> >> >> (after 5 min), resulting in unsynced ATU vs fdb.
>> >> >
>> >> > I think the expectation is to use br_fdb_external_learn_del() if the
>> >> > externally learned entry expires. The bridge should not age by itself
>> >> > FDB entries learned externally.
>> >> >
>> >> 
>> >> It seems to me that something is missing then?
>> >> My tests using trafgen that I gave a report on to Lunn generated massive
>> >> amounts of fdb entries, but after a while the ATU was clean and the fdb
>> >> was still full of random entries...
>> >
>> > I'm no longer sure where you are, sorry..
>> > I think we discussed that you need to enable ATU age interrupts in order
>> > to keep the ATU in sync with the bridge FDB? Which means either to
>> > delete the locked FDB entries from the bridge when they age out in the
>> > ATU, or to keep refreshing locked ATU entries.
>> > So it seems that you're doing neither of those 2 things if you end up
>> > with bridge FDB entries which are no longer in the ATU.
>> 
>> Any idea why G2 offset 5 ATUAgeIntEn (bit 10) is set? There is no define
>> for it, so I assume it is something default?
>
> No idea, but I can confirm that the out-of-reset value I see for
> MV88E6XXX_G2_SWITCH_MGMT on 6190 and 6390 is 0x400. It's best not to
> rely on any reset defaults though.

I see no age out interrupts, even though the ports Age Out Int is on
(PAV bit 14) on the locked port, and the ATU entries do age out (HoldAt1
is off). Any idea why that can be?

I combination with this I think it would be nice to have an ability to
set the AgeOut time even though it is not per port but global.
