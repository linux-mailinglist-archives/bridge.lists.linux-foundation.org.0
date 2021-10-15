Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3120542ED20
	for <lists.bridge@lfdr.de>; Fri, 15 Oct 2021 11:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73DB783ACF;
	Fri, 15 Oct 2021 09:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PiTnCINnpBJ6; Fri, 15 Oct 2021 09:06:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 16D0483AC9;
	Fri, 15 Oct 2021 09:06:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B5638C0022;
	Fri, 15 Oct 2021 09:06:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 485EBC000D
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 09:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BF0F403FF
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 09:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eShMmo7tOcMK for <bridge@lists.linux-foundation.org>;
 Fri, 15 Oct 2021 09:06:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B2EA403FE
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 09:06:49 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id g10so35444123edj.1
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kAZh9fqmHigo6xRDqgFos5JwAKHqDbj5bkhVwftM1Ys=;
 b=KrAgOqV1v2KxOuW7pkfy/lKylkCadAUoPsHrJ7bpEFwfLuP2zvalxzqIFo4jfEfjc5
 iBdWZ+bk8TJhhjQqzl5lUgOwloB6XEqqxkJ6FVzvCixT1SLpn/CO0t0IBSYWT6FOhaMv
 /gKEplLZbjCdiUi2TusREYcGOkzdYQts62fGIPetDmKc0djiKFRSj95jwnUZLEMabZHO
 OdzuSOb4svHB018Ff/nQjlhq/Cc/xFw1b1p8qF8OJO6aTJY9z4faJRPBsrre/Hb8W2vI
 jVFmX8D4M7htPSCERrDiepcLTAYmSgdiLjV4EcOeRyfyTQ1q6GIZ3IDQGFsLZ1KbE3Ra
 xmyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kAZh9fqmHigo6xRDqgFos5JwAKHqDbj5bkhVwftM1Ys=;
 b=TcZCjCrevQikH+3D54LCZc0rbeybY7xi0sfwfzKTVwZwngAtgcjm1G41XCBMu9lMyE
 x7/iQTBmzCzJFTCE4UfDsG0nXI93+IN3HTE/QT2XRTLfETpnc79cc2gkXLpTY6HFr5Fu
 0o0uPtHZVkW4ISbXoqgczQFpl9S3v0372goIshm5zUC2ljpXMCq3rf+/eMeBiAfsUvyL
 MW+rQxewGosXt90zWzEs4gnN78hjeA8ponF12PBEb0BHGuJc09ps7j7wHzDidl1z3DAf
 7UKUepCUFEl1ALaJ1f3bzu+32jCCfSc9MRcXivsPh9yjDUDKemapfWHTxFu3BN/STKpp
 X3Hw==
X-Gm-Message-State: AOAM531lIApgxRUKvqBmZPvxCITIVrLYnKdrqmw7HauZwDVWlmmZrVoq
 1DPHuhRrmrBpVAY2n6dPJcDoUg==
X-Google-Smtp-Source: ABdhPJwwzKlulbjNPJ9dhS1QtKNP/+rvGHzF6kJnLiZ/Ig2orOOXOYfLlqUjw0qeA96Ch3kZF6e4aw==
X-Received: by 2002:a17:906:a1c1:: with SMTP id
 bx1mr5230787ejb.447.1634288807299; 
 Fri, 15 Oct 2021 02:06:47 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id v13sm4695034edl.69.2021.10.15.02.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 02:06:46 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 15 Oct 2021 12:05:46 +0300
Message-Id: <20211015090546.19967-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <357fad9e-581e-7b71-9b32-aac77d5d13c1@nvidia.com>
References: <357fad9e-581e-7b71-9b32-aac77d5d13c1@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Hangbin Liu <liuhangbin@gmail.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: mcast: use
	multicast_membership_interval for IGMPv3
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

When I added IGMPv3 support I decided to follow the RFC for computing
the GMI dynamically:
" 8.4. Group Membership Interval

   The Group Membership Interval is the amount of time that must pass
   before a multicast router decides there are no more members of a
   group or a particular source on a network.

   This value MUST be ((the Robustness Variable) times (the Query
   Interval)) plus (one Query Response Interval)."

But that actually is inconsistent with how the bridge used to compute it
for IGMPv2, where it was user-configurable that has a correct default value
but it is up to user-space to maintain it. This would make it consistent
with the other timer values which are also maintained correct by the user
instead of being dynamically computed. It also changes back to the previous
user-expected GMI behaviour for IGMPv3 queries which were supported before
IGMPv3 was added. Note that to properly compute it dynamically we would
need to add support for "Robustness Variable" which is currently missing.

Reported-by: Hangbin Liu <liuhangbin@gmail.com>
Fixes: 0436862e417e ("net: bridge: mcast: support for IGMPv3/MLDv2 ALLOW_NEW_SOURCES report")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_private.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index b4cef3a97f12..5c68052466a0 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1125,9 +1125,7 @@ static inline unsigned long br_multicast_lmqt(const struct net_bridge_mcast *brm
 
 static inline unsigned long br_multicast_gmi(const struct net_bridge_mcast *brmctx)
 {
-	/* use the RFC default of 2 for QRV */
-	return 2 * brmctx->multicast_query_interval +
-	       brmctx->multicast_query_response_interval;
+	return brmctx->multicast_membership_interval;
 }
 
 static inline bool
-- 
2.31.1

