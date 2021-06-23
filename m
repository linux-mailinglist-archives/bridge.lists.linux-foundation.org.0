Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C363B3E5B
	for <lists.bridge@lfdr.de>; Fri, 25 Jun 2021 10:18:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA91660707;
	Fri, 25 Jun 2021 08:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tt_Q38RBraB6; Fri, 25 Jun 2021 08:18:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4313660632;
	Fri, 25 Jun 2021 08:18:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DDA27C0022;
	Fri, 25 Jun 2021 08:18:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9DDA4C000E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DB2E605F7
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6ahM2B_ca68 for <bridge@lists.linux-foundation.org>;
 Wed, 23 Jun 2021 13:40:31 +0000 (UTC)
X-Greylist: delayed 00:05:53 by SQLgrey-1.8.0
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C166605F1
 for <bridge@lists.linux-foundation.org>; Wed, 23 Jun 2021 13:40:31 +0000 (UTC)
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NDXb3I105078; Wed, 23 Jun 2021 09:34:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=kU85/hwEKudw2+4oyr9yDNZQ2Ir73arYRt8INE8JJHc=;
 b=dg8praPlCMR6afAPaKnaQkJqaUlYSl/v0A0c7ZQmY/CZzzxDDXHHEjOE3h7YPPEcH/WH
 eGLv+utAuBrr8poMhVUxKNwcTz/YOS+ZhQ4YH4FhoaubVwQD8B0qLKb8/UaRIj+OEDQb
 wqyTphxddXl+CmSFDkN0bz9zA+m0FdGQrl5SQ+Ghsv1XR0W53P4vwOWTuje5b94eDN1U
 Zsq37DnXX0rvcmjuRrimrFXWcwvArubI9Y6uERWyUxu0i+i1o2OAU5NPMnUiM1eqsDel
 ce5jCsUbAlmWMhQuD9sQtFpEfUVopfGhUdnyXjRKKGVZaXm6Otxz6AsOvIM0uOMjkexI hw== 
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.70])
 by mx0a-001b2d01.pphosted.com with ESMTP id 39c5nnrpd3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 23 Jun 2021 09:34:36 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
 by ppma01fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15NDXDsr028468;
 Wed, 23 Jun 2021 13:34:34 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma01fra.de.ibm.com with ESMTP id 399878943a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 23 Jun 2021 13:34:33 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 15NDYUK525231672
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 13:34:31 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D3E305205A;
 Wed, 23 Jun 2021 13:34:30 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id C27A652051;
 Wed, 23 Jun 2021 13:34:30 +0000 (GMT)
Received: by tuxmaker.boeblingen.de.ibm.com (Postfix, from userid 55271)
 id 90033E07C7; Wed, 23 Jun 2021 15:34:30 +0200 (CEST)
From: Alexandra Winter <wintera@linux.ibm.com>
To: roopa@nvidia.com, nikolay@nvidia.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, jwi@linux.ibm.com
Date: Wed, 23 Jun 2021 15:34:24 +0200
Message-Id: <20210623133426.2613847-1-wintera@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: HxdZGFWjjNZUMQHimPEQtbTKoB7g0Jof
X-Proofpoint-ORIG-GUID: HxdZGFWjjNZUMQHimPEQtbTKoB7g0Jof
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-06-23_06:2021-06-23,
 2021-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106230078
X-Mailman-Approved-At: Fri, 25 Jun 2021 08:18:48 +0000
Cc: Alexandra Winter <wintera@linux.ibm.com>
Subject: [Bridge] [PATCH net-next 0/2] net/bridge: Support learning_sync on
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

The following patches added support for 'learning_sync on/off self' to
the qeth device driver:
521c65b64916 s390/qeth: implement ndo_bridge_setlink for learning_sync
780b6e7db25e s390/qeth: implement ndo_bridge_getlink for learning_sync
10a6cfc0fc82 s390/qeth: Translate address events into switchdev notifiers
The 'learning_sync self' attribute is used to enable syncing from the
HW fdb to the software bridge's fdb via SWITCHDEV_FDB_ADD/DEL_TO_BRIDGE
notifications.

The current patchset now adds support for 'learning_sync on/off [master]'
to synchronize from the software bridge's fdb to a hardware fdb.

Alexandra Winter (2):
  net/bridge: Support learning_sync on master
  net/bridge: Update uc addr on LEARNING_SYNC bp

 include/uapi/linux/if_link.h |  2 +-
 net/bridge/br_fdb.c          | 28 ++++++++++++++++++++++++++++
 net/bridge/br_netlink.c      |  5 +++++
 3 files changed, 34 insertions(+), 1 deletion(-)

-- 
2.25.1

