Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D6E4FE260
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AC096103C;
	Tue, 12 Apr 2022 13:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IoLxo43Pvu1U; Tue, 12 Apr 2022 13:23:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D47B861049;
	Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1443C0088;
	Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F07A7C0085
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0A8D6103C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FuxP-u30NQG7 for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11D0461042
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id lc2so16738992ejb.12
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s2jkzw31rfRz/k9DcMuKTznzONYusXn07ORCMc42hSk=;
 b=Y0/saCT3p2F3jNeeNUQ5DmmY/+oty+yJdhMzI8AAkNptlg2goIT2Qmu/8ITBuKDVdC
 50ApMxf6at+JIlhbPnIVG4XRafnh+ts/mU1vy9C+qC260OVZUU5RN7mj5DxDSZJTNM3M
 EE9V0/eH8ulP0vOzQJGYCboCPycaYHDW24gNL4NvK1r5A1FOJ/gkG0kYrbYe7n/PBTrC
 VKnAWiCf04u1ednj5pg0foDHteVpT1R4t6a5l89ekxsqvUNFODYB6odafqzDEKMh1IJr
 hJSjDkemm+2Jd4zwRd861bjh+ipS1RKQQEBLWUXKktX63Nb91LGeVhDNxcI4XADHDelH
 aN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s2jkzw31rfRz/k9DcMuKTznzONYusXn07ORCMc42hSk=;
 b=Rh+l8Ba6MlnNSz5TCfDsEakPU/src5jgGGcQPE08KbtHnf8KKqCtM0lIIjg6n3hbdo
 xi+DclMDTx7qqrjKfDZchXV8M2rlmljx6U9EtEM61xR+NzrhRDvvAR90g2nCHJNx8DrO
 Nf9LUgyfQ5XdRURqdiWIT1EggN+qcjem3RS634GteJc3qmvTOBVTZw78mEH1rRLnMfCt
 du+EsTCV4WpmNv8STvyrFRn2bLdftPlGHNEYJ4Eoo3ZE38dhLDGTCisoA8euUJUvVHkG
 hstz1bkZaWYcLxks2cUH7t7zO3S4NEBR49qptq7u1/EO0fUJz4viCC/sBzZLBznuv/pR
 3TVg==
X-Gm-Message-State: AOAM531eE1vYYQ+gd+A1c7kdXemEHi39wU3WVnYI9RF3FJ6qi4/ZkCw9
 9NoLETMyzYNOJXduCxXEZJUoyA==
X-Google-Smtp-Source: ABdhPJxymhyozSIwTIWgxQWczj3VDphYNOb83vSG9VlLeBxUFk+AEsKRP/Rlp67MnutbZvwgbjD1fQ==
X-Received: by 2002:a17:907:6d96:b0:6e8:6d68:478 with SMTP id
 sb22-20020a1709076d9600b006e86d680478mr14479281ejc.331.1649769795132; 
 Tue, 12 Apr 2022 06:23:15 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:14 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:43 +0300
Message-Id: <20220412132245.2148794-7-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 6/8] net: rtnetlink: add ndm flags and
	state mask attributes
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

Add ndm flags/state masks which will be used for bulk delete filtering.
All of these are used by the bridge and vxlan drivers. Also minimal attr
policy validation is added, it is up to ndo_fdb_del_bulk implementers to
further validate them.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/neighbour.h | 2 ++
 net/core/rtnetlink.c           | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index db05fb55055e..39c565e460c7 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -32,6 +32,8 @@ enum {
 	NDA_NH_ID,
 	NDA_FDB_EXT_ATTRS,
 	NDA_FLAGS_EXT,
+	NDA_NDM_STATE_MASK,
+	NDA_NDM_FLAGS_MASK,
 	__NDA_MAX
 };
 
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 824963aa57b1..9118523b328f 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4170,6 +4170,8 @@ EXPORT_SYMBOL(ndo_dflt_fdb_del);
 static const struct nla_policy fdb_del_bulk_policy[NDA_MAX + 1] = {
 	[NDA_VLAN]	= { .type = NLA_U16 },
 	[NDA_IFINDEX]	= NLA_POLICY_MIN(NLA_S32, 1),
+	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16  },
+	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
 };
 
 static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
-- 
2.35.1

