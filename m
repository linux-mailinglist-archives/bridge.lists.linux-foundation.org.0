Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 682E934498A
	for <lists.bridge@lfdr.de>; Mon, 22 Mar 2021 16:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28FC94033A;
	Mon, 22 Mar 2021 15:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WJbHk4vPCGy7; Mon, 22 Mar 2021 15:45:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DA2A4036A;
	Mon, 22 Mar 2021 15:45:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4C868C0012;
	Mon, 22 Mar 2021 15:45:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6850C0001
 for <bridge@lists.linux-foundation.org>; Mon, 22 Mar 2021 15:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94D2040137
 for <bridge@lists.linux-foundation.org>; Mon, 22 Mar 2021 15:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jC4I-Y2zN1Ok for <bridge@lists.linux-foundation.org>;
 Mon, 22 Mar 2021 15:45:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF1C64026B
 for <bridge@lists.linux-foundation.org>; Mon, 22 Mar 2021 15:45:34 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id z1so19960651edb.8
 for <bridge@lists.linux-foundation.org>; Mon, 22 Mar 2021 08:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sANlXMVqsl2aKn3Z66der6aHhsvdu11h2110/nO0vMs=;
 b=OWy9EqRCalVtRAbn9gLT3sgT05a5GeFJP1xtKWtYRWAImDpAi7woU89y/AAfvnK5tb
 m5sl15WUXgy2SexHXBcd7qP6NV5STFzlkThDedoJiJmKiGTMOZAjwD2767X7Q/2a173/
 gqdeWZ8ZZ/hw465ueJA/RivubUv5BrK6G9sFT5OM7bhNDWja+JsdYbXWF96rNRIHc5vm
 2eoRJRRCxXeWavHfXi4dE1fc1AiuTAlX9m2/xhu8+HErEcY9t6wo6OBNu/oWo30rZ1m/
 weJ8YyE2AgiYHQRacIKRL7Se6TdJ8Hs8JD9j8N25W4crq114m/QYyk6/qiqg0a3vyMxb
 r0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sANlXMVqsl2aKn3Z66der6aHhsvdu11h2110/nO0vMs=;
 b=Mj2RVE5Nq6terZ7ZWk/zpHag0q42pt1RjYteu65OrB8dlyQmxS2iMHE2xULpfqaXoW
 M98oeRh/3gsdAo4vAQRVlTUSpG9I1eONoa/hNu3up4mppWs59i1PZ1zk+5A5h/M0Nbya
 0U5sw7pj+vVuztnltrBRzz50xH8/AWyb5oDvN+n4sxtDxVRFxbO9o+azUPZNPgXH/ae0
 67J9FBO8uujk7cnj1XnRBpfjvVepVAT+SHaULqdFrrmdEe0khGdrRJJWMLq5056s2QFl
 65hHCZvfQwhxnQZ0b5nqWhTVYY2l6WjygpMRZtukzzhmSp4BMgLctsmLGi4ik6XwkW9u
 yljw==
X-Gm-Message-State: AOAM530dYbCuW2LX5tc40sUOtINTaPYopi03Xer/BOmUhFzRyWYvkVJu
 4KyHTjnuU9dWk6KukPKa+22Eaw==
X-Google-Smtp-Source: ABdhPJwhT+bPiYLdGRnd3yrTthz6BzxlQh/lou1wEpTojUjl776KED4P1UKCfK3y4aL5xO8h1aOeUQ==
X-Received: by 2002:a05:6402:1853:: with SMTP id
 v19mr139960edy.179.1616427932902; 
 Mon, 22 Mar 2021 08:45:32 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t27sm9834223ejc.62.2021.03.22.08.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 08:45:32 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 22 Mar 2021 17:45:27 +0200
Message-Id: <20210322154527.224886-1-razor@blackwall.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Amer Abdalamer <amer@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next] net: bridge: when suppression is enabled
	exclude RARP packets
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

Recently we had an interop issue where RARP packets got suppressed with
bridge neigh suppression enabled, but the check in the code was meant to
suppress GARP. Exclude RARP packets from it which would allow some VMWare
setups to work, to quote the report:
"Those RARP packets usually get generated by vMware to notify physical
switches when vMotion occurs. vMware may use random sip/tip or just use
sip=tip=0. So the RARP packet sometimes get properly flooded by the vtep
and other times get dropped by the logic"

Reported-by: Amer Abdalamer <amer@nvidia.com>
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
Targeting net-next as it's not critical, can be considered an improvement.

 net/bridge/br_arp_nd_proxy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index dfec65eca8a6..3db1def4437b 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -160,7 +160,9 @@ void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
 	if (br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED)) {
 		if (p && (p->flags & BR_NEIGH_SUPPRESS))
 			return;
-		if (ipv4_is_zeronet(sip) || sip == tip) {
+		if (parp->ar_op != htons(ARPOP_RREQUEST) &&
+		    parp->ar_op != htons(ARPOP_RREPLY) &&
+		    (ipv4_is_zeronet(sip) || sip == tip)) {
 			/* prevent flooding to neigh suppress ports */
 			BR_INPUT_SKB_CB(skb)->proxyarp_replied = 1;
 			return;
-- 
2.30.2

