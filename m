Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9C84BBC7F
	for <lists.bridge@lfdr.de>; Fri, 18 Feb 2022 16:52:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 943AB403A5;
	Fri, 18 Feb 2022 15:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QGLtkTbcU8-S; Fri, 18 Feb 2022 15:52:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 957C0408BF;
	Fri, 18 Feb 2022 15:52:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 28092C0039;
	Fri, 18 Feb 2022 15:52:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 076DDC000B
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E81AC40499
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFA6ZyXmE-1V for <bridge@lists.linux-foundation.org>;
 Fri, 18 Feb 2022 15:52:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6E96403A5
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:52:40 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id r20so4962760ljj.1
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 07:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=NOXnbT0tpVRz48yVyNiEYVuR08OrOB6ChAddX+U2Dyg=;
 b=Q7wn7Cojhp72LZWcdYZkPvTN8okK2pY51HB7JK3PTmbgpA3QEIHAGJ45oLn0iPAOF4
 fywkUlO8uruuKZKVhGX7wOLR3QEvXI6BtHNwd+1dAMlPPMeCMvyhhnFOW6nGctAHtGQl
 bJsLhvd94Qy0MG7Ig3AOFpZsdNkh7RkMbRy3Q3L5G0rS8UUrObcpEzImtveVM7AREszh
 QaIgPxJXxqVKwhYed4Lq3+p6JkKvtFSjK+tplUZhlSwQZD8N1gS3IhOo1XmaGg6hJ//p
 irUVkMfieS5I8LPWywcKPc6LYMTeOIHa8HG3y6T976yKTnOR1/LEKLhgPdeAoZrip+/q
 hHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=NOXnbT0tpVRz48yVyNiEYVuR08OrOB6ChAddX+U2Dyg=;
 b=NSlGMhgSFulJ9HMaytPG4GPC4PXsQIk8omhjczWwvLeOplvl3IVptK3jGMoUeBjEjp
 nL/nfofvGSzpKBycZ2ZmfDq2rStmLEpTt1rajuFHASxp0sgbGUnCyR1byQlleKuiJRhR
 bp/79jT8I/OfxN73PBZlf5gOh55ADMDNOqSmlON7ip/7Zl43fdswNQCyLoIU3wHWRE2N
 tFwOIWOxLXVY/bGjyo4YpddTon+5qZFariCBnLOtb/SvSN3ghvgQkNRYSha9AQRTqBO1
 AApT2+mtdiykkDJUVKygK6SkCYfyb/OKr/cdA42y0mG5Z4p8qD8PvS8eHB0pV+3W0pMg
 81Aw==
X-Gm-Message-State: AOAM533hGi4nXxtp/ZzpdMebIfcXvB+pTlPZKIT5kAz+RMUPDL2dAB4d
 Btl5EwaMN9XcdBHZgchtr28=
X-Google-Smtp-Source: ABdhPJxhn5cm48yKfZ9eYbWm1cULCmycRvaHWekI3UFoL9S1NcAVCK9NzKmPskiuv94wweFQPHV+JA==
X-Received: by 2002:a2e:9693:0:b0:239:3f32:671f with SMTP id
 q19-20020a2e9693000000b002393f32671fmr6234463lji.42.1645199558533; 
 Fri, 18 Feb 2022 07:52:38 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id v11sm295453lfr.3.2022.02.18.07.52.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 07:52:37 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 18 Feb 2022 16:51:43 +0100
Message-Id: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH net-next v3 0/5] Add support for locked bridge
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
  net: dsa: Add support for offloaded locked port flag
  net: dsa: mv88e6xxx: Add support for bridge port locked mode
  selftests: forwarding: tests of locked port feature

 drivers/net/dsa/mv88e6xxx/chip.c              |   9 +-
 drivers/net/dsa/mv88e6xxx/port.c              |  33 ++++
 drivers/net/dsa/mv88e6xxx/port.h              |   9 +-
 include/linux/if_bridge.h                     |   1 +
 include/uapi/linux/if_link.h                  |   1 +
 net/bridge/br_input.c                         |  10 +-
 net/bridge/br_netlink.c                       |   6 +-
 net/bridge/br_switchdev.c                     |   2 +-
 net/dsa/port.c                                |   4 +-
 .../testing/selftests/net/forwarding/Makefile |   1 +
 .../net/forwarding/bridge_locked_port.sh      | 174 ++++++++++++++++++
 tools/testing/selftests/net/forwarding/lib.sh |  16 ++
 12 files changed, 259 insertions(+), 7 deletions(-)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked_port.sh

-- 
2.30.2

