Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A82F36C090
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95ACD83C4A;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOXSggQobWWZ; Tue, 27 Apr 2021 08:08:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E24F83B47;
	Tue, 27 Apr 2021 08:08:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7110C001C;
	Tue, 27 Apr 2021 08:08:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A603CC000B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AF7F401CE
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uaByUIz2tPdm for <bridge@lists.linux-foundation.org>;
 Sun, 25 Apr 2021 15:52:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B613D40129
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:52:24 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id t3so331272plz.1
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 08:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RNOs0gippc48oI1ljVSqLonFCd5o2axGJZBKtTvPhSc=;
 b=bvDRD6V45T+aam+5saAJ+SuWVFHrBil11q/s2FR4D5/4KC+7XdTT9ycg0X2YAHX77x
 255DPBeqEZuFzM0uaLq3X/uudpcGTOpcag1WF1LE0KBjimAXli0Chwr+5SxiwJxXSWmk
 ifi7wN4XZIK0F8kuzbGk4n1chL7sp7ULLZ50Wgk6mPLwu1q9Q5br9lTOG+Tq4gPgGy+L
 O4WmOgbGYMUw0BY00uRQicDWPxcXLdXk/h3MEGSPiiuUv0LwJZAfmh9PI7nkBmxD8TMD
 z7odcj7Z3zUlSdgaqnDDy0s/eCkooLVLPB7FhlUqp6ucedOaQwOlEUfY1Coada/V+Qyn
 Tngw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RNOs0gippc48oI1ljVSqLonFCd5o2axGJZBKtTvPhSc=;
 b=KkFedO4wC7Qn5VBMdEoXr0CpjV0GS4Hwgdfac8SCabFzWPOPqfdq1WYdLx/Lq6A2AM
 dLdvH9phN3aNf6kydFC5sptkEon24uWOb3WX4XolmSE00aNkmA6xoLmPZX4D3kdci+zj
 WQPqLyv6GtFnXw8JJqhQ3IOEGqo6Pk+p6KPUKmhJdrSFc199TyhNGazkJrnC6QRpBElT
 LnpwnidDkdp8vjpK93NXiBWbauNFraeZNO4dGjRR+AXs6KzRRRHBcU+akb09XwPtbqR/
 7X6WAT1VBDAM9L1vaAY9x+sXP34ACaLdv6TFJYh9mFMyiZaEpSLVkzQhx+eBzBUNpWb6
 04EQ==
X-Gm-Message-State: AOAM531z5MO3RUGMYj38xaRVYaPZlzyu6cZ46RhgH2m0mxN65GXSYnS0
 mXBh8aIz8p8vkFZMv4y6kRU=
X-Google-Smtp-Source: ABdhPJycM4ArsB2kx45wxdY2QQgAXkUWUUwvsnm+PDVxiSE12qHeRykpDsJa84bzrWXyhQAXHMnVoQ==
X-Received: by 2002:a17:903:310a:b029:ed:2b66:107d with SMTP id
 w10-20020a170903310ab02900ed2b66107dmr1043549plc.12.1619365944096; 
 Sun, 25 Apr 2021 08:52:24 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id v21sm1563936pjg.9.2021.04.25.08.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Apr 2021 08:52:23 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 yoshfuji@linux-ipv6.org, netdev@vger.kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, roopa@nvidia.com,
 nikolay@nvidia.com, ast@kernel.org, andriin@fb.com, daniel@iogearbox.net,
 weiwan@google.com, cong.wang@bytedance.com, bjorn@kernel.org,
 herbert@gondor.apana.org.au, bridge@lists.linux-foundation.org
Date: Sun, 25 Apr 2021 15:52:05 +0000
Message-Id: <20210425155207.29888-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:25 +0000
Cc: ap420073@gmail.com
Subject: [Bridge] [PATCH net 0/2] Subject: [PATCH net 0/2] net: fix lockdep
	false positive splat
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

This patchset is to fix lockdep false positive splat in multicast part of
the bridge.

When mdb or multicast config is changed, it acquires multicast_lock,
which is a per-interface(bridge) lock.
So, spin_lock_nested() should be used instead of spin_lock() because
interfaces can be recursive.
The spin_lock_nested() needs 'subclass' parameter.

The first patch adds a new helper function, which returns the nest_level
variable under RCU. The nest_level variable can be used as 'subclass'
parameter of spin_lock_nested().
The second patch fix lockdep false positive splat in the bridge multicast
part by using netdev_get_nest_level_rcu().

Taehee Yoo (2):
  net: core: make bond_get_lowest_level_rcu() generic
  net: bridge: fix lockdep multicast_lock false positive splat

 drivers/net/bonding/bond_main.c |  45 +---------
 include/linux/netdevice.h       |   1 +
 net/bridge/br_mdb.c             |  12 +--
 net/bridge/br_multicast.c       | 146 ++++++++++++++++++++------------
 net/bridge/br_multicast_eht.c   |  18 ++--
 net/bridge/br_private.h         |  48 +++++++++++
 net/core/dev.c                  |  44 ++++++++++
 7 files changed, 204 insertions(+), 110 deletions(-)

-- 
2.17.1

