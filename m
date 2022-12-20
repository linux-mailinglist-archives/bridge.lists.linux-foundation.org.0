Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 889F2653E11
	for <lists.bridge@lfdr.de>; Thu, 22 Dec 2022 11:12:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C847A82073;
	Thu, 22 Dec 2022 10:12:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C847A82073
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=purestorage.com header.i=@purestorage.com header.a=rsa-sha256 header.s=google2022 header.b=eduU04r8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MbNrBzKyYSd6; Thu, 22 Dec 2022 10:12:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 58F2A82080;
	Thu, 22 Dec 2022 10:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58F2A82080
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51EFDC007C;
	Thu, 22 Dec 2022 10:12:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C448C0070
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 02:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D80314011C
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 02:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D80314011C
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=eduU04r8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5rp1GPjNngu for <bridge@lists.linux-foundation.org>;
 Tue, 20 Dec 2022 02:48:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 043ED400EF
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 043ED400EF
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 02:48:58 +0000 (UTC)
Received: by mail-il1-x12e.google.com with SMTP id o8so4387893ilq.6
 for <bridge@lists.linux-foundation.org>; Mon, 19 Dec 2022 18:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=frWLw2ZkVObcc07j9dtQMFLxjnvLrXU3PwzZGX4Mo7w=;
 b=eduU04r8hf3vvnHc0OMdNDtR057TK+Snzk8vQVcuXrsnOT88upRHhU9h+0XUMlna8a
 gUf4xd7jISw24azRqDOgbn3C38HFfLvqW/W+MqKYRsbWzlfhFY4LCwsuWU86Ek02VpmP
 lQCTtUQ128C8+W5PdwtcECwTcDBM42bnqb0RiKyV1qCgx6e7AMbgFw1RfGTtyWU7sTmD
 ZCmhq6FggXO8KcVAt4QeON0+KXKfFCn2lVsKbntLz3MyFlb7UI1zCEMvzEagSmAV2x3o
 x6UpeRgDSrU+4hJDnqANPAkpLGMoPKl0tNYn/TKlaS7lOG+0gxMpXZDY8S+iY7ujStgZ
 fU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=frWLw2ZkVObcc07j9dtQMFLxjnvLrXU3PwzZGX4Mo7w=;
 b=pDJ0QDfHE1jfsLHz+mZei1GbVGYAxAK5xjOIprQoUJ25nJY+ppTGvRzQe12D0qM30f
 a2V/x4w7XteyXAqFBhzzYOYPp2byJ3hbOV1Esw7tkiI79F4HROdPlkjxBnDKS5E1f3X9
 6r9Ws5V3lfG0sW5Q0RCACZZuKhqMCF8F1hw1uNy5adPN9jlUpqq4joWEktPn0hVvyGIf
 wcH2BpvnaHf3lxxpAliNAdl4CU0ZVnk1Prtt6kw+03bRPcQWFFT5POxMuqJ6v0r8DxmG
 OGpuVe/iEu32PFJdV3mtjCJQxaLyJ7f9o0qsLulrXknBkmG9X84K8qjQQNNieyN9dQ6X
 821w==
X-Gm-Message-State: ANoB5pkOkBWnRNYzvD/aPY8VSCAJWYlA1vrsmwaBIqN1myEstP8qSjBy
 uWrt5yDWv16dg0GGGRqFMFOH0kyAPe7E0NfRj/pVupbog+MgRPMKA7H9LXiSDPHcoaZPnb1Larg
 Ebck/Py7fGz1+TzN2bTTe+QmcqPpub9xOY7oPw3Xl11AfhGQXQ9nXEQBi2MLnv9R+aCRgNXX1ca
 fCNk0pRv1x9Tmr
X-Google-Smtp-Source: AA0mqf7BWvvYPtstOR7XHomWWQoZlWrLYrQ2ES1K/rZlfQTN2lBkBV1cd6n+hJYADCwJYr1fNSjZeQ==
X-Received: by 2002:a92:cac9:0:b0:302:bd25:c1a3 with SMTP id
 m9-20020a92cac9000000b00302bd25c1a3mr18694114ilq.21.1671504537395; 
 Mon, 19 Dec 2022 18:48:57 -0800 (PST)
Received: from dev-jgu.dev.purestorage.com ([208.88.159.128])
 by smtp.googlemail.com with ESMTPSA id
 l17-20020a92d951000000b00305e3da5f7dsm3427582ilq.85.2022.12.19.18.48.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Dec 2022 18:48:56 -0800 (PST)
To: bridge@lists.linux-foundation.org
Date: Mon, 19 Dec 2022 18:48:07 -0800
Message-Id: <20221220024807.36502-1-jgu@purestorage.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 22 Dec 2022 10:12:40 +0000
Cc: Joy Gu <jgu@purestorage.com>, netdev@vger.kernel.org, razor@blackwall.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net, joern@purestorage.com
Subject: [Bridge] [PATCH] net: bridge: mcast: read ngrec once in igmp3/mld2
	report
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
From: Joy Gu via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Joy Gu <jgu@purestorage.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

In br_ip4_multicast_igmp3_report() and br_ip6_multicast_mld2_report(),
"ih" or "mld2r" is a pointer into the skb header. It's dereferenced to
get "num", which is used in the for-loop condition that follows.

Compilers are free to not spend a register on "num" and dereference that
pointer every time "num" would be used, i.e. every loop iteration. Which
would be a bug if pskb_may_pull() (called by ip_mc_may_pull() or
ipv6_mc_may_pull() in the loop body) were to change pointers pointing
into the skb header, e.g. by freeing "skb->head".

We can avoid this by using READ_ONCE().

Suggested-by: Joern Engel <joern@purestorage.com>
Signed-off-by: Joy Gu <jgu@purestorage.com>
---
 net/bridge/br_multicast.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 48170bd3785e..2ac4b099e00d 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2624,11 +2624,11 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge_mcast *brmctx,
 	bool changed = false;
 	int err = 0;
 	u16 nsrcs;
 
 	ih = igmpv3_report_hdr(skb);
-	num = ntohs(ih->ngrec);
+	num = ntohs(READ_ONCE(ih->ngrec));
 	len = skb_transport_offset(skb) + sizeof(*ih);
 
 	for (i = 0; i < num; i++) {
 		len += sizeof(*grec);
 		if (!ip_mc_may_pull(skb, len))
@@ -2750,11 +2750,11 @@ static int br_ip6_multicast_mld2_report(struct net_bridge_mcast *brmctx,
 
 	if (!ipv6_mc_may_pull(skb, sizeof(*mld2r)))
 		return -EINVAL;
 
 	mld2r = (struct mld2_report *)icmp6_hdr(skb);
-	num = ntohs(mld2r->mld2r_ngrec);
+	num = ntohs(READ_ONCE(mld2r->mld2r_ngrec));
 	len = skb_transport_offset(skb) + sizeof(*mld2r);
 
 	for (i = 0; i < num; i++) {
 		__be16 *_nsrcs, __nsrcs;
 		u16 nsrcs;
-- 
2.39.0

