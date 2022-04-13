Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974064FF52E
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBFDC40B46;
	Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHlGBgzbCyZN; Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 492FD40B55;
	Wed, 13 Apr 2022 10:52:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1971AC0089;
	Wed, 13 Apr 2022 10:52:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D554C0089
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09ED240B46
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXawwCSBo8QC for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 581C440490
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id bh17so3087544ejb.8
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uUhhwavoelOAutf6ZINYv5+4TG3VETWVUGFixQHcuak=;
 b=rLSJSouYiv7OkG/FyDtfvfS0x+gh2sGEdXXD3TxkUkcmfLkc4s3DwFs9WTIygFn5Fj
 9dSFB3Q1LOeTUmj52Pu5jrZS6Lqgao9V4kPo8O8KEc2Q/Kez1XjZZY4DPSluEyfFd4Ww
 EydDZh+HT81QxaYKcL6dvGh6SYfTkUwGZ+P7sw8+uGAjks7+/cXXSX2OzW4UjCXD4jly
 fx8cx49P+Jph5i4PQluNOpPv8OtonmhYKrDY9BeqB4i4IEa6rZhhDcdKDVufnhylZZ9E
 aPGeIj0Il1AgFqn+S7NrqP+SoGJSPoPoJSTOaVbWq47E7ub44xVG+fFXXW8ChJPQthi6
 CPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uUhhwavoelOAutf6ZINYv5+4TG3VETWVUGFixQHcuak=;
 b=NlwU/T/cXD66iqQMppy9PK7quvlw0WCUNSLrjHZo5kj4qyTY1BmW8PmHo4QHKIUQC9
 d/MJBmuPAcRt6F9/2HfZbLmf5Ml9iq+M2pxffvomN3miMRmxJZlsuzq5WWt7lij7xHy3
 aXuuY6sMaZKWsa4DVkL7k43GNzFfcCa3MW0I97biZYPDHnrC0J4Mc6yjb+tsuSvcr34w
 yigmR9lYsQ38qDGb+fJE+gJGxQQm7hlOto6yI+ga+mPQ/OKNur5W8vaZ7gxCrjcLxJ7S
 Q5jZbglNgcs371+woG9H94iqEfaQyMUHVjNRUZGvnjdLBDaXccwWXpIZ/ADjJm8WfO09
 gK7Q==
X-Gm-Message-State: AOAM533ZJI1MJvE6nIPyNmKbYr+W4OfcN0JR63TPPxH+KGquIO0uyHNB
 HOYG+at+fRJD/jvB7pDeGhSjAw==
X-Google-Smtp-Source: ABdhPJwRtQi8x5hLJqvnOxjlqt8uUG4sb0nQ06Dq5kORtMji7kyjiZDwAaGxEDr/C2WKg/zOzLnO8A==
X-Received: by 2002:a17:907:1690:b0:6db:325:3088 with SMTP id
 hc16-20020a170907169000b006db03253088mr39050134ejc.718.1649847145173; 
 Wed, 13 Apr 2022 03:52:25 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:24 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:54 +0300
Message-Id: <20220413105202.2616106-5-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 04/12] net: netlink: add NLM_F_BULK
	delete request modifier
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

Add a new delete request modifier called NLM_F_BULK which, when
supported, would cause the request to delete multiple objects. The flag
is a convenient way to signal that a multiple delete operation is
requested which can be gradually added to different delete requests. In
order to make sure older kernels will error out if the operation is not
supported instead of doing something unintended we have to break a
required condition when implementing support for this flag, f.e. for
neighbors we will omit the mandatory mac address attribute.
Initially it will be used to add flush with filtering support for bridge
fdbs, but it also opens the door to add similar support to others.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/netlink.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
index 4c0cde075c27..855dffb4c1c3 100644
--- a/include/uapi/linux/netlink.h
+++ b/include/uapi/linux/netlink.h
@@ -72,6 +72,7 @@ struct nlmsghdr {
 
 /* Modifiers to DELETE request */
 #define NLM_F_NONREC	0x100	/* Do not delete recursively	*/
+#define NLM_F_BULK	0x200	/* Delete multiple objects	*/
 
 /* Flags for ACK message */
 #define NLM_F_CAPPED	0x100	/* request was capped */
-- 
2.35.1

