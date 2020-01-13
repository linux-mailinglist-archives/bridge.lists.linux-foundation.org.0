Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C82513953E
	for <lists.bridge@lfdr.de>; Mon, 13 Jan 2020 16:53:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46F24858B8;
	Mon, 13 Jan 2020 15:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XzvT5bWAIjov; Mon, 13 Jan 2020 15:53:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5DCF857F8;
	Mon, 13 Jan 2020 15:53:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9AB7FC1D8D;
	Mon, 13 Jan 2020 15:53:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8406C077D
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E487E8577F
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttqEIWlYu6O5 for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 15:53:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ECF0985758
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:02 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id l2so10625402lja.6
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 07:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e4rdU00h44ADnRjwhROIBI7M9jhhbUlXeokwBcuNYYk=;
 b=cr+VGPpHAr8l9krM9sHZurZ49IsvLCXFch3eN3kk2yc8W9bBXDK9G2iNiGdXEoEtM8
 gKGupx014qx98PMJpUlbQW6lzGa7UkcyN6NiyEkv3CnOIGuNRRg9wogJc8klCuAPLpY8
 6i8qWfaMIXpq0+ioWLGDnmaNXrkhInMbkZAlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e4rdU00h44ADnRjwhROIBI7M9jhhbUlXeokwBcuNYYk=;
 b=eQ44VzIlPMIfylA4//dDNA8ESHHMSWo3bnrkKHSAgQ/T82oak5u28D7Z+64N9Ex3bU
 aDwOdFM4syNis6oDvPEfucsKabK4pj7HugoktB9BcZXNdKmjCVTKH0Ts4heQ2b6r6Pgm
 Lba0slKc9HGnjp2Jtp5Jr/nFoe45PsTlRf1AJM7Z2Set9mNgNMj5ZKlGA1D0Pfyh6DOj
 0NmZBrdD+hOWGKjfrGTOs7rMB1VSJ/eNO0BvaZ9fBw2A4H3mq+V+vDyufDHW50OUAbZE
 xJeWbwxCdivigdmIcw3VpfBa0jTvO0RbK18GtTkOttl0vhG0ICLYd8ky3vUcQZWE0ZlL
 AaJg==
X-Gm-Message-State: APjAAAUcXCjazAMEaK4l0H7C+3DhRmEP0MlHLbNVukeAP8889An/axkB
 14rs7q8na7k16TM/ADRQbaRrAg==
X-Google-Smtp-Source: APXvYqxgL6QmUVV4q/T/Sm8PLTDq9uum3Mf4Vc7TCvryO0nlUpOeNiOCQcj2z77e81VKrWL8Y6/wTQ==
X-Received: by 2002:a2e:7405:: with SMTP id p5mr10578531ljc.34.1578930780991; 
 Mon, 13 Jan 2020 07:53:00 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e20sm6175658ljl.59.2020.01.13.07.52.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:53:00 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Jan 2020 17:52:25 +0200
Message-Id: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 0/8] net: bridge: add vlan notifications
	and rtm support
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

Hi,
This patch-set is a prerequisite for adding per-vlan options support
because we need to be able to send vlan-only notifications and do larger
vlan netlink dumps. Per-vlan options are needed as we move the control
more to vlans and would like to add per-vlan state (needed for per-vlan
STP and EVPN), per-vlan multicast options and control, and I'm sure
there would be many more per-vlan options coming.
Now we create/delete/dump vlans with the device AF_SPEC attribute which is
fine since we support vlan ranges or use a compact bridge_vlan_info
structure, but that cannot really be extended to support per-vlan options
well. The biggest issue is dumping them - we tried using the af_spec with
a new vlan option attribute but that led to insufficient message size
quickly, also another minor problem with that is we have to dump all vlans
always when notifying which, with options present, can be huge if they have
different options set, so we decided to add new rtm message types
specifically for vlans and register handlers for them and a new bridge vlan
notification nl group for vlan-only notifications.
The new RTM NEW/DEL/GETVLAN types introduced match the current af spec
bridge functionality and in fact use the same helpers.
The new nl format is:
 [BRIDGE_VLANDB_ENTRY]
    [BRIDGE_VLANDB_ENTRY_INFO] - bridge_vlan_info (either 1 vlan or
                                                   range start)
    [BRIDGE_VLANDB_ENTRY_RANGE] - range end

This allows to encapsulate a range in a single attribute and also to
create vlans and immediately set options on all of them with a single
attribute. The GETVLAN dump can span multiple messages and dump all the
necessary information. The vlan-only notifications are sent on
NEW/DELVLAN events or when vlan options change (currently only flags),
we try hard to compress the vlans into ranges in the notifications as
well. When the per-vlan options are added we'll add helpers to check for
option equality between neighbor vlans and will keep compressing them
when possible.

Note patch 02 is not really required, it's just a nice addition to have
human-readable error messages from the different vlan checks.

iproute2 changes and selftests will be sent with the next set which adds
the first per-vlan option - per-vlan state similar to the port state.

Thank you,
 Nik


Nikolay Aleksandrov (8):
  net: bridge: vlan: add helpers to check for vlan id/range validity
  net: bridge: netlink: add extack error messages when processing vlans
  net: bridge: vlan: add rtm definitions and dump support
  net: bridge: vlan: add new rtm message support
  net: bridge: vlan: add del rtm message support
  net: bridge: vlan: add rtm range support
  net: bridge: vlan: add rtnetlink group and notify support
  net: bridge: vlan: notify on vlan add/delete/change flags

 include/uapi/linux/if_bridge.h |  29 ++
 include/uapi/linux/rtnetlink.h |   9 +
 net/bridge/br_netlink.c        |  61 +++--
 net/bridge/br_private.h        |  90 +++++++
 net/bridge/br_vlan.c           | 473 +++++++++++++++++++++++++++++++--
 security/selinux/nlmsgtab.c    |   5 +-
 6 files changed, 632 insertions(+), 35 deletions(-)

-- 
2.21.0

