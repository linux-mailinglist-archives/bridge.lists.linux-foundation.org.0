Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE3067D9B
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:01:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AA83816C9;
	Sun, 14 Jul 2019 06:00:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 032D22F1B
	for <bridge@lists.linux-foundation.org>;
	Tue,  9 Jul 2019 07:02:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52C17148
	for <bridge@lists.linux-foundation.org>;
	Tue,  9 Jul 2019 07:02:38 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 127BF232B05D5409DAFF;
	Tue,  9 Jul 2019 15:02:34 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
	(10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Tue, 9 Jul 2019
	15:02:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <pablo@netfilter.org>, <kadlec@netfilter.org>,
	<fw@strlen.de>, <roopa@cumulusnetworks.com>,
	<nikolay@cumulusnetworks.com>, <wenxu@ucloud.cn>
Date: Tue, 9 Jul 2019 15:01:26 +0800
Message-ID: <20190709070126.29972-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
	YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
	coreteam@netfilter.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH net-next] netfilter: nft_meta: Fix build error
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

If NFT_BRIDGE_META is y and NF_TABLES is m, building fails:

net/bridge/netfilter/nft_meta_bridge.o: In function `nft_meta_bridge_get_init':
nft_meta_bridge.c:(.text+0xd0): undefined reference to `nft_parse_register'
nft_meta_bridge.c:(.text+0xec): undefined reference to `nft_validate_register_store'

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 30e103fe24de ("netfilter: nft_meta: move bridge meta keys into nft_meta_bridge")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/bridge/netfilter/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/netfilter/Kconfig b/net/bridge/netfilter/Kconfig
index fbc7085..ca3214f 100644
--- a/net/bridge/netfilter/Kconfig
+++ b/net/bridge/netfilter/Kconfig
@@ -12,6 +12,7 @@ if NF_TABLES_BRIDGE
 
 config NFT_BRIDGE_META
 	tristate "Netfilter nf_table bridge meta support"
+	depends on NF_TABLES
 	help
 	  Add support for bridge dedicated meta key.
 
-- 
2.7.4


