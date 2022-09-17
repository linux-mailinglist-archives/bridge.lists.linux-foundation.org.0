Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6E95BBA36
	for <lists.bridge@lfdr.de>; Sat, 17 Sep 2022 22:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1655840183;
	Sat, 17 Sep 2022 20:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1655840183
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=WnJNpsrV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eKofa-olzUGm; Sat, 17 Sep 2022 20:18:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9B8964016B;
	Sat, 17 Sep 2022 20:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B8964016B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31D21C0078;
	Sat, 17 Sep 2022 20:18:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98700C002D
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F7D84016B
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F7D84016B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWxLT4DDweTD for <bridge@lists.linux-foundation.org>;
 Sat, 17 Sep 2022 20:18:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A37E840183
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A37E840183
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:07 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id g12so17899876qts.1
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 13:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=EnLNkzzS7uvp8qzIOHofbmM/lr6EdUZwCfdgBKsBFIA=;
 b=WnJNpsrV7HdjGnzo2nkpOIxfT2GxSQjATwHQe5v3dxoDnhipC0pkWqvbDRaaAkHUQl
 BjuI5IHPTPKLxcBGbBky4ToOKprKzwbMjyJdETPc++bA6kflYiSa0oVI5YALYKtStEuX
 s1AF/+zVhqgaqkyDkFWxaQAq6J2FxoK8ra3/X/7zVu9rmMsb+T//OX3VmA7rJq+gLfEe
 gOxjRTSUCB8XAqhqASuiItzDRhGM19ybGOKOn2CR581W61gTdJ96XBxuQCX63STtniZn
 E1DEGEdZCY7FTpS43bWkkxm1MTCoN7tiTtmtCzJmyvIzjeVwjJ6IEahZE+9GSiOCGeZT
 m3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=EnLNkzzS7uvp8qzIOHofbmM/lr6EdUZwCfdgBKsBFIA=;
 b=6jhrDnDAybtUHhG/0+TKI9wbpStyJ2h8Nc282gaY9na6tGSgIBSVlP0EO8QeuZXPyX
 oGKmEzI5mBy13mMMqp+YNVduYirrQ/1OzwT5f+VAnpaNAnC5fjrUG3r+wCJO9kuETShg
 jmL28zwfTNpg6rCn6lGwpQcFcdXMNks8ToZ+IzQccdUPTFpOJi3MtI3HlrPNhbXCGA/4
 /OzoIey6N4wI5LxqMPm+EKhsWTaF8sJxn2tZoAoDXw8nqShHQNEngevSPcLDZrTJScjX
 J+sOsyCPZ9TZLC6IyXf9C12Ygx5aDdy1PPrGWNXKAThRlfVVYlIKbVUzz1vNorAbtIl5
 s7zg==
X-Gm-Message-State: ACrzQf3+Da5EqhQ/VKyp8LuQ3aBg1++X3AQeKRG8IdFxDQ8Fwtfiiosf
 zvKZx0Q/GECGFQ8MKDDEZg8=
X-Google-Smtp-Source: AMsMyM7cM/HW3xBioBWezl3X+3QEZQyJkj85m12XBnHv7oTpjrxgZgVMCPyE7emse7IXOB0C/oO1Kg==
X-Received: by 2002:ac8:57ca:0:b0:35b:b51f:94fc with SMTP id
 w10-20020ac857ca000000b0035bb51f94fcmr9524213qta.276.1663445886429; 
 Sat, 17 Sep 2022 13:18:06 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 l2-20020a37f902000000b006b9c355ed75sm8826647qkj.70.2022.09.17.13.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Sep 2022 13:18:06 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Sep 2022 16:17:56 -0400
Message-Id: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 0/5] net: vlan: fix bridge binding
	behavior and add selftests
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

When bridge binding is enabled for a vlan interface, it is expected
that the link state of the vlan interface will track the subset of the
ports that are also members of the corresponding vlan, rather than
that of all ports.

Currently, this feature works as expected when a vlan interface is
created with bridge binding enabled:

  ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
        bridge_binding on

However, the feature does not work when a vlan interface is created
with bridge binding disabled, and then enabled later:

  ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
        bridge_binding off
  ip link set vlan10 type vlan bridge_binding on

After these two commands, the link state of the vlan interface
continues to track that of all ports, which is inconsistent and
confusing to users. This series fixes this bug and introduces two
tests for the valid behavior.

Sevinj Aghayeva (5):
  net: core: export call_netdevice_notifiers_info
  net: core: introduce a new notifier for link-type-specific changes
  net: 8021q: notify bridge module of bridge-binding flag change
  net: bridge: handle link-type-specific changes in the bridge module
  selftests: net: tests for bridge binding behavior

 include/linux/if_vlan.h                       |   4 +
 include/linux/netdevice.h                     |   3 +
 include/linux/notifier_info.h                 |  21 +++
 net/8021q/vlan.h                              |   2 +-
 net/8021q/vlan_dev.c                          |  20 ++-
 net/bridge/br.c                               |   5 +
 net/bridge/br_private.h                       |   7 +
 net/bridge/br_vlan.c                          |  18 +++
 net/core/dev.c                                |   7 +-
 tools/testing/selftests/net/Makefile          |   1 +
 .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
 11 files changed, 223 insertions(+), 8 deletions(-)
 create mode 100644 include/linux/notifier_info.h
 create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh

-- 
2.34.1

