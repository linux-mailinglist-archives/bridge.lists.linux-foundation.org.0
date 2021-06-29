Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3842F3B73CD
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF08540491;
	Tue, 29 Jun 2021 14:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyQP8m7kLwuN; Tue, 29 Jun 2021 14:07:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2F537404A2;
	Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F3C35C0026;
	Tue, 29 Jun 2021 14:07:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EE738C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9E964049A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CJ_5ThpxAMH for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 023D740491
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id hz1so36554735ejc.1
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HDFzCNuLgKoVL4N8qSF6ScaYL/eIkjL+npECoBu/hQ0=;
 b=Z+NmDbbOoqNFyAwTX/7hrCXLKPpKucfwvLs1E044CuiTg/WIh0FYHdH3XTFuXnIv8T
 jRQDJ4YGn3SLh05g7zy0X/k9AJTezaa/SQWIQ60e4oHXcx/9UPYivMmE29B5pR650rKR
 biGvahr0LHELWmuXBXzXz0cZk2+pfVAZ+2HiF1kQrGpfnIQK42VV7p9MEfF20VeO7NUV
 u7UmFBF6mAiSqXP3DVxfH88PM54TJrkbQGaWU8yhUqu991q9ZVBnCQH+6nUZS6ScjuM5
 mYZZMT1/EV5dIbbYTIjV4p6jkUi3yqN49KvE7y+WhSjl+MBV3olCOIVrpqpHG09ZmRoy
 RVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HDFzCNuLgKoVL4N8qSF6ScaYL/eIkjL+npECoBu/hQ0=;
 b=I/lsXD9UVPEUSPfWZgDGzi7JkunIjg3c+hJmMmvRZEcUW5nddl+4xa4w19zlkkCvqF
 c3FJFGsiWuUBj/TILsfkbwDS6B2OB+Ulv6XH5EIwHSqDB7Y6FWQa5dbX1Uwa1bsSTSg/
 bSNh+leAoc8lkMSgRl7wvX2hKrv5yY1AC2/hGmTed43ugl9N3N5uSCNbUufWfQIHoiLN
 hE/8lQlhqSNGPKzs30GuGxG7RM9avPBIPy4wtmCGeXzIfexXLFyMhzkhruYMbBU9j8hp
 GgSPKbIMH6Iw40z9eQARBtbyYG50RROE6vBx/KVQqVtNB9JekInw7g9gqzH52lPMn9f/
 ifFg==
X-Gm-Message-State: AOAM530kW5ntxnyAN8ziqEwS7BhDeGWLGm5lYxa1h98yZ60u1RPwvp23
 0mfPJQMgx8jYYzMvWGJPpJ0=
X-Google-Smtp-Source: ABdhPJxBieTxy7gfTKdqHrukrQJVsjTj55lMkQHLUxdTPsDZKGfLYVnU8hAAekJDado5qe7PsER+OQ==
X-Received: by 2002:a17:906:b191:: with SMTP id
 w17mr31096730ejy.10.1624975641252; 
 Tue, 29 Jun 2021 07:07:21 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:21 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:48 +0300
Message-Id: <20210629140658.2510288-6-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 05/15] net: dsa: introduce
	dsa_is_upstream_port and dsa_switch_is_upstream_of
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

In preparation for the new cross-chip notifiers for host addresses,
let's introduce some more topology helpers which we are going to use to
discern switches that are in our path towards the dedicated CPU port
from switches that aren't.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 include/net/dsa.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index ea47783d5695..5f632cfd33c7 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -491,6 +491,32 @@ static inline unsigned int dsa_upstream_port(struct dsa_switch *ds, int port)
 	return dsa_towards_port(ds, cpu_dp->ds->index, cpu_dp->index);
 }
 
+/* Return true if this is the local port used to reach the CPU port */
+static inline bool dsa_is_upstream_port(struct dsa_switch *ds, int port)
+{
+	if (dsa_is_unused_port(ds, port))
+		return false;
+
+	return port == dsa_upstream_port(ds, port);
+}
+
+/* Return true if @upstream_ds is an upstream switch of @downstream_ds, meaning
+ * that the routing port from @downstream_ds to @upstream_ds is also the port
+ * which @downstream_ds uses to reach its dedicated CPU.
+ */
+static inline bool dsa_switch_is_upstream_of(struct dsa_switch *upstream_ds,
+					     struct dsa_switch *downstream_ds)
+{
+	int routing_port;
+
+	if (upstream_ds == downstream_ds)
+		return true;
+
+	routing_port = dsa_routing_port(downstream_ds, upstream_ds->index);
+
+	return dsa_is_upstream_port(downstream_ds, routing_port);
+}
+
 static inline bool dsa_port_is_vlan_filtering(const struct dsa_port *dp)
 {
 	const struct dsa_switch *ds = dp->ds;
-- 
2.25.1

