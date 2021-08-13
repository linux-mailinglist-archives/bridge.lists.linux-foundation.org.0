Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6863EB743
	for <lists.bridge@lfdr.de>; Fri, 13 Aug 2021 17:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1AE680E35;
	Fri, 13 Aug 2021 15:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0u9zsGDDIpTE; Fri, 13 Aug 2021 15:00:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E310980DAE;
	Fri, 13 Aug 2021 15:00:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 13772C000E;
	Fri, 13 Aug 2021 15:00:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60517C001F
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA00E402BA
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRZ8xnqA2ITe for <bridge@lists.linux-foundation.org>;
 Fri, 13 Aug 2021 15:00:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62D27402DC
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:10 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id i6so15907343edu.1
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 08:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dI0OL75ZDd6qvxHet20KtzBgKETMju9g8K1SgE3M6N0=;
 b=P2UJZm2hzcIeNVyOlO5mFN4pF3gq+JnzhGkW9XxE8KHbLSIohnqzR3b/S2TKmx2yLI
 368ERvOOJ34F7M9EwV8/4IZQofaGhm6rRlan/cy1CbB/n6nGpPQaGTyyHtDjU9lYj55F
 2DAMLTw3Fk2PxmvDZn2aZHxPF1WGk54yVd2NXLS055+9UqegdO1Zq4v9142rNSG0VYx6
 3BoOtU0D1okY9IV9gs3dnZ2A0zNTpqMWJ3v3X4noaDcwo5+F8p0KQmVo8DUzwhfqgOgk
 EPBwbs1IKj725aBLhfJ87NxRB1VyK3NaEuUxREWJ130/v8rxCURGWCQdANoFutyWU5+9
 Q8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dI0OL75ZDd6qvxHet20KtzBgKETMju9g8K1SgE3M6N0=;
 b=r1N7+dUoB/V9NEOgQwGBVExJTlqNUtxe11NVCscThgNzpIC/dpK+qyAlYaWyHDkeou
 WnlgDbf+7JrG/c48HYmaPz1aD2lNUKk6ltXAsNo8wmCPN4sV3weYfsyFO87ISn3x+pkx
 l0xo0sc0ohrdm1cyLi7Nq+ZYXu6vY8LaBv57EU/s1hv/K/osoKpQoq9DVePIbg6J0eY7
 TJAxWOwqH+0yBpELH81d5Lvn4SFQcDOhKZd2hcjDAtjwkKfnrQXW2NV1t94FlXFv2IWG
 I7XruQ3ch2nVsvAd+Q22gN3oMn6sQShVsBqae9Ta8ZoQjHgODX1j+knkWTkLJA5+r0Ve
 QqZw==
X-Gm-Message-State: AOAM5303RCUDKYR0T7BrVzUtFdSew2kQ1IFYB5nzT7vEYa6RTyBV6g3X
 FGGi9AS60CFa206o8BgSshVQ4Q==
X-Google-Smtp-Source: ABdhPJyYifc7+XPWlMVi/7848S4sNcl5ZyARkG/TSdSXEdPB44hSxC6pbR70UhBf0mdQddj4mUJv7Q==
X-Received: by 2002:a50:9b03:: with SMTP id o3mr3555794edi.203.1628866808352; 
 Fri, 13 Aug 2021 08:00:08 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d26sm1015711edp.90.2021.08.13.08.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:00:07 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 13 Aug 2021 17:59:56 +0300
Message-Id: <20210813150002.673579-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/6] net: bridge: mcast: dump querier state
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
This set adds the ability to dump the current multicast querier state.
This is extremely useful when debugging multicast issues, we've had
many cases of unexpected queriers causing strange behaviour and mcast
test failures. The first patch changes the querier struct to record
a port device's ifindex instead of a pointer to the port itself so we
can later retrieve it, I chose this way because it's much simpler
and doesn't require us to do querier port ref counting, it is best
effort anyway. Then patch 02 makes the querier address/port updates
consistent via a combination of multicast_lock and seqcount, so readers
can only use seqcount to get a consistent snapshot of address and port.
Patch 03 is a minor cleanup in preparation for the dump support, it
consolidates IPv4 and IPv6 querier selection paths as they share most of
the logic (except address comparisons of course). Finally the last three
patches add the new querier state dumping support, for the bridge's
global multicast context we embed the BRIDGE_QUERIER_xxx attributes
into IFLA_BR_MCAST_QUERIER_STATE and for the per-vlan global mcast
contexts we embed them into BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE.

The structure is:
  [IFLA_BR_MCAST_QUERIER_STATE / BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE]
  `[BRIDGE_QUERIER_IP_ADDRESS] - ip address of the querier
  `[BRIDGE_QUERIER_IP_PORT]    - bridge port ifindex where the querier was
                                 seen (set only if external querier)
  `[BRIDGE_QUERIER_IP_OTHER_TIMER]   -  other querier timeout
  `[BRIDGE_QUERIER_IPV6_ADDRESS] - ip address of the querier
  `[BRIDGE_QUERIER_IPV6_PORT]    - bridge port ifindex where the querier
                                   was seen (set only if external querier)
  `[BRIDGE_QUERIER_IPV6_OTHER_TIMER]   -  other querier timeout

Later we can also add IGMP version of seen queriers and last seen values
from the queries.

Thanks,
 Nik

Nikolay Aleksandrov (6):
  net: bridge: mcast: record querier port device ifindex instead of
    pointer
  net: bridge: mcast: make sure querier port/address updates are
    consistent
  net: bridge: mcast: consolidate querier selection for ipv4 and ipv6
  net: bridge: mcast: dump ipv4 querier state
  net: bridge: mcast: dump ipv6 querier state
  net: bridge: vlan: dump mcast ctx querier state

 include/uapi/linux/if_bridge.h |  14 +++
 include/uapi/linux/if_link.h   |   1 +
 net/bridge/br_multicast.c      | 211 ++++++++++++++++++++++++++-------
 net/bridge/br_netlink.c        |   5 +-
 net/bridge/br_private.h        |   7 +-
 net/bridge/br_vlan_options.c   |   5 +-
 6 files changed, 199 insertions(+), 44 deletions(-)

-- 
2.31.1

