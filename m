Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AE74D915C
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D014D60F51;
	Tue, 15 Mar 2022 00:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ac_IBWqd8lsp; Tue, 15 Mar 2022 00:26:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8030D60F3D;
	Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 541CFC008A;
	Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4FB99C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E2BD60F3D
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yy9pqfwo0Xyn for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 758CF60F38
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:31 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id r22so24336958ljd.4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=A06tchB5P3xNuM8C6LfTzO8n4EM355S64hg7ZjA31l8=;
 b=J3HeoXTX/1HQ/6fEPZfupMGyBSjjAVjNhAIGypTRot8ER1tjFtwitWetTcMFZbo3db
 ZXGnrTNHS0d6QE9+6OgLCBbBRQdzmB9Y85dGdKi8loVMxwA0oqiqO9BZz3DwriPCitKK
 /oditpPfg9L2HtXrJVdMGLHXqNxJljj9EeyskVNqaDpyMcT7KrFWcyB6Rp3fe6ZCAIEJ
 Q1wPxEMqIJ/mzrINSlk5CHpneIQZ7ein7mVmhxZzqQMY6NZU+8vdBchc6EKzRfZj0fJQ
 RjoHORQCr0Pr+olXPepADfK/fb8fGqR7liG8OYsmXYSt5jALOHXh+w0wz39ZshDJolI1
 cc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=A06tchB5P3xNuM8C6LfTzO8n4EM355S64hg7ZjA31l8=;
 b=vs+AMD0pqiAyCfSMw9lu2AlQtXUtdDUFCrUE3SVYCcHQN6K8Q7Q2ddQXkfhS8AkRTE
 m9kNl/3x1sGnBUG3yzQX7kYmE7IlsgQJc0Bwbv5dRF+js7O5gYDuVcDUahi5H93JjCCK
 GUNzUzuWzoeEro7J4iZ+5R68//8CP/qzATf9p8+aAqt8W55WxtI6tza9sk8zXlQKkQ5Q
 cWSbKHdo54qfUR9b6AbQEZW+aC3UcKWbYEk6Z1eheqEGptI+mxMyBps7nw1E8dWynrBP
 7CVVDvGb4Nb9AITao6Mbb+GZhKXWzW8mnxt11Dcpp/fiHJYdZLN4dXMZwAKPlLWrmtY7
 9Hcw==
X-Gm-Message-State: AOAM531NizyBbhRm8OjlCBN0eR+NimrUUiAGzI13NNDNM7ZuchQrS1wf
 j4Ou3Em6otR8KBHJ8eWcU+F98g==
X-Google-Smtp-Source: ABdhPJwHgx5nacsEPfqdj4toKXeV2VENcrFf4XQMCjyLQ+xZkaf1T0gCIjySj7UK+aDfvm48DLdCkw==
X-Received: by 2002:a2e:b7d4:0:b0:249:2321:1521 with SMTP id
 p20-20020a2eb7d4000000b0024923211521mr9698436ljo.223.1647303989294; 
 Mon, 14 Mar 2022 17:26:29 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:28 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:37 +0100
Message-Id: <20220315002543.190587-10-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315002543.190587-1-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 09/15] net: dsa: Never offload FDB
	entries on standalone ports
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

If a port joins a bridge that it can't offload, it will fallback to
standalone mode and software bridging. In this case, we never want to
offload any FDB entries to hardware either.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 net/dsa/slave.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index a61a7c54af20..647adee97f7f 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2624,6 +2624,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
 	if (ctx && ctx != dp)
 		return 0;
 
+	if (!dp->bridge)
+		return 0;
+
 	if (switchdev_fdb_is_dynamically_learned(fdb_info)) {
 		if (dsa_port_offloads_bridge_port(dp, orig_dev))
 			return 0;
-- 
2.25.1

