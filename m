Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 864FA6FC005
	for <lists.bridge@lfdr.de>; Tue,  9 May 2023 09:06:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 154C483EDD;
	Tue,  9 May 2023 07:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 154C483EDD
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=kMhsp4EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XV8dnyHH4gIq; Tue,  9 May 2023 07:06:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8EFB18445B;
	Tue,  9 May 2023 07:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EFB18445B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DC854C0090;
	Tue,  9 May 2023 07:06:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4023C002A
 for <bridge@lists.linux-foundation.org>; Tue,  9 May 2023 07:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEA61408EF
 for <bridge@lists.linux-foundation.org>; Tue,  9 May 2023 07:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEA61408EF
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=kMhsp4EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EB04Dy7H1NtY for <bridge@lists.linux-foundation.org>;
 Tue,  9 May 2023 07:06:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B9744025D
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2062a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B9744025D
 for <bridge@lists.linux-foundation.org>; Tue,  9 May 2023 07:06:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BhNiEKpgEfhy4dM4ewdhGmyAvFXgEM7ochEpJK0LnAjX6FnntAdYWhb0WHljv+rrX0hnmvF06xbZAtWy96csE5aPl9UKGC2b/7eNoB6K+LYOku4AdbRcsnnQ6Nw3/ApcsDwsJr9R/WRNNJfT7FiF1OftQxsdgeZqNOUEWZNuO01+pu+2nHmvGpRWMVmj4isrmSxly+hAZuuKIXNZzXInjIkHSMl+I0KhT1NpqDf6Almitiarl2ZSUwUySt12yQRR5mHPEhfZr6E5o6nu8YrhLj+A6xbnGfnmD2GeMNhbvfddP5RCpHBwKv2KVqt9PzuCdeMJIAwCsfDNlEUe+24Ibg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6TIjxJR5nEgrLBIjqCwCmj9E2f2IuflkzKuyuQwFg0g=;
 b=Vm1dcmy7Zze3RY1PbIXRDlP1i7UtRM/y/137kAw4inV3dX9y4ildOb6W/QXfWTpADmM9BD98ytFmBM6uFy8u8twDbO5EfDGk5Db49x6itK3PCrTS9m3oVScpgddwIS4l/PRYCpJUc7Sox91sHzYk0PUSORwEPK4tkUNz6hYatxLYvq5LB9t6dEjb2WyZUd9eHUbAsT3pjbvFFp/cIqU8WnZePtoyLMtU3GMtlKWlE8NM7KdeMfQP0YgJHFYP58Bj30DIoVfEeH3eWkCiq6DEjN/XjznqZckeFpnNY4MThOkn+vXj8kwQWLKZqXQYBuvB4Q7trLVaX6/8O8AYYZ8ELQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TIjxJR5nEgrLBIjqCwCmj9E2f2IuflkzKuyuQwFg0g=;
 b=kMhsp4EB3ieEsu60uNmJVnNNkBQz/p1L4vGQmennogTAO/PN0MYTfuA80sGnrWRSOBuy+1NcbjgjdkZGI8adnscY+agV6f+GMZrgZJTOPfJ1M2uFzW46AIqbIvQSea+4wJeuLHgUyh6rmRGAeEiQIrcmjKPkamfYkGSqE2dwoVCkOReEwyQEBnAyYLoBUFTrWLLjt0xs++dixJrtHp6xPkcf6DngeW8ZD+yt8Cmxi+0XgQN3ySlPyT2FbF1LDpPd4nf2ZqDq0g/ymULnouuRYuYvejL2Qdn9JO+csz5ZNvgVWxL8HdK6nQygft9+URv+Z5e7zGILD2Cld07zSOmaXg==
Received: from DM6PR13CA0020.namprd13.prod.outlook.com (2603:10b6:5:bc::33) by
 IA0PR12MB8932.namprd12.prod.outlook.com (2603:10b6:208:492::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Tue, 9 May
 2023 07:06:07 +0000
Received: from DM6NAM11FT009.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:bc:cafe::e9) by DM6PR13CA0020.outlook.office365.com
 (2603:10b6:5:bc::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18 via Frontend
 Transport; Tue, 9 May 2023 07:06:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT009.mail.protection.outlook.com (10.13.173.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32 via Frontend Transport; Tue, 9 May 2023 07:06:07 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Tue, 9 May 2023
 00:05:50 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.37) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Tue, 9 May 2023 00:05:45 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Tue, 9 May 2023 10:04:42 +0300
Message-ID: <20230509070446.246088-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230509070446.246088-1-idosch@nvidia.com>
References: <20230509070446.246088-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT009:EE_|IA0PR12MB8932:EE_
X-MS-Office365-Filtering-Correlation-Id: 77772b1d-3c55-47fe-b6f1-08db505bdc9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z5OSBq5KyrP5OoQKwjIngpI0kFeNKzz7LNVmB0MlwiCi+j1bMgg9lv951SYr5JfZ3AWQ8gOGIo/ftPSONbkf1GWK8v+bddblrKfMNNVI6s+PUKkcrdOkHBfmceXDP62B1z1+JYvrRmhl/2WSg51VKBEHGXSsBlYfpOMv8fpydIZ4bgg3x+I03eJD2ZO28VNt16hx9VQ59gpOXaDQxSc4hszPgMqPWHcoGbVH67tKg/RzNiAZj5uoDFgXIA0USn+Q+0YdHY2xKT/gM9DvDMNJ98dtkZtOukZE3vmSNBkUst3rcHw2GS7AsAQG5iSuEBqQa9cdee6CXG26llc83JFeAdpFpeoI2QOzVM/3L55FELMg1AzQ2Rq26lg8cUtI9mjLM1g+ipFFUpTg+PZpjE65pr9lakNgNMyKcXV3xKpYb0YshxriA54l0EfpnP3tlbOSHyr3/hJfgfZqTk0NqtU3m1+Oeyaf28froFJgG4B3eOPzdCmkNOmfaccFNI/ssQI9NkTTgrY+LZUF7bdS86FX24CGx1axbPfDjK9bKBvWEiimabV5ba+rQ2z/EHvLNom8B8tF13SYygcJBlNXKryIuerch9ds53XMYkiSHhj/I35WCjkcVLLbV+anrS4li8fxQ7V9wDShEDSd+tsgPF73e+R5B95axfd222jc8TI7cK0ZWmzTltdKsN1jNXO+ZwzyQHBoBptMj/F/i+3xkyMS4QlaadpA//aZ5D+ZFpeqESM=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(346002)(376002)(136003)(396003)(451199021)(46966006)(36840700001)(40470700004)(2616005)(478600001)(83380400001)(426003)(110136005)(7416002)(36860700001)(336012)(40480700001)(41300700001)(4326008)(107886003)(5660300002)(8676002)(6666004)(2906002)(8936002)(47076005)(54906003)(82310400005)(36756003)(40460700003)(186003)(316002)(82740400003)(1076003)(70586007)(70206006)(86362001)(26005)(7636003)(16526019)(356005)(21314003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 07:06:07.5064 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77772b1d-3c55-47fe-b6f1-08db505bdc9d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT009.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8932
Cc: petrm@nvidia.com, jiri@resnulli.us, taspelund@nvidia.com,
 xiyou.wangcong@gmail.com, Ido Schimmel <idosch@nvidia.com>,
 razor@blackwall.org, jhs@mojatatu.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 1/5] skbuff: bridge: Add layer 2 miss
	indication
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
From: Ido Schimmel via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ido Schimmel <idosch@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Allow the bridge driver to mark packets that did not match a layer 2
entry during forwarding by adding a 'l2_miss' bit to the skb.

Clear the bit whenever a packet enters the bridge (received from a
bridge port or transmitted via the bridge) and set it if the packet did
not match an FDB/MDB entry.

Subsequent patches will allow the flower classifier to match on this
bit. The motivating use case in non-DF (Designated Forwarder) filtering
where we would like to prevent decapsulated packets from being flooded
to a multi-homed host.

Do not allocate the bit if the kernel was not compiled with bridge
support and place it after the two bit fields in accordance with commit
4c60d04c2888 ("net: skbuff: push nf_trace down the bitfield"). The bit
does not increase the size of the structure as it is placed at an
existing hole. Layout with allmodconfig:

struct sk_buff {
[...]
			__u8       csum_not_inet:1;      /*   132: 3  1 */
			__u8       l2_miss:1;            /*   132: 4  1 */

			/* XXX 3 bits hole, try to pack */
			/* XXX 1 byte hole, try to pack */

			__u16      tc_index;             /*   134     2 */
			u16        alloc_cpu;            /*   136     2 */
[...]
} __attribute__((__aligned__(8)));

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 include/linux/skbuff.h  | 4 ++++
 net/bridge/br_device.c  | 1 +
 net/bridge/br_forward.c | 3 +++
 net/bridge/br_input.c   | 1 +
 4 files changed, 9 insertions(+)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 738776ab8838..c7a84767ed48 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -801,6 +801,7 @@ typedef unsigned char *sk_buff_data_t;
  *	@encap_hdr_csum: software checksum is needed
  *	@csum_valid: checksum is already valid
  *	@csum_not_inet: use CRC32c to resolve CHECKSUM_PARTIAL
+ *	@l2_miss: Packet did not match an L2 entry during forwarding
  *	@csum_complete_sw: checksum was completed by software
  *	@csum_level: indicates the number of consecutive checksums found in
  *		the packet minus one that have been verified as
@@ -991,6 +992,9 @@ struct sk_buff {
 #if IS_ENABLED(CONFIG_IP_SCTP)
 	__u8			csum_not_inet:1;
 #endif
+#if IS_ENABLED(CONFIG_BRIDGE)
+	__u8			l2_miss:1;
+#endif
 
 #ifdef CONFIG_NET_SCHED
 	__u16			tc_index;	/* traffic control index */
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8eca8a5c80c6..91dbdae4afd4 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -39,6 +39,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	u16 vid = 0;
 
 	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
+	skb->l2_miss = 0;
 
 	rcu_read_lock();
 	nf_ops = rcu_dereference(nf_br_ops);
diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 57744704ff69..5893648c4da2 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -203,6 +203,8 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
 	struct net_bridge_port *prev = NULL;
 	struct net_bridge_port *p;
 
+	skb->l2_miss = 1;
+
 	list_for_each_entry_rcu(p, &br->port_list, list) {
 		/* Do not flood unicast traffic to ports that turn it off, nor
 		 * other traffic if flood off, except for traffic we originate
@@ -295,6 +297,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 			allow_mode_include = false;
 	} else {
 		p = NULL;
+		skb->l2_miss = 1;
 	}
 
 	while (p || rp) {
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index fc17b9fd93e6..d8ab5890cbe6 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -334,6 +334,7 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
 		return RX_HANDLER_CONSUMED;
 
 	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
+	skb->l2_miss = 0;
 
 	p = br_port_get_rcu(skb->dev);
 	if (p->flags & BR_VLAN_TUNNEL)
-- 
2.40.1

