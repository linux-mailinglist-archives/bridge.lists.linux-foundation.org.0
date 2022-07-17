Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A74D5776EC
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 17:08:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9BDB8343B;
	Sun, 17 Jul 2022 15:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9BDB8343B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=XtRmz+aA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKksUuBwm45v; Sun, 17 Jul 2022 15:08:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3598D830C2;
	Sun, 17 Jul 2022 15:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3598D830C2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7319C0078;
	Sun, 17 Jul 2022 15:08:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD85CC002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 15:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A91C8415BC
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 15:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A91C8415BC
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XtRmz+aA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EyrqK4iJopxD for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 15:08:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C424D4098D
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C424D4098D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 15:08:26 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id k30so12219644edk.8
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 08:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hMG19jnX3PRCbXZ+on0hHKlUdqbr9JhdKfsdJnBO8LI=;
 b=XtRmz+aAA92yKbmzuHPW3+DHixLtci04vqzmWpp+cD5JXHKeheq9k0sZHk2ikywuVm
 Ya+X1fi6i6DrekCrRvklz9kah/1l+vUSVxc3/+Mo/b6k5YPNZ+eK3YL+647np6c9eBFP
 cO9KIo5RMa0ByDF+dwwXR4eyh8YRzFEzuatHQcbyx+ujWJ+4vGcFvAucRKmCNEWoeX4u
 ThpQlP0hiaeXV53bOTqWltSSKxzTd6zlQxDZCwQuyEK1/Adg0B2cQW9bbz9ObD62iE7U
 UoYgFTCDsjR1xYb042K9W2yv6zWdzbtgpK2vAbtId8LPh9ThtgW26QkbNbfRzBBH4Lgd
 xVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hMG19jnX3PRCbXZ+on0hHKlUdqbr9JhdKfsdJnBO8LI=;
 b=grocnbg7lwuWgmEhqS653nukTY5njtNvjd6PQxz1tcBhmPvjxqA9RZGh+f239P9Gp9
 0K1p9joZcIjfXfwrnGIOd6rLY6wRicxZxh3X4veS/7acxKfLfGatdjFz9DMwONmbT5IJ
 ZxXUH4qTGlwWE2tLhZqvr9NP+34WvsRvIFBkY8Tib28FzZOn9DSctNQJrpoIovCXLrag
 wZeNU9x6sWJhVCzZdJhvWpXvbqFv/X92unklzTFET0TtX7B7sbm2Avk4KRGk7X76/h7X
 67wTMgPmWLMdHja5ajOI1/qfDDpNfC5fWx/k7H1Lpnc9ECW7XU9w/7Vo/AH8fq6Qtwph
 50Tg==
X-Gm-Message-State: AJIora83UntS8yiU+a7V3WkJjRWp9HK3BGyg0zzEDLB6LhjZRCreRthc
 2QWL5M1Ru3EpTUr2poH0NFM=
X-Google-Smtp-Source: AGRyM1vK5tMCFy4TTvk3ikk733WBr21RKIX8TZhTP+OIvOFvf3jJSDEYmgj2i91/pvFuoROXMSy8Gw==
X-Received: by 2002:a05:6402:4504:b0:43b:4ec7:2ec1 with SMTP id
 ez4-20020a056402450400b0043b4ec72ec1mr11287321edb.7.1658070504655; 
 Sun, 17 Jul 2022 08:08:24 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 d2-20020a056402000200b0043a61f6c389sm6832967edu.4.2022.07.17.08.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 08:08:23 -0700 (PDT)
Date: Sun, 17 Jul 2022 18:08:21 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220717150821.ehgtbnh6kmcbmx6u@skbuf>
References: <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
 <20220717125718.mj7b3j3jmltu6gm5@skbuf>
 <a6ec816279b282a4ea72252a7400d5b3@kapio-technology.com>
 <20220717135951.ho4raw3bzwlgixpb@skbuf>
 <e1c1e7c114f0226b116d9549cea8e7a9@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1c1e7c114f0226b116d9549cea8e7a9@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On Sun, Jul 17, 2022 at 04:57:50PM +0200, netdev@kapio-technology.com wrote:
> 
> Maybe I am just trying to understand the problem you are posing, so afaics
> MAC addresses should be unique and having the same MAC address behind a
> locked port and a not-locked port seems like a mis-configuration regardless
> of vlan setup? As the zero-DPV entry only blocks the specific SA MAC on a
> specific vlan, which is behind a locked port, there shouldn't be any
> problem...?
> 
> If the host behind a locked port starts sending on another vlan than where
> it got the first locked entry, another locked entry will occur, as the
> locked entries are MAC + vlan.

I don't think it's an invalid configuration, I have a 17-port Marvell
switch which I use as infrastructure to connect my PC with my board farm
and to the Internet. I've cropped 4 out of those 17 ports for use in
selftests, effectively now having 2 bridges (br0 used by the selftests
and br-lan for systemd-networkd).

Currently all the traffic sent and received by the selftests is done
through lan1-lan4, but if I wanted to run some bridge locked port tests
with traffic from my PC, what I'd do is I'd connect a (locked) port from br0
to a port from br-lan, and my PC would thus gain indirect connectivity to the
locked port.

Then I'd send a packet and the switch would create a locked FDB entry
for my PC's MAC address, but that FDB entry would span across the entire
MV88E6XXX_FID_BRIDGED, so practically speaking, it would block my PC's
MAC address from doing anything, including accessing the Internet, i.e.
traffic that has nothing at all to do with the locked port in br0.
That isn't quite ok.
