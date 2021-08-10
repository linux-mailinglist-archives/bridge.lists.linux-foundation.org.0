Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D793E56AE
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 11:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC5ED4027D;
	Tue, 10 Aug 2021 09:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jm5barmpKXs5; Tue, 10 Aug 2021 09:21:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5CA9540263;
	Tue, 10 Aug 2021 09:21:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 197A9C001F;
	Tue, 10 Aug 2021 09:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AFE2CC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 09:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9954A605EB
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 09:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mdgtnHWgc1Sd for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 09:21:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8E4A605D1
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 09:21:49 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id f13so29179240edq.13
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 02:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LGHkd28MWGOCiDBxhGiWFhEVrZHPKuUZlWpdM+gDHPo=;
 b=Os0pBMxreEKRJKeGlgpOk6mhU80oeCPD0k8HXW8LyBX20WrTt35SduZm5PWEMqoFBA
 npOXb5Tno00CL6AJfoTU/RSi998rNHcBE7RfpqJTavKL8md5exUc0lzjKzoYSiU7L3m0
 5HI8rcceizbw3URhKKmIJf0UD78lRfStAqMtdu42n8HHe5bpW5juP6y6xVPgbyxtSz6m
 FJQM9Y6LUs3idH0JgKvgsrPWgyPJ2GsyBCspBMpHtGSYhmBlzEzldZ+Dttt12jVOkhSp
 H1BekTHWhYi6nRD3iK+mP7g77pAmkstaBku11eAYPjTW/jQgkPz+3Bj2C7jqvo0qfHqV
 IGjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LGHkd28MWGOCiDBxhGiWFhEVrZHPKuUZlWpdM+gDHPo=;
 b=mYcfGWXeLhnIGM68V8uFhwQpSJpZDuSYuLCmHoiFETPRl2r7P7XnO31V1YANQd6nOh
 rMms12jS3LYNJDMG7mFq2L9oogWF1StK/xcPSDkH4aOhfxlTswBzIF4f6eEA4pa22dEq
 R7nCPPjKSua2+3mWG81nWz04akTxuF+KU1+P0SCY2W42kuuRBiSPaf0EX1BH0tIe9y+M
 gUMlNY7edKL9JWEX9/k9IX1kWTU73HKAzinfBABeb3dmoZqKy4KjetvYdHOJb+Sw3ZPa
 bkYKtdi9dYadn3YsQdkiR8EoLrzcud7JNZmIJWR3wQhUrFIk0Yuy+cvnVfPRaIbApMvQ
 ZDTQ==
X-Gm-Message-State: AOAM532etAHMrUA3claOE6QJFuxOHFBJlI6k6QFAyJRw59+tvabCJt7f
 h/5qUp+QcomIehJp46anul1OSw==
X-Google-Smtp-Source: ABdhPJyZwEHu2SXccuEw6WEvLiE3Lcg/ESLqoCrtYA8Mlk35T8c5TAE3lIoE+USY+f/CdYi1k1J25g==
X-Received: by 2002:a05:6402:50:: with SMTP id
 f16mr3795604edu.346.1628587307833; 
 Tue, 10 Aug 2021 02:21:47 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id jo17sm2680366ejb.40.2021.08.10.02.21.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 02:21:47 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 12:21:39 +0300
Message-Id: <20210810092139.11700-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next] net: bridge: vlan: fix global vlan option
	range dumping
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

When global vlan options are equal sequentially we compress them in a
range to save space and reduce processing time. In order to have the
proper range end id we need to update range_end if the options are equal
otherwise we get ranges with the same end vlan id as the start.

Fixes: 743a53d9636a ("net: bridge: vlan: add support for dumping global vlan options")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_vlan.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 8cfd035bbaf9..cbc922681a76 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -2019,7 +2019,7 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 
 		if (dump_global) {
 			if (br_vlan_global_opts_can_enter_range(v, range_end))
-				continue;
+				goto update_end;
 			if (!br_vlan_global_opts_fill(skb, range_start->vid,
 						      range_end->vid,
 						      range_start)) {
@@ -2045,6 +2045,7 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 
 			range_start = v;
 		}
+update_end:
 		range_end = v;
 	}
 
-- 
2.31.1

