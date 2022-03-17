Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B54DC305
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:39:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AA0B40B14;
	Thu, 17 Mar 2022 09:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7zf6JWUCtb4; Thu, 17 Mar 2022 09:39:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D68884000B;
	Thu, 17 Mar 2022 09:39:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 946F2C0082;
	Thu, 17 Mar 2022 09:39:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B3A24C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DC1A8433D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JrSQNtm9gpI5 for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:39:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4569484314
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:17 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id q5so6408287ljb.11
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=IAni6CZ3rMr9AtNTUfmAVEBymHaVw/hvggCMmkUx9/o=;
 b=Mb0vVZplMfFqQljm0vS4KbqDPo346w3lbKqjCZZmv816h8VP9QGTpJ7UBew3uB/4PM
 Hh6SAqiF4HSyR7s3C3cZ/Ykd7l+4Kpfj3ERrMuELhABalzRQtZ+ccHLbLTrgjvchnqgw
 ftcAbs3BBrIvJPli6osV4wKOTTH6o0lFhm0x3JwLV49vPM3EzP6SMQjV9QvLN8eASWbl
 irD5YC7ApxtpjJx0JXTgKFt5FTDuAJsVWS3zp+F9k0Rznfwscex4M3OTTTkWlOZg7A+Z
 Cgj8fsscSrERR7eMSOGezU5wigTHeU285EGVS7/yZRf42kvYw9GG16ZKklcbFHJcnybW
 P20g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=IAni6CZ3rMr9AtNTUfmAVEBymHaVw/hvggCMmkUx9/o=;
 b=dgH8s0mmXQ8YM62OhueMfzvrtL45UmDT1ZhqXS0HNNeYY40zaQumlo0hrOrjWm/kFC
 rNrWe/zkEsYaHi7ZiD3cKJyva7SqmZK5kyHl7y/1Euqfx3WAbLrlF7OrEzX5c8aTsBYa
 FXg0v4H6IBGF1neJThvjw0Y9r5QDXlBa2fMwyvLinj+ST3kWumgywbVLFFJEvFfwIfS7
 WsG2NbkVvqceFDkOqRFlGP7AhHmRFiEVv1ujywyBjD6VcI+6XsSnxbpJ2KUUVGRW36ks
 SUlD4Qf7HsC83Wwn/35p7Wsu2+oFw78NS380ghmA+MQW2bOOWE1QcfZXoD6uFmlfBLJ5
 wypw==
X-Gm-Message-State: AOAM530d5baXL1PNr0GHhgrNJetia0sdxNpkIArA1FWoUq+OoECUe744
 3O13ueocJi9MkrKzypWd2Rk=
X-Google-Smtp-Source: ABdhPJwCJ3qid9v1XmzSyyNEYPw8NR7deFnj9+fvlK/qXfsIozHJaXLcZCtZaYbFSPEkAMpTl5ZvqA==
X-Received: by 2002:a2e:804d:0:b0:246:1aba:af59 with SMTP id
 p13-20020a2e804d000000b002461abaaf59mr2258039ljg.508.1647509955084; 
 Thu, 17 Mar 2022 02:39:15 -0700 (PDT)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 w13-20020a2e998d000000b002496199495csm113479lji.55.2022.03.17.02.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 02:39:14 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 17 Mar 2022 10:38:58 +0100
Message-Id: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 0/4] Extend locked port feature with
	FDB locked flag (MAC-Auth/MAB)
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

This patch set extends the locked port feature for devices
that are behind a locked port, but do not have the ability to
authorize themselves as a supplicant using IEEE 802.1X.
Such devices can be printers, meters or anything related to
fixed installations. Instead of 802.1X authorization, devices
can get access based on their MAC addresses being whitelisted.

For an authorization daemon to detect that a device is trying
to get access through a locked port, the bridge will add the
MAC address of the device to the FDB with a locked flag to it.
Thus the authorization daemon can catch the FDB add event and
check if the MAC address is in the whitelist and if so replace
the FDB entry without the locked flag enabled, and thus open
the port for the device.

This feature is known as MAC-Auth or MAC Authentication Bypass
(MAB) in Cisco terminology, where the full MAB concept involves
additional Cisco infrastructure for authorization. There is no
real authentication process, as the MAC address of the device
is the only input the authorization daemon, in the general
case, has to base the decision if to unlock the port or not.

With this patch set, an implementation of the offloaded case is
supplied for the mv88e6xxx driver. When a packet ingresses on
a locked port, an ATU miss violation event will occur. When
handling such ATU miss violation interrupts, the MAC address of
the device is added to the FDB with a zero destination port
vector (DPV) and the MAC address is communicated through the
switchdev layer to the bridge, so that a FDB entry with the
locked flag enabled can be added.

Hans Schultz (4):
  net: bridge: add fdb flag to extent locked port feature
  net: switchdev: add support for offloading of fdb locked flag
  net: dsa: mv88e6xxx: mac-auth/MAB implementation
  selftests: forwarding: add test of MAC-Auth Bypass to locked port
    tests

 drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
 drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
 drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
 drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
 drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 ++++++-
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 75 +++++++++++++++++++
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 +++++
 drivers/net/dsa/mv88e6xxx/port.c              | 17 ++++-
 drivers/net/dsa/mv88e6xxx/port.h              |  1 +
 include/net/switchdev.h                       |  3 +-
 include/uapi/linux/neighbour.h                |  1 +
 net/bridge/br.c                               |  3 +-
 net/bridge/br_fdb.c                           | 13 +++-
 net/bridge/br_input.c                         | 10 ++-
 net/bridge/br_private.h                       |  5 +-
 .../net/forwarding/bridge_locked_port.sh      | 29 ++++++-
 16 files changed, 206 insertions(+), 17 deletions(-)
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h

-- 
2.30.2

