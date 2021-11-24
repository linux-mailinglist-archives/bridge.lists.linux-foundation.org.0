Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1A145CD68
	for <lists.bridge@lfdr.de>; Wed, 24 Nov 2021 20:39:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8521740240;
	Wed, 24 Nov 2021 19:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fJm8f7gSwLHb; Wed, 24 Nov 2021 19:39:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 18F52402F2;
	Wed, 24 Nov 2021 19:39:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C895DC003E;
	Wed, 24 Nov 2021 19:39:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B9789C000A
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 19:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9948360B35
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 19:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkXJiz26Exzn for <bridge@lists.linux-foundation.org>;
 Wed, 24 Nov 2021 19:39:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C97B660B31
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 19:39:38 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so3002961wme.4
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 11:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B3QGPgxprh2tb4Gl3h4Uv0GQ0Zm/aQZNDdCKiWQFxV4=;
 b=Vs6GqXTRoEgfIrL4ioHj2vTbxNFzHHhRKV/cH+MwljLJjuMYhd4Xg6apa5T1kLs1KR
 G74Y7f3UgHj+a0ZYPksnCWcMIP4vCu6IE7HjdLPJ0WSvXSxNDp3I3+kq3pql1I3a7zKv
 0AP8yCngVgBc3ZR/JOMgLRSmnD250nsTeYmVn6gqVoKRX+wXHOFWmLXMKYZSdHvcoEOX
 rdt+Ouw76gm2cz/AWYpPiQ+dhBgAK1kCpQjm3Pn9JaNPf6iLlgw+bS+TymajlQNdPhmt
 /aOuZabhtvYAHgU5X6nQdM4/IeSSFNCb3+UYS0WGh+tVLP4Q+I9NreR/Wj3RrY7pD6xD
 vS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B3QGPgxprh2tb4Gl3h4Uv0GQ0Zm/aQZNDdCKiWQFxV4=;
 b=Bwh7UTg7Ub577vgc+L8LSMlXZsp3yHBoBtJhAiAVANGNVJwcGJc/FNfhDdg8i5psQ4
 ORkIiZB8HI54jkAd/wiSxJEEqcYDH5FBhqCcbvUN9BZYa9h4CyyIuGOVy9Rdgn5ASsnW
 V7ECaSgG5VlmkJEPD370JNqhxexAGh8pfKwFXz+L3qP25uWceHJ698ZIX6aljctR9ExF
 4G8LaHSdggHsJIOtzFgVilbZUK1440XggDIOu0nCb7HV7IwiM7jOKhTJPFuUEz6aj5h+
 +H8oQWqkqPNpKCFA7oft9PZ7xWq/NqoUv2YXuR7n/HkoA4s1ZD7lk8Qnhgy8yV83O9ye
 5I3A==
X-Gm-Message-State: AOAM531NkMTgNSWoxynH1blv0aCbuby66rm/BxVGmG4qBq8at6XRSDcC
 5aKLhNRz3OZB+HadBMS6rGs=
X-Google-Smtp-Source: ABdhPJy0si6hptmjDHmROfJQ4xQvWKTZK8N2ZN8vFvfIHHDQuVYZnn1NUmIQw9iOlg1ijds6JxFEuA==
X-Received: by 2002:a05:600c:35d4:: with SMTP id
 r20mr18928112wmq.76.1637782776819; 
 Wed, 24 Nov 2021 11:39:36 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z8sm710011wrh.54.2021.11.24.11.39.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 11:39:36 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	bridge@lists.linux-foundation.org
Date: Wed, 24 Nov 2021 14:39:33 -0500
Message-Id: <4e35f415226765e79c2a11d2c96fbf3061c486e2.1637782773.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 christophe.jaillet@wanadoo.fr, davem@davemloft.net,
 Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH net-next] bridge: use __set_bit in
	__br_vlan_set_default_pvid
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

The same optimization as the one in commit cc0be1ad686f ("net:
bridge: Slightly optimize 'find_portno()'") is needed for the
'changed' bitmap in __br_vlan_set_default_pvid().

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/bridge/br_vlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 49e105e0a447..84ba456a78cc 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1063,7 +1063,7 @@ int __br_vlan_set_default_pvid(struct net_bridge *br, u16 pvid,
 		if (br_vlan_delete(br, old_pvid))
 			br_vlan_notify(br, NULL, old_pvid, 0, RTM_DELVLAN);
 		br_vlan_notify(br, NULL, pvid, 0, RTM_NEWVLAN);
-		set_bit(0, changed);
+		__set_bit(0, changed);
 	}
 
 	list_for_each_entry(p, &br->port_list, list) {
@@ -1085,7 +1085,7 @@ int __br_vlan_set_default_pvid(struct net_bridge *br, u16 pvid,
 		if (nbp_vlan_delete(p, old_pvid))
 			br_vlan_notify(br, p, old_pvid, 0, RTM_DELVLAN);
 		br_vlan_notify(p->br, p, pvid, 0, RTM_NEWVLAN);
-		set_bit(p->port_no, changed);
+		__set_bit(p->port_no, changed);
 	}
 
 	br->default_pvid = pvid;
-- 
2.27.0

