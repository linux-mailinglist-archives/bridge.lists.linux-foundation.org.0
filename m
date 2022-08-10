Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5598A58E532
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 05:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4CCA81A0D;
	Wed, 10 Aug 2022 03:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4CCA81A0D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=prA8AdKy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HiHwNKEwxON7; Wed, 10 Aug 2022 03:11:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 42EF58194A;
	Wed, 10 Aug 2022 03:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42EF58194A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7EB2C007B;
	Wed, 10 Aug 2022 03:11:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0A86FC002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD2E4815AB
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD2E4815AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W5mhV6F9W3h1 for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 03:11:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F038C8149D
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F038C8149D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:40 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id f14so10278519qkm.0
 for <bridge@lists.linux-foundation.org>; Tue, 09 Aug 2022 20:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=Qsaks7TDshu/iK351NtgsaMj5QdevHA6XP1FxmCgHpM=;
 b=prA8AdKyGpyxCd8Aos45URzvOY5yjVOK3DMwVJn4Uyj6A9PHRoPL8JiQJOeze0vVH1
 IymCOhC3puc17K5WM58lCpsEP+oWXmVcoQRE9PrPlxaHxsNfRv2oW+sEYwuMHbcSzJvT
 QICYi5m9/jfaan/f4/MNKyZ/LM9l29ejjs3YAuHaZ20kJTOrlwEcUe3hUKhBYG6PDaA7
 FU1gIjwleabfvG//4FVXGxTvOPROTeeL/vDrYHuxPTq0fyJkeyruwg6zr6dnGtJdrGSj
 c7dWFpmRGGF8pIYDr6i4nJ96ey9CCNsrhkBfsmBn+Rbqa27+5lPmy8DJ9juOPhhgogoa
 57og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=Qsaks7TDshu/iK351NtgsaMj5QdevHA6XP1FxmCgHpM=;
 b=g+8rTwbVMHhpUJs8fzijTeFHmIe9ZGnvzBW1xm7YQw5JOdZiqKq/ZB9XSkootqZitb
 JgM5nJ+aAKLezR34axXM9kDOyMDMwCfXcB+r5rRPQaai2H9a2QK+IIwGJtTPtM3zJAI2
 c87KMlOlNp/bU61utbyYQnlVHofURBtcyhkF+QruYqEC6ZcMHn/t3lucjOYk8dSU6x3n
 DkQ9UD882e1HMBJOTFtPAZvXQFmMCBNBx96b2GA/P8rLDT20GmYANubjDOBrJxmQ6Jwe
 l4aPaXhE6kyMoskx/+j3AwdW+7j7afyzN7c9aG0MCTgm44YMgzbAskvFb/eac5crV+0B
 /ZYQ==
X-Gm-Message-State: ACgBeo2QAArcwi9E0C+E/9WWNqTAJ9xP68LnyPuNijbnALu5SYFiTj2n
 AClSBAjwQbOGleTV344NgY4=
X-Google-Smtp-Source: AA6agR5RJo1Lm57r4mzN/1g7ozgvtSDEiiMrkxKg25ahnu1rHmeYaW1sO0yWoCAVxyWIbLwsyWKnIA==
X-Received: by 2002:a05:620a:2455:b0:6b9:8fd7:7da1 with SMTP id
 h21-20020a05620a245500b006b98fd77da1mr3014232qkn.178.1660101099745; 
 Tue, 09 Aug 2022 20:11:39 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 d16-20020a05620a241000b006b893d135basm13379899qkn.86.2022.08.09.20.11.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Aug 2022 20:11:38 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Tue,  9 Aug 2022 23:11:18 -0400
Message-Id: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 0/3] net: vlan: fix bridge binding
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

Sevinj Aghayeva (3):
  net: core: export call_netdevice_notifiers_info
  net: 8021q: fix bridge binding behavior for vlan interfaces
  selftests: net: tests for bridge binding behavior

 include/linux/netdevice.h                     |   2 +
 net/8021q/vlan.h                              |   2 +-
 net/8021q/vlan_dev.c                          |  25 ++-
 net/core/dev.c                                |   7 +-
 tools/testing/selftests/net/Makefile          |   1 +
 .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
 6 files changed, 172 insertions(+), 8 deletions(-)
 create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh

-- 
2.25.1

