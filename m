Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF464BF955
	for <lists.bridge@lfdr.de>; Tue, 22 Feb 2022 14:29:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBF074055F;
	Tue, 22 Feb 2022 13:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYzLs-D2i7ob; Tue, 22 Feb 2022 13:29:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C98A8405AE;
	Tue, 22 Feb 2022 13:29:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F3BEC0073;
	Tue, 22 Feb 2022 13:29:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F0D7C0011
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E4F08131C
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGosuUbBHjHV for <bridge@lists.linux-foundation.org>;
 Tue, 22 Feb 2022 13:29:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D14A81302
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:23 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id 29so9823191ljv.10
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 05:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=VHfLSHEUp8KFCoSMOat+t/9h+kqq+wol9Ucvkw0K0Ko=;
 b=el49x+sn8P8oo55vRYxMrzV9h6912Vs30PpYWE8XEE5Rg+Hbs6HMyLY17n57nDsZ7O
 aoqx1c9OHaZ+Io5wS879xBafzK7c3Nf0tDkUmGyZL/zAGoHi75UCpa8k6+houBXp1q4V
 oFKaIFEQ1XZjaAI9XSfYbL/ejqEd9A3NgguMLlye8h++oKStvlezt2WHfREbhW9tu78h
 TOmJy3YMPDou7kHbHKL01G6PML1X6EUBiyYiH69UE2IfX89VoVAYcQg3lIcVJ2eK9Xgr
 MRsKNi1LEy5RTLMHVHqNe/dArG8PdYs/+741BQpMPmFGCW6ZciZRDkhPEpznBW+slsoA
 /Ong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=VHfLSHEUp8KFCoSMOat+t/9h+kqq+wol9Ucvkw0K0Ko=;
 b=6fvPL3OFs1mVUrlnq/gIDXCG2WTDfy63iAn/qfFzE3F1K6AeSHxbUfirBAvWcixfeQ
 7uKyTX4bC1qXcVZ1hDwVPFVVwQSRsYF5Uog2ZCpoV3oujC/JrltAKuVgHH+VnmDowH4W
 8CAMJIHOrrLVD752R26Z8sN78pg170cwlXrOqNQEkky/fIGaqmFdt+SufAMLGvSCASdv
 V8dEYAZ+wEwlCZvWjXt3waFjRlQc0lEt3BT4oMYscL1z0pFav6QdoCHzek81he9W998j
 pdC9kqT2lJuz48uIkFbAe4PL5nqgjP+aKRgBhe9CZeBe1FGP4hjD/vufxv2/bnTSajl5
 Wseg==
X-Gm-Message-State: AOAM531/a+SBI/MlFJB2XURf9bjcwV1VH8Lg91RUG/McnhqF4zqpKTy8
 MtET+gmqgSW/asYfD5SBJv0=
X-Google-Smtp-Source: ABdhPJxlMGmaG+tjtwWeeYytkr79toeqRMRJY7lpZtYdhn6zv6UTQAyG41KqbPEYkrroWlEL+S63rA==
X-Received: by 2002:a2e:a270:0:b0:245:f51f:354 with SMTP id
 k16-20020a2ea270000000b00245f51f0354mr18263908ljm.497.1645536560909; 
 Tue, 22 Feb 2022 05:29:20 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id e22sm1703685ljb.17.2022.02.22.05.29.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 05:29:20 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 22 Feb 2022 14:28:13 +0100
Message-Id: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v4 0/5] Add support for locked bridge
	ports (for 802.1X)
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

This series starts by adding support for SA filtering to the bridge,
which is then allowed to be offloaded to switchdev devices. Furthermore
an offloading implementation is supplied for the mv88e6xxx driver.

Public Local Area Networks are often deployed such that there is a
risk of unauthorized or unattended clients getting access to the LAN.
To prevent such access we introduce SA filtering, such that ports
designated as secure ports are set in locked mode, so that only
authorized source MAC addresses are given access by adding them to
the bridges forwarding database. Incoming packets with source MAC
addresses that are not in the forwarding database of the bridge are
discarded. It is then the task of user space daemons to populate the
bridge's forwarding database with static entries of authorized entities.

The most common approach is to use the IEEE 802.1X protocol to take
care of the authorization of allowed users to gain access by opening
for the source address of the authorized host.

With the current use of the bridge parameter in hostapd, there is
a limitation in using this for IEEE 802.1X port authentication. It
depends on hostapd attaching the port on which it has a successful
authentication to the bridge, but that only allows for a single
authentication per port. This patch set allows for the use of
IEEE 802.1X port authentication in a more general network context with
multiple 802.1X aware hosts behind a single port as depicted, which is
a commonly used commercial use-case, as it is only the number of
available entries in the forwarding database that limits the number of
authenticated clients.

      +--------------------------------+
      |                                |
      |      Bridge/Authenticator      |
      |                                |
      +-------------+------------------+
       802.1X port  |
                    |
                    |
             +------+-------+
             |              |
             |  Hub/Switch  |
             |              |
             +-+----------+-+
               |          |
            +--+--+    +--+--+
            |     |    |     |
    Hosts   |  a  |    |  b  |   . . .
            |     |    |     |
            +-----+    +-----+

The 802.1X standard involves three different components, a Supplicant
(Host), an Authenticator (Network Access Point) and an Authentication
Server which is typically a Radius server. This patch set thus enables
the bridge module together with an authenticator application to serve
as an Authenticator on designated ports.


For the bridge to become an IEEE 802.1X Authenticator, a solution using
hostapd with the bridge driver can be found at
https://github.com/westermo/hostapd/tree/bridge_driver .


The relevant components work transparently in relation to if it is the
bridge module or the offloaded switchcore case that is in use.

Hans Schultz (5):
  net: bridge: Add support for bridge port in locked mode
  net: bridge: Add support for offloading of locked port flag
  net: dsa: Include BR_PORT_LOCKED in the list of synced brport flags
  net: dsa: mv88e6xxx: Add support for bridge port locked mode
  selftests: forwarding: tests of locked port feature

 drivers/net/dsa/mv88e6xxx/chip.c              |   9 +-
 drivers/net/dsa/mv88e6xxx/port.c              |  29 +++
 drivers/net/dsa/mv88e6xxx/port.h              |   9 +-
 include/linux/if_bridge.h                     |   1 +
 include/uapi/linux/if_link.h                  |   1 +
 net/bridge/br_input.c                         |  11 +-
 net/bridge/br_netlink.c                       |   6 +-
 net/bridge/br_switchdev.c                     |   2 +-
 net/dsa/port.c                                |   4 +-
 .../testing/selftests/net/forwarding/Makefile |   1 +
 .../net/forwarding/bridge_locked_port.sh      | 180 ++++++++++++++++++
 tools/testing/selftests/net/forwarding/lib.sh |   8 +
 12 files changed, 254 insertions(+), 7 deletions(-)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked_port.sh

-- 
2.30.2

