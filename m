Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E65F2188325
	for <lists.bridge@lfdr.de>; Tue, 17 Mar 2020 13:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F9E9873CB;
	Tue, 17 Mar 2020 12:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0zM6tdY4K-HH; Tue, 17 Mar 2020 12:10:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 300B6870DE;
	Tue, 17 Mar 2020 12:09:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C21EC1D88;
	Tue, 17 Mar 2020 12:09:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5353DC013E
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 12:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C32122EE7
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 12:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vIVPWZPii5QY for <bridge@lists.linux-foundation.org>;
 Tue, 17 Mar 2020 12:09:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3774C228B3
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 12:09:22 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id x143so737505lff.12
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 05:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CdpI6plcLqffgBOnjrXIKu3Uafpf4rcXyJ3pN99AXIc=;
 b=ShQsp79LXm5GC7td8lqoA5hp/BSeNQvRiooz2UKFzmJRaAOzkgZjn7b41Fvhmuu49M
 ZOSLn29Uj5nZ3XIkCxxwHGn2zMBaz3HEqE6LtEqOfAjivToFZCCTvMvo7J5GAXaE/lgb
 PGCme0lxaWYhE70YuoIlNnCe0UdQsRuMBaFmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CdpI6plcLqffgBOnjrXIKu3Uafpf4rcXyJ3pN99AXIc=;
 b=Sv15KubbWi2QDQHEjOqvVNKh+ygtLpkYMc9NZic97e7+Bo6eVUwSPMxsxdmxhND4WC
 Nybxgz7KSqU9pbZxpUzQGSTJEJi+y0IQtc0JLnAZ2ADGvU+HTYRutsPQED+OWglKIJ8/
 dD7NP1N7WuherKILDehCx2oFSKcFqcMfX3nbMNOkx8weS9uo8pOz2zlti8/KGbBrX6uU
 /u8sEx/1KLIReqkvgsGypENyRMjvXIesh7fFucmSoIhS8WO7Um2JHeaF5BnkmiWCz6Xc
 0JF4PCI+C2Vv567i0UUvFREFMGAje4cwXnZtbqWgAiqi1fxNyU/fTRMvowpJPeu17AzN
 ydfA==
X-Gm-Message-State: ANhLgQ2mHdPiNHNDmiRZFXfikhweFeiY6gVr3ElK2ku9QCUCVCOSNIPH
 RvrHKhsZA3PBpjXGcLW7iY6PrlaW88w=
X-Google-Smtp-Source: ADFU+vt7TNrAM455nmXuZSvQyzDrNcKz83mZLGvVuBNS1c1ZgvK/q0xOYvcCY03iNh9MFPWzGv9L9w==
X-Received: by 2002:ac2:5187:: with SMTP id u7mr2264091lfi.153.1584446960058; 
 Tue, 17 Mar 2020 05:09:20 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 23sm2389208lfa.28.2020.03.17.05.09.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 05:09:11 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 17 Mar 2020 14:08:32 +0200
Message-Id: <20200317120836.1765164-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 0/4] net: bridge: vlan options: add
	support for tunnel mapping
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
In order to bring the new vlan API on par with the old one and be able
to completely migrate to the new one we need to support vlan tunnel mapping
and statistics. This patch-set takes care of the former by making it a
vlan option. There are two notable issues to deal with:
 - vlan range to tunnel range mapping
   * The tunnel ids are globally unique for the vlan code and a vlan can
     be mapped to one tunnel, so the old API took care of ranges by
     taking the starting tunnel id value and incrementally mapping
     vlan id(i) -> tunnel id(i). This set takes the same approach and
     uses one new attribute - BRIDGE_VLANDB_ENTRY_TUNNEL_ID. If used
     with a vlan range then it's the starting tunnel id to map.

 - tunnel mapping removal
   * Since there are no reserved/special tunnel ids defined, we can't
     encode mapping removal within the new attribute, in order to be
     able to remove a mapping we add a vlan flag which makes the new
     tunnel option remove the mapping

The rest is pretty straight-forward, in fact we directly re-use the old
code for manipulating tunnels by just mapping the command (set/del). In
order to be able to keep detecting vlan ranges we check that the current
vlan has a tunnel and it's extending the current vlan range end's tunnel
id.

Thanks,
 Nik


Nikolay Aleksandrov (4):
  net: bridge: vlan options: rename br_vlan_opts_eq to
    br_vlan_opts_eq_range
  net: bridge: vlan tunnel: constify bridge and port arguments
  net: bridge: vlan options: add support for tunnel id dumping
  net: bridge: vlan options: add support for tunnel mapping set/del

 include/uapi/linux/if_bridge.h |  2 +
 net/bridge/br_netlink_tunnel.c | 12 +++---
 net/bridge/br_private.h        |  4 +-
 net/bridge/br_private_tunnel.h | 17 +++++---
 net/bridge/br_vlan.c           |  3 +-
 net/bridge/br_vlan_options.c   | 74 +++++++++++++++++++++++++++++++---
 net/bridge/br_vlan_tunnel.c    |  5 ++-
 7 files changed, 94 insertions(+), 23 deletions(-)

-- 
2.24.1

