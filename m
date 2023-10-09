Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF017BE194
	for <lists.bridge@lfdr.de>; Mon,  9 Oct 2023 15:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C7164191D;
	Mon,  9 Oct 2023 13:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C7164191D
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=pjfzOyML
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rf7gk1fcXLIX; Mon,  9 Oct 2023 13:51:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 542A04177C;
	Mon,  9 Oct 2023 13:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 542A04177C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D20CC0DD3;
	Mon,  9 Oct 2023 13:51:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E3C56C0032
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 13:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF2B9408C8
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 13:51:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF2B9408C8
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=pjfzOyML
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cFhnhFJuhaJa for <bridge@lists.linux-foundation.org>;
 Mon,  9 Oct 2023 13:51:38 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41A6F4019E
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 13:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41A6F4019E
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 70E7CB811FC;
 Mon,  9 Oct 2023 13:51:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A3D8C433C9;
 Mon,  9 Oct 2023 13:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1696859493;
 bh=APIMEqMiAeOIRiyQ/SQ00CplohIcuIfXHLjrPZIneWk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pjfzOyMLaJ6ljgQzu/kNLywteS2VWZ8Sc+SDppABBaOtnAADBYV8CtkP1XOlQapqM
 5fTv7f2QpGD8uZemZ2WvCYdyLdrMcXmPJ+SCzkRLsy+x7Lf5JTVx23RPLcEJ55nA/n
 RCzi8Rst9q7qA9cnmd4z5hjwrq69LpIw/p59OwYg=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon,  9 Oct 2023 15:05:43 +0200
Message-ID: <20231009130111.927090456@linuxfoundation.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009130111.518916887@linuxfoundation.org>
References: <20231009130111.518916887@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 patches@lists.linux.dev, Eric Dumazet <edumazet@google.com>,
 syzbot <syzkaller@googlegroups.com>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>
Subject: [Bridge] [PATCH 4.19 11/91] net: bridge: use DEV_STATS_INC()
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

4.19-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Eric Dumazet <edumazet@google.com>

[ Upstream commit 44bdb313da57322c9b3c108eb66981c6ec6509f4 ]

syzbot/KCSAN reported data-races in br_handle_frame_finish() [1]
This function can run from multiple cpus without mutual exclusion.

Adopt SMP safe DEV_STATS_INC() to update dev->stats fields.

Handles updates to dev->stats.tx_dropped while we are at it.

[1]
BUG: KCSAN: data-race in br_handle_frame_finish / br_handle_frame_finish

read-write to 0xffff8881374b2178 of 8 bytes by interrupt on cpu 1:
br_handle_frame_finish+0xd4f/0xef0 net/bridge/br_input.c:189
br_nf_hook_thresh+0x1ed/0x220
br_nf_pre_routing_finish_ipv6+0x50f/0x540
NF_HOOK include/linux/netfilter.h:304 [inline]
br_nf_pre_routing_ipv6+0x1e3/0x2a0 net/bridge/br_netfilter_ipv6.c:178
br_nf_pre_routing+0x526/0xba0 net/bridge/br_netfilter_hooks.c:508
nf_hook_entry_hookfn include/linux/netfilter.h:144 [inline]
nf_hook_bridge_pre net/bridge/br_input.c:272 [inline]
br_handle_frame+0x4c9/0x940 net/bridge/br_input.c:417
__netif_receive_skb_core+0xa8a/0x21e0 net/core/dev.c:5417
__netif_receive_skb_one_core net/core/dev.c:5521 [inline]
__netif_receive_skb+0x57/0x1b0 net/core/dev.c:5637
process_backlog+0x21f/0x380 net/core/dev.c:5965
__napi_poll+0x60/0x3b0 net/core/dev.c:6527
napi_poll net/core/dev.c:6594 [inline]
net_rx_action+0x32b/0x750 net/core/dev.c:6727
__do_softirq+0xc1/0x265 kernel/softirq.c:553
run_ksoftirqd+0x17/0x20 kernel/softirq.c:921
smpboot_thread_fn+0x30a/0x4a0 kernel/smpboot.c:164
kthread+0x1d7/0x210 kernel/kthread.c:388
ret_from_fork+0x48/0x60 arch/x86/kernel/process.c:147
ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304

read-write to 0xffff8881374b2178 of 8 bytes by interrupt on cpu 0:
br_handle_frame_finish+0xd4f/0xef0 net/bridge/br_input.c:189
br_nf_hook_thresh+0x1ed/0x220
br_nf_pre_routing_finish_ipv6+0x50f/0x540
NF_HOOK include/linux/netfilter.h:304 [inline]
br_nf_pre_routing_ipv6+0x1e3/0x2a0 net/bridge/br_netfilter_ipv6.c:178
br_nf_pre_routing+0x526/0xba0 net/bridge/br_netfilter_hooks.c:508
nf_hook_entry_hookfn include/linux/netfilter.h:144 [inline]
nf_hook_bridge_pre net/bridge/br_input.c:272 [inline]
br_handle_frame+0x4c9/0x940 net/bridge/br_input.c:417
__netif_receive_skb_core+0xa8a/0x21e0 net/core/dev.c:5417
__netif_receive_skb_one_core net/core/dev.c:5521 [inline]
__netif_receive_skb+0x57/0x1b0 net/core/dev.c:5637
process_backlog+0x21f/0x380 net/core/dev.c:5965
__napi_poll+0x60/0x3b0 net/core/dev.c:6527
napi_poll net/core/dev.c:6594 [inline]
net_rx_action+0x32b/0x750 net/core/dev.c:6727
__do_softirq+0xc1/0x265 kernel/softirq.c:553
do_softirq+0x5e/0x90 kernel/softirq.c:454
__local_bh_enable_ip+0x64/0x70 kernel/softirq.c:381
__raw_spin_unlock_bh include/linux/spinlock_api_smp.h:167 [inline]
_raw_spin_unlock_bh+0x36/0x40 kernel/locking/spinlock.c:210
spin_unlock_bh include/linux/spinlock.h:396 [inline]
batadv_tt_local_purge+0x1a8/0x1f0 net/batman-adv/translation-table.c:1356
batadv_tt_purge+0x2b/0x630 net/batman-adv/translation-table.c:3560
process_one_work kernel/workqueue.c:2630 [inline]
process_scheduled_works+0x5b8/0xa30 kernel/workqueue.c:2703
worker_thread+0x525/0x730 kernel/workqueue.c:2784
kthread+0x1d7/0x210 kernel/kthread.c:388
ret_from_fork+0x48/0x60 arch/x86/kernel/process.c:147
ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304

value changed: 0x00000000000d7190 -> 0x00000000000d7191

Reported by Kernel Concurrency Sanitizer on:
CPU: 0 PID: 14848 Comm: kworker/u4:11 Not tainted 6.6.0-rc1-syzkaller-00236-gad8a69f361b9 #0

Fixes: 1c29fc4989bc ("[BRIDGE]: keep track of received multicast packets")
Reported-by: syzbot <syzkaller@googlegroups.com>
Signed-off-by: Eric Dumazet <edumazet@google.com>
Cc: Roopa Prabhu <roopa@nvidia.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>
Cc: bridge@lists.linux-foundation.org
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
Link: https://lore.kernel.org/r/20230918091351.1356153-1-edumazet@google.com
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/bridge/br_forward.c | 4 ++--
 net/bridge/br_input.c   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 48ddc60b4fbde..c07a47d65c398 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -122,7 +122,7 @@ static int deliver_clone(const struct net_bridge_port *prev,
 
 	skb = skb_clone(skb, GFP_ATOMIC);
 	if (!skb) {
-		dev->stats.tx_dropped++;
+		DEV_STATS_INC(dev, tx_dropped);
 		return -ENOMEM;
 	}
 
@@ -261,7 +261,7 @@ static void maybe_deliver_addr(struct net_bridge_port *p, struct sk_buff *skb,
 
 	skb = skb_copy(skb, GFP_ATOMIC);
 	if (!skb) {
-		dev->stats.tx_dropped++;
+		DEV_STATS_INC(dev, tx_dropped);
 		return;
 	}
 
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 14c2fdc268eac..f3938337ff874 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -146,12 +146,12 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			if ((mdst && mdst->host_joined) ||
 			    br_multicast_is_router(br)) {
 				local_rcv = true;
-				br->dev->stats.multicast++;
+				DEV_STATS_INC(br->dev, multicast);
 			}
 			mcast_hit = true;
 		} else {
 			local_rcv = true;
-			br->dev->stats.multicast++;
+			DEV_STATS_INC(br->dev, multicast);
 		}
 		break;
 	case BR_PKT_UNICAST:
-- 
2.40.1



