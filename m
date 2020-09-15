Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9AB26A7A0
	for <lists.bridge@lfdr.de>; Tue, 15 Sep 2020 16:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAFDA863E0;
	Tue, 15 Sep 2020 14:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fnixac3vI9bH; Tue, 15 Sep 2020 14:57:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AC6A86398;
	Tue, 15 Sep 2020 14:57:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8141CC0051;
	Tue, 15 Sep 2020 14:57:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 61176C0051
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 14:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F9728674A
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 14:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LocqIGsQaXzc for <bridge@lists.linux-foundation.org>;
 Tue, 15 Sep 2020 14:57:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C65AB86746
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 14:57:37 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id i1so3384480edv.2
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 07:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V0oVeorJEn639RUtHYFD9WKWaUEUtKz13YDNA91Zt1M=;
 b=VNhG4zHEKDWxe/WBUk+BEg4hHxxdD4aw6BHfCqYM/7+u34DRHtu5P7rDWDKRF2SXSG
 QMPOQmY3+CnpDK/dDjJuZUnqmSfll9zei2DQFzwzvr+/V1+KWrIKCMAGdVLEMCvjcrTW
 AkNEB8uwQqlPiEDzKCsgb+uIg8h0PscZzoBhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V0oVeorJEn639RUtHYFD9WKWaUEUtKz13YDNA91Zt1M=;
 b=GSRNMR3DbgawsN2A1/JvRzXT7MyrD4rs/ZOxcKswY307S8JJlx5UDVS4PrYBRcDhyp
 TTJhAkSrBVYviIpo6Xp6QES0S9fQU+g2wCAWtFaaoWjihSyExFG29NCgbXElh6ssXTM+
 6wTic6609YsZ3I+oaTkPssKAgD4oKuNHMlIDZok0sHViXQeZc3q0zSVDA2dIuuSnmtnk
 6H7h7GW9PdL9rFPGPcMfmDAFcLebBWntVjXahVVtew4zdOVmEY/dHZQ86JxHdokSd8zc
 cIT17XqfGPe4uBlx09uE2DVZPvMvV4z/rjBRZk2Uijm5U1/89TasUdf8YnmOzkDEHJ5q
 DosQ==
X-Gm-Message-State: AOAM532oF6OQQTWOsrc8Mims8wzzkc3dY2w+5qYe+qYNbxyiRHxeySct
 RoKot2Vzk0SE99NPEGHmv/eg1Q==
X-Google-Smtp-Source: ABdhPJzAY2rvtPAX3p+iCT0TCc1/IqUnwzAOXGRCF1BXWWkr1TNlJe8m5QiOvSUrdBN9sQEQ4mxZfg==
X-Received: by 2002:a50:fc87:: with SMTP id f7mr22614057edq.162.1600181856204; 
 Tue, 15 Sep 2020 07:57:36 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m14sm10255700ejn.8.2020.09.15.07.57.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 07:57:35 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 15 Sep 2020 17:57:24 +0300
Message-Id: <20200915145724.2065042-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next] net: bridge: mcast: don't ignore return
	value of __grp_src_toex_excl
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

When we're handling TO_EXCLUDE report in EXCLUDE filter mode we should
not ignore the return value of __grp_src_toex_excl() as we'll miss
sending notifications about group changes.

Fixes: 5bf1e00b6849 ("net: bridge: mcast: support for IGMPV3/MLDv2 CHANGE_TO_INCLUDE/EXCLUDE report")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 33adf44ef7ec..e77f1e27caf7 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1710,7 +1710,7 @@ static bool br_multicast_toex(struct net_bridge_port_group *pg,
 		changed = true;
 		break;
 	case MCAST_EXCLUDE:
-		__grp_src_toex_excl(pg, srcs, nsrcs, src_size);
+		changed = __grp_src_toex_excl(pg, srcs, nsrcs, src_size);
 		break;
 	}
 
-- 
2.25.4

