Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF71EA452
	for <lists.bridge@lfdr.de>; Mon,  1 Jun 2020 14:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E29685A57;
	Mon,  1 Jun 2020 12:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8_ibCF7IG1IP; Mon,  1 Jun 2020 12:59:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFB4185A49;
	Mon,  1 Jun 2020 12:59:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0FB8C0176;
	Mon,  1 Jun 2020 12:59:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48DF7C0176
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 12:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4476387E8A
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 12:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8mWr6ju-0Ei for <bridge@lists.linux-foundation.org>;
 Mon,  1 Jun 2020 12:59:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE5FD87DBA
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 12:59:30 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B7AA95C00ED;
 Mon,  1 Jun 2020 08:59:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 01 Jun 2020 08:59:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=E3/24F62NlPLS0BZI
 KB9PKwWbUkHMjMffQEINIidQHQ=; b=h99Te+LTYj1fbOkSZ9lHj1daH8EbqhQo8
 GoNJTebbOCgOQRQJk5CgvW2dZiclE2QA49BYWUSXYP0H92LkxfODq94vp053YwYC
 OQbxWAyjhrdmwtlPS0NTVI7zmS3dOwfT9ZUydlfzUB9He2kfybLj/cC1NIj+/9O6
 3gO6Ekr6cBMjfy4drsMvjJHeMD4Xvsxi9gGwmzA4tqa+96aSbqYfS5jdwXPijtY2
 cqo4RFH+XJGufRNZdVkk3GcYsQAD/IrroEvUu9tjxF5KwVhdRufq19p2So+sNDc2
 z5GBFesqcqxa4ZYI9ASvAzLaBDsGrlkbHSq7j4D3FPjLsOfjLg/9Q==
X-ME-Sender: <xms:sPvUXieK7K90UX0cZZk80uXgxvCoOyZML6oXARroqgAL64rSZ5kk9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefhedgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiughoshgt
 hhdrohhrgheqnecuggftrfgrthhtvghrnhepteevgefhvefggfffkeeuffeuvdfhueehhe
 etffeikeegheevfedvgeelvdffudfhnecukfhppeejledrudejiedrvdegrddutdejnecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguohhstg
 hhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:sPvUXsP4v-FS-rBpR0ghwEU-CAbwjHFtiCXpvY4Zc8CwWS2HK5Lx4w>
 <xmx:sPvUXjh1YP0A5vU9RBPcdDLfNmVAd9cOWekg05Z_JwVuOg-L0XzMhg>
 <xmx:sPvUXv-k5W8bq4BTQaFJgZGfDsfZdl36tej83l7ajYWyV5Y419bIrQ>
 <xmx:sfvUXgU2Y9q6SgJE8utFiGNVxCtZmDWzrULQZJNt16d7DsOokZyQJA>
Received: from splinter.mtl.com (bzq-79-176-24-107.red.bezeqint.net
 [79.176.24.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id E84DB3280059;
 Mon,  1 Jun 2020 08:59:26 -0400 (EDT)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Mon,  1 Jun 2020 15:58:53 +0300
Message-Id: <20200601125855.1751343-1-idosch@idosch.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: mlxsw@mellanox.com, nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 dlstevens@us.ibm.com, Ido Schimmel <idosch@mellanox.com>, allas@mellanox.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net 0/2] Fix infinite loop in bridge and vxlan
	modules
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

From: Ido Schimmel <idosch@mellanox.com>

When suppressing invalid IPv6 Neighbour Solicitation messages, it is
possible for the bridge and vxlan modules to get stuck in an infinite
loop. See the individual changelogs for detailed explanation of the
problem and solution.

The bug was originally reported against the bridge module, but after
auditing the code base I found that the buggy code was copied from the
vxlan module. This patch set fixes both modules. Could not find more
instances of the problem.

Please consider both patches for stable releases.

Ido Schimmel (2):
  bridge: Avoid infinite loop when suppressing NS messages with invalid
    options
  vxlan: Avoid infinite loop when suppressing NS messages with invalid
    options

 drivers/net/vxlan.c          | 4 ++++
 net/bridge/br_arp_nd_proxy.c | 4 ++++
 2 files changed, 8 insertions(+)

-- 
2.26.2

