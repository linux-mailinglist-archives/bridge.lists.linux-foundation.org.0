Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6258D664
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 16:41:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3A71DEB8;
	Wed, 14 Aug 2019 14:40:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04370E9B
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 14:40:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB78167F
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 14:40:35 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y8so5389588wrn.10
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 07:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=zLOU89kM0wwKVTB1UPD2cV0f8y3hOpOztYSgdhvell4=;
	b=W0v/34bb+R0t8/FtoFPWcg9lKzEZGSjF6tCn9906Wc61iSdL28yBtox3OkBC+wSXTH
	oj1SJwR12w6ETdbPkfkYI1GAeFWW7I+dkbPxi8tSOoUWLB0I2CVzpMMzhp6dCqu6wd/W
	sh68A4Ceq5sIZsCVdKaTXDVWv6EHamHivP4IM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=zLOU89kM0wwKVTB1UPD2cV0f8y3hOpOztYSgdhvell4=;
	b=WHon8mdky/p379kFC33MObjZiD/j7QG6mvmt63nKEgynYloLFBE4XXBhsPfW7GjaR/
	tn4YQjkbzRNlrKa94dSCGkP+McDFLZI2tXs1u8WOM+BF/eKeocIfNepRQcBN5VYseqPO
	MpF2vaCYJoS+csi9wmm6BG8y1KO7dtjNCmer/Fz6bG68TN0MA+zLgHG1dsFr1aWTuW2t
	bwhxvFSWzQ9OBQ5HRUlpBRGJRSyBJSIjDO6ZsvoJ2iNGhlmiqgB68UhMe5EYBFPzTq9o
	Z6kYZHul651nauNe0xFE6MtFYFbN/90JKzbgQXG1nUev9ZPkb7/uaE9nj6ssPmpYknAo
	fw2Q==
X-Gm-Message-State: APjAAAVTQ+umHSebdK+3w1r7zSFwvaK4MNHGGxQvIKivXoCSFifwxz/M
	cf/zdp3KrxGxBCxBDayg2dBkIA==
X-Google-Smtp-Source: APXvYqy8Xl/Z2si/En5X1hbO2uIR0lFOIogMZBQbk31axfaX8gxzCfh6JidruDKx8vIhNlosak7B5g==
X-Received: by 2002:a5d:470c:: with SMTP id y12mr42605wrq.136.1565793634446;
	Wed, 14 Aug 2019 07:40:34 -0700 (PDT)
Received: from wrk.www.tendawifi.com ([79.134.174.40])
	by smtp.gmail.com with ESMTPSA id o8sm3383874wma.1.2019.08.14.07.40.32
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 14 Aug 2019 07:40:33 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Aug 2019 17:40:21 +0300
Message-Id: <20190814144024.9710-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
References: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/4] net: bridge: mdb: move vlan comments
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Trivial patch to move the vlan comments in their proper places above the
vid 0 checks.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 428af1abf8cc..ee6208c6d946 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -653,9 +653,6 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	/* If vlan filtering is enabled and VLAN is not specified
-	 * install mdb entry on all vlans configured on the port.
-	 */
 	pdev = __dev_get_by_index(net, entry->ifindex);
 	if (!pdev)
 		return -ENODEV;
@@ -665,6 +662,9 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -EINVAL;
 
 	vg = nbp_vlan_group(p);
+	/* If vlan filtering is enabled and VLAN is not specified
+	 * install mdb entry on all vlans configured on the port.
+	 */
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
@@ -745,9 +745,6 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	/* If vlan filtering is enabled and VLAN is not specified
-	 * delete mdb entry on all vlans configured on the port.
-	 */
 	pdev = __dev_get_by_index(net, entry->ifindex);
 	if (!pdev)
 		return -ENODEV;
@@ -757,6 +754,9 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -EINVAL;
 
 	vg = nbp_vlan_group(p);
+	/* If vlan filtering is enabled and VLAN is not specified
+	 * delete mdb entry on all vlans configured on the port.
+	 */
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
-- 
2.21.0

