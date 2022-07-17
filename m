Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAA45777F1
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 21:23:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DD1F404AA;
	Sun, 17 Jul 2022 19:23:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DD1F404AA
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ROVMbcMO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VflunawDPNW; Sun, 17 Jul 2022 19:23:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 61085404A3;
	Sun, 17 Jul 2022 19:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61085404A3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12965C002D;
	Sun, 17 Jul 2022 19:23:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DDB1DC002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 19:23:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B799881D73
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 19:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B799881D73
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ROVMbcMO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w9gDDL3MNHBF for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 19:23:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E95DD81D0B
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E95DD81D0B
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 19:23:03 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id bk26so14310619wrb.11
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qR5n9WUGINQgKnZyU5jQ5QNhAVmTXkoQM4VlFrsXDgk=;
 b=ROVMbcMOPv+gSbm3EJ0AYvQs8xJipm3EB1VIKbnQn0ywYyjAGUA0Sburuurfmr9fUI
 rXNM9c07v1017JK3vINOTZx/AP9ykov02Jip4XVZnRtdWqGlyYt0b7KURU1CVr5wzdhp
 1lvZdqtbFjtmc7jGXNELiIePVrkhIL++Y0v1Aq7AwuWe0ansFrJW49xDHVWY7rdOoYVC
 7Wsn78PS/3tFE8TP6FafTmxr6V3M3z9c7hZSHZVILX6qzAVgd+KXlezcymqZVSCDuiVV
 SHKpRhuds0LZqUWv1a1DfGN/NCy+t8089iHEj92aJDiFrtNMqN/wlagxvmDCmnfmd39k
 fK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qR5n9WUGINQgKnZyU5jQ5QNhAVmTXkoQM4VlFrsXDgk=;
 b=n63jAJjucx8joGyFUEdSiR9bmOiAsrBSz8YSBlpe3QTwGmId3bGIydBhzM9pQO7cLL
 uOOUONe4zUoMLyDGrjtODSvxMC6F47RR1UH/7jBpA9Q0eIVSWz3pWHA6SuFuCMZvelLa
 zFtXt9qVOW2OyHJ9UAOz4lirBSj5b3aJsQo38SMfGKr3fs8T1VyIYMbhG1atZcbDe/go
 WpuvAzC9GgmMr1T1gMgggrIrxu8yFGsp2zzpsl0eibhtoI2JW2yD6izjKAFkS5pjA/Ah
 4wVixdbRrj+Vcb9tOBuj+E/V5ddlWNbcttv8mDp0bgrC+/lkIz7Gzv3/8LCezOerFCpU
 p7WQ==
X-Gm-Message-State: AJIora/p2GWfuMetfDAQH+6SqjRer5SfxXoBAgtVHIS6KcfNSpyUIYeI
 6jP8Zcx9kD57QGvfA93HH4zK1STwh9JNkCgV4ZQ=
X-Google-Smtp-Source: AGRyM1txFQkvnskZOx8Nkr/djQB1K/63SDxcCZP7vECAW1wAAJ2eJEJotJhzOPoLVauSB6Lzds4zlNU6k6ARgwyQb6w=
X-Received: by 2002:a5d:6e8e:0:b0:21d:ea5:710f with SMTP id
 k14-20020a5d6e8e000000b0021d0ea5710fmr27515wrz.48.1658085782164; Sun, 17 Jul
 2022 12:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <20220717134610.k3nw6mam256yxj37@skbuf>
 <20220717140325.p5ox5mhqedbyyiz4@skbuf>
 <CAKUejP6g3HxS=Scj-2yhsQRJApxnq1e31Nkcc995s7gzfMJOew@mail.gmail.com>
 <20220717183852.oi6yg4tgc5vonorp@skbuf>
In-Reply-To: <20220717183852.oi6yg4tgc5vonorp@skbuf>
From: Hans S <schultz.hans@gmail.com>
Date: Sun, 17 Jul 2022 21:20:57 +0200
Message-ID: <CAKUejP7WyL2r03EiZU4hA63u2e=Wz3KM4X=rDdji5pdZ0ptaZg@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
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

On Sun, Jul 17, 2022 at 8:38 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Sun, Jul 17, 2022 at 06:22:57PM +0200, Hans S wrote:
> > On Sun, Jul 17, 2022 at 4:03 PM Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > Yes, it creates an FDB entry in the bridge without the locked flag
> > set, and sends an ADD_TO_DEVICE notice with it.
> > And furthermore link-local packets include of course EAPOL packets, so
> > that's why +learning is a problem.
>
> So if we fix that, and make the dynamically learned FDB entry be locked
> because the port is locked (and offload them correctly in mv88e6xxx),
> what would be the problem, exactly? The +learning is what would allow
> these locked FDB entries to be created, and would allow the MAB to work.
> User space may still decide to not authorize this address, and it will
> remain locked.

The alternative is to have -learning and let the driver only enable
the PAV to admit the interrupts, which is what this implementation
does.
The plus side of this is that having EAPOL packets triggering locked
entries from the bridge side is not really so nice IMHO. In a
situation with 802.1X and MAB on the same port, there will then not be
any triggering of MAB when initiating the 802.1X session, which I
think is the best option. It then also lessens the confusion between
hostapd and the daemon that handles MAB sessions.
