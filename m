Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD061483AF
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 12:40:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 286D286A24;
	Fri, 24 Jan 2020 11:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qYpJS1XhWmUY; Fri, 24 Jan 2020 11:40:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C201186B6D;
	Fri, 24 Jan 2020 11:40:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A93EFC0174;
	Fri, 24 Jan 2020 11:40:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6A33CC1D82
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D67688498
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X2Cc7MJBCqyg for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 11:40:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83BF888488
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:32 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id x7so2093493ljc.1
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 03:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mtj5BWUVGyinNX7wvC73dcZuNmbbOVj5imGPpnqwC7s=;
 b=DYp8SwaR2RtLl8bAH4YtgflR2ni8IhDhhdGRpD50QqlucoswbUPkbngw/FOuoWA5u6
 klQB+ECYE54zTCpHLMNmnfv7vTigPUKItG3YEZNenCaHNCu/4x3HYaTkFyVpCmkfroJD
 JIoCb+UGy6A5aUy+bsiwt58xiyK+daw7J+eJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mtj5BWUVGyinNX7wvC73dcZuNmbbOVj5imGPpnqwC7s=;
 b=ICoiYWQukw/HHX0BTDlxAltEjr27DPk4CWZeZX1U4W8ztGMiWGgRbm6x4N7iw7Iog4
 0UdZz+p7K8l8NIHM3DBOIYk0eZpYYpM/NMwbksNYUiIUeqyQzd4FXw2EZ7mtqwulSHbQ
 9YNpkKmVAqnkaLsPEsn2WBHsuiOhi2vF9liPjEIeQ/nSuqgtEoLdwaMYxkNllcWE3YUj
 wBTkxTY1/JPT4hxjaABjz7AeiVFtWqXkuP6VClHkhA3rYTqZPepQDIcRwN3s7eKpi2Kr
 8SIzY2PDQ8vnUyk1UMHS1ZORq/rpF2b9cpBfxmDs34CBL+fBr2UWfmXAxVGtnf8uAGjK
 4+wA==
X-Gm-Message-State: APjAAAV/fllp5ZAQ7dfHqhchzb5N/4TnnnX+OgCVze8Br7A6zSMk9U16
 sFkWhe/gpWbGjDbTYQjGek+VZg==
X-Google-Smtp-Source: APXvYqwlblPgJAJLYhrRZf0N0nEa2vwWnf0IBSfqztxfEWsBk25yrq1GwuN4AVK62xzXV+NxQkfWmQ==
X-Received: by 2002:a05:651c:1068:: with SMTP id
 y8mr2073916ljm.71.1579866030741; 
 Fri, 24 Jan 2020 03:40:30 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s22sm2996185ljm.41.2020.01.24.03.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 03:40:30 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 24 Jan 2020 13:40:19 +0200
Message-Id: <20200124114022.10883-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
References: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 1/4] net: bridge: check port state
	before br_allowed_egress
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

If we make sure that br_allowed_egress is called only when we have
BR_STATE_FORWARDING state then we can avoid a test later when we add
per-vlan state.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_forward.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 86637000f275..7629b63f6f30 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -25,7 +25,7 @@ static inline int should_deliver(const struct net_bridge_port *p,
 
 	vg = nbp_vlan_group_rcu(p);
 	return ((p->flags & BR_HAIRPIN_MODE) || skb->dev != p->dev) &&
-		br_allowed_egress(vg, skb) && p->state == BR_STATE_FORWARDING &&
+		p->state == BR_STATE_FORWARDING && br_allowed_egress(vg, skb) &&
 		nbp_switchdev_allowed_egress(p, skb) &&
 		!br_skb_isolated(p, skb);
 }
-- 
2.21.0

