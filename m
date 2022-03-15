Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA964DA5CF
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 23:57:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E71FA60C30;
	Tue, 15 Mar 2022 22:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxeVi1yzEi9W; Tue, 15 Mar 2022 22:57:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 535A160BC1;
	Tue, 15 Mar 2022 22:57:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 09AE0C0033;
	Tue, 15 Mar 2022 22:57:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81E61C0012
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 623BB40382
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZq6qin1gVKk for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 22:57:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B4DC40362
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:57:04 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id w27so954588lfa.5
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 15:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=AckR/coIxOb10tv+spqnXBr+Bpips1bwCHH84e6FTSM=;
 b=FCVeUrS472oDWiDqhyo4Ws4t2jUTRUzskbKDGjh1i4yV9sGjgTDZPif753HOrdYB1v
 +IoBKY5p+5LMXn4pzvHYzgUjCG9MlulNyimV9n4tTkdI41HZLW2Lm/nJZOEBpiyk1ZnQ
 lNPJNIavokMhsayNWMImIfqVk/j9xYgjjg2sUwwdLZC57cPqPPeD8LE9MO3aBqnIDS+X
 pihRjdSJFuj4TE/JRq4fZvSUQiM10UijL305ffL1EfHnSbTlbe7FI8MmSfxhveFUBzCJ
 OXx1sZbUrYln41S3aDx+/5r793aunkI+XLWkywP+v8/X+e7U0haSNfobmO7oekIDfqtu
 yNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=AckR/coIxOb10tv+spqnXBr+Bpips1bwCHH84e6FTSM=;
 b=v6adiQHT8cB301q7ciZi1JfwIONDjQMXZvyHBBREn/gubsXGIiRy621ZGDcKlHi5X6
 T3p6OZGlODD9FRTS+relYfg6aqICWoTclCWNCzJx2opeZsfGYOj1LWzqatk84t7gmGFU
 p6VDxADsd2FTF2RGJYyt2p252dOGHtJ4EpLV94WNHKF79FDXcvjMzAtmX0qkzP9hqk0I
 uZJKzSZCAvt6GACaZed8eGQaLsdi6SoOyEUY9NzUHH6BCEqmfNiQ5hH1YhunSmY7FgcS
 ctRQYg78F5jzTkV629gkSrRCu3+YQw2qPIaFo+G55pOCO+jpacCyZllmdaBZDP9e7PtV
 xbsA==
X-Gm-Message-State: AOAM532HuTQFVVSHbKdmCqKnrb+iq4//iyeAsn78CxfxQlUeY4W0rvwp
 pK/StaSBcWkiLJsoWT8tixOVCkZZMXILPVYR
X-Google-Smtp-Source: ABdhPJw2KWlYZiyQRjRnqb4/L4mhvft8SvJA9g41H5Uxa1E1S0kNfhbTWB2cHcRvCCOCdthsakGn4Q==
X-Received: by 2002:ac2:55a7:0:b0:448:3023:e645 with SMTP id
 y7-20020ac255a7000000b004483023e645mr18084066lfg.266.1647385022741; 
 Tue, 15 Mar 2022 15:57:02 -0700 (PDT)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 p11-20020a19f10b000000b004488b82a87esm25531lfh.39.2022.03.15.15.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 15:57:02 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220315224205.jzz3m2mroytanesh@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-10-tobias@waldekranz.com>
 <20220315163349.k2rmfdzrd3jvzbor@skbuf> <87ee32lumk.fsf@waldekranz.com>
 <20220315224205.jzz3m2mroytanesh@skbuf>
Date: Tue, 15 Mar 2022 23:57:01 +0100
Message-ID: <875yoelt8i.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 09/15] net: dsa: Never offload FDB
 entries on standalone ports
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

On Wed, Mar 16, 2022 at 00:42, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 15, 2022 at 11:26:59PM +0100, Tobias Waldekranz wrote:
>> On Tue, Mar 15, 2022 at 18:33, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Tue, Mar 15, 2022 at 01:25:37AM +0100, Tobias Waldekranz wrote:
>> >> If a port joins a bridge that it can't offload, it will fallback to
>> >> standalone mode and software bridging. In this case, we never want to
>> >> offload any FDB entries to hardware either.
>> >> 
>> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> >> ---
>> >
>> > When you resend, please send this patch separately, unless something
>> > breaks really ugly with your MST series in place.
>> 
>> Sure. I found this while testing the software fallback. It prevents a
>> segfault in dsa_port_bridge_host_fdb_add, which (rightly, I think)
>> assumes that dp->bridge is valid. I feel like this should have a Fixes:
>> tag, but I'm not sure which commit to blame. Any suggestions?
>
> Ok, makes sense. So far, unoffloaded bridge ports meant that the DSA
> switch driver didn't have a ->port_bridge_join() implementation.
> Presumably that also came along with a missing ->port_fdb_add()
> implementation. So probably no NPD for the existing code paths, it is
> just your unoffloaded MST support that opens up new possibilities.
>
> Anyway, the dereference of dp->bridge first appeared in commit
> c26933639b54 ("net: dsa: request drivers to perform FDB isolation")
> which is still just in net-next.

Thanks, I just sent it separately:

https://lore.kernel.org/netdev/20220315225018.1399269-1-tobias@waldekranz.com

>> >>  net/dsa/slave.c | 3 +++
>> >>  1 file changed, 3 insertions(+)
>> >> 
>> >> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> >> index a61a7c54af20..647adee97f7f 100644
>> >> --- a/net/dsa/slave.c
>> >> +++ b/net/dsa/slave.c
>> >> @@ -2624,6 +2624,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>> >>  	if (ctx && ctx != dp)
>> >>  		return 0;
>> >>  
>> >> +	if (!dp->bridge)
>> >> +		return 0;
>> >> +
>> >>  	if (switchdev_fdb_is_dynamically_learned(fdb_info)) {
>> >>  		if (dsa_port_offloads_bridge_port(dp, orig_dev))
>> >>  			return 0;
>> >> -- 
>> >> 2.25.1
>> >> 
