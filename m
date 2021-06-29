Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FDE3B73CE
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1169B60692;
	Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WpY4jSPQwUtq; Tue, 29 Jun 2021 14:07:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BB3B0608A1;
	Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 685DCC0024;
	Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D2ABC001A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC9666086B
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUjXFsQJVrFw for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 009B160692
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:20 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id t3so9941190edt.12
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=scHE9d5ONVOSdnYa8WVWpcK+kRjde55g2yNWIa6qibo=;
 b=CPQwwDj6wiEJ4ZYKqhbT6ssPVv2NYdEHr9dSgGVtQBta259ZuNEfG2J9LqnBJK/7T7
 pkU9xUxcfmEGjcV/XKPguudEmo0wMofRBM+7mhskB2kmCTQ+UMqXIP+l5aaOGOmJqyrs
 RJfMzEOyMB9Sm+SUoQZq8Asp8zPriU6qvuDWXP6ZISSKiW3y5apI4WgqTyjZnrhrWw3t
 cvID5Cbg6ot/dXehrZFKgwUXIux/KiH3Ml5Jotqr+EVfQnUnRQRrFRGYYJsFGqR+w9KT
 hDvvyPCEuzG2X1Qf7XHxhFHUbb7615V/SATrQAe/Jwnomy+RPwANGZQeK9k3fn+7C6zh
 XqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=scHE9d5ONVOSdnYa8WVWpcK+kRjde55g2yNWIa6qibo=;
 b=BAmWSRKdoHci5mSxZQialuUHKQG+rvCVAdM5vilncwnaeeUAgM7TVLjKeINS/kdRnx
 0auAcDwGZ0FimajtC4XnGDF9FP2cIl0f4Icz+SgDzBW3iS+WjLYjgBbEA/ICKDXr05vu
 l3RCPDcYJ5nPDhixoeCH/ldnrX1myOy7PG6Bidu5wcSdIfyNYA1kLobLAPFU+ZUs6oH6
 JF6nH9S/wtX5ghymn76PM8HVwvT6zzDCUukY8un/XNGJd8zPA71QW52+NIDArWx75FoU
 Nfl4SH/UgFMxi9TmYS9IuvVQov/+VIWWIaSFV4xaA0waHdOLmn63BPos/0+Y26Dt3FU2
 mKWg==
X-Gm-Message-State: AOAM531oddp0AlTFs3RjnKiy0e1PpcZLi2+L8QhjnvRXv4C0EJ/UWdqv
 a0zfRz4wBAG0JoEs1KD3KJw=
X-Google-Smtp-Source: ABdhPJyDLKG7cWLBjgNw6df2gg/f63nbuhCwrKrBiyMjatwlqEcEPQMHO6Hj7J9zEywF2MnS9LIBxg==
X-Received: by 2002:a05:6402:348d:: with SMTP id
 v13mr30820266edc.119.1624975639185; 
 Tue, 29 Jun 2021 07:07:19 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:18 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:46 +0300
Message-Id: <20210629140658.2510288-4-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 03/15] net: bridge: allow br_fdb_replay
	to be called for the bridge device
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

When a port joins a bridge which already has local FDB entries pointing
to the bridge device itself, we would like to offload those, so allow
the "dev" argument to be equal to the bridge too. The code already does
what we need in that case.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: split in 2 separate checks, one for br_dev and one for dev,
        because it looks better

 net/bridge/br_fdb.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index bad7e84d76af..2b862cffc03a 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -760,7 +760,10 @@ int br_fdb_replay(const struct net_device *br_dev, const struct net_device *dev,
 	unsigned long action;
 	int err = 0;
 
-	if (!netif_is_bridge_master(br_dev) || !netif_is_bridge_port(dev))
+	if (!netif_is_bridge_master(br_dev))
+		return -EINVAL;
+
+	if (!netif_is_bridge_port(dev) && !netif_is_bridge_master(dev))
 		return -EINVAL;
 
 	br = netdev_priv(br_dev);
-- 
2.25.1

