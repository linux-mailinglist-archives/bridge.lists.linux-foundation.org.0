Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD863B3E5D
	for <lists.bridge@lfdr.de>; Fri, 25 Jun 2021 10:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F72860628;
	Fri, 25 Jun 2021 08:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBbvzHU48TUt; Fri, 25 Jun 2021 08:18:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 21736606F2;
	Fri, 25 Jun 2021 08:18:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 27B59C000E;
	Fri, 25 Jun 2021 08:18:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2FD91C000E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BB65829CB
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ibm.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BzInjEgreOIO for <bridge@lists.linux-foundation.org>;
 Wed, 23 Jun 2021 13:59:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 195DC81902
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:59:38 +0000 (UTC)
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NDXZIW130754; Wed, 23 Jun 2021 09:34:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=KNfCdZT6JTIzp69RQLFCxVKoQyQ1xvDgq5ZoDK67PcY=;
 b=Y/S7U/jfedtMy1vycU90huGYWiI/o07q5rJGhCU1juTgqZWma+2+L/1k8SA+rs2GwSpu
 R+jwNj/XCOfei8cL7jGxDlYR9z8CehIxvc1nMUZqYtTWwH3q5TuHIc73AHO++O0D0zmm
 6v5Vk/fnmtL1taICuJCZllcnZEsew60d/CRxD6L8tpCHi13jlxPxrAzRWvlInKU7D4tb
 daQQbTdI2hlVOyIwODfo3VLTpj37DCekD1U/pM9RqKv32u3THe7LmyyfQ9RgZnTS4Vjo
 0+j1GCwfIj/SsknoVpIaIbZitovtw6IOSyjMKh2VMdR5YmasA5TGRkcvrmWtQPaQnX7g 7A== 
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.71])
 by mx0a-001b2d01.pphosted.com with ESMTP id 39c5c9hkm8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 23 Jun 2021 09:34:43 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
 by ppma02fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15NDXoBQ012395;
 Wed, 23 Jun 2021 13:34:40 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma02fra.de.ibm.com with ESMTP id 39987894bh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 23 Jun 2021 13:34:40 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 15NDYbKX23724516
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 13:34:37 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C2C1A52051;
 Wed, 23 Jun 2021 13:34:37 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id B0E8852050;
 Wed, 23 Jun 2021 13:34:37 +0000 (GMT)
Received: by tuxmaker.boeblingen.de.ibm.com (Postfix, from userid 55271)
 id 783AAE07C7; Wed, 23 Jun 2021 15:34:37 +0200 (CEST)
From: Alexandra Winter <wintera@linux.ibm.com>
To: roopa@nvidia.com, nikolay@nvidia.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, jwi@linux.ibm.com
Date: Wed, 23 Jun 2021 15:34:25 +0200
Message-Id: <20210623133426.2613847-2-wintera@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210623133426.2613847-1-wintera@linux.ibm.com>
References: <20210623133426.2613847-1-wintera@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fEMIAKoqZm1jtH83jbPKm5NOLUhs-1dr
X-Proofpoint-ORIG-GUID: fEMIAKoqZm1jtH83jbPKm5NOLUhs-1dr
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-06-23_06:2021-06-23,
 2021-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106230078
X-Mailman-Approved-At: Fri, 25 Jun 2021 08:18:48 +0000
Cc: Alexandra Winter <wintera@linux.ibm.com>
Subject: [Bridge] [PATCH net-next 1/2] net/bridge: Support learning_sync on
	master
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

Add support to set and get the 'learning_sync [master]' attribute of a
bridgeport. A following patch adds support to synchronize the software
bridge's fdb changes to the hardware fdb of this bridgeport.

Signed-off-by: Alexandra Winter <wintera@linux.ibm.com>
---
 include/uapi/linux/if_link.h | 2 +-
 net/bridge/br_netlink.c      | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index cd5b382a4138..4d8e4c9b803c 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -499,7 +499,7 @@ enum {
 	IFLA_BRPORT_LEARNING,	/* mac learning */
 	IFLA_BRPORT_UNICAST_FLOOD, /* flood unicast traffic */
 	IFLA_BRPORT_PROXYARP,	/* proxy ARP */
-	IFLA_BRPORT_LEARNING_SYNC, /* mac learning sync from device */
+	IFLA_BRPORT_LEARNING_SYNC, /* mac learning sync from/to device */
 	IFLA_BRPORT_PROXYARP_WIFI, /* proxy ARP for Wi-Fi */
 	IFLA_BRPORT_ROOT_ID,	/* designated root */
 	IFLA_BRPORT_BRIDGE_ID,	/* designated bridge */
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index e4e6e991313e..d91a5a319a4b 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -180,6 +180,7 @@ static inline size_t br_port_info_size(void)
 		+ nla_total_size(1)	/* IFLA_BRPORT_MCAST_FLOOD */
 		+ nla_total_size(1)	/* IFLA_BRPORT_BCAST_FLOOD */
 		+ nla_total_size(1)	/* IFLA_BRPORT_PROXYARP */
+		+ nla_total_size(1)	/* IFLA_BRPORT_LEARNING_SYNC */
 		+ nla_total_size(1)	/* IFLA_BRPORT_PROXYARP_WIFI */
 		+ nla_total_size(1)	/* IFLA_BRPORT_VLAN_TUNNEL */
 		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
@@ -247,6 +248,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
 	    nla_put_u8(skb, IFLA_BRPORT_BCAST_FLOOD,
 		       !!(p->flags & BR_BCAST_FLOOD)) ||
 	    nla_put_u8(skb, IFLA_BRPORT_PROXYARP, !!(p->flags & BR_PROXYARP)) ||
+	    nla_put_u8(skb, IFLA_BRPORT_LEARNING_SYNC,
+		       !!(p->flags & BR_LEARNING_SYNC)) ||
 	    nla_put_u8(skb, IFLA_BRPORT_PROXYARP_WIFI,
 		       !!(p->flags & BR_PROXYARP_WIFI)) ||
 	    nla_put(skb, IFLA_BRPORT_ROOT_ID, sizeof(struct ifla_bridge_id),
@@ -818,6 +821,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
 	[IFLA_BRPORT_LEARNING]	= { .type = NLA_U8 },
 	[IFLA_BRPORT_UNICAST_FLOOD] = { .type = NLA_U8 },
 	[IFLA_BRPORT_PROXYARP]	= { .type = NLA_U8 },
+	[IFLA_BRPORT_LEARNING_SYNC] = { .type = NLA_U8 },
 	[IFLA_BRPORT_PROXYARP_WIFI] = { .type = NLA_U8 },
 	[IFLA_BRPORT_MULTICAST_ROUTER] = { .type = NLA_U8 },
 	[IFLA_BRPORT_MCAST_TO_UCAST] = { .type = NLA_U8 },
@@ -889,6 +893,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
 			 BR_MULTICAST_TO_UNICAST);
 	br_set_port_flag(p, tb, IFLA_BRPORT_BCAST_FLOOD, BR_BCAST_FLOOD);
 	br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP, BR_PROXYARP);
+	br_set_port_flag(p, tb, IFLA_BRPORT_LEARNING_SYNC, BR_LEARNING_SYNC);
 	br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP_WIFI, BR_PROXYARP_WIFI);
 	br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
 	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
-- 
2.25.1

