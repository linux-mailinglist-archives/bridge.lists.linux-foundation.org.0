Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5D41483AE
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 12:40:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 897B288498;
	Fri, 24 Jan 2020 11:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDu5UQVt0HDm; Fri, 24 Jan 2020 11:40:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53EDC88488;
	Fri, 24 Jan 2020 11:40:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BB88C0174;
	Fri, 24 Jan 2020 11:40:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 76CCEC0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BB0788488
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EyzKfLlXjHn1 for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 11:40:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87EE288498
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:31 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id b15so909643lfc.4
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 03:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0FtJ6MlkdUyddBUzFcRR+OPGQmZ6SOcizcRhY4N8y5g=;
 b=H7F9m+jtsbzB+CI3Nr3fqV0xj5szLDh+/z4SjVgAzAwlpGQQEOJ/CYvk4Xdte7rtxs
 5GfABf37WsmS0BNydt0ZHx65l4KyjDSDOCyU4D50sgRpBsNb0QrphykWy4XuEc7dBrhP
 xdZicEqlUBXkpHsijNsUT/bK3YtpynMYyOzb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0FtJ6MlkdUyddBUzFcRR+OPGQmZ6SOcizcRhY4N8y5g=;
 b=s7GsOz+qB3X3rS4Jz9TlrVc7in2Io0BDj0YvyAdZ6ARv9Eu8Ykd3ViboEIPR9Q/How
 zjeWZJlyf9HwGBQrKhNSkKjbnqU4OlxkVzMZ16Ve2rSmLR3mr+L/Y4lYibdlopvn+NHf
 B5I0NEXh8o3HEEXD9aBF5MQlbTjEhcUm8IqLHt1YUiU1q4rhlK6mE+iUrDPY5DCDHMI1
 uy+4N68uqCugQgl0SAma1J3rFfl7utdO25k7JUCMOiF9WHfLuXx7oSRy0m4eQRjANbLE
 sO3fVugecuSqFot6ybLPKX5r2d4rvwB1egoxPkVDUs6kD1tLtFz8FBMIXqljSA60TFT0
 0AvQ==
X-Gm-Message-State: APjAAAXbPdlVAtFXk8K/rMK8QphQ0Mq+aT/lWAyfiDLcXWp25Dyx7ksp
 T6bIiWjQzkp8puUJc2Vza2U1Ew==
X-Google-Smtp-Source: APXvYqzErOQdCSPkyV+v/nJqqimQLFO4/zmxqbQmm27qllVn6Gwz+FR4ElvUByJ02FzlUTB4ceRdGQ==
X-Received: by 2002:a19:c210:: with SMTP id l16mr1211806lfc.35.1579866029368; 
 Fri, 24 Jan 2020 03:40:29 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s22sm2996185ljm.41.2020.01.24.03.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 03:40:28 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 24 Jan 2020 13:40:18 +0200
Message-Id: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 0/4] net: bridge: add per-vlan state
	option
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
This set adds the first per-vlan option - state, which uses the new vlan
infrastructure that was recently added. It gives us forwarding control on
per-vlan basis. The first 3 patches prepare the vlan code to support option
dumping and modification. We still compress vlan ranges which have equal
options, each new option will have to add its own equality check to
br_vlan_opts_eq(). The vlans are created in forwarding state by default to
be backwards compatible and vlan state is considered only when the port
state is forwarding (more info in patch 4).
I'll send the selftest for the vlan state with the iproute2 patch-set.

v2: patch 3: do full (all-vlan) notification only on vlan
    create/delete, otherwise use the per-vlan notifications only,
    rework how option change ranges are detected, add more verbose error
    messages when setting options and add checks if a vlan should be used.

Thanks,
 Nik

Nikolay Aleksandrov (4):
  net: bridge: check port state before br_allowed_egress
  net: bridge: vlan: add basic option dumping support
  net: bridge: vlan: add basic option setting support
  net: bridge: vlan: add per-vlan state

 include/uapi/linux/if_bridge.h |   2 +
 net/bridge/Makefile            |   2 +-
 net/bridge/br_device.c         |   3 +-
 net/bridge/br_forward.c        |   2 +-
 net/bridge/br_input.c          |   7 +-
 net/bridge/br_private.h        |  59 +++++++++++-
 net/bridge/br_vlan.c           | 108 ++++++++++++++++------
 net/bridge/br_vlan_options.c   | 160 +++++++++++++++++++++++++++++++++
 8 files changed, 311 insertions(+), 32 deletions(-)
 create mode 100644 net/bridge/br_vlan_options.c

-- 
2.21.0

