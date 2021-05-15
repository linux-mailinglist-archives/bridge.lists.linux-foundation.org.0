Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC10382628
	for <lists.bridge@lfdr.de>; Mon, 17 May 2021 10:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39ACE839A4;
	Mon, 17 May 2021 08:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Opg0u_QuLjR; Mon, 17 May 2021 08:02:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E58383A8C;
	Mon, 17 May 2021 08:02:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5779DC001C;
	Mon, 17 May 2021 08:02:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36263C0001
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 20:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1036C83C1D
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 20:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IOK6ERP2Mzan for <bridge@lists.linux-foundation.org>;
 Sat, 15 May 2021 20:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47EAC83C14
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 20:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621111136;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=RjAWv7j/zHfhk0YuuOMHIejR7YmGA5R8BOsaPxYr0kQ=;
 b=iC4MK9UWM+xdb0TPBGyvYy/9wSSexD1CNPRg5/tRO9tya6zISQNMZiC99pz7HKOSE/mvSe
 sxJtBNzlSH+y9Dps9vel3HW+fIL9GV1qGHtv/bWO4FcU+5Zw3A08CvQcGS78HO0JwfBS5s
 e3CLl8Vlz+eJRRraNt2Oxw/J9MgITJY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-3xYeAHHwO9-Ul5DCoLk7wQ-1; Sat, 15 May 2021 16:38:54 -0400
X-MC-Unique: 3xYeAHHwO9-Ul5DCoLk7wQ-1
Received: by mail-qk1-f197.google.com with SMTP id
 s4-20020a3790040000b02902fa7aa987e8so1860419qkd.14
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 13:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RjAWv7j/zHfhk0YuuOMHIejR7YmGA5R8BOsaPxYr0kQ=;
 b=mGFz5h5iIxjXllMiYIzfLAXtz6b0urgrVqzQsZDvE/4WAd2vbQ4ZuLhavV2e117fwy
 PBw78Z430uOYhvsF1Gu24jD+94/MNBytVsYrpOTUw8WOxRHlMSshbJPUlv2+oTk1Yk2G
 BKhWABUoq89oS1Ww2MNkffHjfUxQfAcD2xbsLydJVA3lDWhkzDnLEBwf43wCpd7tVmg7
 GmFH0IQ0SdF6VfuykuFNmOmBuwJIHKUyXJnTgXzqLBL4rYoZD09ewh86N2/tZoCaqksD
 EhrLX5+omfxKMsIAmOTHBM37oOCYgkQRzK0HthvPZm1KARJQ+VzQBiV++aYarrbcfjjY
 WdwQ==
X-Gm-Message-State: AOAM5310F5ycTqOH3QvFSiwyhcZc8CnFCKPASDEr0Tl5zHn2lWclqsgf
 rVGJ6sjbD0eFXRKeBNLq61eZK8aMJzzQXYp+O+FVco8Wf2IEeon2Jx/BNLa/HyXkoyVkpRQPK44
 PVIiMCrai0eIqw17yeJTZ5cSLdjp0GnA=
X-Received: by 2002:a37:ac7:: with SMTP id 190mr48255960qkk.452.1621111134141; 
 Sat, 15 May 2021 13:38:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDfCuUeK5i/u8HhHnT8Ny2Fxo8BN52QD/hnQkLJapiZWuY6Bw27qHDHt1LbNXH7Dm/5CMhFg==
X-Received: by 2002:a37:ac7:: with SMTP id 190mr48255944qkk.452.1621111133948; 
 Sat, 15 May 2021 13:38:53 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id u27sm7379685qku.33.2021.05.15.13.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 May 2021 13:38:53 -0700 (PDT)
From: trix@redhat.com
To: roopa@nvidia.com, nikolay@nvidia.com, davem@davemloft.net, kuba@kernel.org
Date: Sat, 15 May 2021 13:38:49 -0700
Message-Id: <20210515203849.1756371-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 17 May 2021 08:02:18 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
Subject: [Bridge] [PATCH] net: bridge: fix signature of stub
	br_multicast_is_router
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

From: Tom Rix <trix@redhat.com>

Building with CONFIG_IPV6 off causes this build error

br_input.c:135:8: error: too many arguments to function
  ‘br_multicast_is_router’
        br_multicast_is_router(br, skb)) {
        ^~~~~~~~~~~~~~~~~~~~~~
In file included from net/bridge/br_input.c:23:
net/bridge/br_private.h:1059:20: note: declared here
 static inline bool br_multicast_is_router(struct net_bridge *br)
                    ^~~~~~~~~~~~~~~~~~~~~~

Comparing the stub with the real function shows the stub needs
another parameter.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 net/bridge/br_private.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index f9a381fcff094..9fd54626ca809 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1056,7 +1056,7 @@ static inline void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 {
 }
 
-static inline bool br_multicast_is_router(struct net_bridge *br)
+static inline bool br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
 {
 	return false;
 }
-- 
2.26.3

