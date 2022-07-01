Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEEF562CF7
	for <lists.bridge@lfdr.de>; Fri,  1 Jul 2022 09:47:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A40F040182;
	Fri,  1 Jul 2022 07:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A40F040182
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=BMpIS/Aa
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hj9rnjD78x7E; Fri,  1 Jul 2022 07:47:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EC2FC403C8;
	Fri,  1 Jul 2022 07:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC2FC403C8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A04F6C007C;
	Fri,  1 Jul 2022 07:47:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46135C002D
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 07:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D96A818E6
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 07:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D96A818E6
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=BMpIS/Aa
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acj_5jBgdF0x for <bridge@lists.linux-foundation.org>;
 Fri,  1 Jul 2022 07:47:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC005818C4
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC005818C4
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 07:47:37 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id b26so1974547wrc.2
 for <bridge@lists.linux-foundation.org>; Fri, 01 Jul 2022 00:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rE1S3qn0emq5PHeyf06ryXxWn9nDP2udjWAGP9EkRNo=;
 b=BMpIS/AaZ9mkwnYvWb3YzxD0SgLPv4RDjO4ZjZ68DxdKRYIPZvX7D1llnsstpspp5y
 QRTl5h6L82kz0B7VA5xK4BMsaNkPKH8zZ2Q22S7x0vimgRfWwyRH/hOjx60fc46asqpi
 p14SJ39A/qE+J0Oy7e2P+OJMI3KnWtoUXuu9XlQLOSk4BNukgDSnrBH8ejE3pxNkraIR
 jQHAp0LvwIoqzVeu7/tusfwe728MogKFHRQaOYEFvothlAGkgK40MrbrVMzOiCblDDew
 gRuQPnTCmis86h5fCBz2Z7CsSNCCDO1W+KAQNudMIWaXMJvSBh/xHpRe9FrdKbS5ySAb
 4t8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rE1S3qn0emq5PHeyf06ryXxWn9nDP2udjWAGP9EkRNo=;
 b=sDGoCHvXYjq+bsrB9OB8io2fu8QG76m6AuEDIIAZEaPInV2NbvpThiBQu5hS2ofVAA
 nzFBE9BeZd/3RgVcnJSiOtYDQ1ov9jmYad3ZpQJnz4bu+nbMKz+9XV92mYvn0l9cEFiI
 9rF0fMo6nl+TNSVK8P9PjAUs9IVHk0+R2CUSX+w8tILXSd2fUDGKs2qROg5/sQhG2zJl
 hSEGsVMHGTLQwY6vHUUsaSr8lYHwFi6XU+WR7eqwFusbefJ8UXy5NJYcbcJu8ENKh1Rc
 X8JIzNEwIg49794cSxk1rdgUy38wAUHNuFN2MBBG0yEDOS8USMU3NggHGW4Cp842wKaH
 xPFQ==
X-Gm-Message-State: AJIora/hDRpP1ixBBTVrLISRvK6rHzdO/BM9EWYqtoPXXHPDmRt63I5h
 N9A7HmW3HmO+SEETD8PyoSmhSYt6M5hyEYdtp8I=
X-Google-Smtp-Source: AGRyM1vMgSEumJ6nKjvQL9aVDdXHVXvXN+AuFrw+YNtzVT3c21tagadSTR1PTonOtKu3v/pKrXHd9ybscKGAIwd1xvI=
X-Received: by 2002:a05:6000:12d0:b0:21b:a248:9a2e with SMTP id
 l16-20020a05600012d000b0021ba2489a2emr12784441wrx.437.1656661655797; Fri, 01
 Jul 2022 00:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
In-Reply-To: <Yr2LFI1dx6Oc7QBo@shredder>
From: Hans S <schultz.hans@gmail.com>
Date: Fri, 1 Jul 2022 09:47:24 +0200
Message-ID: <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Hans Schultz <hans@kapio-technology.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
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

One question though... wouldn't it be an issue that the mentioned
option setting is bridge wide, while the patch applies a per-port
effect?

On Thu, Jun 30, 2022 at 1:38 PM Ido Schimmel <idosch@nvidia.com> wrote:
>
> On Thu, Jun 30, 2022 at 01:16:34PM +0200, Hans Schultz wrote:
> > This patch is related to the patch set
> > "Add support for locked bridge ports (for 802.1X)"
> > Link: https://lore.kernel.org/netdev/20220223101650.1212814-1-schultz.hans+netdev@gmail.com/
> >
> > This patch makes the locked port feature work with learning turned on,
> > which is enabled with the command:
> >
> > bridge link set dev DEV learning on
> >
> > Without this patch, link local traffic (01:80:c2) like EAPOL packets will
> > create a fdb entry when ingressing on a locked port with learning turned
> > on, thus unintentionally opening up the port for traffic for the said MAC.
> >
> > Some switchcore features like Mac-Auth and refreshing of FDB entries,
> > require learning enables on some switchcores, f.ex. the mv88e6xxx family.
> > Other features may apply too.
> >
> > Since many switchcores trap or mirror various multicast packets to the
> > CPU, link local traffic will unintentionally unlock the port for the
> > SA mac in question unless prevented by this patch.
>
> Why not just teach hostapd to do:
>
> echo 1 > /sys/class/net/br0/bridge/no_linklocal_learn
>
> ?
