Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A61414BBC85
	for <lists.bridge@lfdr.de>; Fri, 18 Feb 2022 16:53:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A13C611A6;
	Fri, 18 Feb 2022 15:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n1xVkIuq7Kdn; Fri, 18 Feb 2022 15:53:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C8E37611C8;
	Fri, 18 Feb 2022 15:53:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A7D28C002D;
	Fri, 18 Feb 2022 15:53:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9058C000B
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A749D408BF
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:52:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adEaEbkjuE3w for <bridge@lists.linux-foundation.org>;
 Fri, 18 Feb 2022 15:52:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A800840110
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:52:58 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id g39so6225551lfv.10
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 07:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=C074Ts6t1RuR/7tYyDWuvKC2BHBuBtLTBdnTVQAyV3k=;
 b=iwfCoLafgG9YVKvV7zo8I8SL8yF6TiOcM8BFJrMe1xkCw4BADvUTqPrpxBwb/uipbS
 o6MKYERLMZeEr1Q2SvSAg4Wcv0g/ma3fWCOa9IS/Be+/8LzmTrfFnv9hFVMkZB/DxHGT
 hRXi7MSSw14vn241aMy0fXph+8OwcZygLZ6WTabZWP4THo1j83Pj/Hpzai6goXcwe15u
 I1hl2KQNdzbFrfQgjZpGtWw7p4RwIPKyirv1BCmSsisKbh1Zu+8cQN5IT57459jAzh6u
 1/osLqneFyc3ffWmmJKZmdnoOaguwG7Ad44FGamwS2PP9DHtHsFW55YAeGQ/Xb5fxSnj
 7OcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=C074Ts6t1RuR/7tYyDWuvKC2BHBuBtLTBdnTVQAyV3k=;
 b=GTBqMnDo9O53fB5+JDG8lRoCSGofJ1fNZqfpMdgcwOmR6BJuSfaBAkKpjw1Zznx0vA
 cjcfOdaeMXdPpHCwdkBgNTN/VOoxmDb8NTuQ9AYwm4WV6ZKSb1/3wIaccPJ21oTbwnLe
 6GYOakjAyfzeTUhp4xd7Cgb6Mnkq9emOserRm6YfN6NjAEmllVpEHEoIJofAchZKvZ3e
 NCDMSgeZh/m6nb7cgv1cbdfP3q7lqC4m1qnbkNTqhFa8QEtscd/EDgrviflH9milBZz5
 RZ/MV3B9Teod01NaozU36W8bXMAXXnlLDSUN7fLsXBh/od1oGQkI6t7uc5wyk7oYgHr6
 MrIg==
X-Gm-Message-State: AOAM532airpJeP/xSI9yo4kJyo5tgiqXcXOS98XSQlC0GBN7+W8R7U6p
 QCFRF6X86emnDsgxjHjTMXc=
X-Google-Smtp-Source: ABdhPJz4M8NgeOX3Pm7KGmB8ZCsSG+kHcEQK+VJJrpAaHwURKRhLlaxHlzEd735Go8HQL30Eq6v/Lw==
X-Received: by 2002:a19:f009:0:b0:443:b0ee:8599 with SMTP id
 p9-20020a19f009000000b00443b0ee8599mr3589761lfc.34.1645199576681; 
 Fri, 18 Feb 2022 07:52:56 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id v11sm295453lfr.3.2022.02.18.07.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 07:52:56 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 18 Feb 2022 16:51:45 +0100
Message-Id: <20220218155148.2329797-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v3 2/5] net: bridge: Add support for
	offloading of locked port flag
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

Various switchcores support setting ports in locked mode, so that
clients behind locked ports cannot send traffic through the port
unless a fdb entry is added with the clients MAC address.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 net/bridge/br_switchdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index f8fbaaa7c501..bf549fc22556 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -72,7 +72,7 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 /* Flags that can be offloaded to hardware */
 #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
-				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
+				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-- 
2.30.2

