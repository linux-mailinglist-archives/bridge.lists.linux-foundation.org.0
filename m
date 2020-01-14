Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 298E813B186
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0ED7E84FB0;
	Tue, 14 Jan 2020 17:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0r9MSm_4CPG; Tue, 14 Jan 2020 17:58:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D154F84DFF;
	Tue, 14 Jan 2020 17:58:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2FD8C077D;
	Tue, 14 Jan 2020 17:58:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E2A6AC077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1A7D20513
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zE66Bgce+pOp for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:58:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by silver.osuosl.org (Postfix) with ESMTPS id 13BF81FD43
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:31 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id o13so15390915ljg.4
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4lvd4hONF4LwQ0KcHPfRvvqYGPQNzQBVH0ylqHglG+U=;
 b=e8DEKRPlXoM8gE2YiOrEiUZdNFMy7q5S9RzC5clSP9ltor8zYOx2W+bpxhhMh5HVvE
 VEH41BXSLrhXK03uKplOQv461L4yaga18aLv8a9ptQixB3KgJc0rvOgAI5IryIW+3KQ6
 x3kbwh+QO8uJGSVzHvASIz78omT7bW35QViXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4lvd4hONF4LwQ0KcHPfRvvqYGPQNzQBVH0ylqHglG+U=;
 b=JM3sdVKuFU42GG3WBk/utOC9FSDRZkrjC0A0X1lvabpQ/SZc4x/ICIO+707MPc0K06
 HaFoC6xZ7TWJl5eLeXGUfcvtdnfxgAsAtuegrFomsL//ALqsfKvE2Wubr0pIZyn/es8K
 LtIed9Xt31+6fmfOmxEfikuL1mTFr98+PTy5opfrdQ3Yd+x2CY4+RY4/PKozcHYmQ2zD
 uBpvRAkRqzA/kNF36Odal+oSYhVJ+YNqnvvzW+iK31E0iNB009kdwaCqHCIJLsyqJNc5
 NHr7+w/7xD8pGdSZqKhHo/7Vh4ZNI4/gUaCCHHqdrukpBTUdKfI+CYCL0jz8chPFAeAe
 k3Zg==
X-Gm-Message-State: APjAAAVIQt97NWYolCoxKzbP5AWKpRaJLX0dRgBb6VFgkejt7IQmZmLQ
 2Z6vvixwwRnfC1Fj8b1+lS1cwA==
X-Google-Smtp-Source: APXvYqyat+OPBi6KKdRfQCuLD6z6EVJdbn86ar77Psvojs+Mp+Wfs56qHEsMQBumL14GQp9iZkjjIQ==
X-Received: by 2002:a2e:86d6:: with SMTP id n22mr15168541ljj.77.1579024708985; 
 Tue, 14 Jan 2020 09:58:28 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a15sm7685655lfi.60.2020.01.14.09.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:58:27 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Jan 2020 19:56:06 +0200
Message-Id: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 0/8] net: bridge: add vlan
	notifications and rtm support
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

v2: changed patch 03 and patch 04 to use nlmsg_parse() in order to
    strictly validate the msg and make sure there are no remaining bytes


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

