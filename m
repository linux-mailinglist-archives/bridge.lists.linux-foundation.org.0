Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6BF4E3F8D
	for <lists.bridge@lfdr.de>; Tue, 22 Mar 2022 14:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ABD340AFF;
	Tue, 22 Mar 2022 13:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YT5ZLH-4u6DM; Tue, 22 Mar 2022 13:30:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 78CC140AF9;
	Tue, 22 Mar 2022 13:30:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3215FC0082;
	Tue, 22 Mar 2022 13:30:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42C76C000B
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 13:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2387A60D6D
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 13:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cq3NeGuQIHX7 for <bridge@lists.linux-foundation.org>;
 Tue, 22 Mar 2022 13:30:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDA3B60D52
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 13:30:20 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id r22so23956208ljd.4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 06:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=9HKooFSzF8EEsT2BEZgeunYRwvAjSyxG2IXK+iRrPEs=;
 b=29htvhMmpTh4PKGEPvfVlPAUZrleKez8uBO1KBF0exKnC1WyZp6jRTQwDHy/q9a/if
 R4OwsReo7NGIThGIV7Cil5RrsIpD6Gq6vC1sQxSVfEfj+mIzlK0nKfNpZ9QbNiwlgS8C
 IAU6K1e3RWdb5GSt7vgRoCkvtWl8/5rV2tcGNYmKwgvSq1+bnrrTogQhTcAQrJIYuQV4
 c2i+5SZEbLgLKdrjjNhmiO9KDuvbzRn9mfT3oshKO442uXOdu1FxRcxyAka7Iz174Xak
 A40spqBYtTqd5MC1/e/YiixXhFlC5r4oiPSg7YS+KHOQSiu7YXIEt7T90404opxzbomi
 bUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=9HKooFSzF8EEsT2BEZgeunYRwvAjSyxG2IXK+iRrPEs=;
 b=gtmgsyhD000peOtlEYsDRMJ82QcU85t1tv38B4sWiOcI1/y8zUHaGoK66+nh4DujP5
 icwc+OztCLEzgQJtWSN9rSuIbHPQz9QQucpZ4Qdwj8wyjw9NsoyymjMOBQmvi8Kd38qv
 MBjQIaAu06kUDk/IjQeuqls6U8Z0DYGdjK+YFkQa0ws0VJ1xZZbdX2L7u3nfUOJrWG6f
 e0nYY1cWxjRvpdXF9ZKXbVQOyGx9JgMrnlbGF9w6PocXbigQkIB8tWudlLmdQD41X/wg
 LdXt2AtDLcG1nAlyg7POdb6X4HItK2xccM4E5yEEwYhCiKLu1PWqMuxwrFTdJ3gUC/WN
 ZHag==
X-Gm-Message-State: AOAM533e43DbNa6pN0ulXocOA4ShDGX2a8wLqmAZ66I3Y1jXANhCm1oi
 vl1PeurydmsFy1DxAvipnB4RcQ==
X-Google-Smtp-Source: ABdhPJxkwrq7ZJvbNzKo/Kac7gQ286RAOZTZyDPHLItZIJZkOra75RUq9+xsw1H+JJrRwUndrhihDg==
X-Received: by 2002:a2e:a4d1:0:b0:249:8c9c:5ae0 with SMTP id
 p17-20020a2ea4d1000000b002498c9c5ae0mr4441949ljm.283.1647955817198; 
 Tue, 22 Mar 2022 06:30:17 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y26-20020a19915a000000b0044a0356abc4sm1779904lfj.220.2022.03.22.06.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 06:30:16 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 22 Mar 2022 14:30:01 +0100
Message-Id: <20220322133001.16181-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>
Subject: [Bridge] [PATCH net-next] net: bridge: mst: Restrict info size
	queries to bridge ports
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

Ensure that no bridge masters are ever considered for MST info
dumping. MST states are only supported on bridge ports, not bridge
masters - which br_mst_info_size relies on.

Fixes: 122c29486e1f ("net: bridge: mst: Support setting and reporting MST port states")
Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---

It turns out that even with Eric's fix, the guard was not restrictive
enough. Sorry about all the noise around this.

 net/bridge/br_netlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 204472449ec9..200ad05b296f 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -119,7 +119,7 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 	/* Each VLAN is returned in bridge_vlan_info along with flags */
 	vinfo_sz += num_vlan_infos * nla_total_size(sizeof(struct bridge_vlan_info));
 
-	if (vg && (filter_mask & RTEXT_FILTER_MST))
+	if (p && vg && (filter_mask & RTEXT_FILTER_MST))
 		vinfo_sz += br_mst_info_size(vg);
 
 	if (!(filter_mask & RTEXT_FILTER_CFM_STATUS))
-- 
2.25.1

