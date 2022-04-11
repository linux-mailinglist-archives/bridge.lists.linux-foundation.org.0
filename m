Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0554A4FB635
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:41:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C1960E5B;
	Mon, 11 Apr 2022 08:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHlpdxDmpnsF; Mon, 11 Apr 2022 08:41:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CD5E560EAE;
	Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 90414C0082;
	Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B766C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE0CE60E5B
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0HVioGDNwqY for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:41:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C133607F6
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:16 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id j9so17221721lfe.9
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 01:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=u7es23m68YE0yDAKWEjJ20E23kk4TJaXNmA2qr7JJH4=;
 b=L8oivNjMQSl9MPzjFbzVGxjlnBoiWGiLHMIq/oDJwCXUtR5AWy+eO/MMO/EOMD8F62
 dAn8Zv109J9ObyJa4YNpyo+ayqdoyqppliEDrOUUhUBsl7BScxW6Ilyidt0B+GZO/sLp
 1PJhZv6EsQlETlxh1kQq7Pa7T8E2lUxpNLk+WOmfvcpsmnvYb7vdlpeWsp6ab/ZWcvVQ
 SPlfbz2s9+GjpIPCRTk+1863QwHynHZrtyEKMoWav/zOQoIc93rrLCj+8C2xa5KPcEM2
 J6W8Ct1jNR/SdB+daDHjRGlZM3QbiT6PtmlXyFpxXz3eQMQFbrb6fB1KQX/fKaY7aIuW
 K5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=u7es23m68YE0yDAKWEjJ20E23kk4TJaXNmA2qr7JJH4=;
 b=Un71je6TuJlF+sEKL5zZl9aRnQof/Y3OG550o3C42tvDV8vQu1NNNODGffz+NC8JQd
 EReDzpUsGKNcAW82PAcsgzv1thxNls8+vMIeyXmOxKsv6xnfZA/n4TRJlh6HtB1k7Ala
 hpV4WT5beaj+7lIHPNkr85td/V9yCCc2gMAf4NboE3RaVLVH5ykE87cA2FedCX456PLJ
 lwDukGPqNoSnUhNwjQUcsL0uKjTQTkkDc9ODl+OOSqT4CpfkDIm6rVX4YdN8vgxm/wFq
 t+BZUn5+xzv5Eh7GBwp/sETAXShVuMJJquGrs1v8pYMmikE9g1fl19kf7pV9W+795YIX
 1LKQ==
X-Gm-Message-State: AOAM531xYOKy1DB4XRZKSP1Wi5eVspUztfMbj3ERPjWbR7Qxixp+Sphx
 GneAk4Gq/kIGXTu6+Tdb9OM=
X-Google-Smtp-Source: ABdhPJwp4oR0rTrcDt9TRoyZvlNtd1Xhzy4g/pTdfURpRKhdpxieKhUAmpQhgmt1j0oZ4AbeS/2DqA==
X-Received: by 2002:a05:6512:1684:b0:448:a0e6:9fa6 with SMTP id
 bu4-20020a056512168400b00448a0e69fa6mr20765212lfb.592.1649666474642; 
 Mon, 11 Apr 2022 01:41:14 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 x24-20020a056512047800b0046b9dafd55bsm549080lfd.164.2022.04.11.01.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 01:41:13 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 11 Apr 2022 10:40:52 +0200
Message-Id: <20220411084054.298807-1-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220223172407.175865-1-troglobit@gmail.com>
References: <20220223172407.175865-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Joachim Wiberg <troglobit@gmail.com>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v2 net-next 0/2] net: bridge: add support for host
	l2 mdb entries
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

Fix to an obvious omissions for layer-2 host mdb entries, this v2 adds
the missing selftest and some minor style fixes.

Note: this patch revealed some worrying problems in how the bridge
      forwards unknown BUM traffic and also how unknown multicast is
      forwarded when a IP multicast router is known, which a another
      (RFC) patch series intend to address.  That series will build
      on this selftest, hence the name of the test.

 /Joachim

v2:
  - Add braces to other if/else clauses (Jakub)
  - Add selftest to verify add/del of mac/ipv4/ipv6 mdb entries (Jakub)

Joachim Wiberg (2):
  net: bridge: add support for host l2 mdb entries
  selftests: forwarding: new test, verify host mdb entries

 net/bridge/br_mdb.c                           |  12 +-
 .../testing/selftests/net/forwarding/Makefile |   1 +
 .../selftests/net/forwarding/bridge_mdb.sh    | 103 ++++++++++++++++++
 3 files changed, 111 insertions(+), 5 deletions(-)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_mdb.sh

-- 
2.25.1

