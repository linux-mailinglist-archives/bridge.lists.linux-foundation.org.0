Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 143A72A6374
	for <lists.bridge@lfdr.de>; Wed,  4 Nov 2020 12:39:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB7A586214;
	Wed,  4 Nov 2020 11:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdW13u73L7iS; Wed,  4 Nov 2020 11:39:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42608864D0;
	Wed,  4 Nov 2020 11:39:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21B7BC1AD7;
	Wed,  4 Nov 2020 11:39:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C260EC0051
 for <bridge@lists.linux-foundation.org>; Mon,  2 Nov 2020 14:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B1AF18670A
 for <bridge@lists.linux-foundation.org>; Mon,  2 Nov 2020 14:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXRBntQiqLt4 for <bridge@lists.linux-foundation.org>;
 Mon,  2 Nov 2020 14:38:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C4A9866FE
 for <bridge@lists.linux-foundation.org>; Mon,  2 Nov 2020 14:38:49 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b12so6908931plr.4
 for <bridge@lists.linux-foundation.org>; Mon, 02 Nov 2020 06:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2sn9IlsAf/o9PWSnZUDacWvGJDMDAyE7jKOu80Z9/XQ=;
 b=NQ/gal9zzj2UqO3cAXsmHskedL493eGjFym6fPXH9qBstkQNuhYGfz/cumaLHhEwy5
 Q0lRD9kCA7ftBWsukFlgcPDc+FqT8IMRZSZO1/5f0lcStW8e8U+Y3l7EGiSzns7Aej0k
 IEz3QV61BRuLkPW+698vYxNtt3okkp/W2imR6Cjkr0flzsQg7WmhohibsRE5ebqGx2/2
 swHHF4uixV6q2Qu2iJSDAhp+Ucnskdcl/SFc9cmiPnNb6hdHPf74yxNcWgTllh+Q2In/
 njKUbFGis5ARnc2axQpcS1TyWxxZ7fZf/etN+/m1URj5yE54tbrL1S3OGxjZcPivRPST
 qGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2sn9IlsAf/o9PWSnZUDacWvGJDMDAyE7jKOu80Z9/XQ=;
 b=dQ5+pQKV+gwPJMdd5eVsA9pY1otZ1xkhGIfsKFp5hw9n7OtbXl+yPnYF55cEjmSne8
 OtEemiOYVZPJWCN9JyBSxeBXRl6GHlm4Apce7A7TJZcP2RWRGPcQ/3stQ4MyUwp3Vvxp
 pRWoKZAFBgiZxcqli6nskYyNrMFyO4Cp+EQFhvqk4JIf+fMqOON9yB33KkbT9n06mLg0
 RSl8RBalSfIAGXnSK4/peZK+GLqNMu6W8EfgG9dkDPzSZoOPPIaV7UHX+qV1ONukbTVK
 6bFSId7iRpYnywAKf3I/wxS252pB+xbH1gXvd+GZ8XAcY+MWz7wI+FMDBDS5rCkRmOmb
 xreA==
X-Gm-Message-State: AOAM533tWD1sEjcvLuJQueOzh7n1MhDGapf/CfZGrrKtCPOhQt1aDJ8W
 A9HuZ8Bw4kPraT7wOIGfvbY=
X-Google-Smtp-Source: ABdhPJw2IijvFH0YG4q0KgzcaAPpdd6MlJv8jjS6BLDflCWUrk9NvLv0pzwQ1iGIwwaiLl1SFqK6sw==
X-Received: by 2002:a17:902:848e:b029:d6:d2c9:1d4c with SMTP id
 c14-20020a170902848eb02900d6d2c91d4cmr3358980plo.40.1604327928861; 
 Mon, 02 Nov 2020 06:38:48 -0800 (PST)
Received: from localhost.localdomain ([154.93.3.113])
 by smtp.gmail.com with ESMTPSA id l129sm12900610pgl.3.2020.11.02.06.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 06:38:48 -0800 (PST)
From: Menglong Dong <menglong8.dong@gmail.com>
To: roopa@nvidia.com
Date: Mon,  2 Nov 2020 22:38:28 +0800
Message-Id: <20201102143828.5286-1-menglong8.dong@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 04 Nov 2020 11:39:39 +0000
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH] net: bridge: disable multicast while delete bridge
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

From: Menglong Dong <dong.menglong@zte.com.cn>

This commit seems make no sense, as bridge is destroyed when
br_multicast_dev_del is called.

In commit b1b9d366028f
("bridge: move bridge multicast cleanup to ndo_uninit"), Xin Long
fixed the use-after-free panic in br_multicast_group_expired by
moving br_multicast_dev_del to ndo_uninit. However, that patch is
not applied to 4.4.X, and the bug exists.

Fix that bug by disabling multicast in br_multicast_dev_del for
4.4.X, and there is no harm for other branches.

Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
---
 net/bridge/br_multicast.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index eae898c3cff7..9992fdff2951 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -3369,6 +3369,7 @@ void br_multicast_dev_del(struct net_bridge *br)
 	hlist_for_each_entry_safe(mp, tmp, &br->mdb_list, mdb_node)
 		br_multicast_del_mdb_entry(mp);
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
+	br_opt_toggle(br, BROPT_MULTICAST_ENABLED, false);
 	spin_unlock_bh(&br->multicast_lock);
 
 	br_multicast_gc(&deleted_head);
-- 
2.25.1

