Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A24A2CE4
	for <lists.bridge@lfdr.de>; Sat, 29 Jan 2022 09:15:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC27461BA0;
	Sat, 29 Jan 2022 08:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgoajdmNTld3; Sat, 29 Jan 2022 08:15:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 076EC60B94;
	Sat, 29 Jan 2022 08:15:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E97FCC0011;
	Sat, 29 Jan 2022 08:15:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4DCA5C002F
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 03:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C85382640
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 03:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lptElcwzHsLq for <bridge@lists.linux-foundation.org>;
 Wed, 26 Jan 2022 03:18:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A70DE825CA
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jan 2022 03:18:08 +0000 (UTC)
Received: from kwepemi500001.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Jk85y4wvyzbkLb;
 Wed, 26 Jan 2022 11:17:10 +0800 (CST)
Received: from kwepeml500002.china.huawei.com (7.221.188.128) by
 kwepemi500001.china.huawei.com (7.221.188.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 26 Jan 2022 11:18:00 +0800
Received: from huawei.com (10.175.104.82) by kwepeml500002.china.huawei.com
 (7.221.188.128) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Wed, 26 Jan
 2022 11:18:00 +0800
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>
Date: Wed, 26 Jan 2022 11:36:38 +0800
Message-ID: <20220126033639.909340-1-huangguobin4@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.104.82]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepeml500002.china.huawei.com (7.221.188.128)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Sat, 29 Jan 2022 08:15:36 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 stable@vger.kernel.org
Subject: [Bridge] [PATCH 4.19 0/1] Fix UBSAN: undefined-behaviour in
	maybe_deliver
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
From: Huang Guobin via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Huang Guobin <huangguobin4@huawei.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

There is a syzkaller problem for Linux 4.19 last for over 1 year:
https://www.syzkaller.appspot.com/bug?id=288ae4752bb930c26369d675316de0310264ee34

Mainline patch 7d850abd5f4e(net: bridge: add support for port isolation)
introduces the BR_ISOLATED feature, a pair of ports with the BR_ISOLATED
option set cannot communicate with each other.
This feature applies only to ingress flow, not egress flow. However, the
function br_skb_isolated that checks if an interface is isolated will be
used not only for the ingress path, but also for the egress path.
Since Linux-4.19  not merge the mainline patch fd65e5a95d0838(net: bridge:
clear bridge's private skb space on xmit), the value of skb->cb is unde-
fined because it is not initialized. Therefore, checking 
BR_INPUT_SKB_CB(skb)->src_port_isolated on the egress path will access an
undefined value, resulting in an error in the judgment of br_skb_isolated.
UBSAN triggers an alarm by finding undefined
BR_INPUT_SKB_CB(skb)->src_port_isolated.
So cherry-pick mainline patch fd65e5a95d0838(net: bridge: clear bridge's
private skb space on xmit) to Linux 4.19 to fix it.

Nikolay Aleksandrov (1):
  net: bridge: clear bridge's private skb space on xmit

 net/bridge/br_device.c | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.25.1

