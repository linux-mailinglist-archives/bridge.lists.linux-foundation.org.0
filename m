Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDD04FC36A
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AE674154C;
	Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knEGVq-AuCvN; Mon, 11 Apr 2022 17:30:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B98094154E;
	Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7A239C008B;
	Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8A1C6C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48E23600B6
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nD_WLpcFyWpO for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:29:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F7DF60EFA
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:29:59 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id w18so19308982edi.13
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G4Lf3IeHTYSBP2jBlrEzBtLYrCtWftbohLvXAydSyEo=;
 b=S5NtrlUiP9am+mfWWs0tdCtoJF8LvNMfNHuBR0cH25+Xpn3ZnLgDT87648YbKHJ1/i
 0w0gru0NSrKVP38xmgX+es38tXRq1lmxRK/A7qXb9LaBBrcmt0gakCd3bfwwL1CvUUWT
 abEqtMI0job1tDc+M8I/C3ZpW8mK5ejPKawnfxxQEZwg1lmITGg16vsJGeF3JRx8W6fX
 PjQCCBVPSeTF8tmwS2uhHXNRfPOSAjlJI8F9Lh2YeKfwvFOlro59hJSoikLGiHJqaPA+
 HXfFFQPlSRLnHhEXB0856jTQwYzGKOBnCGyPGG/PLJkO9BzzsEd79CvZGhROfPjo6LIR
 Z4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G4Lf3IeHTYSBP2jBlrEzBtLYrCtWftbohLvXAydSyEo=;
 b=FIvJ1BQgfarvwGD48l78ZWLw2j+3d2hspHAyLFMSlBPN4taKiuEvLyvU/EaiwRYEIF
 XCyZYaRfORx+0ilD1mjRvgkqxjj/8SJaNHov2r+ZlcXYnvyKhiF/7wLgVt237a9DOihl
 YGGcmkiU10ghMABGD8TLmRBpqBtvOjdTjyFV6ZOQCAHSNMhDr9OcgbYUYLU4v5hjP+/I
 cfhK11VCYkpG7lRKp2e1+KncvWQdZT741M4TX2gWRR1xU1dqlUHfc/Z7U4lWxWNZxtfZ
 V4cMYtBig9dgbEumwHTe0SaetxpvWzdA5AoWPCBoDL8NP7SGTh8xrraOrFlGS+DL2t6o
 PYEQ==
X-Gm-Message-State: AOAM530uis39fBHAIhvYNPlemSPOpNHSSZqzETUnHpAMWnWmDHoGyMIj
 CKm1q047BHdvbfDp2vUEqH/Xkw==
X-Google-Smtp-Source: ABdhPJyqbmLSnA/vica9jN3RGzm1kJTGmzUhb2chcIrxH4cfEsWv5+bKSxCLe1vGXHL//QtYy97QRw==
X-Received: by 2002:a05:6402:51c6:b0:41d:196a:27a9 with SMTP id
 r6-20020a05640251c600b0041d196a27a9mr19718535edd.55.1649698197555; 
 Mon, 11 Apr 2022 10:29:57 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:29:57 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:27 +0300
Message-Id: <20220411172934.1813604-2-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 1/8] net: rtnetlink: add RTM_FLUSHNEIGH
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

Add a new rtnetlink type used to flush neigh objects. It will be
initially used to add flush with filtering support for bridge fdbs, but
it also opens the door to add similar support to others (e.g. vxlan).

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/rtnetlink.h | 3 +++
 security/selinux/nlmsgtab.c    | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 83849a37db5b..06001cfd404b 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -194,6 +194,9 @@ enum {
 	RTM_GETTUNNEL,
 #define RTM_GETTUNNEL	RTM_GETTUNNEL
 
+	RTM_FLUSHNEIGH = 124,
+#define RTM_FLUSHNEIGH	RTM_FLUSHNEIGH
+
 	__RTM_MAX,
 #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
 };
diff --git a/security/selinux/nlmsgtab.c b/security/selinux/nlmsgtab.c
index d8ceee9e0d6f..ff53aea8790f 100644
--- a/security/selinux/nlmsgtab.c
+++ b/security/selinux/nlmsgtab.c
@@ -95,6 +95,7 @@ static const struct nlmsg_perm nlmsg_route_perms[] =
 	{ RTM_NEWTUNNEL,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_DELTUNNEL,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 	{ RTM_GETTUNNEL,	NETLINK_ROUTE_SOCKET__NLMSG_READ  },
+	{ RTM_FLUSHNEIGH,	NETLINK_ROUTE_SOCKET__NLMSG_WRITE },
 };
 
 static const struct nlmsg_perm nlmsg_tcpdiag_perms[] =
@@ -180,7 +181,7 @@ int selinux_nlmsg_lookup(u16 sclass, u16 nlmsg_type, u32 *perm)
 		 * structures at the top of this file with the new mappings
 		 * before updating the BUILD_BUG_ON() macro!
 		 */
-		BUILD_BUG_ON(RTM_MAX != (RTM_NEWTUNNEL + 3));
+		BUILD_BUG_ON(RTM_MAX != (RTM_FLUSHNEIGH + 3));
 		err = nlmsg_perm(nlmsg_type, perm, nlmsg_route_perms,
 				 sizeof(nlmsg_route_perms));
 		break;
-- 
2.35.1

