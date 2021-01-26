Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE583032B2
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 05:10:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5057387129;
	Tue, 26 Jan 2021 04:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eAyx2xLs22UL; Tue, 26 Jan 2021 04:10:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1D258712B;
	Tue, 26 Jan 2021 04:10:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9269DC1E6F;
	Tue, 26 Jan 2021 04:10:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A7F0C013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 04:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 214C985792
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 04:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a6LI_-Dux4Hd for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 04:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A82CD844DC
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 04:10:42 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id y205so9760233pfc.5
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 20:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aKVkEDBagljuX3YCkGFMWzS+lPPdBp7IpdpqtPio3EU=;
 b=f0NIGHVBopI0yPqJVr/PiUV/mhKQiqe9Zkr1Ss+4XSbNk5DhohIa6DolWNsmB2DccW
 6ljXAdWx0+uM7qFc/tpWeUvJx+IQhUU4WZEQOMpM5PFfCvCcawF+21VSP+7hbhtvSVoH
 vXg5fWv1FdiYiyrSfvy1wLtuqn39uPftTEtbPbhb8DK036ka0oTsJtcNby9QPy0ipT10
 mKeC80M6GDWPx+xX1naF5S0AGlEWgRgwo0H8LUOecxg/mTWmpjnXwIV9vMhhUoX9Gd6M
 OTZ5mg69q2xam+YVhbRRsQo/rEnPUalloNWn1vm2jfaGhM4rGSvf74PG2Iq4le7LHsTb
 USiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aKVkEDBagljuX3YCkGFMWzS+lPPdBp7IpdpqtPio3EU=;
 b=lgIDK1dN0gfkw0UvqOXVkgvZI1hvPcXnfxXybcAF/v+jUjezEgpZnSJDwYgIFfLzwy
 IHscuJvhEd0rJMr9vP6xurcSMBTNopesYiZmLSJHTzAyvGnrzTCBi1FH39+yLO3U/CNN
 pVop9iUUFtjtwf6ZnjyUdP6+gisj9bDynIPuTz0IUwJx1xLeO6QzKFWgmInUP/7sabqp
 8TJb12XaL1g/36ADGisghAjWmPTSnuYDVA5XGa0NhegDenqVhjpJoHE8u+rK2YHZ0a7i
 3LdOz3I8n7BEHT7LvJGa4ZLdF3xCpF7+sikR5EEiew5m9kwBxLf8PqAD8WfGVorWpC5y
 mP0A==
X-Gm-Message-State: AOAM53191uplhZsbLrDA1yOl83tM1lHH7gdmCrDP2Fjzg2osRIto6KuO
 0SODoW2lJ1USv/dQRvKV38s=
X-Google-Smtp-Source: ABdhPJwWGZ3FBurbJc4PpDAopOt9mDr/vxh0Tv2YAD6NCmW23w9MN7k+ts53mGxcIDP/evmVyAO0MA==
X-Received: by 2002:a63:5122:: with SMTP id f34mr599446pgb.107.1611634242308; 
 Mon, 25 Jan 2021 20:10:42 -0800 (PST)
Received: from Leo-laptop-t470s.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id bk18sm783784pjb.41.2021.01.25.20.10.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 20:10:41 -0800 (PST)
From: Hangbin Liu <liuhangbin@gmail.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Jan 2021 12:09:49 +0800
Message-Id: <20210126040949.3130937-1-liuhangbin@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Jarod Wilson <jarod@redhat.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Hangbin Liu <liuhangbin@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next] bridge: Propagate NETDEV_NOTIFY_PEERS
	notifier
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

After adding bridge as upper layer of bond/team, we usually clean up the
IP address on bond/team and set it on bridge. When there is a failover,
bond/team will not send gratuitous ARP since it has no IP address.
Then the down layer(e.g. VM tap dev) of bridge will not able to receive
this notification.

Make bridge to be able to handle NETDEV_NOTIFY_PEERS notifier.

Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
---
 net/bridge/br.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index ef743f94254d..b6a0921bb498 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -125,6 +125,7 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 		/* Forbid underlying device to change its type. */
 		return NOTIFY_BAD;
 
+	case NETDEV_NOTIFY_PEERS:
 	case NETDEV_RESEND_IGMP:
 		/* Propagate to master device */
 		call_netdevice_notifiers(event, br->dev);
-- 
2.26.2

