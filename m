Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B5236C094
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46CE040593;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbUqazh4MT7X; Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 789D3405AB;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7138FC0029;
	Tue, 27 Apr 2021 08:08:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F4050C000B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0E85404EB
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFck0LHU1jLH for <bridge@lists.linux-foundation.org>;
 Sun, 25 Apr 2021 15:57:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28B674032B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:57:56 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id a12so37350748pfc.7
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 08:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BTmvBEVXirwzpsB3Llo7a4KAUL1Zy1yuUG50mcsuR8Q=;
 b=kkbFNAFCFuVuxuYUUcVa7wDCOkZWaNs1pmjhc+TWKfjegHjlDLjeMmaBEfcq+1uyfM
 nzIaHv11oLjsuNJCv9OIZN015g7VycGZ0YzCsIMPPV8FRhbRnkf58BDJ5OTnZOlogWns
 GNNC9/8uphSOM0pTXUFRj2JFtf58qTlE1qet0+EdzFQXYak8/ysF2sYtQYaEmhQlAZNM
 71bjyNzvT5sh4EtqTv9wF+elxX7szmIMgLAQ9DWdwRV4JCdE947UVLjkZZlTML+P5UIu
 x7gyvBTsWiySQmO6HZL5AcooM4dIBadcU605HlqGHJnIHRkX+PN87bQiCOMPO61Wjmw1
 XXlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BTmvBEVXirwzpsB3Llo7a4KAUL1Zy1yuUG50mcsuR8Q=;
 b=udFE0B08AXAHgcgfp4bVc/9whqLB0THeESwTcPokFXv9KmwMg1q6a+e3Ul9lDLFlg3
 +5TXCqn6iMOlu/6OQ2uWapSs1Dgy0PikY06Kv/tbfFY6SDEeo/7jf8OHZGuKcjXGEHf3
 6WrdHAssPcoJ/67KmD4Gh7UcHDxTJ8XNm4OmbbH3Y/6RowzAJzVmMMS6BDU7ipXBj5uJ
 gBCSbXac9vptHoBehM72zvB29fhoJwSpVJcABzwruXaZxYm0HHN/5FhqYHvfpbfXCxbO
 rd9A+y+I77O9WIX9POV/3HMyi1AyDl0v4Bh4hKrBfF4yJb03VnjdokxUu/s2nDtA1jbY
 DRsw==
X-Gm-Message-State: AOAM530PjL8YjauRR8/DUpgscKYsO7vJqyBWWqSZ9Ss6gigFAjWcFRP+
 E1aWvmPlxENH3hWmyyMbf0c=
X-Google-Smtp-Source: ABdhPJw+iqe+445qvMG06giVYEjgnSS6IJmWVJIqpzWhUZAyeexIDX+eXF292COrBG8Mc6ofj0SBLQ==
X-Received: by 2002:a62:808b:0:b029:252:eddc:afb0 with SMTP id
 j133-20020a62808b0000b0290252eddcafb0mr13847226pfd.41.1619366275497; 
 Sun, 25 Apr 2021 08:57:55 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id j26sm8983010pfn.47.2021.04.25.08.57.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Apr 2021 08:57:55 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 yoshfuji@linux-ipv6.org, netdev@vger.kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, roopa@nvidia.com,
 nikolay@nvidia.com, ast@kernel.org, andriin@fb.com, daniel@iogearbox.net,
 weiwan@google.com, cong.wang@bytedance.com, bjorn@kernel.org,
 herbert@gondor.apana.org.au, bridge@lists.linux-foundation.org
Date: Sun, 25 Apr 2021 15:57:40 +0000
Message-Id: <20210425155742.30057-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:25 +0000
Cc: ap420073@gmail.com
Subject: [Bridge] [PATCH net v2 0/2] net: fix lockdep false positive splat
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

v2:
 - Remove dupliate Subject

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

