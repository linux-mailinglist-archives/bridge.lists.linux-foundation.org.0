Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DD62F5B8B
	for <lists.bridge@lfdr.de>; Thu, 14 Jan 2021 08:51:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5681D86A73;
	Thu, 14 Jan 2021 07:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wlLnOH5CmdU; Thu, 14 Jan 2021 07:51:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3F3586A63;
	Thu, 14 Jan 2021 07:51:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97092C013A;
	Thu, 14 Jan 2021 07:51:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F23FC013A
 for <bridge@lists.linux-foundation.org>; Thu, 14 Jan 2021 07:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 752C186229
 for <bridge@lists.linux-foundation.org>; Thu, 14 Jan 2021 07:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbjexo1PAgl1 for <bridge@lists.linux-foundation.org>;
 Thu, 14 Jan 2021 07:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D212686190
 for <bridge@lists.linux-foundation.org>; Thu, 14 Jan 2021 07:51:14 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z21so3226458pgj.4
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 23:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OdOYvLKaoSgVaZejaz21ew2EF1idBOpu4EgqrpcWnb4=;
 b=HhFwKGeoVFs0hdiatK077VZ4s6B/4MfW+deARy0QD5c0MMKl0X5NPTMoCcLxWesLJC
 I82426ijG3cvoS8mdIRVftoXwhuY3Y8KXn/RyuJwbDxoPEPJUrIuWClOqR5UbdRBAsh8
 qEJb/5kRlgSwWvXrb2dxwBDUrWwvv1zsKaXhZMMiCMhnJAwdAbOCiWELAwwhMCixvmf0
 aEe9IazlXyWoyDnTEAs9Wu0Cj9lPhhLG3dhJYDMjN73AmFDc07y9JtgkiL2CxGV3Q3Or
 W3AxWOJISUIpirdvnk1uzrWMGsNybumRuJekmfPoqe2a1dwIoGZ58tiTYaTivfLL4wd4
 ZQpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OdOYvLKaoSgVaZejaz21ew2EF1idBOpu4EgqrpcWnb4=;
 b=HniJbBb7v0mW/OVSp9uR8uwIl8DMY1KiaXBln5dyEdbSYQ3cWvjMjtjmHwQX3asmQY
 GWTy8ZugpTbAJJV57DW+AJwzAd/DrZIzLEn78q+3jUP6KNT6jPPYFGn2+v61pMsSFdhZ
 ejMjaWmdKVO7tjGPw9dMpe91aBNE64PneINDNJqvRuhO0xstkI7VE8QCAMAiOpu1+hbH
 38oXLdEtvFf2CvPtK5ilvSisA+RZyKoQ+eDlx3HnbNLD7b1MwnvSbiqKHJBuscKRgOD5
 PiPm9pCUUcuCt7xRK3lXtAVsX08zxZASAD1fg3Pgg0LH+ev41kqIbmtm7jXT2Vye/U4s
 zkXQ==
X-Gm-Message-State: AOAM533pnPHTNwrjpAmdJLJwpZDj16gn7x9G6oi7OG7Ikd3qA4GB474B
 r8bawIesK08c6oCGHiUyk44=
X-Google-Smtp-Source: ABdhPJwhk4WiAxKANeqB8opOzwRSzVUBxjOzi0j9376A1upXh4ljMis4eZ81VDG064gXEq1FIkUrPw==
X-Received: by 2002:aa7:8708:0:b029:19e:924:345a with SMTP id
 b8-20020aa787080000b029019e0924345amr6328401pfo.54.1610610674530; 
 Wed, 13 Jan 2021 23:51:14 -0800 (PST)
Received: from localhost.localdomain ([178.236.46.205])
 by smtp.gmail.com with ESMTPSA id p8sm4580160pjo.21.2021.01.13.23.51.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Jan 2021 23:51:13 -0800 (PST)
From: menglong8.dong@gmail.com
X-Google-Original-From: dong.menglong@zte.com.cn
To: kuba@kernel.org
Date: Wed, 13 Jan 2021 23:51:01 -0800
Message-Id: <20210114075101.6501-1-dong.menglong@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next] net: bridge: use eth_type_vlan in
	br_dev_queue_push_xmit
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

Replace the check for ETH_P_8021Q and ETH_P_8021AD in
br_dev_queue_push_xmit with eth_type_vlan.

Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
---
 net/bridge/br_forward.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index e28ffadd1371..6e9b049ae521 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -39,8 +39,7 @@ int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb
 	br_drop_fake_rtable(skb);
 
 	if (skb->ip_summed == CHECKSUM_PARTIAL &&
-	    (skb->protocol == htons(ETH_P_8021Q) ||
-	     skb->protocol == htons(ETH_P_8021AD))) {
+	    eth_type_vlan(skb->protocol)) {
 		int depth;
 
 		if (!__vlan_get_protocol(skb, skb->protocol, &depth))
-- 
2.25.1

