Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BFA7A45A5
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:14:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29AAD81A3E;
	Mon, 18 Sep 2023 09:13:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29AAD81A3E
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.a=rsa-sha256 header.s=20230601 header.b=JFIDdvU1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-30rh5FuwXX; Mon, 18 Sep 2023 09:13:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9C52D81A34;
	Mon, 18 Sep 2023 09:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C52D81A34
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 584F4C0DD3;
	Mon, 18 Sep 2023 09:13:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7896C0032
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 09:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CE714016B
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 09:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CE714016B
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=JFIDdvU1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o_PWx3Ndcpm0 for <bridge@lists.linux-foundation.org>;
 Mon, 18 Sep 2023 09:13:54 +0000 (UTC)
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 236A94015A
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 09:13:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 236A94015A
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-59bf252a83aso43784967b3.3
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 02:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1695028433; x=1695633233;
 darn=lists.linux-foundation.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=EsfBDwLTEY1b6zMZsSxMTi304GOyD83H56PBbUeF/6A=;
 b=JFIDdvU1zUn170b/7Brx+9DTJezBHj4U7LznuU+fPBMk1RD+XTIT8wDfrTBPsP8tD3
 UIkofFll1vpN29QhxojdLidgUJhoVhXFfZJ5Js2LmAooipH2ggMDFlWn6eMHywrR6w5N
 zWEaopXpadOdPbHcrpfsDluEwk7VlupwCYNvglUpMyHTCOQ7imTruNFCq8shiFEKPRSE
 6ijg4mxAsS6mu/ZhOzegetMM87WtEuruanJbqwTxeNZ0ulMBgeZiNV9ll40vgfn57URd
 sMqLvmNf++2h92x+LO+XxhxiGXwgPlZQj5Alqi69oHT2xf6LnU8qlQJNEbftO9Nmp/V6
 uYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695028433; x=1695633233;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EsfBDwLTEY1b6zMZsSxMTi304GOyD83H56PBbUeF/6A=;
 b=RXqrcflVucRQhNZtklJa/i1+RhmKGoIOkDcX5bBDASsbfOXJAdYrJG/k1ZyF8zQKvN
 xJpGRaYv8kqawoMC3mdyAjgAbPm35/AjgxfGdBBtZBmLXnk1Ivm89YkWkGtnV6jeX+k3
 y+qwh0MNgdTySQEufmC0g3EbmC9L0cMVb2ACjn5vwx7QYhonH9b+bS/4n5pBILsl5fpj
 HWkWp64ZLEVng5jYmpnBaG/h5VynU3T+HtsXO2ibj6PwXQf5OZgQJ4EYJuU6ynpZV7ub
 vlHOnlh5ezRfm6aUvWNcELq0ao4cL2RpbPtgpu0w4vwzIYvTrfVAZ4dMkd6ybEeWhA8Z
 dUAw==
X-Gm-Message-State: AOJu0YxI64bSBnvYI3wGKG1KOY4a2K9P1ZOYXEBVgJM2I27pcJfdIMyd
 Bq4tsyYUDDbAgjDsMScOBxzKVJJkTDBBQw==
X-Google-Smtp-Source: AGHT+IHC3nfDd6vVLvqJo7B+jFEfxaJ48nt2Bu1yvbEtduSGkYFy8olTI4rD/He//0xjO3mCkQXlk/Ixbj8cCQ==
X-Received: from edumazet1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:7d90:c0a8:395a])
 (user=edumazet job=sendgmr) by 2002:a81:b64d:0:b0:59b:fe3b:411 with SMTP id
 h13-20020a81b64d000000b0059bfe3b0411mr211878ywk.2.1695028433035; Mon, 18 Sep
 2023 02:13:53 -0700 (PDT)
Date: Mon, 18 Sep 2023 09:13:51 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230918091351.1356153-1-edumazet@google.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Cc: eric.dumazet@gmail.com, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, syzbot <syzkaller@googlegroups.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH net] net: bridge: use DEV_STATS_INC()
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
From: Eric Dumazet via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Eric Dumazet <edumazet@google.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

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
---
 net/bridge/br_forward.c | 4 ++--
 net/bridge/br_input.c   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 9d7bc8b96b53a911d5add8d0b21736358441755f..7431f89e897b9549a0c35d9431e36b6de2e80022 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -124,7 +124,7 @@ static int deliver_clone(const struct net_bridge_port *prev,
 
 	skb = skb_clone(skb, GFP_ATOMIC);
 	if (!skb) {
-		dev->stats.tx_dropped++;
+		DEV_STATS_INC(dev, tx_dropped);
 		return -ENOMEM;
 	}
 
@@ -268,7 +268,7 @@ static void maybe_deliver_addr(struct net_bridge_port *p, struct sk_buff *skb,
 
 	skb = skb_copy(skb, GFP_ATOMIC);
 	if (!skb) {
-		dev->stats.tx_dropped++;
+		DEV_STATS_INC(dev, tx_dropped);
 		return;
 	}
 
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index c34a0b0901b07de9e2a3f172527a2bf1c0b6f0b7..c729528b5e85f3a28eff6bd346c18bc11288e7a8 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -181,12 +181,12 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			if ((mdst && mdst->host_joined) ||
 			    br_multicast_is_router(brmctx, skb)) {
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
2.42.0.459.ge4e396fd5e-goog

