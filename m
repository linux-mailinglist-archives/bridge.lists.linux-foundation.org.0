Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6533ED94B
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 16:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0761C4029D;
	Mon, 16 Aug 2021 14:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5RghRF4J1HLg; Mon, 16 Aug 2021 14:57:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id ADEE3402DF;
	Mon, 16 Aug 2021 14:57:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5F13EC0022;
	Mon, 16 Aug 2021 14:57:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E4AEC000E
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FB1F40333
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPAGhGRo9mO7 for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 14:57:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBFB74032F
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:18 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id qk33so32230224ejc.12
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 07:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6TDmKThXQnwJ9/lpiXTr7wPbuz+EjXXtj7u1wDzkO5M=;
 b=Y19/YiD3KnkC03qYx0indOUyDBvwrWKUVIY0ybeFfFx8Zf9BHT3Nuq/xciwsycA2vU
 iS2P3ROP/iZHE6b8+2TN8Kj2yAFnpdGKLufBA5UMLJkWMjhatQ0mdctRXDWg7mUgnhjx
 X1MuJzqShYg7y94MX/NnDa4qOqKF0bebVJtuxmDPc0VNNwdx7TYn/m4yb8GsTyabnyzn
 /dQOE8LU2jD9+mvheSmbs9+VY0cXrJmrHZq04NN2mzCxMADtxBxjxa/wPI/wfuTVTWuT
 F1g1JTst4uA1u6IKVlIlmJATYPyAopXuvvMZ9VG0bOJHfX5Svvq9OoMYyWPzA2Td8m0j
 BJ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6TDmKThXQnwJ9/lpiXTr7wPbuz+EjXXtj7u1wDzkO5M=;
 b=NVMFB9V0iwFqnPWMxG6edUylvcoXPiHP0aeQYAN+td3gzJNrribkDFtCv32qHJRx2S
 bfulbm6kVGF7/HJzitT6QqMw0msr3VF4UQQw8st1aAaUsuo2Z0xTIHLQ1QPpZPgoYkrm
 Fcv8FlErwVq4Cg5ye1OhWufSn+qigcdHKZ452rMMPKeSUZ0My1lPlW1ecwPBj05vxi6V
 LUIaY9ZtevdnBX7xt+pZnTOGW/yLxxC4J7bk0/NkcErovhSnxjnl/fxUXYtmXHwlb4dt
 hRst966EBMbSzUfPLXsSgiPvDFDdZ69KUrGt5EvO5RyvaPDaDOuH6b9VpP0hRkQUcf4T
 v4gA==
X-Gm-Message-State: AOAM531e4NSX5G6JpplWJLo7icRiZc5p0YdfYtHcM2S7KFFIclhG69iP
 UEE7C+AjTUteGEiD38AYECxPkw==
X-Google-Smtp-Source: ABdhPJxMivDeVFaVS6IieUvs+gs1sFF0prLEDmZsjqz3F/AF9RNu/VyGdjga7LDRA81fwYXQRwfUSA==
X-Received: by 2002:a17:906:11c7:: with SMTP id
 o7mr14730162eja.480.1629125837098; 
 Mon, 16 Aug 2021 07:57:17 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t25sm4946076edi.65.2021.08.16.07.57.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 07:57:16 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 17:57:03 +0300
Message-Id: <20210816145707.671901-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/4] net: bridge: vlan: fixes for vlan
	mcast contexts
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Hi,
These are four fixes for vlan multicast contexts. The first patch enables
mcast ctx snooping when adding already existing master vlans to be
consistent with the rest of the code. The second patch accounts for the
mcast ctx router ports when allocating skb for notification. The third
one fixes two suspicious rcu usages due to wrong vlan group helper, and
the fourth updates host vlan mcast state along with port mcast state.

Thanks,
 Nik


Nikolay Aleksandrov (4):
  net: bridge: vlan: enable mcast snooping for existing master vlans
  net: bridge: vlan: account for router port lists when notifying
  net: bridge: mcast: use the correct vlan group helper
  net: bridge: mcast: toggle also host vlan state in
    br_multicast_toggle_vlan

 net/bridge/br_mdb.c          | 30 ++++++++++++++++++++++++++++++
 net/bridge/br_multicast.c    | 10 +++++++---
 net/bridge/br_private.h      |  7 +------
 net/bridge/br_vlan.c         |  1 +
 net/bridge/br_vlan_options.c | 17 +++++++++--------
 5 files changed, 48 insertions(+), 17 deletions(-)

-- 
2.31.1

