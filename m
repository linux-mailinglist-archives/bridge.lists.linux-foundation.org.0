Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FC269DB98
	for <lists.bridge@lfdr.de>; Tue, 21 Feb 2023 09:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3402E61160;
	Tue, 21 Feb 2023 08:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3402E61160
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ZJP/Vc4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x7kdCFEhMBF5; Tue, 21 Feb 2023 08:01:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E657D61161;
	Tue, 21 Feb 2023 08:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E657D61161
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8A2EAC007C;
	Tue, 21 Feb 2023 08:01:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D18E9C002B
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5E904026A
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5E904026A
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ZJP/Vc4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNZcbWePuzmd for <bridge@lists.linux-foundation.org>;
 Fri, 17 Feb 2023 13:10:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4647940108
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4647940108
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:10:35 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id y14so997448ljq.10
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 05:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=J0dw7whMOJQJOi9uWyg8pekWteeUM3FSvncYli56xrM=;
 b=ZJP/Vc4DNhnP7vNZoltPzVJg+xHUrwAuUU/yEcRVXm4oBmREPC3XmKBf8vBUb83fzm
 AWhyiJU8x+YO+Bw2oDnuvHmcAWeMxRzztwdjkxXvLt4kRF2yk2zP5X60V9te/W3N8Pl/
 FMRmsZ2euvbs4W9naCuwZvjOBVNOZuQzUEHbpP+5pQWeloi6Tpm9AeqvTDdsUaKeUl3f
 /qO5/0s/pHAncoJI9BZARP+cBcYYlhpoQbL3WCmxgWHY6OrS2nLA0mhJjwcgigDRqQdQ
 qpakRx68sP8LFlAhJFEGwkdUDDEOB6eqaLe15jtD7aoj9/STJdpKUxxhW1Ifp+cQrLX2
 XOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=J0dw7whMOJQJOi9uWyg8pekWteeUM3FSvncYli56xrM=;
 b=FvhZs9YNvZyTqZUqVDE4hsA+JyuuyrxTGAf48qm2N7fO/9q2ghEFxB8vCS/3e0wzwk
 zbFG8ochC9pl8cC+L4wTfrcc3foDFA9NvBN6Rqcy1Dk9uYY3AIeqZ4BQ2kga+BUXD0J6
 OXuwkAMFERwCN+eKGzkD9TXl4MXQVg3tSpkR8RTAxWcSrZjpESoGNdbgpHonXKIOW2kR
 Ks/WQsvQkkQGAXckpmCTLuE/h72lrS3EhdDoYnxEobSPHJog/xz3UnILiHdkCepns80E
 L7glhWRR4XUHsyldI24Ly5JYdkGMzrtilKTIP2g5qf06aZpwkUBpYSxy/EkhfGOoL7jP
 6T9Q==
X-Gm-Message-State: AO0yUKVSQBi72Co1A6nIOQjyqYfdyywnMBYOvvLyIhtrWHd3bgEom/T2
 FUyVtYLFU5BWCq/eYdKkcgE=
X-Google-Smtp-Source: AK7set/ZVly470zOS4LxdWVFdfFfIUitrEAJ/UGeJ7KfuS0LytT5d9gw7f+6nPKAG9YYlGZPMWjbFQ==
X-Received: by 2002:a2e:9a97:0:b0:290:5582:8c10 with SMTP id
 p23-20020a2e9a97000000b0029055828c10mr3083759lji.49.1676639433034; 
 Fri, 17 Feb 2023 05:10:33 -0800 (PST)
Received: from alsp.securitycode.ru ([2a02:2168:8bff:fb00:c81a:1ac1:84a6:458f])
 by smtp.googlemail.com with ESMTPSA id
 o13-20020a2e944d000000b0028b92cd1fd8sm572381ljh.109.2023.02.17.05.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Feb 2023 05:10:32 -0800 (PST)
From: Alexander Sapozhnikov <alsp705@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Date: Fri, 17 Feb 2023 16:10:28 +0300
Message-Id: <20230217131028.12634-1-alsp705@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 21 Feb 2023 08:01:45 +0000
Cc: lvc-project@linuxtesting.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Alexander Sapozhnikov <alsp705@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH] net-bridge: fix unsafe dereference of potential
	null ptr in __vlan_del()
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

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Alexander Sapozhnikov <alsp705@gmail.com>
---
 net/bridge/br_vlan.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index bc75fa1e4666..87091e270adf 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -417,7 +417,8 @@ static int __vlan_del(struct net_bridge_vlan *v)
 		rhashtable_remove_fast(&vg->vlan_hash, &v->vnode,
 				       br_vlan_rht_params);
 		__vlan_del_list(v);
-		nbp_vlan_set_vlan_dev_state(p, v->vid);
+		if (p)
+			nbp_vlan_set_vlan_dev_state(p, v->vid);
 		br_multicast_toggle_one_vlan(v, false);
 		br_multicast_port_ctx_deinit(&v->port_mcast_ctx);
 		call_rcu(&v->rcu, nbp_vlan_rcu_free);
-- 
2.34.1

