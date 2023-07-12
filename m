Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 327F6750CEC
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 17:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47C65801E2;
	Wed, 12 Jul 2023 15:45:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47C65801E2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256 header.s=amazon201209 header.b=WyzeZxkC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2WPdXue19mL; Wed, 12 Jul 2023 15:45:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 979A68230C;
	Wed, 12 Jul 2023 15:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 979A68230C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 245ABC0DD4;
	Wed, 12 Jul 2023 15:45:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2285DC0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 15:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0974409AC
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 15:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0974409AC
Authentication-Results: smtp2.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=WyzeZxkC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcvsIcCsgUZF for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 15:45:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D938F40990
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D938F40990
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 15:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1689176711; x=1720712711;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LVkqknivcPirB5ohT5MQZsWKw6GBJux2RVxcITSCNjQ=;
 b=WyzeZxkCDpcOOWkfqjrIMShrPMvs3ojJ9yc8AQtrxfc5PL+rMlvsZwoT
 brFgABSa5Azy27J/l6ZaUF4YfyEqKGvw39VsK+4sFuNoUgrmh+x0jsm/F
 ZlIj3WS6hcpJnaYO4yY9k5kbqgHX2NhYXX0tb8qJt9ja2Cu9q7Jy7l4BM g=;
X-IronPort-AV: E=Sophos;i="6.01,200,1684800000"; d="scan'208";a="346406182"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-iad-1d-m6i4x-25ac6bd5.us-east-1.amazon.com) ([10.43.8.2])
 by smtp-border-fw-6001.iad6.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2023 15:45:07 +0000
Received: from EX19MTAUWB002.ant.amazon.com
 (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
 by email-inbound-relay-iad-1d-m6i4x-25ac6bd5.us-east-1.amazon.com (Postfix)
 with ESMTPS id 7A1F84660E; Wed, 12 Jul 2023 15:45:04 +0000 (UTC)
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Wed, 12 Jul 2023 15:45:03 +0000
Received: from 88665a182662.ant.amazon.com.com (10.119.181.74) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Wed, 12 Jul 2023 15:45:00 +0000
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Date: Wed, 12 Jul 2023 08:44:49 -0700
Message-ID: <20230712154449.6093-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.119.181.74]
X-ClientProxiedBy: EX19D044UWB003.ant.amazon.com (10.13.139.168) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Precedence: Bulk
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, Kuniyuki Iwashima <kuniyu@amazon.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Harry Coin <hcoin@quietfountain.com>, Kuniyuki Iwashima <kuni1840@gmail.com>
Subject: [Bridge] [PATCH v2 net] bridge: Add extack warning when enabling
	STP in netns.
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Kuniyuki Iwashima via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Kuniyuki Iwashima <kuniyu@amazon.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

When we create an L2 loop on a bridge in netns, we will see packets storm
even if STP is enabled.

  # unshare -n
  # ip link add br0 type bridge
  # ip link add veth0 type veth peer name veth1
  # ip link set veth0 master br0 up
  # ip link set veth1 master br0 up
  # ip link set br0 type bridge stp_state 1
  # ip link set br0 up
  # sleep 30
  # ip -s link show br0
  2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
      link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
      RX: bytes  packets  errors  dropped missed  mcast
      956553768  12861249 0       0       0       12861249  <-. Keep
      TX: bytes  packets  errors  dropped carrier collsns     |  increasing
      1027834    11951    0       0       0       0         <-'   rapidly

This is because llc_rcv() drops all packets in non-root netns and BPDU
is dropped.

Let's add extack warning when enabling STP in netns.

  # unshare -n
  # ip link add br0 type bridge
  # ip link set br0 type bridge stp_state 1
  Warning: bridge: STP does not work in non-root netns.

Note this commit will be reverted later when we namespacify the whole LLC
infra.

Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
Suggested-by: Harry Coin <hcoin@quietfountain.com>
Link: https://lore.kernel.org/netdev/0f531295-e289-022d-5add-5ceffa0df9bc@quietfountain.com/
Suggested-by: Ido Schimmel <idosch@idosch.org>
Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>
---
v2:
  - Just add extack instead of returning error (Ido Schimmel)

v1: https://lore.kernel.org/netdev/20230711235415.92166-1-kuniyu@amazon.com/
---
 net/bridge/br_stp_if.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
index 75204d36d7f9..b65962682771 100644
--- a/net/bridge/br_stp_if.c
+++ b/net/bridge/br_stp_if.c
@@ -201,6 +201,9 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
 {
 	ASSERT_RTNL();
 
+	if (!net_eq(dev_net(br->dev), &init_net))
+		NL_SET_ERR_MSG_MOD(extack, "STP does not work in non-root netns");
+
 	if (br_mrp_enabled(br)) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "STP can't be enabled if MRP is already enabled");
-- 
2.30.2

