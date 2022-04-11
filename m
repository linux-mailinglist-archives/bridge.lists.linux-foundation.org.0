Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2570D4FBD54
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC614408FF;
	Mon, 11 Apr 2022 13:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4wzzVGAP5Fp; Mon, 11 Apr 2022 13:38:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CD3DD408DC;
	Mon, 11 Apr 2022 13:38:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 834F7C002C;
	Mon, 11 Apr 2022 13:38:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98511C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 867DA408DC
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrL-v8eNJ4Pn for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:38:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 719374014D
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:54 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id b21so26707548lfb.5
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=KP4a5Nq5xLfHHBjrnafFha3MFdJr67mljPaP7U+xutA=;
 b=F1Dl0ogpPpEfisEpBYoUipD0dtHfWYZsL+vsWu36yEcuSnNWht4iB9T1IjrVDNe+oA
 wmM7GmbVwYTm+tzx12ALZ9nrfvLtBsh1cOkktEHvS7YhbjL+YtND53Wgg7IEe9rsOvvv
 LDdhVTta2Xu2Z4RDG0OmzHfuryBWnrogT1WHfoxfXTYa4IyIinbz5uRNw1QEvQQX3N9q
 KZyOPbrJhJHwxIcO/SHOqZbCCdW5rLHrJ5hK8bi2WMvc3wb+EYhaHhDl/2r7ylQc5MRH
 T57oax7TN3zqjTm/2bp6gct/420puw8j5X9LGnYpCmhF/vb9aF+XK2II+IJ15KhsSR7a
 oaDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=KP4a5Nq5xLfHHBjrnafFha3MFdJr67mljPaP7U+xutA=;
 b=mXj6HsD+lQKAj6x/jcW6+gJ6xuGpnrAhwpzgWke85wivW/0SjLw2JKt8L/uhEIkcMz
 UcowsIyJjJu7+VeoNysFYs/kFlK8R60pHaj5Cqy1E9IgryLvo6TT0DWulQQYPswxYFhb
 EQ/miO6VvpvjtTkJISaGXgbJT0aEy0DKwnh1UeOwJecaHOFfEgjVl5ILoSd5A2cue6Ko
 Rz+hV1bQpcfZAtJ+Gntrd+3V6iL3sfUjS7xeupIYgB/msr2ta+p3NJBh/A6ZM4UKkTrV
 UA0zhorGRlHi0SYkQUS/F9wCj3nJt1Teq3vA2SyNv33aJfZqZnGLKw8M5OMf0iXRz5sN
 vHag==
X-Gm-Message-State: AOAM532Xc7SxsICUUShpSA9/N2C5Jj6ipDkB8JrBx4Jtp3vdp7X2uyjF
 KYTBjx0n6NeWq9GtqrYF/I4=
X-Google-Smtp-Source: ABdhPJxLZjiseNnsvsyE9ERiXNC4Cju5eMhw1wxqy7+WLlloblSPYHmdBFXjkMsYrYZKCRsxH49ztw==
X-Received: by 2002:a05:6512:3b8:b0:46b:a79a:3686 with SMTP id
 v24-20020a05651203b800b0046ba79a3686mr2944539lfp.350.1649684332221; 
 Mon, 11 Apr 2022 06:38:52 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:38:51 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:24 +0200
Message-Id: <20220411133837.318876-1-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 00/13] net: bridge: forwarding of
	unknown IPv4/IPv6/MAC BUM traffic
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

This is a proposal to improve forwarding control of BUM traffic to the
bridge itself.  Another, related, issue regarding loss of function when
an IP multicast router is detected, is also brought up here which can be
a separate series in v2.

First, we add BROPT_BCAST_FLOOD, BROPT_UNICAST_FLOOD, BROPT_MCAST_FLOOD
flags for unknown traffic to the bridge itself, with netlink support and
a selftest.  We ensure backwards compatible forwarding behavior is
preserved by enabling these flags by default.  Please note however,
these flags do not affect the behavior of IFF_PROMISC on the bridge
interface.

Second, and with the above in place, we set out to verify flooding of
unknown *and* known multicast to regular bridge ports, including the
bridge itself.  We use `tcpdump -p` in the tests to ensure we do not
trigger IFF_PROIMISC.  Unknown multicast should be forwarded according
to the MCAST_FLOOD flag, and known multicast according the MDB and to
multicast router ports.

We find that forwarding of unknown IP multicast stops[1] as soon as a
multicast router is known.  Affecting all ports, including the bridge
itself (this series).  The root cause for this is the classification
`mrouters_only` in br_multicast_rcv().

Dropping this classification of unknown IP multicast and moving the
multicast flow handling from br_multicast_flood() to br_flood() fixes
this problem.  The bridge now properly floods all unknown multicast, and
this can now be controlled using the MCAST_FLOOD flag on all ports
including the bridge itself.

The use of br_flood() opens up the need for the multicast 'rport' API,
but that is behind CONFIG_BRIDGE_IGMP_SNOOPING, which is the primary
reason for this being an RFC series.  I'd love some feedback on how to
go about all this, opening up that API and even the take on the issue as
a whole.

Honestly, despite taking great care to not change the bridge's default
behavior the patch series in itself propose quite radical changes that
alone mandate RFC status at this point.  There has been some discussion
already on this in 20220410220324.4c3l3idubwi3w6if@skbuf and I expect
more disucssion here.

Note: this series builds upon my previous patch for host l2 mdb entries,
      20220411084054.298807-1-troglobit@gmail.com, extending the test
      bridge_mdb.sh

Best regards
 /Joachim

[1]: MAC multicast is not affected.

net/bridge/br_device.c                        |   4 +
 net/bridge/br_forward.c                       |  11 +
 net/bridge/br_input.c                         |  11 +-
 net/bridge/br_multicast.c                     |   6 +-
 net/bridge/br_netlink.c                       | 170 +++++++---
 net/bridge/br_private.h                       |   7 +-
 net/bridge/br_switchdev.c                     |   8 +-
 net/bridge/br_sysfs_if.c                      |   2 +-
 .../drivers/net/ocelot/tc_flower_chains.sh    |  24 +-
 .../testing/selftests/net/forwarding/Makefile |   3 +-
 .../selftests/net/forwarding/bridge_flood.sh  | 170 ++++++++++
 .../selftests/net/forwarding/bridge_mdb.sh    | 321 +++++++++++++++++-
 tools/testing/selftests/net/forwarding/lib.sh |  33 +-
 13 files changed, 683 insertions(+), 87 deletions(-)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_flood.sh
 mode change 100644 => 100755 tools/testing/selftests/net/forwarding/lib.sh
