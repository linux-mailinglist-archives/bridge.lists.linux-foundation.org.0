Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39358206014
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 22:47:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DE188815A;
	Tue, 23 Jun 2020 20:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JKHsQkHtrT5T; Tue, 23 Jun 2020 20:47:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51AB2880FB;
	Tue, 23 Jun 2020 20:47:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3568AC0894;
	Tue, 23 Jun 2020 20:47:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7C211C016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 721368654C
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K8rOxq8E4UPq for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 20:47:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B467D85F8B
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:38 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id o8so118440wmh.4
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 13:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uv7xIdydepaKJnDBGkm+1SZ9hRYqS6as0NEV32nUerQ=;
 b=WhsCKEmAKCzXCOj5ZmN9FqMRB9Q8KlNOSPEc/KIIXN54z54HJuPthWufBdup+uEi/f
 4nmei+myBeh/U+9F6FLuklNrS8dtyXKu3yZ/SKs0wjxiUj1WQJNEctBrV/5U31E+43Jg
 hmVLHjfyo2D2hPcHJkpE8QOHpIxH+QTLzGl0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uv7xIdydepaKJnDBGkm+1SZ9hRYqS6as0NEV32nUerQ=;
 b=dmWrkYFNS3DIUFuBkFY3RDZaUXxzeTrEHu6mOHydYKYcZECFUNsywDmp0vRoQxlfSv
 6tsknKbTJw0kJwgfPPN00gOaphQkciHamG0Ia7iO8p6ghIL4G7U8u2KqixEjq9UQpFye
 bBQ7UWMHVAUwjSBqJi3QIE61fLmoUEqRMI2QxoaO2raFh0uTyxcx/Jk+QIdgjtuskSjV
 oNfa/KuQTjKgKehvOIGbjOCC2HDToQihQRX5acBKoOF/f8r5w3Xu3gsURAqHExFPDRO7
 8o5bgDFpjcMTpqsQATKaLz7bJK5+OMl0VSAmNL+VNgv711VrE0ANx+3i6XE2wMXWJhwi
 lnCg==
X-Gm-Message-State: AOAM531CezV8BIwNxk8NnFrWfBBNAQIBeCk8NeNzXX9LKZTBFCxw1w0B
 OWm+KeceYuIl50sFP19t/HZ0Cw==
X-Google-Smtp-Source: ABdhPJxrWJwMA26TcZVW0vU+55iD/EwW7TSoP0U2CzumQfe0/eXJmp+9PiBoCnMMvtgl/1n555WzcQ==
X-Received: by 2002:a05:600c:24c:: with SMTP id
 12mr26814284wmj.28.1592945257157; 
 Tue, 23 Jun 2020 13:47:37 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j6sm5686924wmb.3.2020.06.23.13.47.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 13:47:36 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 23 Jun 2020 23:47:14 +0300
Message-Id: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, anuradhak@cumulusnetworks.com
Subject: [Bridge] [PATCH net-next 0/4] net: bridge: fdb activity tracking
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
This set adds extensions needed for EVPN multi-homing proper and
efficient mac sync. User-space (e.g. FRR) needs to be able to track
non-dynamic entry activity on per-fdb basis depending if a tracked fdb is
currently peer active or locally active and needs to be able to add new
peer active fdb (static + track + inactive) without refreshing it to get
real activity tracking. Patch 02 adds a new NDA attribute - NDA_FDB_EXT_ATTRS
to avoid future pollution of NDA attributes by bridge or vxlan. New
bridge/vxlan specific fdb attributes are embedded in NDA_FDB_EXT_ATTRS,
which is used in patch 03 to pass the new NFEA_ACTIVITY_NOTIFY attribute
which controls if an fdb should be tracked and also reflects its current
state when dumping. It is treated as a bitfield, current valid bits are:
 1 - mark an entry for activity tracking
 2 - mark an entry as inactive to avoid multiple notifications and
     reflect state properly

Patch 04 adds the ability to avoid refreshing an entry when changing it
via the NFEA_DONT_REFRESH flag. That allows user-space to mark a static
entry for tracking and keep its real activity unchanged.
The set has been extensively tested with FRR and those changes will
be upstreamed if/after it gets accepted.

Thanks,
 Nik


Nikolay Aleksandrov (4):
  net: bridge: fdb_add_entry takes ndm as argument
  net: neighbor: add fdb extended attribute
  net: bridge: add option to allow activity notifications for any fdb
    entries
  net: bridge: add a flag to avoid refreshing fdb when changing/adding

 include/uapi/linux/neighbour.h |  24 +++++++
 net/bridge/br_fdb.c            | 127 ++++++++++++++++++++++++++++-----
 net/bridge/br_private.h        |   4 ++
 net/core/neighbour.c           |   1 +
 4 files changed, 139 insertions(+), 17 deletions(-)

-- 
2.25.4

