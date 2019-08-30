Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA3BA59CF
	for <lists.bridge@lfdr.de>; Mon,  2 Sep 2019 16:53:33 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE5D9A55;
	Mon,  2 Sep 2019 14:52:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C85E06179
	for <bridge@lists.linux-foundation.org>;
	Fri, 30 Aug 2019 18:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64598F1
	for <bridge@lists.linux-foundation.org>;
	Fri, 30 Aug 2019 18:14:23 +0000 (UTC)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7UI3IH1016923; Fri, 30 Aug 2019 14:14:21 -0400
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
	[169.53.41.122])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2uq7vqhwsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 30 Aug 2019 14:14:21 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7UI4s0t012126; Fri, 30 Aug 2019 18:14:20 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com
	[9.57.198.28]) by ppma04dal.us.ibm.com with ESMTP id 2ujvv7dh0b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 30 Aug 2019 18:14:20 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
	[9.57.199.111])
	by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	x7UIEJtD36045086
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Fri, 30 Aug 2019 18:14:19 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A4897AC05E;
	Fri, 30 Aug 2019 18:14:19 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 41DDAAC059;
	Fri, 30 Aug 2019 18:14:16 +0000 (GMT)
Received: from LeoBras.ibmuc.com (unknown [9.85.151.141])
	by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
	Fri, 30 Aug 2019 18:14:16 +0000 (GMT)
From: Leonardo Bras <leonardo@linux.ibm.com>
To: netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Fri, 30 Aug 2019 15:13:53 -0300
Message-Id: <20190830181354.26279-2-leonardo@linux.ibm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830181354.26279-1-leonardo@linux.ibm.com>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-30_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
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
Subject: [Bridge] [PATCH v4 1/2] netfilter: Terminate rule eval if
	protocol=IPv6 and ipv6 module is disabled
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

If IPv6 is disabled on boot (ipv6.disable=1), but nft_fib_inet ends up
dealing with a IPv6 packet, it causes a kernel panic in
fib6_node_lookup_1(), crashing in bad_page_fault.

The panic is caused by trying to deference a very low address (0x38
in ppc64le), due to ipv6.fib6_main_tbl = NULL.
BUG: Kernel NULL pointer dereference at 0x00000038

The kernel panic was reproduced in a host that disabled IPv6 on boot and
have to process guest packets (coming from a bridge) using it's ip6tables.

Terminate rule evaluation when packet protocol is IPv6 but the ipv6 module
is not loaded.

Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
---
 net/netfilter/nft_fib_netdev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/netfilter/nft_fib_netdev.c b/net/netfilter/nft_fib_netdev.c
index 2cf3f32fe6d2..a2e726ae7f07 100644
--- a/net/netfilter/nft_fib_netdev.c
+++ b/net/netfilter/nft_fib_netdev.c
@@ -14,6 +14,7 @@
 #include <linux/netfilter/nf_tables.h>
 #include <net/netfilter/nf_tables_core.h>
 #include <net/netfilter/nf_tables.h>
+#include <net/ipv6.h>
 
 #include <net/netfilter/nft_fib.h>
 
@@ -34,6 +35,8 @@ static void nft_fib_netdev_eval(const struct nft_expr *expr,
 		}
 		break;
 	case ETH_P_IPV6:
+		if (!ipv6_mod_enabled())
+			break;
 		switch (priv->result) {
 		case NFT_FIB_RESULT_OIF:
 		case NFT_FIB_RESULT_OIFNAME:
-- 
2.20.1

