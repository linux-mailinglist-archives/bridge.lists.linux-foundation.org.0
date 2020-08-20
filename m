Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0902824E924
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 92CD8203E6;
	Sat, 22 Aug 2020 17:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSEovlKfZCzL; Sat, 22 Aug 2020 17:46:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 9C1F9203F9;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7B475C0051;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 727EAC07FF
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 10:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 584DA87D2C
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 10:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1otpYg56TXHk for <bridge@lists.linux-foundation.org>;
 Thu, 20 Aug 2020 10:57:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8DB8E87C50
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 10:57:56 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1597921073;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=YIkdj2DyvYAhQ7RBBwnYw5GJ1OBharqxpJPUklg5BVY=;
 b=sQO1KRzu+ln6rYasVnJrj+dGujnRJIpdNi4SZQtH+HfrsqdMiTtzuNUcWd+pR2CoNW0rCB
 QvrGeuIQTuBdDAri4DtyW05dShPyZxpGqXYOmdWOgyqTlOXsiQ4PfFMzlHg2b37lWXVyIs
 OapnL0xcMSIt0iVPgXP2Tar+YU4CDjW+NqCgAtB+5mal2kxMNyCaWYNhOI2IdL5V7zEklv
 sJHnoBnVnMUWxSXhSM4+KIt1vvM6hqgabUWoqTR0AaWapyjHuiOXFDCBhNNRzikKGcFG48
 Xgwe7xDdmWD1SLEm7eDXKKN24d1L0Rqw4HCpQCz4PnEavoNCViZ0uXWguW7FsQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1597921073;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=YIkdj2DyvYAhQ7RBBwnYw5GJ1OBharqxpJPUklg5BVY=;
 b=GLQ1GQMkBs9itAqx6i75aleyoPHKCFjC143w8bmpAZT8W4yQ72xQ2NT1XNirW4bEmSUexd
 ea6Ua9vT7ucZ+ZDA==
To: Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Thu, 20 Aug 2020 12:57:37 +0200
Message-Id: <20200820105737.5089-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Cc: Kurt Kanzenbach <kurt@linutronix.de>, Jakub Kicinski <kuba@kernel.org>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org
Subject: [Bridge] [RFC PATCH] net: bridge: Don't reset time stamps on
	SO_TXTIME enabled sockets
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

When using the ETF Qdisc in combination with a bridge and DSA, then all packets
gets dropped due to invalid time stamps. The setup looks like this:

Transmit path:

Application -> bridge (br0) -> DSA slave ports (lan0, lan1) -> ETF Qdisc
            -> ethernet (eth0)

The user space application uses SO_TXTIME to attach a sending time stamp for
each packet using the corresponding interface. That time stamp is then attached
to the skb in the kernel. The first network device involved in the chain is the
bridge device. However, in br_forward_finish() the time stamp is reset to zero
unconditionally. Meaning when the skb arrives at the ETF Qdisc, it's dropped as
invalid because the time stamp is zero.

The reset of the time stamp in the bridge code is there for a good reason. See
commit 41d1c8839e5f ("net: clear skb->tstamp in bridge forwarding path")
Therefore, add a conditional for SO_TXTIME enabled sockets.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 net/bridge/br_forward.c | 9 +++++++++
 1 file changed, 9 insertions(+)

RFC, because I don't know if that's the correct way to solve that issue.

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 7629b63f6f30..e5f7e49ed91d 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -15,6 +15,7 @@
 #include <linux/skbuff.h>
 #include <linux/if_vlan.h>
 #include <linux/netfilter_bridge.h>
+#include <net/sock.h>
 #include "br_private.h"
 
 /* Don't forward packets to originating port or forwarding disabled */
@@ -61,7 +62,15 @@ EXPORT_SYMBOL_GPL(br_dev_queue_push_xmit);
 
 int br_forward_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
 {
+	/* When applications provide time stamps for packets via SO_TXTIME
+	 * socket option, then don't reset it.
+	 */
+	if (skb->sk && sock_flag(skb->sk, SOCK_TXTIME))
+		goto finish;
+
 	skb->tstamp = 0;
+
+finish:
 	return NF_HOOK(NFPROTO_BRIDGE, NF_BR_POST_ROUTING,
 		       net, sk, skb, NULL, skb->dev,
 		       br_dev_queue_push_xmit);
-- 
2.20.1

