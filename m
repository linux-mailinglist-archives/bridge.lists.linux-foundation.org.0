Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5543CCB19
	for <lists.bridge@lfdr.de>; Sun, 18 Jul 2021 23:46:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2868F607B9;
	Sun, 18 Jul 2021 21:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksrKi0GakkaJ; Sun, 18 Jul 2021 21:46:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A891A607B4;
	Sun, 18 Jul 2021 21:46:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7CFFC0025;
	Sun, 18 Jul 2021 21:46:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A20AC0023
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1B5D8381F
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pMRpbOGKDkCS for <bridge@lists.linux-foundation.org>;
 Sun, 18 Jul 2021 21:46:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80088.outbound.protection.outlook.com [40.107.8.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EFF6837B6
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewVL8rnhUCI6g7WTxxDx49Rqvs6XAWeAxekuSrjhSW+9bM6wM6WbbvVObwGDJDfVgdk6dNY8St/cNve1ArHloMsDXnDd6sPt/vUYv76IPYuTQv3ouy/btlG+4o1xsrHdV9eYpf3dgc8G3KVGqwcjqUMrBO6Uy0zVT5tCbynbMEQjojg9HeCbRvlpa+DsEThPZvREnBAEgZp2Z6dcWVzmjEkkx5nj2IbBvEC6dZNnYScCgEH+gBEOAJRNSIB11XTe6CiWp/vT2IAhKS0ZAz8wBlqu8PudDHGZoNgX45Ze6AZyiCBt4joxh0r6b+PkW2B0kH5nPBR0dGXJdGcyMhZ97Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XASscjcqPcMIUXxw0GXWYZEdR5MfT+MReQXnciqv9xk=;
 b=OYIQDQEWe7MS85LTcV3bE7bKnph+WsOVpnAQw2KjXBarKxfFm5c81wrRjDlPBCkpFvTgA0jtShEqKspZj4rKat/gOsoEoRkyuqpG+oL6/sMViIi2BOtXfluB0R2WiTJ2YZkEYHjOjs3Ip4VQSNn4IGXiVusWrCoNJjD2BHZsP3g82JCt+/k2hrPVZixdBekcHIypFvbKywe7OOHwGrkRWHFjb4G3qAr9CQfGk9kJIHDmDBWqRQtWUwE05PSsmfEdQIpqVDpa99OAbUpMPnaorhV1nKnen1kvYcr9tA40Fes0FV2Cq/N1wzz3kvPNcsN61tNjxuuQFcboVK7HAaaaCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XASscjcqPcMIUXxw0GXWYZEdR5MfT+MReQXnciqv9xk=;
 b=nU2UkphHBUnfyg24nVmD0UDHv2ir1dTKmtAaGbhEiD2YvBpda6g7F2FDJsJ1vtcQqViHIaVmrTdnQCP1gO/tEf5vEF3CGtijHDdiFRUyBoZPwLWhu+ObPlOg4MwkgaJln08TEmmmbYXmiOuOhhY06WIcucg+2QKLK/8PZlaiXI8=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB5502.eurprd04.prod.outlook.com (2603:10a6:803:c9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Sun, 18 Jul
 2021 21:46:17 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0%2]) with mapi id 15.20.4331.032; Sun, 18 Jul 2021
 21:46:17 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Mon, 19 Jul 2021 00:44:28 +0300
Message-Id: <20210718214434.3938850-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0602CA0014.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::24) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (82.76.66.29) by
 VI1PR0602CA0014.eurprd06.prod.outlook.com (2603:10a6:800:bc::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Sun, 18 Jul 2021 21:46:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9860243b-82e4-4690-f122-08d94a3578e9
X-MS-TrafficTypeDiagnostic: VI1PR04MB5502:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB550212DD02FF9C27E15D6187E0E09@VI1PR04MB5502.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iwGO9yyeEWPGWTotkcn4K31Qai/Opq551atVb8ZoY9LhCixt7nWI7JcmHmUS0alsU+v74WRltza0Kvbp8gI8ycsjkWHxFKdTFyxIHQH2tA1sdLlEJTlPhFL09BlZLNHu32ZZClNuj4Sar2nG8Scc/YY7znXmG8FwKusIgx9tbvFvCBulHqeU/63/hrViHnvGBo4HkEydviV4WG7y+UBpaKV4Jv6hCgMPQpm5TaIQDEvR48mnp0zuoK1iza4HeeKgAa5+tQMaNHSMXDTy8DwYqjbETeQTHD0z2zEpUtQn4vQsGYCsLeNUUGFmIE1S4rPP3qG8M7fk0S09OvkOLLf1wpEZlElatEx6FP0ZGEAxgp7VtzsDs8VLlvfmlUogktyX0t1eF3zAAKQ2ivl+K6aUxMOweVX5U3MUFtHXcWOypZ6v5tzixGrkN7/5poOYfU6B1rpw2J6/2+ibtVIdRBmr91qfvVQKSfe7uDobKeGWGjr1wCO0U6RN04pg1i0bfxMFgbN191akfl+dEmQ9ltQxVATS/dPgbU92E2UB5DNbnv6LMv8ncp325Q1+sgF8Q0RhUYukaG8vlmVi7mFOHdMDNfYiErU9dnc+QzB5sxV/XgLkLIu4Lk4sMX05neRq/cFriasEMstjYU3O03Mr2YX2JBYOCP9cpyruMnimJ6zzE5VXHm7hlvWxY6ZlpD4SJ77z9Io/wYqRlDos7SJTG3gbfQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(38100700002)(44832011)(52116002)(38350700002)(6486002)(956004)(508600001)(36756003)(2616005)(6512007)(1076003)(66476007)(66556008)(316002)(66946007)(26005)(6506007)(54906003)(30864003)(186003)(2906002)(86362001)(110136005)(7416002)(4326008)(83380400001)(6666004)(8936002)(5660300002)(579004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xWBYYFzRuQQjw+hK5VCHvsRldceAHHApLnOBzBthHJnJqi6zP9woyFZUdQ1Q?=
 =?us-ascii?Q?LBKhz1rAkGJfojnTbWZSGu+1op26NldBKBfRftVTy6MHJ0Hln96TXeH5XkYl?=
 =?us-ascii?Q?Tt/cCUvAZSDP56PmCJvEP/HbLOqzgAHoA6Wt74FQUvhGdiqG3IGA4rHHAdBt?=
 =?us-ascii?Q?w3tsm18KwiAFBgPYWfGttpPUp1ShnpWhbBKZjjSUBm9AZ2UUZFfqqR808zoj?=
 =?us-ascii?Q?+AbFTlexahhN3TcHQCyjdld1eaJ5EGCQBPlzhARlNg0YxJ65xDh/BQxJR/3J?=
 =?us-ascii?Q?WpUF6g5TZLq3gOJxN6ucStbGXtJg5qs1QV9NMILegF6Ig/USm5eLfqCHpLfS?=
 =?us-ascii?Q?BLER0Z9kLrDBxtB5slA9unz7TFY47vwp1pkZIH6wpyUgpEejWEgGvtMYhZZZ?=
 =?us-ascii?Q?3YBw/fLwHlWlCwxxIf+IbbCptki6A8pm0eMjzNvDSm+TxHMzZL0ym5wftONu?=
 =?us-ascii?Q?nmdeuljpZ+qljjEQkn6gW5K4qK7AfLBOClZ+MfACmv8Z5bGqwAhONd1u7d6n?=
 =?us-ascii?Q?zH0Zgw3w9YteMzh9oIfxG9jE+BHd5KkT/lXHSt0GjspHDtwhiGprkE6WPqVJ?=
 =?us-ascii?Q?lmRmiOOSAqK/5KE1AvxmIT8J41fGtvMFHI2QrOSONGgOC4cjHAfSqAKNNdYj?=
 =?us-ascii?Q?23gWkPNRtsCqI/0/vSoP6klW6qm7zo7GDFsODllWC+JkZ0RF++Sy2sMF7C0j?=
 =?us-ascii?Q?6ixM6SMcT+Zeal+596SQPr2nbNmqhXixg79cGPt7UUYZE4A3THQvjb57fUZB?=
 =?us-ascii?Q?8fOHnIW/HhmEI81MglSpL6Pf5RhmxWmy0eXDsmyhCm0/u2EjSfcMmsoqy/vl?=
 =?us-ascii?Q?kTtjFwJCKgHIZsT+nD/JwxcMtSK9xWsFm76xrjjfDv1oMax0BTkkdBTZmcCb?=
 =?us-ascii?Q?jbLzAunfnVDZszEkq6Ia0D2+vJlUQYvU2b3UzpPuA37cmk9r2JxTR1JEqoJl?=
 =?us-ascii?Q?PVxuUSWImROeOFQeYoiLfxI7EPMSrxoCzqARl5Jjh4OmIPaIY9PZILPBWGz7?=
 =?us-ascii?Q?YaBwaflP1T1ss7zlbxYjTxuBUQXoNmjmlr+VnxWwnJ7V6B74XhT6EQTzA3X4?=
 =?us-ascii?Q?Xho/RPn7rrgmYfOuP9f9TAcNOUGiaVPwIIwi+4C1a0tVNJGfJoKCJNNuLMCv?=
 =?us-ascii?Q?CqhB3UbZhGRwcjzkAeAxzLcgZQShwXpTJ1VhCkqmkcJjUxY2Az6DEeqyvkkD?=
 =?us-ascii?Q?F9ewNa0bA832AgHA4vtIP4I4BqDRxSPURUv9GTGu4u9C6hP4dCo/XKpU54gU?=
 =?us-ascii?Q?4pMqCd/1vfoZc7i0SwVzculExz8/TLPQjIjBJdMXD9SuucVn7xRMJQqMLrBg?=
 =?us-ascii?Q?INuwgMiNGStAYsWIyhIBwNxT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9860243b-82e4-4690-f122-08d94a3578e9
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2021 21:46:17.4354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: imW8OYqbGFNlxNKrGRaINeWkxdP5YV6tVmtKHtbjNbfxasTBdjamSJltjUe4LUivkFia5n3SlKJbi7s3M27QVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5502
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 DENG Qingfang <dqfext@gmail.com>, Vadym Kochan <vkochan@marvell.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 UNGLinuxDriver@microchip.com, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Taras Chornyi <tchornyi@marvell.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 09/15] net: bridge: switchdev: let
	drivers inform which bridge ports are offloaded
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

On reception of an skb, the bridge checks if it was marked as 'already
forwarded in hardware' (checks if skb->offload_fwd_mark == 1), and if it
is, it assigns the source hardware domain of that skb based on the
hardware domain of the ingress port. Then during forwarding, it enforces
that the egress port must have a different hardware domain than the
ingress one (this is done in nbp_switchdev_allowed_egress).

Non-switchdev drivers don't report any physical switch id (neither
through devlink nor .ndo_get_port_parent_id), therefore the bridge
assigns them a hardware domain of 0, and packets coming from them will
always have skb->offload_fwd_mark = 0. So there aren't any restrictions.

Problems appear due to the fact that DSA would like to perform software
fallback for bonding and team interfaces that the physical switch cannot
offload.

       +-- br0 ---+
      / /   |      \
     / /    |       \
    /  |    |      bond0
   /   |    |     /    \
 swp0 swp1 swp2 swp3 swp4

There, it is desirable that the presence of swp3 and swp4 under a
non-offloaded LAG does not preclude us from doing hardware bridging
beteen swp0, swp1 and swp2. The bandwidth of the CPU is often times high
enough that software bridging between {swp0,swp1,swp2} and bond0 is not
impractical.

But this creates an impossible paradox given the current way in which
port hardware domains are assigned. When the driver receives a packet
from swp0 (say, due to flooding), it must set skb->offload_fwd_mark to
something.

- If we set it to 0, then the bridge will forward it towards swp1, swp2
  and bond0. But the switch has already forwarded it towards swp1 and
  swp2 (not to bond0, remember, that isn't offloaded, so as far as the
  switch is concerned, ports swp3 and swp4 are not looking up the FDB,
  and the entire bond0 is a destination that is strictly behind the
  CPU). But we don't want duplicated traffic towards swp1 and swp2, so
  it's not ok to set skb->offload_fwd_mark = 0.

- If we set it to 1, then the bridge will not forward the skb towards
  the ports with the same switchdev mark, i.e. not to swp1, swp2 and
  bond0. Towards swp1 and swp2 that's ok, but towards bond0? It should
  have forwarded the skb there.

So the real issue is that bond0 will be assigned the same hardware
domain as {swp0,swp1,swp2}, because the function that assigns hardware
domains to bridge ports, nbp_switchdev_add(), recurses through bond0's
lower interfaces until it finds something that implements devlink (calls
dev_get_port_parent_id with bool recurse = true). This is a problem
because the fact that bond0 can be offloaded by swp3 and swp4 in our
example is merely an assumption.

A solution is to give the bridge explicit hints as to what hardware
domain it should use for each port.

Currently, the bridging offload is very 'silent': a driver registers a
netdevice notifier, which is put on the netns's notifier chain, and
which sniffs around for NETDEV_CHANGEUPPER events where the upper is a
bridge, and the lower is an interface it knows about (one registered by
this driver, normally). Then, from within that notifier, it does a bunch
of stuff behind the bridge's back, without the bridge necessarily
knowing that there's somebody offloading that port. It looks like this:

     ip link set swp0 master br0
                  |
                  v
 br_add_if() calls netdev_master_upper_dev_link()
                  |
                  v
        call_netdevice_notifiers
                  |
                  v
       dsa_slave_netdevice_event
                  |
                  v
        oh, hey! it's for me!
                  |
                  v
           .port_bridge_join

What we do to solve the conundrum is to be less silent, and change the
switchdev drivers to present themselves to the bridge. Something like this:

     ip link set swp0 master br0
                  |
                  v
 br_add_if() calls netdev_master_upper_dev_link()
                  |
                  v                    bridge: Aye! I'll use this
        call_netdevice_notifiers           ^  ppid as the
                  |                        |  hardware domain for
                  v                        |  this port, and zero
       dsa_slave_netdevice_event           |  if I got nothing.
                  |                        |
                  v                        |
        oh, hey! it's for me!              |
                  |                        |
                  v                        |
           .port_bridge_join               |
                  |                        |
                  +------------------------+
             switchdev_bridge_port_offload(swp0, swp0)

Then stacked interfaces (like bond0 on top of swp3/swp4) would be
treated differently in DSA, depending on whether we can or cannot
offload them.

The offload case:

    ip link set bond0 master br0
                  |
                  v
 br_add_if() calls netdev_master_upper_dev_link()
                  |
                  v                    bridge: Aye! I'll use this
        call_netdevice_notifiers           ^  ppid as the
                  |                        |  switchdev mark for
                  v                        |        bond0.
       dsa_slave_netdevice_event           | Coincidentally (or not),
                  |                        | bond0 and swp0, swp1, swp2
                  v                        | all have the same switchdev
        hmm, it's not quite for me,        | mark now, since the ASIC
         but my driver has already         | is able to forward towards
           called .port_lag_join           | all these ports in hw.
          for it, because I have           |
      a port with dp->lag_dev == bond0.    |
                  |                        |
                  v                        |
           .port_bridge_join               |
           for swp3 and swp4               |
                  |                        |
                  +------------------------+
            switchdev_bridge_port_offload(bond0, swp3)
            switchdev_bridge_port_offload(bond0, swp4)

And the non-offload case:

    ip link set bond0 master br0
                  |
                  v
 br_add_if() calls netdev_master_upper_dev_link()
                  |
                  v                    bridge waiting:
        call_netdevice_notifiers           ^  huh, switchdev_bridge_port_offload
                  |                        |  wasn't called, okay, I'll use a
                  v                        |  hwdom of zero for this one.
       dsa_slave_netdevice_event           :  Then packets received on swp0 will
                  |                        :  not be software-forwarded towards
                  v                        :  swp1, but they will towards bond0.
         it's not for me, but
       bond0 is an upper of swp3
      and swp4, but their dp->lag_dev
       is NULL because they couldn't
            offload it.

Basically we can draw the conclusion that the lowers of a bridge port
can come and go, so depending on the configuration of lowers for a
bridge port, it can dynamically toggle between offloaded and unoffloaded.
Therefore, we need an equivalent switchdev_bridge_port_unoffload too.

This patch changes the way any switchdev driver interacts with the
bridge. From now on, everybody needs to call switchdev_bridge_port_offload
and switchdev_bridge_port_unoffload, otherwise the bridge will treat the
port as non-offloaded and allow software flooding to other ports from
the same ASIC.

Note that these functions lay the ground for a more complex handshake
between switchdev drivers and the bridge in the future. During the
info->linking == false path, switchdev_bridge_port_unoffload() is
strategically put in the NETDEV_PRECHANGEUPPER notifier as opposed to
NETDEV_CHANGEUPPER. The reason for this has to do with a future
migration of the switchdev object replay helpers (br_*_replay) from a
pull mode (completely initiated by the driver) to a semi-push mode (the
bridge initiates the replay when the switchdev driver declares that it
offloads a port). On deletion, the switchdev object replay helpers need
the netdev adjacency lists to be valid, and that is only true in
NETDEV_PRECHANGEUPPER. So we need to add trivial glue code to all
drivers to handle a "pre bridge leave" event, and that is where we hook
the switchdev_bridge_port_unoffload() call.

Cc: Vadym Kochan <vkochan@marvell.com>
Cc: Taras Chornyi <tchornyi@marvell.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Lars Povlsen <lars.povlsen@microchip.com>
Cc: Steen Hegelund <Steen.Hegelund@microchip.com>
Cc: UNGLinuxDriver@microchip.com
Cc: Claudiu Manoil <claudiu.manoil@nxp.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: patch is new
v3->v4: added mlxsw_sp_port_pre_lag_leave() and mlxsw_sp_port_pre_vlan_leave()

 .../ethernet/freescale/dpaa2/dpaa2-switch.c   | 14 ++-
 .../ethernet/marvell/prestera/prestera_main.c | 30 +++++-
 .../marvell/prestera/prestera_switchdev.c     | 29 +++++-
 .../marvell/prestera/prestera_switchdev.h     |  7 +-
 .../net/ethernet/mellanox/mlxsw/spectrum.c    | 50 ++++++++++
 .../net/ethernet/mellanox/mlxsw/spectrum.h    |  4 +
 .../mellanox/mlxsw/spectrum_switchdev.c       | 13 ++-
 .../microchip/sparx5/sparx5_switchdev.c       | 41 +++++++-
 drivers/net/ethernet/mscc/ocelot_net.c        | 81 ++++++++++++++++
 drivers/net/ethernet/rocker/rocker.h          |  6 +-
 drivers/net/ethernet/rocker/rocker_main.c     | 30 +++++-
 drivers/net/ethernet/rocker/rocker_ofdpa.c    | 36 ++++++-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      | 28 +++++-
 drivers/net/ethernet/ti/cpsw_new.c            | 26 ++++-
 include/linux/if_bridge.h                     | 26 +++++
 net/bridge/br_if.c                            | 13 +--
 net/bridge/br_private.h                       | 13 +--
 net/bridge/br_switchdev.c                     | 94 +++++++++++++++++--
 net/dsa/port.c                                | 20 +++-
 19 files changed, 506 insertions(+), 55 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c
index 23798feb40b2..2cd8a38e4f30 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c
@@ -1930,7 +1930,7 @@ static int dpaa2_switch_port_bridge_join(struct net_device *netdev,
 	if (err)
 		goto err_egress_flood;
 
-	return 0;
+	return switchdev_bridge_port_offload(netdev, netdev, extack);
 
 err_egress_flood:
 	dpaa2_switch_port_set_fdb(port_priv, NULL);
@@ -1957,6 +1957,13 @@ static int dpaa2_switch_port_restore_rxvlan(struct net_device *vdev, int vid, vo
 	return dpaa2_switch_port_vlan_add(arg, vlan_proto, vid);
 }
 
+static int dpaa2_switch_port_pre_bridge_leave(struct net_device *netdev,
+					      struct net_device *upper_dev,
+					      struct netlink_ext_ack *extack)
+{
+	return switchdev_bridge_port_unoffload(netdev, netdev, extack);
+}
+
 static int dpaa2_switch_port_bridge_leave(struct net_device *netdev)
 {
 	struct ethsw_port_priv *port_priv = netdev_priv(netdev);
@@ -2078,6 +2085,11 @@ static int dpaa2_switch_port_netdevice_event(struct notifier_block *nb,
 		if (err)
 			goto out;
 
+		if (!info->linking)
+			err = dpaa2_switch_port_pre_bridge_leave(netdev,
+								 upper_dev,
+								 extack);
+
 		break;
 	case NETDEV_CHANGEUPPER:
 		upper_dev = info->upper_dev;
diff --git a/drivers/net/ethernet/marvell/prestera/prestera_main.c b/drivers/net/ethernet/marvell/prestera/prestera_main.c
index 1f3c8cd6ced2..62a0ccfdbe6b 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_main.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_main.c
@@ -540,7 +540,8 @@ static void prestera_lag_destroy(struct prestera_switch *sw,
 }
 
 static int prestera_lag_port_add(struct prestera_port *port,
-				 struct net_device *lag_dev)
+				 struct net_device *lag_dev,
+				 struct netlink_ext_ack *extack)
 {
 	struct prestera_switch *sw = port->sw;
 	struct prestera_lag *lag;
@@ -570,6 +571,21 @@ static int prestera_lag_port_add(struct prestera_port *port,
 	return 0;
 }
 
+static int prestera_pre_lag_leave(struct prestera_port *port,
+				  struct net_device *lag_dev,
+				  struct netlink_ext_ack *extack)
+{
+	if (netif_is_bridge_port(lag_dev)) {
+		struct net_device *br_dev;
+
+		br_dev = netdev_master_upper_dev_get(lag_dev);
+
+		return prestera_pre_bridge_port_leave(br_dev, port, extack);
+	}
+
+	return 0;
+}
+
 static int prestera_lag_port_del(struct prestera_port *port)
 {
 	struct prestera_switch *sw = port->sw;
@@ -758,17 +774,25 @@ static int prestera_netdev_port_event(struct net_device *lower,
 		if (err)
 			return err;
 
+		if (netif_is_bridge_master(upper) && !info->linking)
+			return prestera_pre_bridge_port_leave(upper, port,
+							      extack);
+		else if (netif_is_lag_master(upper) && !info->linking)
+			return prestera_pre_lag_leave(port, upper, extack);
+
 		break;
 
 	case NETDEV_CHANGEUPPER:
 		if (netif_is_bridge_master(upper)) {
 			if (info->linking)
-				return prestera_bridge_port_join(upper, port);
+				return prestera_bridge_port_join(upper, port,
+								 extack);
 			else
 				prestera_bridge_port_leave(upper, port);
 		} else if (netif_is_lag_master(upper)) {
 			if (info->linking)
-				return prestera_lag_port_add(port, upper);
+				return prestera_lag_port_add(port, upper,
+							     extack);
 			else
 				prestera_lag_port_del(port);
 		}
diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index a1fc4ab53ccf..4be82c043991 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -480,7 +480,8 @@ prestera_bridge_1d_port_join(struct prestera_bridge_port *br_port)
 }
 
 int prestera_bridge_port_join(struct net_device *br_dev,
-			      struct prestera_port *port)
+			      struct prestera_port *port,
+			      struct netlink_ext_ack *extack)
 {
 	struct prestera_switchdev *swdev = port->sw->swdev;
 	struct prestera_bridge_port *br_port;
@@ -500,6 +501,10 @@ int prestera_bridge_port_join(struct net_device *br_dev,
 		goto err_brport_create;
 	}
 
+	err = switchdev_bridge_port_offload(br_port->dev, port->dev, extack);
+	if (err)
+		goto err_brport_offload;
+
 	if (bridge->vlan_enabled)
 		return 0;
 
@@ -510,12 +515,34 @@ int prestera_bridge_port_join(struct net_device *br_dev,
 	return 0;
 
 err_port_join:
+	switchdev_bridge_port_unoffload(br_port->dev, port->dev, extack);
+err_brport_offload:
 	prestera_bridge_port_put(br_port);
 err_brport_create:
 	prestera_bridge_put(bridge);
 	return err;
 }
 
+int prestera_pre_bridge_port_leave(struct net_device *br_dev,
+				   struct prestera_port *port,
+				   struct netlink_ext_ack *extack)
+{
+	struct prestera_switchdev *swdev = port->sw->swdev;
+	struct prestera_bridge_port *br_port;
+	struct prestera_bridge *bridge;
+
+	bridge = prestera_bridge_by_dev(swdev, br_dev);
+	if (!bridge)
+		return -ENODEV;
+
+	br_port = __prestera_bridge_port_by_dev(bridge, port->dev);
+	if (!br_port)
+		return -ENODEV;
+
+	return switchdev_bridge_port_unoffload(br_port->dev, port->dev,
+					       extack);
+}
+
 static void prestera_bridge_1q_port_leave(struct prestera_bridge_port *br_port)
 {
 	struct prestera_port *port = netdev_priv(br_port->dev);
diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.h b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.h
index a91bc35d235f..05ec54e2af26 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.h
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.h
@@ -8,7 +8,12 @@ int prestera_switchdev_init(struct prestera_switch *sw);
 void prestera_switchdev_fini(struct prestera_switch *sw);
 
 int prestera_bridge_port_join(struct net_device *br_dev,
-			      struct prestera_port *port);
+			      struct prestera_port *port,
+			      struct netlink_ext_ack *extack);
+
+int prestera_pre_bridge_port_leave(struct net_device *br_dev,
+				   struct prestera_port *port,
+				   struct netlink_ext_ack *extack);
 
 void prestera_bridge_port_leave(struct net_device *br_dev,
 				struct prestera_port *port);
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
index b3d1fdc2d094..05ff4936cf5d 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
@@ -3811,6 +3811,21 @@ static int mlxsw_sp_port_lag_join(struct mlxsw_sp_port *mlxsw_sp_port,
 	return err;
 }
 
+static int mlxsw_sp_port_pre_lag_leave(struct mlxsw_sp_port *mlxsw_sp_port,
+				       struct net_device *lag_dev,
+				       struct netlink_ext_ack *extack)
+{
+	struct net_device *br_dev;
+
+	if (!netif_is_bridge_port(lag_dev))
+		return 0;
+
+	br_dev = netdev_master_upper_dev_get(lag_dev);
+
+	return mlxsw_sp_port_pre_bridge_leave(mlxsw_sp_port, lag_dev,
+					      br_dev, extack);
+}
+
 static void mlxsw_sp_port_lag_leave(struct mlxsw_sp_port *mlxsw_sp_port,
 				    struct net_device *lag_dev)
 {
@@ -3994,6 +4009,21 @@ static void mlxsw_sp_port_ovs_leave(struct mlxsw_sp_port *mlxsw_sp_port)
 	mlxsw_sp_port_vp_mode_set(mlxsw_sp_port, false);
 }
 
+static int mlxsw_sp_port_pre_vlan_leave(struct mlxsw_sp_port *mlxsw_sp_port,
+					struct net_device *vlan_dev,
+					struct netlink_ext_ack *extack)
+{
+	struct net_device *br_dev;
+
+	if (!netif_is_bridge_port(vlan_dev))
+		return 0;
+
+	br_dev = netdev_master_upper_dev_get(vlan_dev);
+
+	return mlxsw_sp_port_pre_bridge_leave(mlxsw_sp_port, vlan_dev,
+					      br_dev, extack);
+}
+
 static void mlxsw_sp_port_vlan_leave(struct mlxsw_sp_port *mlxsw_sp_port,
 				     struct net_device *vlan_dev)
 {
@@ -4208,6 +4238,20 @@ static int mlxsw_sp_netdevice_port_upper_event(struct net_device *lower_dev,
 		if (err)
 			return err;
 
+		if (netif_is_bridge_master(upper_dev) && !info->linking)
+			err = mlxsw_sp_port_pre_bridge_leave(mlxsw_sp_port,
+							     lower_dev,
+							     upper_dev,
+							     extack);
+		if (netif_is_lag_master(upper_dev) && !info->linking)
+			err = mlxsw_sp_port_pre_lag_leave(mlxsw_sp_port,
+							  upper_dev,
+							  extack);
+		if (is_vlan_dev(upper_dev) && !info->linking)
+			err = mlxsw_sp_port_pre_vlan_leave(mlxsw_sp_port,
+							   upper_dev,
+							   extack);
+
 		break;
 	case NETDEV_CHANGEUPPER:
 		upper_dev = info->upper_dev;
@@ -4372,6 +4416,12 @@ static int mlxsw_sp_netdevice_port_vlan_event(struct net_device *vlan_dev,
 		if (err)
 			return err;
 
+		if (netif_is_bridge_master(upper_dev) && !info->linking)
+			err = mlxsw_sp_port_pre_bridge_leave(mlxsw_sp_port,
+							     vlan_dev,
+							     upper_dev,
+							     extack);
+
 		break;
 	case NETDEV_CHANGEUPPER:
 		upper_dev = info->upper_dev;
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum.h b/drivers/net/ethernet/mellanox/mlxsw/spectrum.h
index f99db88ee884..54d22ecee4e2 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum.h
@@ -596,6 +596,10 @@ int mlxsw_sp_port_bridge_join(struct mlxsw_sp_port *mlxsw_sp_port,
 			      struct net_device *brport_dev,
 			      struct net_device *br_dev,
 			      struct netlink_ext_ack *extack);
+int mlxsw_sp_port_pre_bridge_leave(struct mlxsw_sp_port *mlxsw_sp_port,
+				   struct net_device *brport_dev,
+				   struct net_device *br_dev,
+				   struct netlink_ext_ack *extack);
 void mlxsw_sp_port_bridge_leave(struct mlxsw_sp_port *mlxsw_sp_port,
 				struct net_device *brport_dev,
 				struct net_device *br_dev);
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 5a0c7c94874e..731234a2ace3 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -2367,6 +2367,7 @@ int mlxsw_sp_port_bridge_join(struct mlxsw_sp_port *mlxsw_sp_port,
 {
 	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 	struct mlxsw_sp_bridge_device *bridge_device;
+	struct net_device *dev = mlxsw_sp_port->dev;
 	struct mlxsw_sp_bridge_port *bridge_port;
 	int err;
 
@@ -2381,13 +2382,23 @@ int mlxsw_sp_port_bridge_join(struct mlxsw_sp_port *mlxsw_sp_port,
 	if (err)
 		goto err_port_join;
 
-	return 0;
+	return switchdev_bridge_port_offload(brport_dev, dev, extack);
 
 err_port_join:
 	mlxsw_sp_bridge_port_put(mlxsw_sp->bridge, bridge_port);
 	return err;
 }
 
+int mlxsw_sp_port_pre_bridge_leave(struct mlxsw_sp_port *mlxsw_sp_port,
+				   struct net_device *brport_dev,
+				   struct net_device *br_dev,
+				   struct netlink_ext_ack *extack)
+{
+	struct net_device *dev = mlxsw_sp_port->dev;
+
+	return switchdev_bridge_port_unoffload(brport_dev, dev, extack);
+}
+
 void mlxsw_sp_port_bridge_leave(struct mlxsw_sp_port *mlxsw_sp_port,
 				struct net_device *brport_dev,
 				struct net_device *br_dev)
diff --git a/drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c b/drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c
index a72e3b3b596e..270b9fabce91 100644
--- a/drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c
+++ b/drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c
@@ -93,9 +93,11 @@ static int sparx5_port_attr_set(struct net_device *dev, const void *ctx,
 }
 
 static int sparx5_port_bridge_join(struct sparx5_port *port,
-				   struct net_device *bridge)
+				   struct net_device *bridge,
+				   struct netlink_ext_ack *extack)
 {
 	struct sparx5 *sparx5 = port->sparx5;
+	struct net_device *ndev = port->ndev;
 
 	if (bitmap_empty(sparx5->bridge_mask, SPX5_PORTS))
 		/* First bridged port */
@@ -112,9 +114,17 @@ static int sparx5_port_bridge_join(struct sparx5_port *port,
 	/* Port enters in bridge mode therefor don't need to copy to CPU
 	 * frames for multicast in case the bridge is not requesting them
 	 */
-	__dev_mc_unsync(port->ndev, sparx5_mc_unsync);
+	__dev_mc_unsync(ndev, sparx5_mc_unsync);
 
-	return 0;
+	return switchdev_bridge_port_offload(ndev, ndev, extack);
+}
+
+static int sparx5_port_pre_bridge_leave(struct sparx5_port *port,
+					struct netlink_ext_ack *extack)
+{
+	struct net_device *ndev = port->ndev;
+
+	return switchdev_bridge_port_unoffload(ndev, ndev, extack);
 }
 
 static void sparx5_port_bridge_leave(struct sparx5_port *port,
@@ -135,15 +145,35 @@ static void sparx5_port_bridge_leave(struct sparx5_port *port,
 	__dev_mc_sync(port->ndev, sparx5_mc_sync, sparx5_mc_unsync);
 }
 
+static int
+sparx5_port_prechangeupper(struct net_device *dev,
+			   struct netdev_notifier_changeupper_info *info)
+{
+	struct sparx5_port *port = netdev_priv(dev);
+	struct netlink_ext_ack *extack;
+	int err = 0;
+
+	extack = netdev_notifier_info_to_extack(&info->info);
+
+	if (netif_is_bridge_master(info->upper_dev) && !info->linking)
+		err = sparx5_port_pre_bridge_leave(port, extack);
+
+	return err;
+}
+
 static int sparx5_port_changeupper(struct net_device *dev,
 				   struct netdev_notifier_changeupper_info *info)
 {
 	struct sparx5_port *port = netdev_priv(dev);
+	struct netlink_ext_ack *extack;
 	int err = 0;
 
+	extack = netdev_notifier_info_to_extack(&info->info);
+
 	if (netif_is_bridge_master(info->upper_dev)) {
 		if (info->linking)
-			err = sparx5_port_bridge_join(port, info->upper_dev);
+			err = sparx5_port_bridge_join(port, info->upper_dev,
+						      extack);
 		else
 			sparx5_port_bridge_leave(port, info->upper_dev);
 
@@ -177,6 +207,9 @@ static int sparx5_netdevice_port_event(struct net_device *dev,
 		return 0;
 
 	switch (event) {
+	case NETDEV_PRECHANGEUPPER:
+		err = sparx5_port_prechangeupper(dev, ptr);
+		break;
 	case NETDEV_CHANGEUPPER:
 		err = sparx5_port_changeupper(dev, ptr);
 		break;
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index e9d260d84bf3..dcb393a35c0e 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -1216,6 +1216,10 @@ static int ocelot_netdevice_bridge_join(struct net_device *dev,
 
 	ocelot_port_bridge_join(ocelot, port, bridge);
 
+	err = switchdev_bridge_port_offload(brport_dev, dev, extack);
+	if (err)
+		goto err_switchdev_offload;
+
 	err = ocelot_switchdev_sync(ocelot, port, brport_dev, bridge, extack);
 	if (err)
 		goto err_switchdev_sync;
@@ -1223,10 +1227,19 @@ static int ocelot_netdevice_bridge_join(struct net_device *dev,
 	return 0;
 
 err_switchdev_sync:
+	switchdev_bridge_port_unoffload(brport_dev, dev, extack);
+err_switchdev_offload:
 	ocelot_port_bridge_leave(ocelot, port, bridge);
 	return err;
 }
 
+static int ocelot_netdevice_pre_bridge_leave(struct net_device *dev,
+					     struct net_device *brport_dev,
+					     struct netlink_ext_ack *extack)
+{
+	return switchdev_bridge_port_unoffload(brport_dev, dev, extack);
+}
+
 static int ocelot_netdevice_bridge_leave(struct net_device *dev,
 					 struct net_device *brport_dev,
 					 struct net_device *bridge)
@@ -1279,6 +1292,19 @@ static int ocelot_netdevice_lag_join(struct net_device *dev,
 	return err;
 }
 
+static int ocelot_netdevice_pre_lag_leave(struct net_device *dev,
+					  struct net_device *bond,
+					  struct netlink_ext_ack *extack)
+{
+	struct net_device *bridge_dev;
+
+	bridge_dev = netdev_master_upper_dev_get(bond);
+	if (!bridge_dev || !netif_is_bridge_master(bridge_dev))
+		return 0;
+
+	return ocelot_netdevice_pre_bridge_leave(dev, bond, extack);
+}
+
 static int ocelot_netdevice_lag_leave(struct net_device *dev,
 				      struct net_device *bond)
 {
@@ -1355,6 +1381,50 @@ ocelot_netdevice_lag_changeupper(struct net_device *dev,
 	return NOTIFY_DONE;
 }
 
+static int
+ocelot_netdevice_prechangeupper(struct net_device *dev,
+				struct net_device *brport_dev,
+				struct netdev_notifier_changeupper_info *info)
+{
+	struct netlink_ext_ack *extack;
+	int err = 0;
+
+	extack = netdev_notifier_info_to_extack(&info->info);
+
+	if (netif_is_bridge_master(info->upper_dev) && !info->linking)
+		err = ocelot_netdevice_pre_bridge_leave(dev, brport_dev,
+							extack);
+
+	if (netif_is_lag_master(info->upper_dev) && !info->linking)
+		err = ocelot_netdevice_pre_lag_leave(dev, info->upper_dev,
+						     extack);
+
+	return notifier_from_errno(err);
+}
+
+static int
+ocelot_netdevice_lag_prechangeupper(struct net_device *dev,
+				    struct netdev_notifier_changeupper_info *info)
+{
+	struct net_device *lower;
+	struct list_head *iter;
+	int err = NOTIFY_DONE;
+
+	netdev_for_each_lower_dev(dev, lower, iter) {
+		struct ocelot_port_private *priv = netdev_priv(lower);
+		struct ocelot_port *ocelot_port = &priv->port;
+
+		if (ocelot_port->bond != dev)
+			return NOTIFY_OK;
+
+		err = ocelot_netdevice_prechangeupper(dev, lower, info);
+		if (err)
+			return notifier_from_errno(err);
+	}
+
+	return NOTIFY_DONE;
+}
+
 static int
 ocelot_netdevice_changelowerstate(struct net_device *dev,
 				  struct netdev_lag_lower_state_info *info)
@@ -1382,6 +1452,17 @@ static int ocelot_netdevice_event(struct notifier_block *unused,
 	struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 
 	switch (event) {
+	case NETDEV_PRECHANGEUPPER: {
+		struct netdev_notifier_changeupper_info *info = ptr;
+
+		if (ocelot_netdevice_dev_check(dev))
+			return ocelot_netdevice_prechangeupper(dev, dev, info);
+
+		if (netif_is_lag_master(dev))
+			return ocelot_netdevice_lag_prechangeupper(dev, info);
+
+		break;
+	}
 	case NETDEV_CHANGEUPPER: {
 		struct netdev_notifier_changeupper_info *info = ptr;
 
diff --git a/drivers/net/ethernet/rocker/rocker.h b/drivers/net/ethernet/rocker/rocker.h
index 315a6e5c0f59..d31cee1cdda9 100644
--- a/drivers/net/ethernet/rocker/rocker.h
+++ b/drivers/net/ethernet/rocker/rocker.h
@@ -119,7 +119,11 @@ struct rocker_world_ops {
 	int (*port_obj_fdb_del)(struct rocker_port *rocker_port,
 				u16 vid, const unsigned char *addr);
 	int (*port_master_linked)(struct rocker_port *rocker_port,
-				  struct net_device *master);
+				  struct net_device *master,
+				  struct netlink_ext_ack *extack);
+	int (*port_master_pre_unlink)(struct rocker_port *rocker_port,
+				      struct net_device *master,
+				      struct netlink_ext_ack *extack);
 	int (*port_master_unlinked)(struct rocker_port *rocker_port,
 				    struct net_device *master);
 	int (*port_neigh_update)(struct rocker_port *rocker_port,
diff --git a/drivers/net/ethernet/rocker/rocker_main.c b/drivers/net/ethernet/rocker/rocker_main.c
index a46633606cae..2e3e413406ac 100644
--- a/drivers/net/ethernet/rocker/rocker_main.c
+++ b/drivers/net/ethernet/rocker/rocker_main.c
@@ -1670,13 +1670,25 @@ rocker_world_port_fdb_del(struct rocker_port *rocker_port,
 }
 
 static int rocker_world_port_master_linked(struct rocker_port *rocker_port,
-					   struct net_device *master)
+					   struct net_device *master,
+					   struct netlink_ext_ack *extack)
 {
 	struct rocker_world_ops *wops = rocker_port->rocker->wops;
 
 	if (!wops->port_master_linked)
 		return -EOPNOTSUPP;
-	return wops->port_master_linked(rocker_port, master);
+	return wops->port_master_linked(rocker_port, master, extack);
+}
+
+static int rocker_world_port_master_pre_unlink(struct rocker_port *rocker_port,
+					       struct net_device *master,
+					       struct netlink_ext_ack *extack)
+{
+	struct rocker_world_ops *wops = rocker_port->rocker->wops;
+
+	if (!wops->port_master_pre_unlink)
+		return -EOPNOTSUPP;
+	return wops->port_master_pre_unlink(rocker_port, master, extack);
 }
 
 static int rocker_world_port_master_unlinked(struct rocker_port *rocker_port,
@@ -3107,6 +3119,7 @@ struct rocker_port *rocker_port_dev_lower_find(struct net_device *dev,
 static int rocker_netdevice_event(struct notifier_block *unused,
 				  unsigned long event, void *ptr)
 {
+	struct netlink_ext_ack *extack = netdev_notifier_info_to_extack(ptr);
 	struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 	struct netdev_notifier_changeupper_info *info;
 	struct rocker_port *rocker_port;
@@ -3116,6 +3129,16 @@ static int rocker_netdevice_event(struct notifier_block *unused,
 		return NOTIFY_DONE;
 
 	switch (event) {
+	case NETDEV_PRECHANGEUPPER:
+		info = ptr;
+		if (!info->master)
+			goto out;
+		rocker_port = netdev_priv(dev);
+		if (!info->linking)
+			err = rocker_world_port_master_pre_unlink(rocker_port,
+								  info->upper_dev,
+								  extack);
+		break;
 	case NETDEV_CHANGEUPPER:
 		info = ptr;
 		if (!info->master)
@@ -3123,7 +3146,8 @@ static int rocker_netdevice_event(struct notifier_block *unused,
 		rocker_port = netdev_priv(dev);
 		if (info->linking) {
 			err = rocker_world_port_master_linked(rocker_port,
-							      info->upper_dev);
+							      info->upper_dev,
+							      extack);
 			if (err)
 				netdev_warn(dev, "failed to reflect master linked (err %d)\n",
 					    err);
diff --git a/drivers/net/ethernet/rocker/rocker_ofdpa.c b/drivers/net/ethernet/rocker/rocker_ofdpa.c
index 967a634ee9ac..c32d076bcbf6 100644
--- a/drivers/net/ethernet/rocker/rocker_ofdpa.c
+++ b/drivers/net/ethernet/rocker/rocker_ofdpa.c
@@ -2571,8 +2571,10 @@ static int ofdpa_port_obj_fdb_del(struct rocker_port *rocker_port,
 }
 
 static int ofdpa_port_bridge_join(struct ofdpa_port *ofdpa_port,
-				  struct net_device *bridge)
+				  struct net_device *bridge,
+				  struct netlink_ext_ack *extack)
 {
+	struct net_device *dev = ofdpa_port->dev;
 	int err;
 
 	/* Port is joining bridge, so the internal VLAN for the
@@ -2592,7 +2594,19 @@ static int ofdpa_port_bridge_join(struct ofdpa_port *ofdpa_port,
 
 	ofdpa_port->bridge_dev = bridge;
 
-	return ofdpa_port_vlan_add(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
+	err = ofdpa_port_vlan_add(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
+	if (err)
+		return err;
+
+	return switchdev_bridge_port_offload(dev, dev, extack);
+}
+
+static int ofdpa_port_pre_bridge_leave(struct ofdpa_port *ofdpa_port,
+				       struct netlink_ext_ack *extack)
+{
+	struct net_device *dev = ofdpa_port->dev;
+
+	return switchdev_bridge_port_unoffload(dev, dev, extack);
 }
 
 static int ofdpa_port_bridge_leave(struct ofdpa_port *ofdpa_port)
@@ -2637,18 +2651,31 @@ static int ofdpa_port_ovs_changed(struct ofdpa_port *ofdpa_port,
 }
 
 static int ofdpa_port_master_linked(struct rocker_port *rocker_port,
-				    struct net_device *master)
+				    struct net_device *master,
+				    struct netlink_ext_ack *extack)
 {
 	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 	int err = 0;
 
 	if (netif_is_bridge_master(master))
-		err = ofdpa_port_bridge_join(ofdpa_port, master);
+		err = ofdpa_port_bridge_join(ofdpa_port, master, extack);
 	else if (netif_is_ovs_master(master))
 		err = ofdpa_port_ovs_changed(ofdpa_port, master);
 	return err;
 }
 
+static int ofdpa_port_master_pre_unlink(struct rocker_port *rocker_port,
+					struct net_device *master,
+					struct netlink_ext_ack *extack)
+{
+	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
+	int err = 0;
+
+	if (netif_is_bridge_master(master))
+		err = ofdpa_port_pre_bridge_leave(ofdpa_port, extack);
+	return err;
+}
+
 static int ofdpa_port_master_unlinked(struct rocker_port *rocker_port,
 				      struct net_device *master)
 {
@@ -2800,6 +2827,7 @@ struct rocker_world_ops rocker_ofdpa_ops = {
 	.port_obj_fdb_add = ofdpa_port_obj_fdb_add,
 	.port_obj_fdb_del = ofdpa_port_obj_fdb_del,
 	.port_master_linked = ofdpa_port_master_linked,
+	.port_master_pre_unlink = ofdpa_port_master_pre_unlink,
 	.port_master_unlinked = ofdpa_port_master_unlinked,
 	.port_neigh_update = ofdpa_port_neigh_update,
 	.port_neigh_destroy = ofdpa_port_neigh_destroy,
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index 718539cdd2f2..30e8b21dc6db 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/etherdevice.h>
+#include <linux/if_bridge.h>
 #include <linux/if_vlan.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
@@ -2077,10 +2078,13 @@ bool am65_cpsw_port_dev_check(const struct net_device *ndev)
 	return false;
 }
 
-static int am65_cpsw_netdevice_port_link(struct net_device *ndev, struct net_device *br_ndev)
+static int am65_cpsw_netdevice_port_link(struct net_device *ndev,
+					 struct net_device *br_ndev,
+					 struct netlink_ext_ack *extack)
 {
 	struct am65_cpsw_common *common = am65_ndev_to_common(ndev);
 	struct am65_cpsw_ndev_priv *priv = am65_ndev_to_priv(ndev);
+	int err;
 
 	if (!common->br_members) {
 		common->hw_bridge_dev = br_ndev;
@@ -2092,6 +2096,10 @@ static int am65_cpsw_netdevice_port_link(struct net_device *ndev, struct net_dev
 			return -EOPNOTSUPP;
 	}
 
+	err = switchdev_bridge_port_offload(ndev, ndev, extack);
+	if (err)
+		return err;
+
 	common->br_members |= BIT(priv->port->port_id);
 
 	am65_cpsw_port_offload_fwd_mark_update(common);
@@ -2099,6 +2107,12 @@ static int am65_cpsw_netdevice_port_link(struct net_device *ndev, struct net_dev
 	return NOTIFY_DONE;
 }
 
+static int am65_cpsw_netdevice_port_pre_unlink(struct net_device *ndev,
+					       struct netlink_ext_ack *extack)
+{
+	return switchdev_bridge_port_unoffload(ndev, ndev, extack);
+}
+
 static void am65_cpsw_netdevice_port_unlink(struct net_device *ndev)
 {
 	struct am65_cpsw_common *common = am65_ndev_to_common(ndev);
@@ -2116,6 +2130,7 @@ static void am65_cpsw_netdevice_port_unlink(struct net_device *ndev)
 static int am65_cpsw_netdevice_event(struct notifier_block *unused,
 				     unsigned long event, void *ptr)
 {
+	struct netlink_ext_ack *extack = netdev_notifier_info_to_extack(ptr);
 	struct net_device *ndev = netdev_notifier_info_to_dev(ptr);
 	struct netdev_notifier_changeupper_info *info;
 	int ret = NOTIFY_DONE;
@@ -2124,12 +2139,21 @@ static int am65_cpsw_netdevice_event(struct notifier_block *unused,
 		return NOTIFY_DONE;
 
 	switch (event) {
+	case NETDEV_PRECHANGEUPPER:
+		info = ptr;
+
+		if (netif_is_bridge_master(info->upper_dev) && !info->linking)
+			ret = am65_cpsw_netdevice_port_pre_unlink(ndev, extack);
+
+		break;
 	case NETDEV_CHANGEUPPER:
 		info = ptr;
 
 		if (netif_is_bridge_master(info->upper_dev)) {
 			if (info->linking)
-				ret = am65_cpsw_netdevice_port_link(ndev, info->upper_dev);
+				ret = am65_cpsw_netdevice_port_link(ndev,
+								    info->upper_dev,
+								    extack);
 			else
 				am65_cpsw_netdevice_port_unlink(ndev);
 		}
diff --git a/drivers/net/ethernet/ti/cpsw_new.c b/drivers/net/ethernet/ti/cpsw_new.c
index 57d279fdcc9f..8c586d1ff7d7 100644
--- a/drivers/net/ethernet/ti/cpsw_new.c
+++ b/drivers/net/ethernet/ti/cpsw_new.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/irqreturn.h>
 #include <linux/interrupt.h>
+#include <linux/if_bridge.h>
 #include <linux/if_ether.h>
 #include <linux/etherdevice.h>
 #include <linux/net_tstamp.h>
@@ -1499,10 +1500,12 @@ static void cpsw_port_offload_fwd_mark_update(struct cpsw_common *cpsw)
 }
 
 static int cpsw_netdevice_port_link(struct net_device *ndev,
-				    struct net_device *br_ndev)
+				    struct net_device *br_ndev,
+				    struct netlink_ext_ack *extack)
 {
 	struct cpsw_priv *priv = netdev_priv(ndev);
 	struct cpsw_common *cpsw = priv->cpsw;
+	int err;
 
 	if (!cpsw->br_members) {
 		cpsw->hw_bridge_dev = br_ndev;
@@ -1514,6 +1517,10 @@ static int cpsw_netdevice_port_link(struct net_device *ndev,
 			return -EOPNOTSUPP;
 	}
 
+	err = switchdev_bridge_port_offload(ndev, ndev, extack);
+	if (err)
+		return err;
+
 	cpsw->br_members |= BIT(priv->emac_port);
 
 	cpsw_port_offload_fwd_mark_update(cpsw);
@@ -1521,6 +1528,12 @@ static int cpsw_netdevice_port_link(struct net_device *ndev,
 	return NOTIFY_DONE;
 }
 
+static int cpsw_netdevice_port_pre_unlink(struct net_device *ndev,
+					  struct netlink_ext_ack *extack)
+{
+	return switchdev_bridge_port_unoffload(ndev, ndev, extack);
+}
+
 static void cpsw_netdevice_port_unlink(struct net_device *ndev)
 {
 	struct cpsw_priv *priv = netdev_priv(ndev);
@@ -1538,6 +1551,7 @@ static void cpsw_netdevice_port_unlink(struct net_device *ndev)
 static int cpsw_netdevice_event(struct notifier_block *unused,
 				unsigned long event, void *ptr)
 {
+	struct netlink_ext_ack *extack = netdev_notifier_info_to_extack(ptr);
 	struct net_device *ndev = netdev_notifier_info_to_dev(ptr);
 	struct netdev_notifier_changeupper_info *info;
 	int ret = NOTIFY_DONE;
@@ -1546,13 +1560,21 @@ static int cpsw_netdevice_event(struct notifier_block *unused,
 		return NOTIFY_DONE;
 
 	switch (event) {
+	case NETDEV_PRECHANGEUPPER:
+		info = ptr;
+
+		if (netif_is_bridge_master(info->upper_dev) && !info->linking)
+			ret = cpsw_netdevice_port_pre_unlink(ndev, extack);
+
+		break;
 	case NETDEV_CHANGEUPPER:
 		info = ptr;
 
 		if (netif_is_bridge_master(info->upper_dev)) {
 			if (info->linking)
 				ret = cpsw_netdevice_port_link(ndev,
-							       info->upper_dev);
+							       info->upper_dev,
+							       extack);
 			else
 				cpsw_netdevice_port_unlink(ndev);
 		}
diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index b651c5e32a28..d0bec83488b9 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -206,4 +206,30 @@ static inline int br_fdb_replay(const struct net_device *br_dev,
 }
 #endif
 
+#if IS_ENABLED(CONFIG_BRIDGE) && IS_ENABLED(CONFIG_NET_SWITCHDEV)
+
+int switchdev_bridge_port_offload(struct net_device *brport_dev,
+				  struct net_device *dev,
+				  struct netlink_ext_ack *extack);
+int switchdev_bridge_port_unoffload(struct net_device *brport_dev,
+				    struct net_device *dev,
+				    struct netlink_ext_ack *extack);
+
+#else
+
+static inline int switchdev_bridge_port_offload(struct net_device *brport_dev,
+						struct net_device *dev,
+						struct netlink_ext_ack *extack)
+{
+	return -EINVAL;
+}
+
+static inline int switchdev_bridge_port_unoffload(struct net_device *brport_dev,
+						  struct net_device *dev,
+						  struct netlink_ext_ack *extack)
+{
+	return -EINVAL;
+}
+#endif
+
 #endif
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index c0df50e4abbb..86f6d7e93ea8 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -349,7 +349,6 @@ static void del_nbp(struct net_bridge_port *p)
 	nbp_backup_clear(p);
 
 	nbp_update_port_count(br);
-	nbp_switchdev_del(p);
 
 	netdev_upper_dev_unlink(dev, br->dev);
 
@@ -644,10 +643,6 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 	if (err)
 		goto err5;
 
-	err = nbp_switchdev_add(p);
-	if (err)
-		goto err6;
-
 	dev_disable_lro(dev);
 
 	list_add_rcu(&p->list, &br->port_list);
@@ -685,13 +680,13 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 		 */
 		err = dev_pre_changeaddr_notify(br->dev, dev->dev_addr, extack);
 		if (err)
-			goto err7;
+			goto err6;
 	}
 
 	err = nbp_vlan_init(p, extack);
 	if (err) {
 		netdev_err(dev, "failed to initialize vlan filtering on this port\n");
-		goto err7;
+		goto err6;
 	}
 
 	spin_lock_bh(&br->lock);
@@ -714,14 +709,12 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 
 	return 0;
 
-err7:
+err6:
 	if (fdb_synced)
 		br_fdb_unsync_static(br, p);
 	list_del_rcu(&p->list);
 	br_fdb_delete_by_port(br, p, 0, 1);
 	nbp_update_port_count(br);
-	nbp_switchdev_del(p);
-err6:
 	netdev_upper_dev_unlink(dev, br->dev);
 err5:
 	dev->priv_flags &= ~IFF_BRIDGE_PORT;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a23c565b8970..46236302eed5 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -335,6 +335,8 @@ struct net_bridge_port {
 	 * hardware domain.
 	 */
 	int				hwdom;
+	int				offload_count;
+	struct netdev_phys_item_id	ppid;
 #endif
 	u16				group_fwd_mask;
 	u16				backup_redirected_cnt;
@@ -1673,8 +1675,6 @@ void br_switchdev_fdb_notify(struct net_bridge *br,
 int br_switchdev_port_vlan_add(struct net_device *dev, u16 vid, u16 flags,
 			       struct netlink_ext_ack *extack);
 int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid);
-int nbp_switchdev_add(struct net_bridge_port *p);
-void nbp_switchdev_del(struct net_bridge_port *p);
 void br_switchdev_init(struct net_bridge *br);
 
 static inline void br_switchdev_frame_unmark(struct sk_buff *skb)
@@ -1723,15 +1723,6 @@ static inline void br_switchdev_frame_unmark(struct sk_buff *skb)
 {
 }
 
-static inline int nbp_switchdev_add(struct net_bridge_port *p)
-{
-	return 0;
-}
-
-static inline void nbp_switchdev_del(struct net_bridge_port *p)
-{
-}
-
 static inline void br_switchdev_init(struct net_bridge *br)
 {
 }
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index f3120f13c293..e335cbcc8ce5 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -162,27 +162,101 @@ static void nbp_switchdev_hwdom_put(struct net_bridge_port *leaving)
 	clear_bit(leaving->hwdom, &br->busy_hwdoms);
 }
 
-int nbp_switchdev_add(struct net_bridge_port *p)
+static int nbp_switchdev_add(struct net_bridge_port *p,
+			     struct netdev_phys_item_id ppid,
+			     struct netlink_ext_ack *extack)
 {
-	struct netdev_phys_item_id ppid = { };
-	int err;
+	if (p->offload_count) {
+		/* Prevent unsupported configurations such as a bridge port
+		 * which is a bonding interface, and the member ports are from
+		 * different hardware switches.
+		 */
+		if (!netdev_phys_item_id_same(&p->ppid, &ppid)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Same bridge port cannot be offloaded by two physical switches");
+			return -EBUSY;
+		}
 
-	ASSERT_RTNL();
+		/* Tolerate drivers that call switchdev_bridge_port_offload()
+		 * more than once for the same bridge port, such as when the
+		 * bridge port is an offloaded bonding/team interface.
+		 */
+		p->offload_count++;
 
-	err = dev_get_port_parent_id(p->dev, &ppid, true);
-	if (err) {
-		if (err == -EOPNOTSUPP)
-			return 0;
-		return err;
+		return 0;
 	}
 
+	p->ppid = ppid;
+	p->offload_count = 1;
+
 	return nbp_switchdev_hwdom_set(p);
 }
 
-void nbp_switchdev_del(struct net_bridge_port *p)
+static void nbp_switchdev_del(struct net_bridge_port *p,
+			      struct netdev_phys_item_id ppid)
 {
 	ASSERT_RTNL();
 
+	if (WARN_ON(!netdev_phys_item_id_same(&p->ppid, &ppid)))
+		return;
+
+	if (WARN_ON(!p->offload_count))
+		return;
+
+	p->offload_count--;
+
+	if (p->offload_count)
+		return;
+
 	if (p->hwdom)
 		nbp_switchdev_hwdom_put(p);
 }
+
+/* Let the bridge know that this port is offloaded, so that it can assign a
+ * switchdev hardware domain to it.
+ */
+int switchdev_bridge_port_offload(struct net_device *brport_dev,
+				  struct net_device *dev,
+				  struct netlink_ext_ack *extack)
+{
+	struct netdev_phys_item_id ppid;
+	struct net_bridge_port *p;
+	int err;
+
+	ASSERT_RTNL();
+
+	p = br_port_get_rtnl(brport_dev);
+	if (!p)
+		return -ENODEV;
+
+	err = dev_get_port_parent_id(dev, &ppid, false);
+	if (err)
+		return err;
+
+	return nbp_switchdev_add(p, ppid, extack);
+}
+EXPORT_SYMBOL_GPL(switchdev_bridge_port_offload);
+
+int switchdev_bridge_port_unoffload(struct net_device *brport_dev,
+				    struct net_device *dev,
+				    struct netlink_ext_ack *extack)
+{
+	struct netdev_phys_item_id ppid;
+	struct net_bridge_port *p;
+	int err;
+
+	ASSERT_RTNL();
+
+	p = br_port_get_rtnl(dev);
+	if (!p)
+		return -ENODEV;
+
+	err = dev_get_port_parent_id(dev, &ppid, false);
+	if (err)
+		return err;
+
+	nbp_switchdev_del(p, ppid);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(switchdev_bridge_port_unoffload);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 28b45b7e66df..b824b6f8aa84 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -292,6 +292,8 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
 		.port = dp->index,
 		.br = br,
 	};
+	struct net_device *dev = dp->slave;
+	struct net_device *brport_dev;
 	int err;
 
 	/* Here the interface is already bridged. Reflect the current
@@ -299,16 +301,24 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
 	 */
 	dp->bridge_dev = br;
 
+	brport_dev = dsa_port_to_bridge_port(dp);
+
 	err = dsa_broadcast(DSA_NOTIFIER_BRIDGE_JOIN, &info);
 	if (err)
 		goto out_rollback;
 
-	err = dsa_port_switchdev_sync(dp, extack);
+	err = switchdev_bridge_port_offload(brport_dev, dev, extack);
 	if (err)
 		goto out_rollback_unbridge;
 
+	err = dsa_port_switchdev_sync(dp, extack);
+	if (err)
+		goto out_rollback_unoffload;
+
 	return 0;
 
+out_rollback_unoffload:
+	switchdev_bridge_port_unoffload(brport_dev, dev, extack);
 out_rollback_unbridge:
 	dsa_broadcast(DSA_NOTIFIER_BRIDGE_LEAVE, &info);
 out_rollback:
@@ -319,6 +329,14 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
 int dsa_port_pre_bridge_leave(struct dsa_port *dp, struct net_device *br,
 			      struct netlink_ext_ack *extack)
 {
+	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
+	struct net_device *dev = dp->slave;
+	int err;
+
+	err = switchdev_bridge_port_unoffload(brport_dev, dev, extack);
+	if (err)
+		return err;
+
 	return dsa_port_switchdev_unsync_objs(dp, br, extack);
 }
 
-- 
2.25.1

