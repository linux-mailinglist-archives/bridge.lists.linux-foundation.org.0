Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFD2A59DD
	for <lists.bridge@lfdr.de>; Mon,  2 Sep 2019 16:54:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9A66CE2D;
	Mon,  2 Sep 2019 14:52:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F73B63C1
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 04:41:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A17C13A
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 04:41:04 +0000 (UTC)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7V4bC3t010070; Sat, 31 Aug 2019 00:41:01 -0400
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com
	[169.62.189.10])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2uqc4pgtgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sat, 31 Aug 2019 00:41:01 -0400
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
	by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7V4eTfb004166; Sat, 31 Aug 2019 04:41:00 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
	[9.57.198.24]) by ppma02dal.us.ibm.com with ESMTP id 2uqgh68fpf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sat, 31 Aug 2019 04:41:00 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
	[9.57.199.111])
	by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	x7V4exjP22544856
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Sat, 31 Aug 2019 04:40:59 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6E5EFAC059;
	Sat, 31 Aug 2019 04:40:59 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 60978AC05B;
	Sat, 31 Aug 2019 04:40:56 +0000 (GMT)
Received: from LeoBras.ibmuc.com (unknown [9.80.210.156])
	by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
	Sat, 31 Aug 2019 04:40:56 +0000 (GMT)
From: Leonardo Bras <leonardo@linux.ibm.com>
To: netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Sat, 31 Aug 2019 01:40:33 -0300
Message-Id: <20190831044032.31931-1-leonardo@linux.ibm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-31_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908310051
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
Subject: [Bridge] [PATCH v5 1/1] net: br_netfiler_hooks: Drops IPv6 packets
	if IPv6 module is not loaded
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

A kernel panic can happen if a host has disabled IPv6 on boot and have to
process guest packets (coming from a bridge) using it's ip6tables.

IPv6 packets need to be dropped if the IPv6 module is not loaded, and the
host ip6tables will be used.

Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
---
Changes from v4:
- Check if the host ip6tables is going to be used before testing 
  ipv6 module presence 
- Adds a warning about ipv6 module disabled.


 net/bridge/br_netfilter_hooks.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
index d3f9592f4ff8..af7800103e51 100644
--- a/net/bridge/br_netfilter_hooks.c
+++ b/net/bridge/br_netfilter_hooks.c
@@ -496,6 +496,10 @@ static unsigned int br_nf_pre_routing(void *priv,
 		if (!brnet->call_ip6tables &&
 		    !br_opt_get(br, BROPT_NF_CALL_IP6TABLES))
 			return NF_ACCEPT;
+		if (!ipv6_mod_enabled()) {
+			pr_warn_once("Module ipv6 is disabled, so call_ip6tables is not supported.");
+			return NF_DROP;
+		}
 
 		nf_bridge_pull_encap_header_rcsum(skb);
 		return br_nf_pre_routing_ipv6(priv, skb, state);
-- 
2.20.1

