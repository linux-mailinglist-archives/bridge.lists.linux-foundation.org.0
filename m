Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E4746CE3D
	for <lists.bridge@lfdr.de>; Wed,  8 Dec 2021 08:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1395C40147;
	Wed,  8 Dec 2021 07:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09WocmJK5t2d; Wed,  8 Dec 2021 07:20:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9191D409EC;
	Wed,  8 Dec 2021 07:20:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 23317C006E;
	Wed,  8 Dec 2021 07:20:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3E60C0012
 for <bridge@lists.linux-foundation.org>; Wed,  8 Dec 2021 07:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC1B740147
 for <bridge@lists.linux-foundation.org>; Wed,  8 Dec 2021 07:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTrSOxy9E_4V for <bridge@lists.linux-foundation.org>;
 Wed,  8 Dec 2021 07:20:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D73B04011D
 for <bridge@lists.linux-foundation.org>; Wed,  8 Dec 2021 07:20:32 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id w1so5169629edc.6
 for <bridge@lists.linux-foundation.org>; Tue, 07 Dec 2021 23:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W9TCKJjdcDwhOK3FQzFGUkG2xpUReurMabSg9HD7/JE=;
 b=EoUEiWQ4wE3l9p2dmaEbEuNRzbe5YfmD4IH+Y76naydoZtE4CHrjKVCFuryTsZT9Gl
 KoGXFs8VDW9u7H/DHlJZwBBdUa8bQJJHneyhxnXpAvVG6feYYLuXk2GwcBMB6AoPmQTI
 LjvEvME1t8Zi7WjJjpAoq/Mx+qJVdmuJe6GQMUv3DJ/wGMHnNE7Izm37qD1lnCGDS4e/
 pXQ2so8d5UC9AhGKYYEWkCTWXYT1SnFSsjEk4vW98AeLBDYh0zQDbDknh2fP5w6eebO+
 jj3cMmwN7/KGMWtjlwKT7Z3IUoHcvWbV/UG/EABbuXN0C8EKuxBRXXBqWcxss5zSN/7y
 hmKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W9TCKJjdcDwhOK3FQzFGUkG2xpUReurMabSg9HD7/JE=;
 b=YORDbL7rFANsyInpd92YDFUMtNAhDFNMN8hvqbwt7aiXvgyLxr6IoZHA6pEFGNVY/1
 sfRS6z2j0iFuJEwSrcGEwWG01MADpPJ8wcAqP6AuN/iILHeq1oSeFX3rB2wTqbUKCZMo
 CRrjXyWNwMRdADIugZdZ5UJBFT5UxaoeemoIkWpY/oS9k45spQlDS2wOz3BwZ+LePbEV
 PIEfR98w0wthp+Aanz6l4aQYuEYqEWbj1G1NPB8tmJ4I5scGkLju5iCdlXdqCgNnRYDH
 TsdoQIs2cPHeDjdhHHmzWMNrO3Gd2+3QDclKJgecMphMCHkPBmvWLNCGTsv1LlaqHNGu
 sNfQ==
X-Gm-Message-State: AOAM532c5R5GGy2JkSzXzJ+MCokhzKv3NgmrtlEbpnc9zyAKcRtPSrBz
 eXD0xpMqSV7ME/L092DRihM=
X-Google-Smtp-Source: ABdhPJwSaxUqB0ULcm1tLk8RWeNHwf+5izxvRkppUK5/0ksnP7L0uDdiHM2oW937rINk87q9JcFkxg==
X-Received: by 2002:a05:6402:1450:: with SMTP id
 d16mr16937872edx.144.1638948031042; 
 Tue, 07 Dec 2021 23:20:31 -0800 (PST)
Received: from localhost ([81.17.18.62])
 by smtp.gmail.com with ESMTPSA id u16sm1361426edr.43.2021.12.07.23.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 23:20:30 -0800 (PST)
From: =?UTF-8?q?J=CE=B5an=20Sacren?= <sakiwit@gmail.com>
To: pablo@netfilter.org, kadlec@netfilter.org, fw@strlen.de, roopa@nvidia.com,
 nikolay@nvidia.com, davem@davemloft.net, kuba@kernel.org,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org
Date: Wed,  8 Dec 2021 00:20:21 -0700
Message-Id: <20211208024732.142541-1-sakiwit@gmail.com>
X-Mailer: git-send-email 2.32.0
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Bridge] [PATCH net-next] net: bridge: netfilter: fix code
	indentation
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

From: Jean Sacren <sakiwit@gmail.com>

Remove the extra space to the left of assignment statement.

Signed-off-by: Jean Sacren <sakiwit@gmail.com>
---
 net/bridge/netfilter/nf_conntrack_bridge.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
index fdbed3158555..4a79d25c6391 100644
--- a/net/bridge/netfilter/nf_conntrack_bridge.c
+++ b/net/bridge/netfilter/nf_conntrack_bridge.c
@@ -380,7 +380,7 @@ static unsigned int nf_ct_bridge_confirm(struct sk_buff *skb)
 		protoff = skb_network_offset(skb) + ip_hdrlen(skb);
 		break;
 	case htons(ETH_P_IPV6): {
-		 unsigned char pnum = ipv6_hdr(skb)->nexthdr;
+		unsigned char pnum = ipv6_hdr(skb)->nexthdr;
 		__be16 frag_off;
 
 		protoff = ipv6_skip_exthdr(skb, sizeof(struct ipv6hdr), &pnum,
