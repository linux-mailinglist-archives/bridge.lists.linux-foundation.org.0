Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E8119A59CB
	for <lists.bridge@lfdr.de>; Mon,  2 Sep 2019 16:53:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 35D4DC2A;
	Mon,  2 Sep 2019 14:52:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB9A96179
	for <bridge@lists.linux-foundation.org>;
	Fri, 30 Aug 2019 18:14:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4CEC5E6
	for <bridge@lists.linux-foundation.org>;
	Fri, 30 Aug 2019 18:14:21 +0000 (UTC)
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7UI2YAt111880; Fri, 30 Aug 2019 14:14:17 -0400
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com
	[169.62.189.10])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2uq0tsrv1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 30 Aug 2019 14:14:17 -0400
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
	by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7UIAumh008727; Fri, 30 Aug 2019 18:14:16 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
	[9.57.198.24]) by ppma02dal.us.ibm.com with ESMTP id 2un65kh2xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 30 Aug 2019 18:14:16 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
	[9.57.199.111])
	by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	x7UIEFXU53870862
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Fri, 30 Aug 2019 18:14:16 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DF77CAC060;
	Fri, 30 Aug 2019 18:14:15 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F31D3AC05B;
	Fri, 30 Aug 2019 18:14:12 +0000 (GMT)
Received: from LeoBras.ibmuc.com (unknown [9.85.151.141])
	by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
	Fri, 30 Aug 2019 18:14:12 +0000 (GMT)
From: Leonardo Bras <leonardo@linux.ibm.com>
To: netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Fri, 30 Aug 2019 15:13:52 -0300
Message-Id: <20190830181354.26279-1-leonardo@linux.ibm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-30_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=986 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908300176
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 02 Sep 2019 14:52:47 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	Roopa Prabhu <roopa@cumulusnetworks.com>, Florian Westphal <fw@strlen.de>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Leonardo Bras <leonardo@linux.ibm.com>,
	"David S. Miller" <davem@davemloft.net>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH v4 0/2] Drop IPV6 packets if IPv6 is disabled on
	boot
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

This patchset was prevously a single patch named:
- netfilter: nf_tables: fib: Drop IPV6 packets if IPv6 is disabled on boot

It fixes a bug where a host, with IPv6 disabled on boot, has to deal with
guest IPv6 packets, that comes from a bridge interface.
When these packets reach the host ip6tables they cause a kernel panic.

---
Changes from v3:
- Move drop logic from nft_fib6_eval{,_type} to nft_fib_netdev_eval
- Add another patch to drop ipv6 packets from bridge when ipv6 disabled  

Changes from v2:
- Replace veredict.code from NF_DROP to NFT_BREAK
- Updated commit message (s/package/packet)

Changes from v1:
- Move drop logic from nft_fib_inet_eval() to nft_fib6_eval{,_type}
so it can affect other usages of these functions.

Leonardo Bras (2):
  netfilter: Terminate rule eval if protocol=IPv6 and ipv6 module is
    disabled
  net: br_netfiler_hooks: Drops IPv6 packets if IPv6 module is not
    loaded

 net/bridge/br_netfilter_hooks.c | 2 ++
 net/netfilter/nft_fib_netdev.c  | 3 +++
 2 files changed, 5 insertions(+)

-- 
2.20.1

