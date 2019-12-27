Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A407112B648
	for <lists.bridge@lfdr.de>; Fri, 27 Dec 2019 18:41:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D453887AA1;
	Fri, 27 Dec 2019 17:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKFTXVqbZzkx; Fri, 27 Dec 2019 17:41:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7976187A52;
	Fri, 27 Dec 2019 17:41:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 661B5C1D87;
	Fri, 27 Dec 2019 17:41:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 19449C0881
 for <bridge@lists.linux-foundation.org>; Fri, 27 Dec 2019 17:41:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1071C8389C
 for <bridge@lists.linux-foundation.org>; Fri, 27 Dec 2019 17:41:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MviHqANlSlXr for <bridge@lists.linux-foundation.org>;
 Fri, 27 Dec 2019 17:41:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A4BB81B76
 for <bridge@lists.linux-foundation.org>; Fri, 27 Dec 2019 17:41:45 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 017D621582;
 Fri, 27 Dec 2019 17:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468505;
 bh=QqJno5wkD79YdW2aWjhjalkDVoSW8IX3cUj8I0dPFKY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=09dWvhGQyuxpZm7Z/wYgseFIr54Oe6QBzhgSO/RFjYU+AVIbTt7pPOPqUpIxk0UJS
 SCorezGRkC6yGkCF7YcM4J8i8HYnHBG72DsUoFkR/1VlUoM+mOVNFaY1i9OKz3/KVc
 gJIyS6fqhMsZ3c+ldI+y0Xaz1ClfoVhgodP+yCug=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 27 Dec 2019 12:38:26 -0500
Message-Id: <20191227174055.4923-38-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
Cc: Sasha Levin <sashal@kernel.org>, coreteam@netfilter.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, Eric Dumazet <edumazet@google.com>,
 syzbot <syzkaller@googlegroups.com>, netfilter-devel@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH AUTOSEL 5.4 038/187] netfilter: bridge: make sure
	to pull arp header in br_nf_forward_arp()
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

From: Eric Dumazet <edumazet@google.com>

[ Upstream commit 5604285839aaedfb23ebe297799c6e558939334d ]

syzbot is kind enough to remind us we need to call skb_may_pull()

BUG: KMSAN: uninit-value in br_nf_forward_arp+0xe61/0x1230 net/bridge/br_netfilter_hooks.c:665
CPU: 1 PID: 11631 Comm: syz-executor.1 Not tainted 5.4.0-rc8-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 <IRQ>
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1c9/0x220 lib/dump_stack.c:118
 kmsan_report+0x128/0x220 mm/kmsan/kmsan_report.c:108
 __msan_warning+0x64/0xc0 mm/kmsan/kmsan_instr.c:245
 br_nf_forward_arp+0xe61/0x1230 net/bridge/br_netfilter_hooks.c:665
 nf_hook_entry_hookfn include/linux/netfilter.h:135 [inline]
 nf_hook_slow+0x18b/0x3f0 net/netfilter/core.c:512
 nf_hook include/linux/netfilter.h:260 [inline]
 NF_HOOK include/linux/netfilter.h:303 [inline]
 __br_forward+0x78f/0xe30 net/bridge/br_forward.c:109
 br_flood+0xef0/0xfe0 net/bridge/br_forward.c:234
 br_handle_frame_finish+0x1a77/0x1c20 net/bridge/br_input.c:162
 nf_hook_bridge_pre net/bridge/br_input.c:245 [inline]
 br_handle_frame+0xfb6/0x1eb0 net/bridge/br_input.c:348
 __netif_receive_skb_core+0x20b9/0x51a0 net/core/dev.c:4830
 __netif_receive_skb_one_core net/core/dev.c:4927 [inline]
 __netif_receive_skb net/core/dev.c:5043 [inline]
 process_backlog+0x610/0x13c0 net/core/dev.c:5874
 napi_poll net/core/dev.c:6311 [inline]
 net_rx_action+0x7a6/0x1aa0 net/core/dev.c:6379
 __do_softirq+0x4a1/0x83a kernel/softirq.c:293
 do_softirq_own_stack+0x49/0x80 arch/x86/entry/entry_64.S:1091
 </IRQ>
 do_softirq kernel/softirq.c:338 [inline]
 __local_bh_enable_ip+0x184/0x1d0 kernel/softirq.c:190
 local_bh_enable+0x36/0x40 include/linux/bottom_half.h:32
 rcu_read_unlock_bh include/linux/rcupdate.h:688 [inline]
 __dev_queue_xmit+0x38e8/0x4200 net/core/dev.c:3819
 dev_queue_xmit+0x4b/0x60 net/core/dev.c:3825
 packet_snd net/packet/af_packet.c:2959 [inline]
 packet_sendmsg+0x8234/0x9100 net/packet/af_packet.c:2984
 sock_sendmsg_nosec net/socket.c:637 [inline]
 sock_sendmsg net/socket.c:657 [inline]
 __sys_sendto+0xc44/0xc70 net/socket.c:1952
 __do_sys_sendto net/socket.c:1964 [inline]
 __se_sys_sendto+0x107/0x130 net/socket.c:1960
 __x64_sys_sendto+0x6e/0x90 net/socket.c:1960
 do_syscall_64+0xb6/0x160 arch/x86/entry/common.c:291
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x45a679
Code: ad b6 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 7b b6 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007f0a3c9e5c78 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
RAX: ffffffffffffffda RBX: 0000000000000006 RCX: 000000000045a679
RDX: 000000000000000e RSI: 0000000020000200 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 00000000200000c0 R09: 0000000000000014
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f0a3c9e66d4
R13: 00000000004c8ec1 R14: 00000000004dfe28 R15: 00000000ffffffff

Uninit was created at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:149 [inline]
 kmsan_internal_poison_shadow+0x5c/0x110 mm/kmsan/kmsan.c:132
 kmsan_slab_alloc+0x97/0x100 mm/kmsan/kmsan_hooks.c:86
 slab_alloc_node mm/slub.c:2773 [inline]
 __kmalloc_node_track_caller+0xe27/0x11a0 mm/slub.c:4381
 __kmalloc_reserve net/core/skbuff.c:141 [inline]
 __alloc_skb+0x306/0xa10 net/core/skbuff.c:209
 alloc_skb include/linux/skbuff.h:1049 [inline]
 alloc_skb_with_frags+0x18c/0xa80 net/core/skbuff.c:5662
 sock_alloc_send_pskb+0xafd/0x10a0 net/core/sock.c:2244
 packet_alloc_skb net/packet/af_packet.c:2807 [inline]
 packet_snd net/packet/af_packet.c:2902 [inline]
 packet_sendmsg+0x63a6/0x9100 net/packet/af_packet.c:2984
 sock_sendmsg_nosec net/socket.c:637 [inline]
 sock_sendmsg net/socket.c:657 [inline]
 __sys_sendto+0xc44/0xc70 net/socket.c:1952
 __do_sys_sendto net/socket.c:1964 [inline]
 __se_sys_sendto+0x107/0x130 net/socket.c:1960
 __x64_sys_sendto+0x6e/0x90 net/socket.c:1960
 do_syscall_64+0xb6/0x160 arch/x86/entry/common.c:291
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

Fixes: c4e70a87d975 ("netfilter: bridge: rename br_netfilter.c to br_netfilter_hooks.c")
Signed-off-by: Eric Dumazet <edumazet@google.com>
Reported-by: syzbot <syzkaller@googlegroups.com>
Reviewed-by: Florian Westphal <fw@strlen.de>
Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/bridge/br_netfilter_hooks.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
index af7800103e51..59980ecfc962 100644
--- a/net/bridge/br_netfilter_hooks.c
+++ b/net/bridge/br_netfilter_hooks.c
@@ -662,6 +662,9 @@ static unsigned int br_nf_forward_arp(void *priv,
 		nf_bridge_pull_encap_header(skb);
 	}
 
+	if (unlikely(!pskb_may_pull(skb, sizeof(struct arphdr))))
+		return NF_DROP;
+
 	if (arp_hdr(skb)->ar_pln != 4) {
 		if (is_vlan_arp(skb, state->net))
 			nf_bridge_push_encap_header(skb);
-- 
2.20.1

