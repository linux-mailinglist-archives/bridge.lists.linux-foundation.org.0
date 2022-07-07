Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CA0569ACB
	for <lists.bridge@lfdr.de>; Thu,  7 Jul 2022 08:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 381FA83EE2;
	Thu,  7 Jul 2022 06:55:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 381FA83EE2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=f06mxs48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZFxoaBdgUVpk; Thu,  7 Jul 2022 06:55:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C540383ED3;
	Thu,  7 Jul 2022 06:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C540383ED3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7564CC0077;
	Thu,  7 Jul 2022 06:55:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9CBC5C002D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 06:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77520610E6
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 06:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77520610E6
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=f06mxs48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g7ZdcFexYrSq for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jul 2022 06:55:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A11186112F
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A11186112F
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 06:55:10 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 h131-20020a1c2189000000b003a2cc290135so324066wmh.2
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 23:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tle9jlf1XL+CuKZZCKk8/9Xh9QpHZZM5Qn39ORyOqj4=;
 b=f06mxs48qNo4rSKbN9MgCRF0G3k3lDnx3IsusDP4IZ7GASvreoRNWd3xTCTmWoPeoU
 /gZ7vU45VNaeCyHoSim28POqn2+9UMEejuJXE2rDpoO3BBZnenj6N8Ch1TN1a9KTzHrq
 WLQSdADneb+yfI4Bry0BKQ3UOj/Xvb5DunTMwTyevS9B9mBTjBisvr6EzjwfmOt8rgE1
 t3zOfArQqKVYOGF3UhyKhYebeDPefM4ihtSYKH7+HlKdExdm+L3JhgNqdTmBkf+oNSHN
 1UyMtjFYDD5m0JaREqHui5mbcpxVsEpuM6XarcPfuA6oc64XqrG2Gw6JuN+glp+ajAFx
 OQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tle9jlf1XL+CuKZZCKk8/9Xh9QpHZZM5Qn39ORyOqj4=;
 b=UIw5mm3ihEnVdj358U7iSNzZ/P/93IKNTi0BQqucRxhD27PgUqBjcCRVoEqSxlmvNE
 SPGM+DmHBhGTxGGgtW95a39tiwpvgGoya8vLm2yGO1kkNFGUH/rMI/zEy4ZspB9nXsZ/
 +Ejk/ZbGPopieQYhKJ+w1qM5jhkJ0X/YTH8SOMOKSwzGTBaf/teEQ33IyLuMWqe2Rt+v
 Gje98r9l+BeRH2FSsGwi9HMOSbHq6g0236JRAk1BmbISl2k63EkOD+j089ZV4TYztQPz
 1n1LuPsjIOCJEuXdkL9S06I0SkItsfZ0+5q7HnYMHoH20Pon9DJenuSIEt4FYK+GH5Co
 mYwA==
X-Gm-Message-State: AJIora+NkhMTDVJwaoVyFAIQgrAfkG98enyXmAUp5SGrHD/PvS7uZ4sJ
 P8Oh3OYG0Kzlxv6dZBYxv7WaWIxFKq/fwUVoy+U=
X-Google-Smtp-Source: AGRyM1sE385x8pSeDePRC1UDcReakr6re7xVegD6h3qSltBTzx62KnIdv332ZfbwfOBmKHgg5eZkenKZJ6LL77BrVCo=
X-Received: by 2002:a05:600c:154a:b0:3a1:70dd:9a12 with SMTP id
 f10-20020a05600c154a00b003a170dd9a12mr2736421wmg.70.1657176908726; Wed, 06
 Jul 2022 23:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
 <20220706085559.oyvzijcikivemfkg@skbuf>
 <CAKUejP7gmULyrjqd3b3PiWwi7TJzF4HNuEbmAf25Cqh3w7a1mw@mail.gmail.com>
 <20220706143339.iuwi23ktk53ihhb6@skbuf>
 <CAKUejP6NG_X-Bh_xeA2y4Wru2=pxgHaRMdsvMu8NATNxPVeQ7A@mail.gmail.com>
In-Reply-To: <CAKUejP6NG_X-Bh_xeA2y4Wru2=pxgHaRMdsvMu8NATNxPVeQ7A@mail.gmail.com>
From: Hans S <schultz.hans@gmail.com>
Date: Thu, 7 Jul 2022 08:54:57 +0200
Message-ID: <CAKUejP6wfcCE9n=_i2vroNX+v1YdGJzOH0bev06nrUCOsRPdwQ@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH V3 net-next 3/4] net: dsa: mv88e6xxx:
	mac-auth/MAB implementation
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

Hi Vladimir,

BTW, I have sent the patch to read the FID as you requested. You
should have received it yesterday (6th July) at around 12:25 UTC.

Hans
