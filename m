Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B5639D725
	for <lists.bridge@lfdr.de>; Mon,  7 Jun 2021 10:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C004A83118;
	Mon,  7 Jun 2021 08:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qSBnBiIcMoF; Mon,  7 Jun 2021 08:20:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id C85B683216;
	Mon,  7 Jun 2021 08:20:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 78419C001C;
	Mon,  7 Jun 2021 08:20:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2EE9C0001
 for <bridge@lists.linux-foundation.org>; Tue, 25 May 2021 04:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B06BC404CD
 for <bridge@lists.linux-foundation.org>; Tue, 25 May 2021 04:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHHG2d5Y6jXH for <bridge@lists.linux-foundation.org>;
 Tue, 25 May 2021 04:06:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com
 [IPv6:2607:f8b0:4864:20::92e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D415E404AC
 for <bridge@lists.linux-foundation.org>; Tue, 25 May 2021 04:06:01 +0000 (UTC)
Received: by mail-ua1-x92e.google.com with SMTP id z14so8954878uan.7
 for <bridge@lists.linux-foundation.org>; Mon, 24 May 2021 21:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=ZiDan9dXVGzljGcSZKPfVX7WRo0V+2AqnJOcfMOnQww=;
 b=D5n2ETATta69U/pKGykggX+cHanHnfSc4MGuc/zzkdsYy0gS2VnxMtN1jTzfC2Xi9b
 EFP4ml6Jn6LiTajZfcR07sevsMrBTcEdKnczR4wW6T9uNy4GGV+jXmwPjOsUNMsKTl26
 WoHtHm8NzgE2hQSefNie/YnfJV49fsXeFOa/mDJ/rX9CS9jEtGJ/BYfkB09Ae0brt83G
 fRFx+tLyEs/6NwTZoVm0mgEeW9QGfz9gt+qId6FIpNpqho98MZxeXNSWRir3f9qQjhE0
 0KYaqCSpp6uJsAAsFiMBCQdww+sjp+3/mm9suTWZViFs2SaOTZWotbks4mUavRRhimFS
 dMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ZiDan9dXVGzljGcSZKPfVX7WRo0V+2AqnJOcfMOnQww=;
 b=OI41AZSqjRE59rLNUkOGlAwSssRcTL7StgEOIAGWT//R3uUcUtX4Tqmer366hgTsZv
 dCiQ2OkuUTpQTWFi3kNt6FdE8W8DV433x9OKnJlIkNm90UTRFIsZWTDlW07F+FkVZ9Dd
 XtxKdPmFt92RYwYLiDNbss1rGKFsKWA0HLtssPPB6I2CczYIziCm7iFNJ2PUQpX0pDVs
 Yk0DnOCHl9XamB8cd0hbYsTh9eEHDHAnVEvvmc0HUF5NxKo9pmIx1oDhwvgJv1F0nbtd
 gM9UpuJeT6PbulACrBxHu0pTwy317q1KZffuGL60LB94uu8BrUVRNmVZs3HcTjOlE8e6
 8o1g==
X-Gm-Message-State: AOAM530NPo5gHXwuIURIxOPu77FuNGDJBztArt48i2YLpNDHlPTonkX8
 ffkBz4a0pZSgCevcyhqM7c4=
X-Google-Smtp-Source: ABdhPJwFqkNf60V+7GW8tjF1W7eozuZ4lQ0psHNdtj6/sAvFyNl0pQUyYOdFzN7XhjNyoab/aIv01w==
X-Received: by 2002:ab0:4385:: with SMTP id l5mr24758938ual.76.1621915560802; 
 Mon, 24 May 2021 21:06:00 -0700 (PDT)
Received: from fedora ([187.252.202.191])
 by smtp.gmail.com with ESMTPSA id 34sm1336421vkn.53.2021.05.24.21.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 21:06:00 -0700 (PDT)
Date: Mon, 24 May 2021 23:05:58 -0500
From: Nigel Christian <nigel.l.christian@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <YKx3ptXPNbd3Bdiq@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 07 Jun 2021 08:20:57 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 kernel-janitors@vger.kernel.org
Subject: [Bridge] [PATCH] net: bridge: remove redundant assignment
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

The variable br is assigned a value that is not being read after
exiting case IFLA_STATS_LINK_XSTATS_SLAVE. The assignment is
redundant and can be removed.

Addresses-Coverity ("Unused value")
Signed-off-by: Nigel Christian <nigel.l.christian@gmail.com>
---
 net/bridge/br_netlink.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index e4e6e991313e..8642e56059fb 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1644,7 +1644,6 @@ static size_t br_get_linkxstats_size(const struct net_device *dev, int attr)
 		p = br_port_get_rtnl(dev);
 		if (!p)
 			return 0;
-		br = p->br;
 		vg = nbp_vlan_group(p);
 		break;
 	default:
-- 
2.31.1

