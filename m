Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A948769DB99
	for <lists.bridge@lfdr.de>; Tue, 21 Feb 2023 09:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C40FD824CE;
	Tue, 21 Feb 2023 08:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C40FD824CE
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=EWCj+D/J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sk1P2lFdfGul; Tue, 21 Feb 2023 08:01:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5AACC82422;
	Tue, 21 Feb 2023 08:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AACC82422
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD190C002B;
	Tue, 21 Feb 2023 08:01:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3C1B0C002B
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:17:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1185041B3D
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:17:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1185041B3D
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=EWCj+D/J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q7oUzXkAmirB for <bridge@lists.linux-foundation.org>;
 Fri, 17 Feb 2023 13:17:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDA5E41B2E
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDA5E41B2E
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 13:17:02 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id z18so1801134lfd.0
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 05:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MVXpSvxD8IQLLcvTNwyEk6nPjo5geqGNCFp6pQeswJ4=;
 b=EWCj+D/JciN173neJ/bAWbb8Wsq/dKdqGJ7JlzysVjI7T6XYobU3X+botTB7SN8ZzP
 i/wd1GhONcUrM6D3vvxK7vCWfOBD4a1yloUyKQrd3AOIz5lYxRd+Zud+Mj2NNrQBAJ2U
 q7qaxB0QZRe6W56+l8Z4YpXs1796EiobAWPam60eKGpRAtSFvsXr93htNbVRwCwkIlC3
 5pxwiY3IXTZPozDxqXEkfCTiDdzEOCxjsPjek3YDsAQcPy68bvD6S16GG1a1pHk//d/1
 fPwp8SF9gcgqwAxhurtTdOpyEnpeTuyy+FnAl+x+wBlzyUqOChVXctZd48wBI1YcegxT
 qrHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MVXpSvxD8IQLLcvTNwyEk6nPjo5geqGNCFp6pQeswJ4=;
 b=0IA9Kv0qryCimG8rJf0OpmChsBti0o3+eUYKq3VisSRs/j5wx7ZTn//QhlpxNrEoeJ
 B99H865wr4tRd4o600aeJi/CKzmiSIQ25n9TZaOnmA1jG3H34YFGkI6O/r/FdX8GHSFS
 c1kMllzWFYtyKU0fllFKuFU1fuiH6727kb/DvknIPNfoxxFrNbp4lmfaCK2O9a0lM+tH
 pLYLGYeCppCxF0C33Kc08e58TdSOkF6axndiTs/rzwbjpZF5l+yvXwtE3SPqi+iePhBb
 VakWRulYLiHzPp3uPG2of+AJOL8bODRv+05HAggk5sgN+mF2nMSQu1AJW+zthqjyW8ns
 HTwg==
X-Gm-Message-State: AO0yUKW7FA/EsMmCX/QPizLEi2v1n6lz2FdGAmWL7Lei6YaPPDPj8F4y
 IwlweqY5vKaY/6CWAI3OA1k=
X-Google-Smtp-Source: AK7set//GZM99vxZgMQht3iXKY7qkiQhLZZSsdCP1ku2eKzAzSUDtfL8xIoEVoSpSeYEdhPIkHWJsQ==
X-Received: by 2002:ac2:4ac1:0:b0:4d9:8773:7d6f with SMTP id
 m1-20020ac24ac1000000b004d987737d6fmr2820673lfp.19.1676639820640; 
 Fri, 17 Feb 2023 05:17:00 -0800 (PST)
Received: from alsp.securitycode.ru ([2a02:2168:8bff:fb00:c81a:1ac1:84a6:458f])
 by smtp.googlemail.com with ESMTPSA id
 b4-20020a056512024400b004cb43eb09dfsm684285lfo.123.2023.02.17.05.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Feb 2023 05:17:00 -0800 (PST)
From: Alexander Sapozhnikov <alsp705@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Date: Fri, 17 Feb 2023 16:16:57 +0300
Message-Id: <20230217131657.12649-1-alsp705@gmail.com>
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

After having been compared to NULL value at br_vlan.c:399,
pointer 'p' is passed as 1st parameter in call to function
'nbp_vlan_set_vlan_dev_state' at br_vlan.c:420, 
where it is dereferenced at br_vlan.c:1722.

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

