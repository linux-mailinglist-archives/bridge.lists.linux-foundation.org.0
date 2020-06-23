Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4904E22CCE8
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF381884D3;
	Fri, 24 Jul 2020 18:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lAeOSAIHlnO1; Fri, 24 Jul 2020 18:21:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A7B48847C;
	Fri, 24 Jul 2020 18:21:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEDAFC004E;
	Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 728CAC016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 14:12:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F46089660
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 14:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPDn3-aznjmh for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 14:12:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9612289659
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 14:12:27 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05NE54Z8119634; Tue, 23 Jun 2020 10:12:05 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31uhcqvar3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Jun 2020 10:12:04 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05NE5a9c122692;
 Tue, 23 Jun 2020 10:12:04 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.107])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31uhcqvaps-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Jun 2020 10:12:04 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
 by ppma03fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05NEBNq1019088;
 Tue, 23 Jun 2020 14:12:02 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma03fra.de.ibm.com with ESMTP id 31uk4wr05b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Jun 2020 14:12:01 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 05NEAew058851746
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jun 2020 14:10:41 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9FF0E4C072;
 Tue, 23 Jun 2020 14:11:58 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 818524C071;
 Tue, 23 Jun 2020 14:11:58 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 23 Jun 2020 14:11:58 +0000 (GMT)
Received: by tuxmaker.boeblingen.de.ibm.com (Postfix, from userid 25651)
 id 04F32E13EA; Tue, 23 Jun 2020 16:11:58 +0200 (CEST)
From: Christian Borntraeger <borntraeger@de.ibm.com>
To: mcgrof@kernel.org
Date: Tue, 23 Jun 2020 16:11:57 +0200
Message-Id: <20200623141157.5409-1-borntraeger@de.ibm.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200610154923.27510-5-mcgrof@kernel.org>
References: <20200610154923.27510-5-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-23_06:2020-06-23,
 2020-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 suspectscore=1 mlxlogscore=865 spamscore=0 bulkscore=0 lowpriorityscore=0
 cotscore=-2147483648 mlxscore=0 priorityscore=1501 malwarescore=0
 clxscore=1011 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006230108
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 dhowells@redhat.com, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, bridge@lists.linux-foundation.org, jmorris@namei.org,
 kuba@kernel.org, serge@hallyn.com, keescook@chromium.org,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com, josh@joshtriplett.org,
 slyfox@gentoo.org, viro@zeniv.linux.org.uk, axboe@kernel.dk,
 bfields@fieldses.org, linux-nfs@vger.kernel.org, chainsaw@gentoo.org,
 ravenexp@gmail.com, gregkh@linuxfoundation.org, linux-s390@vger.kernel.or,
 markward@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, chuck.lever@oracle.com,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, davem@davemloft.net
Subject: [Bridge] linux-next: umh: fix processed error when UMH_WAIT_PROC is
	used seems to break linux bridge on s390x (bisected)
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

Jens Markwardt reported a regression in the linux-next runs.  with "umh: fix
processed error when UMH_WAIT_PROC is used" (from linux-next) a linux bridge
with an KVM guests no longer activates :

without patch
# ip addr show dev virbr1
6: virbr1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 52:54:00:1e:3f:c0 brd ff:ff:ff:ff:ff:ff
    inet 192.168.254.254/24 brd 192.168.254.255 scope global virbr1
       valid_lft forever preferred_lft forever

with this patch the bridge stays DOWN with NO-CARRIER

# ip addr show dev virbr1
6: virbr1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
    link/ether 52:54:00:1e:3f:c0 brd ff:ff:ff:ff:ff:ff
    inet 192.168.254.254/24 brd 192.168.254.255 scope global virbr1
       valid_lft forever preferred_lft forever

This was bisected in linux-next. Reverting from linux-next also fixes the issue.

Any idea?

Christian
