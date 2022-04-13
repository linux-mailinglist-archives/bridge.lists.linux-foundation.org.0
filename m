Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA174FF52F
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74DA941758;
	Wed, 13 Apr 2022 10:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8s4GDKFCtKk; Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A48BB41743;
	Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5E7C0C0088;
	Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4330AC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 037BE41697
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IbtPVl8LSGT for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C53C41724
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id lc2so3060977ejb.12
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0+d6Rov8cjDp4XASxWMxnkxwuD5Gq2aFtJ+v6sDjNGk=;
 b=E2vRYdVkMpOuOmuBfP6Oq6xxQ8AygCk0IigcDxqCSJmZqps/Xbyf6XW0O12cT1Oax4
 FiCB528iHFY03d7tXKx1d7N2lWiDg084eNkY9gq7shM2MIKG9UF5/64tnrZ3mpv2OI6e
 mV12s6jeyA6T8qTdawpgBxEpaf9xzc4JN48EHsKpzIF3Puf1xfFHkxbwqDOBfCUKcufz
 72d5o/qUEMspTt1BacW//JMc0IKjZixQER9i2DrxZEZHW1da2hBX9DWVs/SXN4DCMKMj
 t4gR2S79+YxQGdmMRFJdJ5nY175E47oT+YLWlr/jgqTtIN17mxndg0U/ui3nDbEhX3z9
 Zgrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0+d6Rov8cjDp4XASxWMxnkxwuD5Gq2aFtJ+v6sDjNGk=;
 b=SmQvdOaurKT/sfScsayll5WtfX66JBaN1FCAxwp/AwbLP8T2qzq7MaoKpD9EXj6uli
 Num3CJSZN743SzjHBw+djq5AKoWu+my1yKQdBO2TfGpszAFfbu8YkjnCnhXxoVBB07Rs
 jQve8TUEv7LjqR72oPtbsMzMOnqq6xNaQ93TReApo202Bv5nJnwxSdDAGWnkNauHwcDK
 nej3AurWrp8+aWapnPOQDW+1ubjgw3ug4f+2AbX+DgO4yqZGBc20+wodTZZgYguKPL4O
 ancBO1pvWEMI2PZcNG75yz4NtRbc7SbZJXyr+eZIhRUsfQHaMRLMY7ZvwKOmnqaC63HM
 9Abg==
X-Gm-Message-State: AOAM531Z+NE/i3RnzXQj2ZbeogYIqUcPKkEdKFEYiWANiee28kksULFE
 v8OXeE9lSmfHPpyYw8f1/hj8YQ==
X-Google-Smtp-Source: ABdhPJzHstTpmBQgNCZQOeZWES1aAH90boWyFAjDx2nJhi9OSbcCrVvB3z3PKcnCHhXapqWq8d+UHw==
X-Received: by 2002:a17:906:3ad3:b0:6cd:382b:86e5 with SMTP id
 z19-20020a1709063ad300b006cd382b86e5mr36598097ejd.145.1649847146154; 
 Wed, 13 Apr 2022 03:52:26 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:25 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:55 +0300
Message-Id: <20220413105202.2616106-6-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 05/12] net: rtnetlink: add bulk delete
	support flag
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

Add a new rtnl flag (RTNL_FLAG_BULK_DEL_SUPPORTED) which is used to
verify that the delete operation allows bulk object deletion. Also emit
a warning if anyone tries to set it for non-delete kind.

Suggested-by: David Ahern <dsahern@kernel.org>
Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v4: new patch

 include/net/rtnetlink.h | 3 ++-
 net/core/rtnetlink.c    | 8 ++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index 0bf622409aaa..bf8bb3357825 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -10,7 +10,8 @@ typedef int (*rtnl_doit_func)(struct sk_buff *, struct nlmsghdr *,
 typedef int (*rtnl_dumpit_func)(struct sk_buff *, struct netlink_callback *);
 
 enum rtnl_link_flags {
-	RTNL_FLAG_DOIT_UNLOCKED = BIT(0),
+	RTNL_FLAG_DOIT_UNLOCKED		= BIT(0),
+	RTNL_FLAG_BULK_DEL_SUPPORTED	= BIT(1),
 };
 
 enum rtnl_kinds {
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index beda4a7da062..63c7df52a667 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -249,6 +249,8 @@ static int rtnl_register_internal(struct module *owner,
 	if (dumpit)
 		link->dumpit = dumpit;
 
+	WARN_ON(rtnl_msgtype_kind(msgtype) != RTNL_KIND_DEL &&
+		(flags & RTNL_FLAG_BULK_DEL_SUPPORTED));
 	link->flags |= flags;
 
 	/* publish protocol:msgtype */
@@ -6009,6 +6011,12 @@ static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
 	}
 
 	flags = link->flags;
+	if (kind == RTNL_KIND_DEL && (nlh->nlmsg_flags & NLM_F_BULK) &&
+	    !(flags & RTNL_FLAG_BULK_DEL_SUPPORTED)) {
+		NL_SET_ERR_MSG(extack, "Bulk delete is not supported");
+		goto err_unlock;
+	}
+
 	if (flags & RTNL_FLAG_DOIT_UNLOCKED) {
 		doit = link->doit;
 		rcu_read_unlock();
-- 
2.35.1

