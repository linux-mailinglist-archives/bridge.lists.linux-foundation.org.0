Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FF3B3E5C
	for <lists.bridge@lfdr.de>; Fri, 25 Jun 2021 10:18:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFD9D40467;
	Fri, 25 Jun 2021 08:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fY8CWvbmHOPB; Fri, 25 Jun 2021 08:18:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7E1D440484;
	Fri, 25 Jun 2021 08:18:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 361DEC0010;
	Fri, 25 Jun 2021 08:18:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54798C000E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 15:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 361AF4027E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 15:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1nN1wxVpF-t for <bridge@lists.linux-foundation.org>;
 Wed, 23 Jun 2021 15:44:20 +0000 (UTC)
X-Greylist: delayed 00:16:26 by SQLgrey-1.8.0
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 680FF40210
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 15:44:20 +0000 (UTC)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NDXIfj073150; Wed, 23 Jun 2021 09:34:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=KiWb4Ct4RjsEggy6D6xJhqDA2kRzT2DHK+IqY8DlhIk=;
 b=BGJmDblwIeveKcmRAH0FlXwPVbkVZgXvG5FEyMaGEIFNK94bQ2ERvfvIIGz8T+4Lw8PV
 uLQ2ywcU+8kPEKUo/5TMORVCX52w60rAVdojWMjE6tmVj2NiNOOwdZeZuAVVzCEftzS1
 RxG/PiYNSDB0VR8N0ZCZd4mNCt4v5VnRryGr5usGCZzpxfWpQHXdAeaOLkdIYFlrBZ7h
 SNEU48oxTyS4oRGTvi2264WctK1tKxb5akc/a0CHFV9SKxa1xrmn7naDM0QiTPYMg2DL
 CZSFJ1jI7ic2VjggInm2LkBmOy728cKxWCWZtb91LDNxu/0Rjvd9YDkogWYl0UdRDbmX Ag== 
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 39c5g295rb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 23 Jun 2021 09:34:45 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15NDXlQ4016256;
 Wed, 23 Jun 2021 13:34:44 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma03ams.nl.ibm.com with ESMTP id 399878a10b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 23 Jun 2021 13:34:43 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 15NDYfhQ25428448
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 13:34:41 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 11ED542056;
 Wed, 23 Jun 2021 13:34:41 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F318642047;
 Wed, 23 Jun 2021 13:34:40 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 23 Jun 2021 13:34:40 +0000 (GMT)
Received: by tuxmaker.boeblingen.de.ibm.com (Postfix, from userid 55271)
 id B33DBE07C7; Wed, 23 Jun 2021 15:34:40 +0200 (CEST)
From: Alexandra Winter <wintera@linux.ibm.com>
To: roopa@nvidia.com, nikolay@nvidia.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, jwi@linux.ibm.com
Date: Wed, 23 Jun 2021 15:34:26 +0200
Message-Id: <20210623133426.2613847-3-wintera@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210623133426.2613847-1-wintera@linux.ibm.com>
References: <20210623133426.2613847-1-wintera@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: -TKJNTDpaUZ5-5ZVfQnozuviE2jxepis
X-Proofpoint-ORIG-GUID: -TKJNTDpaUZ5-5ZVfQnozuviE2jxepis
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-06-23_06:2021-06-23,
 2021-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 mlxlogscore=999 clxscore=1015 impostorscore=0 spamscore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106230078
X-Mailman-Approved-At: Fri, 25 Jun 2021 08:18:48 +0000
Cc: Alexandra Winter <wintera@linux.ibm.com>
Subject: [Bridge] [PATCH net-next 2/2] net/bridge: Update uc addr on
	LEARNING_SYNC bp
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

Whenever a unicast fdb entry is added or deleted in the software
bridge's fdb, synchronize it to the hardware fdb of a bridgeport
device, if the bridgeport has the attribute LEARNING_SYNC and is not
isolated from the target of the changed fdb entry.

To inform HW, that messages with a specific unicast target address
should be sent to the software bridge via this bridgeport, simply
register this address with the device.

Without this patch smart NICs attached to a bridgeport of a software
bridge can already do their own learning on the messages that the
SW bridge sends out via this port. And otherwise accept/flood all
unknown target messages to the SW bridge (promiscuous port).
This patch gives the attached HW the chance to update its fdb, even
when it does not see the respective message, because it is forwarded
to another piece of HW attached to another bridgeport. Or when the NIC
is not capable of learning or flooding.

An alternative solution would be to subscribe to the
SWITCHDEV_FDB_ADD/DEL_TO_DEVICE switchdev notifiers in the respective
device drivers. But as there's no HW-specific part in this
implementation, it was felt that this should rather be implemented in
the common layer of the bridge code.

Signed-off-by: Alexandra Winter <wintera@linux.ibm.com>
---
 net/bridge/br_fdb.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 698b79747d32..2075b5da6db3 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -567,6 +567,32 @@ int br_fdb_insert(struct net_bridge *br, struct net_bridge_port *source,
 	return ret;
 }
 
+static void br_fdb_learning_sync(struct net_bridge *br,
+				 const struct net_bridge_fdb_entry *fdb,
+				 int type)
+{
+	struct net_bridge_port *p;
+
+	if (!fdb->dst)
+		return;
+	list_for_each_entry(p, &br->port_list, list) {
+		if ((p->flags & BR_LEARNING_SYNC) && p != fdb->dst &&
+		    (!(p->flags & BR_ISOLATED) ||
+		     !(fdb->dst->flags & BR_ISOLATED))) {
+			switch (type) {
+			case RTM_DELNEIGH:
+				dev_uc_del(p->dev, fdb->key.addr.addr);
+				break;
+			case RTM_NEWNEIGH:
+				dev_uc_add(p->dev, fdb->key.addr.addr);
+				break;
+			default:
+				break;
+			}
+		}
+	}
+}
+
 /* returns true if the fdb was modified */
 static bool __fdb_mark_active(struct net_bridge_fdb_entry *fdb)
 {
@@ -603,6 +629,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 			if (unlikely(source != fdb->dst &&
 				     !test_bit(BR_FDB_STICKY, &fdb->flags))) {
 				br_switchdev_fdb_notify(fdb, RTM_DELNEIGH);
+				br_fdb_learning_sync(br, fdb, RTM_DELNEIGH);
 				fdb->dst = source;
 				fdb_modified = true;
 				/* Take over HW learned entry */
@@ -799,6 +826,7 @@ static void fdb_notify(struct net_bridge *br,
 		goto errout;
 	}
 	rtnl_notify(skb, net, 0, RTNLGRP_NEIGH, NULL, GFP_ATOMIC);
+	br_fdb_learning_sync(br, fdb, type);
 	return;
 errout:
 	rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
-- 
2.25.1

