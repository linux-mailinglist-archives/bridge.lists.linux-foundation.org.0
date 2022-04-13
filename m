Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0874FF52C
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4473C82D49;
	Wed, 13 Apr 2022 10:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wo3cubylJXnc; Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DD24C82D04;
	Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95279C0088;
	Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DF839C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCE3960BC8
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjJHyZgfK1vf for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1191060A87
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:24 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id ks6so3150400ejb.1
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BbnHd4o5vqqdVnPqrILq5Jq5sTNcgygmX2gIAOpm4mw=;
 b=q3Rk/2KB7HFk7J7NZDNTLPkXze8TdzSBWoDcZfcs8MVwnGlLHHKepzt+ioTyPh9U5K
 e6UiYrM/hkvDQyjqwUoqegngxb7Sp1GMfJ9L6kNFzRamoetEIZ57i41+2CWhdx/omzrr
 5JoZzAzynleDl1MKk9KGO/pFfGIExlENek3seJD6BwB35giZPiEfvRkQcfkPKm/4SKfC
 c8Fb4fah5m4Y1idIi7UShlRDBgRCH89U6XkycmNr9cPt1RbiMJlW1QU3a57+IjoZn+pf
 +9ibxwmRLBKEMd8N94SyTsia7FOX5Cel1IiDLhw0fq6ks3pq7n1aeyPSh5Xa10rPchk0
 OrxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BbnHd4o5vqqdVnPqrILq5Jq5sTNcgygmX2gIAOpm4mw=;
 b=JI59f3ZVq3yPRZuOerrIVO0ssvTDMQPbHMOUxLr7DGZyyFP6l8LeYhcq5KHdjHPKgy
 s12i/LcKGrh/Lzq2ZbPo6judnXJ2C10o4V5WCB0lDStxd+ODSrsF640xVWYCPkmpT2uG
 4Jn9y44+hS78vZoJy42rtvnH5jUfoLLZDSbE5CsxUvDsMw/L1i83plDlId4+zyRyhy+L
 +AqQMKV6oUc+2p3uc/5amP8QwA55gnYqHEU31W81Uw/+BHgCz3Pw/31WOKKuBKmjvw3U
 WUVXIxFUViWyTzG78nBDCKkbP7m3xpaf3mq5CSweP9o+JxfGeiwg+oCQABIavYW3YUnX
 y7Ww==
X-Gm-Message-State: AOAM5313bHxepp4S4Y7eVveWU0169VGdtCi8MvTy9r+TqX9Az+Ixb8wL
 jt89BX60fhH4UXy1z6l+7wVTLQ==
X-Google-Smtp-Source: ABdhPJxAvtCcmeSBhisp1pbrVEqL//uk/agEXWAWo/IQOQjQ1T+jZW3uMWT3L9D0+ZjwXmfhmZ152A==
X-Received: by 2002:a17:907:7b92:b0:6db:71f1:fc20 with SMTP id
 ne18-20020a1709077b9200b006db71f1fc20mr37128934ejc.343.1649847143262; 
 Wed, 13 Apr 2022 03:52:23 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:22 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:52 +0300
Message-Id: <20220413105202.2616106-3-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 02/12] net: rtnetlink: add helper to
	extract msg type's kind
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

Add a helper which extracts the msg type's kind using the kind mask (0x3).

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v4: new patch

 include/net/rtnetlink.h | 6 ++++++
 net/core/rtnetlink.c    | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index 78712b51f3da..c51c5ff7f7e2 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -19,6 +19,12 @@ enum rtnl_kinds {
 	RTNL_KIND_GET,
 	RTNL_KIND_SET
 };
+#define RTNL_KIND_MASK 0x3
+
+static inline enum rtnl_kinds rtnl_msgtype_kind(int msgtype)
+{
+	return msgtype & RTNL_KIND_MASK;
+}
 
 void rtnl_register(int protocol, int msgtype,
 		   rtnl_doit_func, rtnl_dumpit_func, unsigned int flags);
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 2c36c9dc9b62..beda4a7da062 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -5947,7 +5947,7 @@ static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return 0;
 
 	family = ((struct rtgenmsg *)nlmsg_data(nlh))->rtgen_family;
-	kind = type&3;
+	kind = rtnl_msgtype_kind(type);
 
 	if (kind != RTNL_KIND_GET && !netlink_net_capable(skb, CAP_NET_ADMIN))
 		return -EPERM;
-- 
2.35.1

