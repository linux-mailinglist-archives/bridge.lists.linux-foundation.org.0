Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6991146907
	for <lists.bridge@lfdr.de>; Thu, 23 Jan 2020 14:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 814E2875F9;
	Thu, 23 Jan 2020 13:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HTueKlz4-ifK; Thu, 23 Jan 2020 13:28:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA571875F0;
	Thu, 23 Jan 2020 13:28:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8E876C0174;
	Thu, 23 Jan 2020 13:28:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A298C0174
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31B3B8695E
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3T0qsu_x_lu for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jan 2020 13:28:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7D23486141
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:17 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id z26so2245545lfg.13
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 05:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lW472399iAATdZUH6brslOgK+ubydfGqN4ZbFSeA9SE=;
 b=LYDkLAitkc8jMhqsrjA/I9/1TucWGtQXhpZVkc+yfh8sywXR9dU9JnFjDA9RW82LSN
 9xtQ3jsSaLQ4UN/a7ho6Gtj8kitQIA6bdfmQHaFbXxj2DiMZgOcz9v69Oa0azfHKVO4B
 nyDB8+0P81BIZROb5p8Lcy34i/JcAH52mdnZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lW472399iAATdZUH6brslOgK+ubydfGqN4ZbFSeA9SE=;
 b=Z1hFvzwrbigjo5lPA6jaTRT5Kjc0GbUb02oTvuoya5xQLzOT5pcFz6qCE/6Py4VJdO
 4c+mTOXrWmR+oL602pKVexG4S0TY3Ddsx2lXFfk+hWzS71sET0ak5HSsCgLzz/m52KdZ
 UTfhmYYnQleotTxOZ+23RKSJ21sRVb+yOC3WV2P1atP2S8txypEGpn0Y28KBM6MQCKaT
 2G7PnjKKAK6p/T04zvKQLrLmYbGshCzmAb7CyVa4a47xHxqntdpXb7hheRuPEX+SfI4c
 7iNvAsBsVQ47OUeFZnF0QnPbY2igYDb4s1OqQfn00wZPgsiRRdnZ6lZ15UuZ/s2lTLyt
 HtkA==
X-Gm-Message-State: APjAAAUbTE7rJWoztTUjHGyPu1c9dkohxnLWqP3Tmb4wLq1c/zbFe54Z
 U3810A12b+o5z/THlLs35mKOHg==
X-Google-Smtp-Source: APXvYqyyZL6p7TqB1v8mg80ofb9yoPWpaLKaUXsFgwiPUdCf4gkixbCaPH7sHipLBYLhIRwG6Vyr9Q==
X-Received: by 2002:ac2:5ec3:: with SMTP id d3mr286789lfq.176.1579786095266;
 Thu, 23 Jan 2020 05:28:15 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b20sm1238571ljp.20.2020.01.23.05.28.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:28:14 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Thu, 23 Jan 2020 15:28:03 +0200
Message-Id: <20200123132807.613-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 0/4] net: bridge: add per-vlan state option
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
 net/bridge/br_private.h        |  58 +++++++++++++-
 net/bridge/br_vlan.c           |  99 ++++++++++++++++++-----
 net/bridge/br_vlan_options.c   | 142 +++++++++++++++++++++++++++++++++
 8 files changed, 287 insertions(+), 28 deletions(-)
 create mode 100644 net/bridge/br_vlan_options.c

-- 
2.21.0

