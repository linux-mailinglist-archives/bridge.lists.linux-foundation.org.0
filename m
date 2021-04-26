Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 713A136C09C
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4431060AFA;
	Tue, 27 Apr 2021 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEQwzPV-_iik; Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id E853B60B05;
	Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E48B6C0028;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AA1BAC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A794402E5
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NAdwOxlidiOc for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3186402E3
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:50 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id x20so59058383lfu.6
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=OOyB/1EE0eWY12Fb0O+Ry3sAB71ImU80hOCuCFisolk=;
 b=0HxjTxUqm16Mjfaxqs+3gIH6mIXzFURaMQXnQTxOWVr/b1qcz/uuVMvXrH4PIkKHkt
 E0of8vDgA0EnZ/7ghKu9m3qVi8i2U8tX46qT6tUf58bHMHPKoyWIx2Myyi3XdpWHnPai
 361UPhyG0ytSzko2v1PqsnWDTKm/+5i22SzYBDzwmE5ZBnl7MMMwRPIhsKpRZyyUJz8N
 HkZH702ly+zqHvMI5mi00tLT5FFcBFdiqT4r6nwkqMQOCo0TgQYBE+sTvsy0XHaYvIIa
 TqkiHTN6zFfAt9sDvyURfitCnKpGZ0j6l3uDComxii0BQaHOgBWygUe5GY/Joy+U36Iy
 0cUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=OOyB/1EE0eWY12Fb0O+Ry3sAB71ImU80hOCuCFisolk=;
 b=hMr5uRJ4+FPj28sRZ5GH4mWrQJSKgiCTHxCLdY8Ka/zsOY1lGgT8a6uElrmNf1eQkw
 6PYP3eObDqRC23TMDGmtIYoQBR58DM4d4WEWKlbM0iIsW+/52VLvSf5VcvugwjmBwB7o
 7xj99yL/xhXa+9a8oFmTJ94V51W46XR8AOOOUG6WqdGpWN9RZIT5ocNR0xdutBfquvtZ
 iLTyA7ixX3Etgugh8lOW2DSEJmCeFjCzeGuog5iUmuJBVUSPI/Q0AmSyLTK2Y6RbgBGq
 Shqa0RCTjp/tyVvxzeRTR6jO3yKL3HA8fyL6yZB5Zuya0hNDxwxkMbyoz9taQIEFOSxs
 /mlQ==
X-Gm-Message-State: AOAM533fIg+UKFLYAcULbXIgNoWbDAlhu5S6UB1mzQ/FFvUqZS7OvJJz
 Z8VVhD5HwNLHy0ZZV1artg0D2g==
X-Google-Smtp-Source: ABdhPJyBuqqrojOvqZwoXps/D2lJd/hUbwvs/OaDJtNxxT3mmaXpza+LFxDwuMR7dWk7xGkVt1hhQQ==
X-Received: by 2002:ac2:5cb3:: with SMTP id e19mr13168782lfq.89.1619456687593; 
 Mon, 26 Apr 2021 10:04:47 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:47 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:03 +0200
Message-Id: <20210426170411.1789186-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 1/9] net: dfwd: Constrain existing users to
	macvlan subordinates
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

The dfwd_add/del_station NDOs are currently only used by the macvlan
subsystem to request L2 forwarding offload from lower devices. In
order add support for other types of devices (like bridges), we
constrain the current users to make sure that the subordinate
requesting the offload is in fact a macvlan.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_netdev.c | 3 +++
 drivers/net/ethernet/intel/i40e/i40e_main.c     | 3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c   | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
index 2fb52bd6fc0e..4dba6e6a282d 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
@@ -1352,6 +1352,9 @@ static void *fm10k_dfwd_add_station(struct net_device *dev,
 	int size, i;
 	u16 vid, glort;
 
+	if (!netif_is_macvlan(sdev))
+		return ERR_PTR(-EOPNOTSUPP);
+
 	/* The hardware supported by fm10k only filters on the destination MAC
 	 * address. In order to avoid issues we only support offloading modes
 	 * where the hardware can actually provide the functionality.
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index c2d145a56b5e..b90b79f7ee46 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7663,6 +7663,9 @@ static void *i40e_fwd_add(struct net_device *netdev, struct net_device *vdev)
 	struct i40e_fwd_adapter *fwd;
 	int avail_macvlan, ret;
 
+	if (!netif_is_macvlan(vdev))
+		return ERR_PTR(-EOPNOTSUPP);
+
 	if ((pf->flags & I40E_FLAG_DCB_ENABLED)) {
 		netdev_info(netdev, "Macvlans are not supported when DCB is enabled\n");
 		return ERR_PTR(-EINVAL);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c5ec17d19c59..ff5334faf6c5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9940,6 +9940,9 @@ static void *ixgbe_fwd_add(struct net_device *pdev, struct net_device *vdev)
 	int tcs = adapter->hw_tcs ? : 1;
 	int pool, err;
 
+	if (!netif_is_macvlan(vdev))
+		return ERR_PTR(-EOPNOTSUPP);
+
 	if (adapter->xdp_prog) {
 		e_warn(probe, "L2FW offload is not supported with XDP\n");
 		return ERR_PTR(-EINVAL);
-- 
2.25.1

