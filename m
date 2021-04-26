Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 747F836C09B
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E5D983C80;
	Tue, 27 Apr 2021 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hnt7GhfCHw9y; Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D90783C6F;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08547C002D;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 91F75C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D898403A9
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S23Zda7HZHww for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78536403A3
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:53 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id x19so58981489lfa.2
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=gIoM+pn92FmZ7l7fGywvcoFz7NhbL6+Ajxhl2csuoH4=;
 b=h/DCxncDj/YrNnh8RNeWnko9Hu+QqSLcJ+7SmZtNXPDB6Nh2VR+UlmwFU1HyMbQJw1
 KJpaxslG4hLz5Q2WlS3v+DiLNCf1XQW/+daYTnRGmiGadi9/SDdfUuq19ZdPkYIpXa/V
 9ISJ8Aw/EUuaS1D6Yi7P+RG4Vey6DytR+g5MzCzLY17JH8HqDikcR/POHLDrHJueGY18
 McuL/u8ZtlTcefFr9/Wh3HFlVu4/pNpwWF9wubfLn/AdRkoQrse8PCxfldEQNDn4L411
 eAN/roayikrAn+4ea3s93LZBdXWBt34HBokMNAVG3WTKHTJZOnuMq9lL9wLdBeziGOD1
 UxVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=gIoM+pn92FmZ7l7fGywvcoFz7NhbL6+Ajxhl2csuoH4=;
 b=XTHhggGn0rB4qJ8JLMx4Eh8YEq491uqBEg1y/0ZIuCAIavt5/G9jRkRkkdj7/zcqG1
 wwjrTGDj30hfBJydstHhRySU5K5k8qUONfz0z6l+gKNxCJ5Si/fD8m6Y2F328bdehksm
 yP3idZ/+HUxvnfJxZRQ9GQN44b0+EJyPlelDo6A3gaSXmQlwN8sccIHHS5x/334Qdc3J
 E+kK//Y+w/mwtuYPJ2d+trDpDN5f9bgZc6aD7B3YUo1eVjROxb6kNqyL7/XscnnB4iMO
 1Ls90X6bx4wVI+d2EwLDbZryWGQV0kWqXsmzRCt+i9Dt5iGLfJyaTNqk4adnsw27aoFm
 63bg==
X-Gm-Message-State: AOAM5315sH8nZuiO4j9z31NH7f5vmTGIgOmwEmHggZeChRFWCW/oAltR
 rclUh27MuwlBKimLQeMbvxEZOw==
X-Google-Smtp-Source: ABdhPJxbcXo+aROPYbeQTvaHsvvv3yjXsCfK4qwS5i4OyRmvKeWwRH5gj22iV2Sb0NOn5SpRl2TV2Q==
X-Received: by 2002:a19:520b:: with SMTP id m11mr13318514lfb.157.1619456691254; 
 Mon, 26 Apr 2021 10:04:51 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:50 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:07 +0200
Message-Id: <20210426170411.1789186-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 5/9] net: dsa: Track port PVIDs
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

In some scenarios a tagger must know which VLAN to assign to a packet,
even if the packet is set to egress untagged. Since the VLAN
information in the skb will be removed by the bridge in this case,
track each port's PVID such that the VID of an outgoing frame can
always be determined.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/dsa.h |  1 +
 net/dsa/port.c    | 16 ++++++++++++++--
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 507082959aa4..1f9ba9889034 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -270,6 +270,7 @@ struct dsa_port {
 	unsigned int		ageing_time;
 	bool			vlan_filtering;
 	u8			stp_state;
+	u16			pvid;
 	struct net_device	*bridge_dev;
 	struct devlink_port	devlink_port;
 	bool			devlink_port_setup;
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 6379d66a6bb3..02d96aebfcc6 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -651,8 +651,14 @@ int dsa_port_vlan_add(struct dsa_port *dp,
 		.vlan = vlan,
 		.extack = extack,
 	};
+	int err;
+
+	err = dsa_port_notify(dp, DSA_NOTIFIER_VLAN_ADD, &info);
 
-	return dsa_port_notify(dp, DSA_NOTIFIER_VLAN_ADD, &info);
+	if (!err && (vlan->flags & BRIDGE_VLAN_INFO_PVID))
+		dp->pvid = vlan->vid;
+
+	return err;
 }
 
 int dsa_port_vlan_del(struct dsa_port *dp,
@@ -663,8 +669,14 @@ int dsa_port_vlan_del(struct dsa_port *dp,
 		.port = dp->index,
 		.vlan = vlan,
 	};
+	int err;
+
+	err = dsa_port_notify(dp, DSA_NOTIFIER_VLAN_DEL, &info);
 
-	return dsa_port_notify(dp, DSA_NOTIFIER_VLAN_DEL, &info);
+	if (!err && vlan->vid == dp->pvid)
+		dp->pvid = 0;
+
+	return err;
 }
 
 int dsa_port_mrp_add(const struct dsa_port *dp,
-- 
2.25.1

