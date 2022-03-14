Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A93BA4D8F5F
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 23:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0183C607C1;
	Mon, 14 Mar 2022 22:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99KXkNn_3FSb; Mon, 14 Mar 2022 22:13:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8967860BEA;
	Mon, 14 Mar 2022 22:13:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37B11C0084;
	Mon, 14 Mar 2022 22:13:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D809AC000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 22:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8DF841554
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 22:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Atp2hbtzLSzG for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 22:13:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8FF941553
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 22:13:51 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id b28so18057308lfc.4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=P+sSZ/MIHLkLQskC5zq8hmVD4ykc2QmIuRZHeedkEaI=;
 b=ojFUY1Ydha4EjvryEkE3HsxyjtloLRMCc5AmrdkMj8nj0s1r31KnEkySamhyOGNtxJ
 cJ4/+NGmk3It+nqJTCZRnc56LmxUKMBDiqc3uQZpAlGXydEiMUR7jJtwdNTo7+XXMIYH
 QNHQHUqVtdiJqKTkpy7d2LLoYXI9o363C5m5z3JucWS9HzlQMtFiJJdXcQRg0G9WxnEY
 wXE0rtDHshiBb39cqzlGsSxdkfRzf40J9yLOAikMOoZyBKTD8TtWjpUwsEgllQmeljW2
 +DMEUU9d2SVX02w7yjNbVPm+mexqvGQEPcMME9EN0yRU2V4CNpsYEcIrO7KV7jTYwpEG
 yk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=P+sSZ/MIHLkLQskC5zq8hmVD4ykc2QmIuRZHeedkEaI=;
 b=vdq8Akj9HhiHHzW4xUPVCJ94fRQ48UE8jkkgGr1OV0lbXLFI4z+lQUsF3aIHNgmT0N
 e1K0UQFVwJQXYoPccd+wDtHkfx4mkp7fC7PO7ZVwUeVEsAF5at2BraHFljWfhyB4QD06
 kyO3rMcimjZ0QWhCtjyP2Vp5J8HaBB44geXmpFqUxHjlTwD+8SrwqVQzNosO2MD4+b3g
 EiWoQaWz+70dzvGJdqglbwVaF6R+qtRhkAjr72AH4XI7O5VJPWdGozLRdUniUBHXFKMZ
 1J5BLakcdGEvb1vkESi3uFQ9VPdBQ7VFggJBLgrH1Vp1UWqjbedVu/2lgpUk+5E82nOo
 VETg==
X-Gm-Message-State: AOAM533Gk0/y3ZT7chDfZ6/3MZWp6W4TiVXV6pLsKzmzVIOThTYD3CDk
 i70S8z31mJO9ySRPDujTOJ65qqdRNcgbbYXDugE=
X-Google-Smtp-Source: ABdhPJzBOCPzfCoOjZRJEfzWh6SxoSpbyeNrkPdkrWcpL7NEjcByTPWlBt/VH7PbCKEeRFDPXcGgnQ==
X-Received: by 2002:ac2:5441:0:b0:448:5b32:c493 with SMTP id
 d1-20020ac25441000000b004485b32c493mr14552456lfn.438.1647296029382; 
 Mon, 14 Mar 2022 15:13:49 -0700 (PDT)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a056512054100b0044847b32426sm3481059lfl.156.2022.03.14.15.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 15:13:48 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220314202040.f2r4pidcy6ws34qv@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-10-tobias@waldekranz.com>
 <20220314165649.vtsd3xqv7htut55d@skbuf>
 <20220314175556.7mjr4tui4vb4i5qn@skbuf> <87mthsl2wn.fsf@waldekranz.com>
 <20220314202040.f2r4pidcy6ws34qv@skbuf>
Date: Mon, 14 Mar 2022 23:13:47 +0100
Message-ID: <87h780kwro.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 09/14] net: dsa: Validate hardware
 support for MST
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

On Mon, Mar 14, 2022 at 22:20, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Mon, Mar 14, 2022 at 09:01:12PM +0100, Tobias Waldekranz wrote:
>> On Mon, Mar 14, 2022 at 19:55, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Mon, Mar 14, 2022 at 06:56:49PM +0200, Vladimir Oltean wrote:
>> >> > diff --git a/net/dsa/port.c b/net/dsa/port.c
>> >> > index 58291df14cdb..1a17a0efa2fa 100644
>> >> > --- a/net/dsa/port.c
>> >> > +++ b/net/dsa/port.c
>> >> > @@ -240,6 +240,10 @@ static int dsa_port_switchdev_sync_attrs(struct dsa_port *dp,
>> >> >  	if (err && err != -EOPNOTSUPP)
>> >> >  		return err;
>> >> >  
>> >> > +	err = dsa_port_mst_enable(dp, br_mst_enabled(br), extack);
>> >> > +	if (err && err != -EOPNOTSUPP)
>> >> > +		return err;
>> >> 
>> >> Sadly this will break down because we don't have unwinding on error in
>> >> place (sorry). We'd end up with an unoffloaded bridge port with
>> >> partially synced bridge port attributes. Could you please add a patch
>> >> previous to this one that handles this, and unoffloads those on error?
>> >
>> > Actually I would rather rename the entire dsa_port_mst_enable() function
>> > to dsa_port_mst_validate() and move it to the beginning of dsa_port_bridge_join().
>> > This simplifies the unwinding that needs to take place quite a bit.
>> 
>> Well you still need to unwind vlan filtering if setting the ageing time
>> fails, which is the most complicated one, right?
>
> Yes, but we can leave that for another day :)
>
> ...ergo
>
>> Should the unwinding patch still be part of this series then?
>
> no.

Agreed

>> Still, I agree that _validate is a better name, and then _bridge_join
>> seems like a more reasonable placement.
>> 
>> While we're here, I actually made this a hard error in both scenarios
>> (but forgot to update the log - will do that in v4, depending on what we
>> decide here). There's a dilemma:
>> 
>> - When reacting to the attribute event, i.e. changing the mode on a
>>   member we're apart of, we _can't_ return -EOPNOTSUPP as it will be
>>   ignored, which is why dsa_port_mst_validate (nee _enable) returns
>>   -EINVAL.
>> 
>> - When joining a bridge, we _must_ return -EOPNOTSUPP to trigger the
>>   software fallback.
>> 
>> Having something like this in dsa_port_bridge_join...
>> 
>> err = dsa_port_mst_validate(dp);
>> if (err == -EINVAL)
>> 	return -EOPNOTSUPP;
>> else if (err)
>> 	return err;
>> 
>> ...works I suppose, but feels somewhat awkwark. Any better ideas?
>
> What you can do is follow the model of dsa_switch_supports_uc_filtering(),
> and create a dsa_switch_supports_mst() which is called inside an
> "if br_mst_enabled(br)" check, and returns bool. When false, you could
> return -EINVAL or -EOPNOTSUPP, as appropriate.
>
> This is mostly fine, except for the pesky dsa_port_can_configure_learning(dp)
> check :) So while you could name it dsa_port_supports_mst() and pass it
> a dsa_port, the problem is that you can't put the implementation of this
> new dsa_port_supports_mst() next to dsa_switch_supports_uc_filtering()
> where it would be nice to sit for symmetry, because the latter is static
> inline and we're missing the definition of dsa_port_can_configure_learning().
> So.. the second best thing is to keep dsa_port_supports_mst() in the
> same place where dsa_port_mst_enable() currently is.
>
> What do you think?

I think that would mostly work. It would have to be positioned higher up
in the file though, so that it can be called from _bridge_join. Unless
we add a forward for it of course, but that seems to break with existing
conventions.
