Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFEA586757
	for <lists.bridge@lfdr.de>; Mon,  1 Aug 2022 12:25:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22D9160AEF;
	Mon,  1 Aug 2022 10:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22D9160AEF
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=brWrA3BH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNEW-zbaFJ2o; Mon,  1 Aug 2022 10:25:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 77B786068D;
	Mon,  1 Aug 2022 10:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77B786068D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D36FC0071;
	Mon,  1 Aug 2022 10:25:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5AA1C002D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B97C740A38
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B97C740A38
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=brWrA3BH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-mi6P10haLB for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jul 2022 16:03:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB942408B7
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB942408B7
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:44 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id b7so4227321qvq.2
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 09:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zgmGl0zOLMrX607mh9XkqEoaOPwjCXk2yDE13rCP8S4=;
 b=brWrA3BHLdXgaMLYNPn15nUSgJ+ICxG8mg77/mh6pbRg07FjjG6pva4xRLwxB0eghG
 Dfq+F+V+x1NOiHFkSbvx4tMx1QCHMIqqEBpB/oHd3QWHQqP92Z2xKTlHXFeP6Dx3NAZe
 sgtPmxYbpV0bnJUMme0La5BDx5Cp7c0CaFwYJczWmdWyvrpFLdPNJzk0Yv4J8rFViFe4
 ha3HU+A9U8BGTgtkjkQaBg7QnHTC3qfTulG7b6UZPbBImBZDyYVk72mOQ+V89AT2p5jo
 KppSykFsfouzX7UG9IQw2bdyE/Zmw5sx5Xah/jVB5rKs+S/K+2cvEFj2Dk/rj+VK9YS0
 4rog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zgmGl0zOLMrX607mh9XkqEoaOPwjCXk2yDE13rCP8S4=;
 b=Q0nTTtLcfVGjs1lNpDNb7uH66dQqa6jp/wocSIHftDqbeT06He6BPyfSUnzDNPRjsb
 dZzHq05x46lEk82AP5AnrIA3D0d35xv6tHRpx/RSqfGAay6MdSkxXPyaXGMNuY+OcGiR
 5JmMYCiK02B9t8MHKzE7554Fl67o4M56FKR7qYrnA0ORskve6HDDpmMrI9y3BM7Uqvj8
 GSiRM/+bp5CXw/OSNzZukZZ4F6CCKm/mdV2hKMVpxt5k7Fnm5zuIsprqkRGpLp9xw1HF
 dHBiocUmD6ynl/XfyQGBlNXSo0wXBahwZAFIeCUJAblpRKk/T+QLXOGn4T98aZ3YCakC
 1poQ==
X-Gm-Message-State: ACgBeo0G4nJrbiDHg1+pzS1SEjiuOepM3HohVZExl292v/trW6HtEfMZ
 z0gbPU2dY8lbZ703TOa8YnU=
X-Google-Smtp-Source: AA6agR7TvxAutxwqOLc1mZR6yYJ9ibyJ7OtPept/S/5Xwy40UMUhzGvKys6n5v2Fi0v3+PXvSzM4nQ==
X-Received: by 2002:a05:6214:29c7:b0:473:7b25:f950 with SMTP id
 gh7-20020a05621429c700b004737b25f950mr7668120qvb.95.1659197023561; 
 Sat, 30 Jul 2022 09:03:43 -0700 (PDT)
Received: from ada ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 206-20020a3703d7000000b006b5840f3eefsm4447103qkd.130.2022.07.30.09.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jul 2022 09:03:42 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: aroulin@nvidia.com
Date: Sat, 30 Jul 2022 12:03:29 -0400
Message-Id: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 01 Aug 2022 10:25:24 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 0/3] net: vlan: fix bridge binding
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
  net: bridge: export br_vlan_upper_change
  net: 8021q: fix bridge binding behavior for vlan interfaces
  selftests: net: tests for bridge binding behavior

 include/linux/if_bridge.h                     |   9 ++
 net/8021q/vlan.h                              |   2 +-
 net/8021q/vlan_dev.c                          |  21 ++-
 net/bridge/br_vlan.c                          |   7 +-
 tools/testing/selftests/net/Makefile          |   1 +
 .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
 6 files changed, 176 insertions(+), 7 deletions(-)
 create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh

-- 
2.25.1

