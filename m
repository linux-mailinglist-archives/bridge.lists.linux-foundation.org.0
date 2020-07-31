Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE0241209
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 465A48798A;
	Mon, 10 Aug 2020 21:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0B7BD1SGvleP; Mon, 10 Aug 2020 21:05:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2E7F8785E;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8FDD2C004D;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2155C004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC6D4869D2
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUXahokvl6em for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 04:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62C9C869B8
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:45:01 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id kr4so4282666pjb.2
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jul 2020 21:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WD31emG5AAw62cTFIzmY9OBwp6Qx1m67HwbYW6jOzgE=;
 b=Fwn4fVpIuOoiY6zQvbpgMCZzaLl4zm5qe1vcnKdKkipMxP8rnrEnNmarXXW2F4251W
 OuOcoCTWnnG7RJOBGbpCpl7VFICmd6rktak1eV2hL+YKaPj74PK2wemOGPCAIpWTAlsD
 s9pCQcj2W5ErTSrqlp6pkn2Tzj8EbAA5QIxVNYiew5xpGC2iH87AsfRkSRYAkKoz74cz
 JfZOIXzscNbFvLquroOiEG8zS9VfZiMt3bywjxx9RcoHr1rwb1k7fw9KDT7x1iR39X7j
 AFejoRKZvZy90KeIVo/YIjcWN1qGox6/8MUj6yxY+4Lc03xXyALCyh763BLEt+XKYnEO
 IQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WD31emG5AAw62cTFIzmY9OBwp6Qx1m67HwbYW6jOzgE=;
 b=KQwrGCUX7Gx78l74B1aqmCZLJnhxuGShCF1ToJZIcmRhsxduH6FVBcfI2gPpu/6xAw
 F96pmN+vDi1LizdSKIEpUus3436t34nJpypcmd0dJ/rvj7QUiQuCTPfj8Jxh9S7uOPq1
 WYHm1JBuzppGZcKnB2arzoQA7xPugdqEJ2oZLWYkBhajHplk3nUo86KW0iyH+djrUOvw
 ylcr0ytP94yNRPWFXm/idJXoff5YcDIGoTUr2S1/k/BKpQfVPcoFMSa4qJm5aRomx9V6
 xe4mvmLsc+mLaar6ScXxMByis1iK+zt0FcYOFRQiff4j0lnBc9g4rotAtHbe59tZFftu
 t2Ew==
X-Gm-Message-State: AOAM530NVl9aFHan/Ir2XkhNNFOcqYWNq0wtzDbjK/DKr5fSZuMNn5Um
 x5l9BCq8luSyt9p2oiNXZ5Q=
X-Google-Smtp-Source: ABdhPJxfqbrlJkN0gPj7CdOreSoE9noW2lX2r4E2qd+4uyCDucE/2gd/JByR4Zr9P6JaNWPSgIdLtQ==
X-Received: by 2002:a63:135b:: with SMTP id 27mr2084276pgt.37.1596170700904;
 Thu, 30 Jul 2020 21:45:00 -0700 (PDT)
Received: from dali.ht.sfc.keio.ac.jp (dali.ht.sfc.keio.ac.jp. [133.27.170.2])
 by smtp.gmail.com with ESMTPSA id
 x6sm2329573pfd.53.2020.07.30.21.44.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jul 2020 21:45:00 -0700 (PDT)
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, KP Singh <kpsingh@chromium.org>,
 Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 David Ahern <dsahern@kernel.org>
Date: Fri, 31 Jul 2020 13:44:18 +0900
Message-Id: <1596170660-5582-2-git-send-email-komachi.yoshiki@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 bridge@lists.linux-foundation.org, Yoshiki Komachi <komachi.yoshiki@gmail.com>
Subject: [Bridge] [RFC PATCH bpf-next 1/3] net/bridge: Add new function to
	access FDB from XDP programs
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

This patch adds a function to find the destination port from the
FDB in the kernel tables, which mainly helps XDP programs to access
FDB in the kernel via bpf helper. Note that, unlike the existing
br_fdb_find_port(), this function takes an ingress device as an
argument.

The br_fdb_find_port() also enables us to access FDB in the kernel,
and rcu_read_lock()/rcu_read_unlock() must be called in the function.
But, these are unnecessary in that cases because XDP programs have
to call APIs with rcu_read_lock()/rcu_read_unlock(). Thus, proposed
function could be used without these locks in the function.

Signed-off-by: Yoshiki Komachi <komachi.yoshiki@gmail.com>
---
 include/linux/if_bridge.h | 11 +++++++++++
 net/bridge/br_fdb.c       | 25 +++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 6479a38e52fa..24d72d115d0b 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -127,6 +127,9 @@ static inline int br_vlan_get_info(const struct net_device *dev, u16 vid,
 struct net_device *br_fdb_find_port(const struct net_device *br_dev,
 				    const unsigned char *addr,
 				    __u16 vid);
+struct net_device *br_fdb_find_port_xdp(const struct net_device *dev,
+				    const unsigned char *addr,
+				    __u16 vid);
 void br_fdb_clear_offload(const struct net_device *dev, u16 vid);
 bool br_port_flag_is_set(const struct net_device *dev, unsigned long flag);
 #else
@@ -138,6 +141,14 @@ br_fdb_find_port(const struct net_device *br_dev,
 	return NULL;
 }
 
+static inline struct net_device *
+br_fdb_find_port_xdp(const struct net_device *dev,
+				    const unsigned char *addr,
+				    __u16 vid);
+{
+	return NULL;
+}
+
 static inline void br_fdb_clear_offload(const struct net_device *dev, u16 vid)
 {
 }
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 9db504baa094..79bc3c2da668 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -141,6 +141,31 @@ struct net_device *br_fdb_find_port(const struct net_device *br_dev,
 }
 EXPORT_SYMBOL_GPL(br_fdb_find_port);
 
+struct net_device *br_fdb_find_port_xdp(const struct net_device *dev,
+				    const unsigned char *addr,
+				    __u16 vid)
+{
+	struct net_bridge_fdb_entry *f;
+	struct net_device *dst = NULL;
+	struct net_bridge *br = NULL;
+	struct net_bridge_port *p;
+
+	p = br_port_get_check_rcu(dev);
+	if (!p)
+		return NULL;
+
+	br = p->br;
+	if (!br)
+		return NULL;
+
+	f = br_fdb_find_rcu(br, addr, vid);
+	if (f && f->dst)
+		dst = f->dst->dev;
+
+	return dst;
+}
+EXPORT_SYMBOL_GPL(br_fdb_find_port_xdp);
+
 struct net_bridge_fdb_entry *br_fdb_find_rcu(struct net_bridge *br,
 					     const unsigned char *addr,
 					     __u16 vid)
-- 
2.20.1 (Apple Git-117)

