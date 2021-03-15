Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0969333C3E2
	for <lists.bridge@lfdr.de>; Mon, 15 Mar 2021 18:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C69F4AAEE;
	Mon, 15 Mar 2021 17:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6kfJ2kRkO99i; Mon, 15 Mar 2021 17:15:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id E05164B08F;
	Mon, 15 Mar 2021 17:15:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 962E3C0012;
	Mon, 15 Mar 2021 17:15:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DA680C0001
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8CA3430B9
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pC4dbsxqwTrr for <bridge@lists.linux-foundation.org>;
 Mon, 15 Mar 2021 17:15:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E11E04308C
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:34 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id p8so67544639ejb.10
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 10:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1RURcpmMch727Ry8e1e4rE7LPwmwCCm3CKQbXHTVP1k=;
 b=VjaRKYrlU6zrK4i5Dbl2mp11CL4okopm1GnZdyIJPuqiQoK/zuwrDKG6RGT7Ebx9k/
 j3yGlADue1PlYQ8x2ktROsbItQVr/mvzwaHP1oTK4pCiPWmGVD8n6tQb8FieUxwim3wO
 5CO2+rbqDjn8jTgTV8V/S4bGDN4QRWw5wfw8BkW28E4uMu6GnpuWF1dFnoKOR+ZmdoFt
 3ljn5xKw8RMOTANCOA33zD410Jr8TEXekSsReLhFyZwIN2T4En4qJeYqNLLFeBkS3kic
 12cf/JjXcGm1rwa8i3rgO9X4uUIqfRDALgr8c2nEWvA5tJvKsc79E6zDpAylSUtZsWFF
 19/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1RURcpmMch727Ry8e1e4rE7LPwmwCCm3CKQbXHTVP1k=;
 b=Pq5zO7JLH1rZsDHiq0zeqsMd2B2MNlBPLSDXtgu8HtyH6+RFE2/Ec+mlYeY6RwGHao
 mXgkUl4X8ttvEEHq+FQapt/7PKPrjH9tRsImQ7z7z7efqJuMoBBzsQXLkBzYxZAa4FlA
 19zOwjHu8/48MvuCIdJ9SBZ3KQDk2CAuyKg8qQf+5NZ1VGS7zIXUy52iE/7K49ek5s6f
 3afHexTZeXnbd2BVxcKah8TgoFub7pnNLlfkqd4J0F31AJvAaSLfVx8y6rhEPrULe6t0
 8YUok8pQm6mfDe2gcPcROofyYAZp6aAAPwytFtbKfZ21A0+mecCro3f0FdZWfPhYLCgp
 RHdg==
X-Gm-Message-State: AOAM532LucywT867hud1eigZp5Vw9BYO4QrMui4Bl3Sz9R31l/CjSxXM
 FSvCxsXttm6IUjVg7ah7NBANFQ==
X-Google-Smtp-Source: ABdhPJwU6dDLJtr1QOOmvDAvd4hI/729yXU/bkc+q9aw5GPP7c0bwtG+Dw+bHCRsQbqSJLqysCAJVw==
X-Received: by 2002:a17:906:719b:: with SMTP id
 h27mr24462560ejk.123.1615828533283; 
 Mon, 15 Mar 2021 10:15:33 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b12sm8297369eds.94.2021.03.15.10.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:15:32 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 15 Mar 2021 19:13:40 +0200
Message-Id: <20210315171342.232809-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 0/2] net: bridge: mcast: simplify
	allow/block EHT code
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

Hi,
The set does two minor cleanups of the EHT allow/block handling code:
patch 01 removes code which is unreachable (it was used in initial EHT
versions, but isn't anymore) and prepares the allow/block functions to be
factored out. Patch 02 factors out common allow/block handling code.
There are no functional changes.

v2: send patch 02 and the proper version of both patches

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: mcast: remove unreachable EHT code
  net: bridge: mcast: factor out common allow/block EHT handling

 net/bridge/br_multicast_eht.c | 141 +++++++++-------------------------
 1 file changed, 35 insertions(+), 106 deletions(-)

-- 
2.29.2

