Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E68686CDE
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 18:29:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8DA760671;
	Wed,  1 Feb 2023 17:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8DA760671
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=auRfkcsE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKcfFY_VN_2c; Wed,  1 Feb 2023 17:29:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 133B16106A;
	Wed,  1 Feb 2023 17:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 133B16106A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0263C007C;
	Wed,  1 Feb 2023 17:29:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FC65C002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C145418E8
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C145418E8
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=auRfkcsE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ouReu1vlis7J for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 17:29:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B99DE4148A
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::601])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B99DE4148A
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MJ6Xv8avOA0miclFbfpgh3UQYQcnp5Cyk6wuy9/hAmvFhKv8EXKBxJiLmVfy7fmYOx9sKH/ndfPYtRHr9lEjfGOUBMXTUWPPg4W/+2L3W9w922mjuOIQuCwwIXN3bc95P3e7NU3qlX9KnjZMNeG7d0q0CKBWqlJwRjJR9Jc7EuE1Jo4H4MiPO8gZ/iqlQgI1IeS8m8DEVP/51u6wRHucMxxSXxVBPcwGc3XT8CU9B77e4rn1GL9IT1nCT7BmgEG8DhjbB8CcLHhXdWbVoyt59YN2gMMQVN3OYZsvBoZfE2YzjQAHEBbWFdTbRZDdQkf8LdYu9cGyDeDsNHyg/SRKiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MeSImEFctsvJah2xL2UUlOcf037UYTKdvSEcRNqpXdI=;
 b=eOiUP3sJ1wBvrasu9t3tuihuha/H8LkpkXMbC4bp7uXlpTEHkRK8+MNtO0qlxP01lqfIDYScpyYvqdFqyCZo+2OhunoBmLiooPLvjcPHa2Kclc+8Y4oAVUIslZuX1S2yk1DOUiB3c0eGIrTpZsiMPhlzfLjbZvBKVq/Qse+zfcU1DunUHPgXyzvK1OnLnNhxrLqME74SJh2kLhU+TtNQsWs+kiZ2pwkst79UD7g8aWqSR87qx4kNufKzhg9PAKBVp8q8JlBDMgPygZBYjgCHQ08Q3OzY5Q1tk1JVowtkyrU7+eQRSkXBj1yqCEHfP/B2pacM2cn25myuhmZXS3IqaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MeSImEFctsvJah2xL2UUlOcf037UYTKdvSEcRNqpXdI=;
 b=auRfkcsEXpbbPiTXfC9jPTMfx0uU5d1r2Jkwsj9ejvSl8QqrWh4A2DUR79OD8kNtmA59iYSZbasbb2dzW7SzLqXqvAjLQbxPKRO7lwxPXLmJnH0vU9dt+63YoS0Sy8TyPtkPjlpXCFmH7vEv64m42CQqByjC4U7bM51j+gaSATCLp2+myLXZxxb9IBe54fBj4OEKU2LFSOrKavD8izkN0jbmu+dGKBX7zh0Aur8NxbsjJ/4tfMUeIbl4Qz2BK6nTAL3Epw0MIQqWYiixoMpsWu6vCoRqnwIEEn/vTWznjOZDL90+ggEDPRmcpOOCOSoUjdB7xqpB9ldJRA74cKYFuQ==
Received: from BLAPR03CA0168.namprd03.prod.outlook.com (2603:10b6:208:32f::6)
 by DS0PR12MB7849.namprd12.prod.outlook.com (2603:10b6:8:141::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Wed, 1 Feb
 2023 17:29:19 +0000
Received: from BL02EPF000108EA.namprd05.prod.outlook.com
 (2603:10b6:208:32f:cafe::c5) by BLAPR03CA0168.outlook.office365.com
 (2603:10b6:208:32f::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38 via Frontend
 Transport; Wed, 1 Feb 2023 17:29:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF000108EA.mail.protection.outlook.com (10.167.241.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.21 via Frontend Transport; Wed, 1 Feb 2023 17:29:19 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:06 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:03 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Wed, 1 Feb 2023 18:28:33 +0100
Message-ID: <cover.1675271084.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF000108EA:EE_|DS0PR12MB7849:EE_
X-MS-Office365-Filtering-Correlation-Id: 308ad48d-e202-45f1-9755-08db0479d9af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gPR+NUEK3XJ0pzgzdwT+ON3CmCa5+hmw/gwlVa2oibhNCmB2KMmZ7ouWpqEvawMy5zIF6JkAtlcQyckDmLrNMRZmLIagR1RD6pL3FBtwpC7g1F7Uelw0rSxfBt4mNStTtGItFKAxWGQqnXE1IpFfOBqF8SfJLB7a0zKUy8lsbSCwcszzL8MOwsm3xmotUf1HhTIj7RthI1ALRUjbpVMbdrrdf6a/RCBoKOTJS+qtdNomUn+Jzb1SopfgExEfIdahwkEc7NrChFmnhbVZFZVVCJF2iCTgjJIBh4gYCrj/MLtg/CZ9YqDDrDjm50LAtxSJ+Szh0MwpUxJg4mSpPCRZOKlL43A+FCavv9Hn/ZTVdkgEIMmLdBG4ZXsE7CmPa3sRT7tYZLIi+Qkexzu8jcRIOcwdLx0/B6CCIAG8PepnINtbE3AOxeCDuPNhr/uNvYETL7DFmgZz95k4gFW12b7Z3mtdS3HDTxRFPhY4kFQKos6LZV06gu5QKleQSDGsjRwzdcnO8gXDdqJbOKnCD7thQq8wVxx0q4I5tw5Aj4Z5w1UYwvsj/Xp9Rg4FSOA4/BU+LHUR2w2OV1F+C3of4GJQL4hVI6b7QPbLtUppLSDs+kIKgO8GnrErCPUXGXrZMroQTqvFDhozsRMyDA5Q9YC6hC+gyKFo4otXaSmQAhDuHOP6FSmq3+Fqt5Z34SABxDxhv+E26mvuh8MzjUz0ex5vDQ==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(376002)(346002)(396003)(39860400002)(451199018)(40470700004)(36840700001)(46966006)(4326008)(8676002)(70206006)(8936002)(70586007)(66899018)(110136005)(5660300002)(54906003)(316002)(41300700001)(2906002)(478600001)(36860700001)(107886003)(186003)(36756003)(26005)(40460700003)(2616005)(336012)(83380400001)(6666004)(16526019)(47076005)(426003)(82310400005)(82740400003)(356005)(86362001)(40480700001)(7636003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:29:19.0587 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 308ad48d-e202-45f1-9755-08db0479d9af
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF000108EA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7849
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next mlxsw v2 00/16] bridge: Limit number of
	MDB entries per port, port-vlan
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
From: Petr Machata via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Petr Machata <petrm@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The MDB maintained by the bridge is limited. When the bridge is configured
for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
capacity. In SW datapath, the capacity is configurable through the
IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
similar limit exists in the HW datapath for purposes of offloading.

In order to prevent the issue of unilateral exhaustion of MDB resources,
introduce two parameters in each of two contexts:

- Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
  per-port-VLAN number of MDB entries that the port is member in.

- Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
  per-port-VLAN maximum permitted number of MDB entries, or 0 for
  no limit.

Per-port number of entries keeps track of the total number of MDB entries
configured on a given port. The per-port-VLAN value then keeps track of the
subset of MDB entries configured specifically for the given VLAN, on that
port. The number is adjusted as port_groups are created and deleted, and
therefore under multicast lock.

A maximum value, if non-zero, then places a limit on the number of entries
that can be configured in a given context. Attempts to add entries above
the maximum are rejected.

Rejection reason of netlink-based requests to add MDB entries is
communicated through extack. This channel is unavailable for rejections
triggered from the control path. To address this lack of visibility, the
patchset adds a tracepoint, bridge:br_mdb_full:

	# perf record -e bridge:br_mdb_full &
	# [...]
	# perf script | cut -d: -f4-
	 dev v2 af 2 src ::ffff:0.0.0.0 grp ::ffff:239.1.1.112/00:00:00:00:00:00 vid 0
	 dev v2 af 10 src :: grp ff0e::112/00:00:00:00:00:00 vid 0
	 dev v2 af 2 src ::ffff:0.0.0.0 grp ::ffff:239.1.1.112/00:00:00:00:00:00 vid 10
	 dev v2 af 10 src 2001:db8:1::1 grp ff0e::1/00:00:00:00:00:00 vid 10
	 dev v2 af 2 src ::ffff:192.0.2.1 grp ::ffff:239.1.1.1/00:00:00:00:00:00 vid 10

Another option to consume the tracepoint is e.g. through the bpftrace tool:

	# bpftrace -e ' tracepoint:bridge:br_mdb_full /args->af != 0/ {
			    printf("dev %s src %s grp %s vid %u\n",
				   str(args->dev), ntop(args->src),
				   ntop(args->grp), args->vid);
			}
			tracepoint:bridge:br_mdb_full /args->af == 0/ {
			    printf("dev %s grp %s vid %u\n",
				   str(args->dev),
				   macaddr(args->grpmac), args->vid);
			}'

This tracepoint is triggered for mcast_hash_max exhaustions as well.

The following is an example of how the feature is used. A more extensive
example is available in patch #8:

	# bridge vlan set dev v1 vid 1 mcast_max_groups 1
	# bridge mdb add dev br port v1 grp 230.1.2.3 temp vid 1
	# bridge mdb add dev br port v1 grp 230.1.2.4 temp vid 1
	Error: bridge: Port-VLAN is already a member in mcast_max_groups (1) groups.

The patchset progresses as follows:

- In patch #1, set strict_start_type at two bridge-related policies. The
  reason is we are adding a new attribute to one of these, and want the new
  attribute to be parsed strictly. The other was adjusted for completeness'
  sake.

- In patches #2 to #5, br_mdb and br_multicast code is adjusted to make the
  following additions smoother.

- In patch #6, add the tracepoint.

- In patch #7, the code to maintain number of MDB entries is added as
  struct net_bridge_mcast_port::mdb_n_entries. The maximum is added, too,
  as struct net_bridge_mcast_port::mdb_max_entries, however at this point
  there is no way to set the value yet, and since 0 is treated as "no
  limit", the functionality doesn't change at this point. Note however,
  that mcast_hash_max violations already do trigger at this point.

- In patch #8, netlink plumbing is added: reading of number of entries, and
  reading and writing of maximum.

  The per-port values are passed through RTM_NEWLINK / RTM_GETLINK messages
  in IFLA_BRPORT_MCAST_N_GROUPS and _MAX_GROUPS, inside IFLA_PROTINFO nest.

  The per-port-vlan values are passed through RTM_GETVLAN / RTM_NEWVLAN
  messages in BRIDGE_VLANDB_ENTRY_MCAST_N_GROUPS, _MAX_GROUPS, inside
  BRIDGE_VLANDB_ENTRY.

The following patches deal with the selftest:

- Patches #9 and #10 clean up and move around some selftest code.

- Patches #11 to #14 add helpers and generalize the existing IGMP / MLD
  support to allow generating packets with configurable group addresses and
  varying source lists for (S,G) memberships.

- Patch #15 adds code to generate IGMP leave and MLD done packets.

- Patch #16 finally adds the selftest itself.

v2:
- Cover letter:
    - Add an example of a bpftrace-based probe script
- Patch #6:
    - Report IPv4 as an IPv6-mapped address through the IPv6 buffer
      as well, to save ring buffer space.
- Patch #7:
    - In br_multicast_port_ngroups_inc_one(), bounce
      if n>=max, not if n==max
    - Adjust extack messages to mention ngroups, now
      that the bounces appear when n>=max, not n==max
    - In __br_multicast_enable_port_ctx(), do not reset
      max to 0. Also do not count number of entries by
      going through _inc, as that would end up incorrectly
      bouncing the entries.
- Patch #8:
    - Drop locks around accesses in
      br_multicast_{port,vlan}_ngroups_{get,set_max}(),
    - Drop bounces due to max<n in
      br_multicast_{port,vlan}_ngroups_set_max().
- Patch #12:
    - In the comment at payload_template_calc_checksum(),
      s/%#02x/%02x/, that's the mausezahn payload format.
- Patch #16:
    - Adjust the tests that check setting max below n and
      reset of max on VLAN snooping enablement
    - Make test naming uniform
    - Enable testing of control path (IGMP/MLD) in
      mcast_vlan_snooping bridge
    - Reorganize the code so that test instances (per bridge
      type and configuration type) always come right after
      the test, in order of {d,q,qvs}{4,6}{cfg,ctl}.
      Then groups of selftests are at the end of the file.
      Similarly adjust invocation order of the tests.

Petr Machata (16):
  net: bridge: Set strict_start_type at two policies
  net: bridge: Add extack to br_multicast_new_port_group()
  net: bridge: Move extack-setting to br_multicast_new_port_group()
  net: bridge: Add br_multicast_del_port_group()
  net: bridge: Change a cleanup in br_multicast_new_port_group() to goto
  net: bridge: Add a tracepoint for MDB overflows
  net: bridge: Maintain number of MDB entries in net_bridge_mcast_port
  net: bridge: Add netlink knobs for number / maximum MDB entries
  selftests: forwarding: Move IGMP- and MLD-related functions to lib
  selftests: forwarding: bridge_mdb: Fix a typo
  selftests: forwarding: lib: Add helpers for IP address handling
  selftests: forwarding: lib: Add helpers for checksum handling
  selftests: forwarding: lib: Parameterize IGMPv3/MLDv2 generation
  selftests: forwarding: lib: Allow list of IPs for IGMPv3/MLDv2
  selftests: forwarding: lib: Add helpers to build IGMP/MLD leave
    packets
  selftests: forwarding: bridge_mdb_max: Add a new selftest

 include/trace/events/bridge.h                 |   58 +
 include/uapi/linux/if_bridge.h                |    2 +
 include/uapi/linux/if_link.h                  |    2 +
 net/bridge/br_mdb.c                           |   17 +-
 net/bridge/br_multicast.c                     |  210 ++-
 net/bridge/br_netlink.c                       |   19 +-
 net/bridge/br_netlink_tunnel.c                |    3 +
 net/bridge/br_private.h                       |   21 +-
 net/bridge/br_vlan.c                          |   11 +-
 net/bridge/br_vlan_options.c                  |   33 +-
 net/core/net-traces.c                         |    1 +
 net/core/rtnetlink.c                          |    2 +-
 .../testing/selftests/net/forwarding/Makefile |    1 +
 .../selftests/net/forwarding/bridge_mdb.sh    |   60 +-
 .../net/forwarding/bridge_mdb_max.sh          | 1336 +++++++++++++++++
 tools/testing/selftests/net/forwarding/lib.sh |  216 +++
 16 files changed, 1913 insertions(+), 79 deletions(-)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_mdb_max.sh

-- 
2.39.0

