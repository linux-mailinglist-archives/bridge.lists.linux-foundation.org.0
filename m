Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA2A58E534
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 05:11:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C771D81AC4;
	Wed, 10 Aug 2022 03:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C771D81AC4
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=qyr6zLW6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCkk3IhLE-y9; Wed, 10 Aug 2022 03:11:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4D5E781A47;
	Wed, 10 Aug 2022 03:11:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D5E781A47
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 063CFC007B;
	Wed, 10 Aug 2022 03:11:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48086C002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22EE360FA8
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22EE360FA8
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=qyr6zLW6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZgiMQACbz6g for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 03:11:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E261E60C2C
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E261E60C2C
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:45 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id w28so2102602qtc.7
 for <bridge@lists.linux-foundation.org>; Tue, 09 Aug 2022 20:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=jHImZVkI//te5SMl1xxH/2vTsjBJiQGrltsOXeaVLiI=;
 b=qyr6zLW6SssRFEFqPcOIUy5mytX++/xNFFW8KTB/D8XOB26CCWcxROaVbSBwKd7SJY
 yNt4b3rzSSJ/6qpZgkMOy8AcvPRP/vHFIvVm9k7nLkfbkCqnkt/Y1rHeeDF3ePZUIpNK
 +D0rXnBDU94s7DlKNGF1AuejkuGRaCd1WNG10KY5gYmybHVgazQ08i3IwkBXrCa7QRwf
 81ASdXIRNRYWQ/leISfXEf9wlqf29Z/9pQrLipXgMhesfhyLrNjHRIwLV/RJ0d0jOwwW
 kwi+UiSG3e/7gspP+UYg2v8H+IzEYjKHcJwrsyQliM1MO0JsHMgTh4FunrhPsJkTFwgS
 7DBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=jHImZVkI//te5SMl1xxH/2vTsjBJiQGrltsOXeaVLiI=;
 b=B9Uh2/H+kU/CY3e/6UZsqpQG7iUPLgBBnq/kGxMTgDURU8vCCUkniUXzGWk7ixsO7W
 0I2jmDsfDKoZIuf+ZdrdIL8h6LXQiFBVD2I9e+LXAcHwT3Q6JGmtRRhD+T95O+fUNw80
 KpJ/HJgkVlXWF52cpK8isDz7r3CIi1kTdagEJP8+VaYvhbCTfwZp/s/LmXfWAq6Hg5OS
 Iq/iYrnBAlCwYnj4R8wbu+d8r3uK6T2PZBkrMmVkwXYNlGS/n/mNwVom7UKv5qgDRdOQ
 u8sJjZuED6wHOke6lWO5mRscibzz97kGUufpdlhFBqPiX0R//F5COBF0j6+mBwjTZnWX
 58tw==
X-Gm-Message-State: ACgBeo18VQ1LpFC/SkVsCfj+7pgQDeYiVvjG6eeTqk+0lIFfDg77u3gA
 +6vGHd0C/h6pzVjBOwyTmoQ=
X-Google-Smtp-Source: AA6agR5GcL2nzCCbEs2bEZF2oOhnRYZYjbwaoWVZ3Dt4sEaXubBDo+1+/VJuliIk++TpsY+/X6BvyA==
X-Received: by 2002:a05:622a:1b01:b0:343:582f:3e07 with SMTP id
 bb1-20020a05622a1b0100b00343582f3e07mr1200591qtb.578.1660101104647; 
 Tue, 09 Aug 2022 20:11:44 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 i4-20020a05622a08c400b00342b7e4241fsm9743926qte.77.2022.08.09.20.11.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Aug 2022 20:11:44 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Tue,  9 Aug 2022 23:11:19 -0400
Message-Id: <b5f740fac8d95cd663a2a21e8ac2ab9ffd06d3c0.1660100506.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 1/3] net: core: export
	call_netdevice_notifiers_info
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

When a bridge binding flag is changed for a vlan interface, the
vlan_dev_change_flags function in the 8021q module is called. Currently, this
function only sets the flag for the vlan interface and returns, which results in
a buggy behavior; it also needs to let the bridge module module know that upper
device for the bridge has changed by propagating NETDEV_CHANGEUPPER event. This
event can be triggered using call_netdevice_notifiers_info function, so export
this function.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 include/linux/netdevice.h | 2 ++
 net/core/dev.c            | 7 +++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 2563d30736e9..d17ef56c8a06 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2898,6 +2898,8 @@ netdev_notifier_info_to_extack(const struct netdev_notifier_info *info)
 }
 
 int call_netdevice_notifiers(unsigned long val, struct net_device *dev);
+int call_netdevice_notifiers_info(unsigned long val,
+				  struct netdev_notifier_info *info);
 
 
 extern rwlock_t				dev_base_lock;		/* Device list lock */
diff --git a/net/core/dev.c b/net/core/dev.c
index 30a1603a7225..50e7483946e0 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -160,8 +160,6 @@ struct list_head ptype_base[PTYPE_HASH_SIZE] __read_mostly;
 struct list_head ptype_all __read_mostly;	/* Taps */
 
 static int netif_rx_internal(struct sk_buff *skb);
-static int call_netdevice_notifiers_info(unsigned long val,
-					 struct netdev_notifier_info *info);
 static int call_netdevice_notifiers_extack(unsigned long val,
 					   struct net_device *dev,
 					   struct netlink_ext_ack *extack);
@@ -1927,8 +1925,8 @@ static void move_netdevice_notifiers_dev_net(struct net_device *dev,
  *	are as for raw_notifier_call_chain().
  */
 
-static int call_netdevice_notifiers_info(unsigned long val,
-					 struct netdev_notifier_info *info)
+int call_netdevice_notifiers_info(unsigned long val,
+				  struct netdev_notifier_info *info)
 {
 	struct net *net = dev_net(info->dev);
 	int ret;
@@ -1944,6 +1942,7 @@ static int call_netdevice_notifiers_info(unsigned long val,
 		return ret;
 	return raw_notifier_call_chain(&netdev_chain, val, info);
 }
+EXPORT_SYMBOL(call_netdevice_notifiers_info);
 
 /**
  *	call_netdevice_notifiers_info_robust - call per-netns notifier blocks
-- 
2.25.1

