Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA8E71E23
	for <lists.bridge@lfdr.de>; Tue, 23 Jul 2019 19:56:32 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 54BD4CC4;
	Tue, 23 Jul 2019 17:56:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD91D15E9
	for <bridge@lists.linux-foundation.org>;
	Sat, 20 Jul 2019 12:31:36 +0000 (UTC)
X-Greylist: delayed 00:07:53 by SQLgrey-1.7.6
Received: from mta-p7.oit.umn.edu (mta-p7.oit.umn.edu [134.84.196.207])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F1AD8BD
	for <bridge@lists.linux-foundation.org>;
	Sat, 20 Jul 2019 12:31:36 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
	by mta-p7.oit.umn.edu (Postfix) with ESMTP id 14396CCC
	for <bridge@lists.linux-foundation.org>;
	Sat, 20 Jul 2019 12:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p7.oit.umn.edu ([127.0.0.1])
	by localhost (mta-p7.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HCA1D-RDQ8ea for <bridge@lists.linux-foundation.org>;
	Sat, 20 Jul 2019 07:23:42 -0500 (CDT)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
	[209.85.166.72])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mta-p7.oit.umn.edu (Postfix) with ESMTPS id D7D1ECAF
	for <bridge@lists.linux-foundation.org>;
	Sat, 20 Jul 2019 07:23:42 -0500 (CDT)
Received: by mail-io1-f72.google.com with SMTP id u84so37802042iod.1
	for <bridge@lists.linux-foundation.org>;
	Sat, 20 Jul 2019 05:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=K+9BHnE6RbUTOFhStcy8LrNMOZBD7Jm9/NExEpRtGTs=;
	b=VsAKaUY5H8pRtOL9M2UvY9iZeZDLaYKRfFF0N8a+Ayc6PHMdqmm/9LShwhaw19OENE
	pxtbM5Fx5DUA1WzHR5dxLHVeAKGy9wKZXYgRBawbE8gT60iqJsAjGCOPSjBdSDDgFxvu
	b7Wr0bcGk88XngcmuNvn83WoG1nUCpjjQaU9cJI+MIRtg86w26V7jxttyupJtMxWd/HB
	ZNw/Rn624IVLdtvABLf7EWYHrhdx7u+JpOfG34xrmKCHBbNWQawqc/DwOrZRcYdi1DQ/
	3tvSHgoFfGyPCW6CymV+IYbxh4sDtLrW7kVl2JQZ6QC8HV0+Ih1vS9KCl1OiZvVwOR6c
	aJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=K+9BHnE6RbUTOFhStcy8LrNMOZBD7Jm9/NExEpRtGTs=;
	b=Y2T2uenoM8qBpF9gnb6jetu4agMwG6dgyj4HWI6GUrohIDdgv6rHZ9hDX3o4WQ/oii
	lp2X2JMVYbBKIH9w8FALCtrwUSaKjFJYqaAcdtS84Fo3wg/MCpi6q877L/koAP2/v/8s
	STpnIvp1jT14v2lt2wkJQB9QVocqaA2MyahTCVQ5oW0RyDo7LbMjTdlIXS7fB6rv1MOt
	FwzE65JqmUTUCZZqYTSeMEWtTPeGrWthqLqdk2viWNIRCjBLRonSsTE0c3w1FIGPCKRv
	RAbenB8utIrTADGdsaPuN6LIkjFUX9K+AlCU42LFq2DUJR06/oK6qjRxlBBwPrjzOsJy
	uiYg==
X-Gm-Message-State: APjAAAUVlffLAmksHxUM/sJUSZmy2XUoOxjNSV+lESvcbgWmtjb4AlDr
	rq856MNTsO3gKm5dSxR+djq5kdSOVzXU7VhDL8dYTwLUDiPhBY63dUzF434OwdfQ/pFSdGfAOJP
	dR1ScPrlLMJU96fPnBVKPzXmx13V+Kt69FY8=
X-Received: by 2002:a6b:b206:: with SMTP id b6mr58517915iof.286.1563625422515; 
	Sat, 20 Jul 2019 05:23:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIvZ8x2BA1J9vY8UGimtCbB808vFCxS2Rq0GnEylvdPLpsmWAHPUhim/AqK6Ko3OIPJUTULA==
X-Received: by 2002:a6b:b206:: with SMTP id b6mr58517902iof.286.1563625422367; 
	Sat, 20 Jul 2019 05:23:42 -0700 (PDT)
Received: from BlueSky.hil-mspphdt.msp.wayport.net ([107.17.71.65])
	by smtp.gmail.com with ESMTPSA id
	m10sm58326660ioj.75.2019.07.20.05.23.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Jul 2019 05:23:41 -0700 (PDT)
From: Wenwen Wang <wang6495@umn.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Date: Sat, 20 Jul 2019 07:22:45 -0500
Message-Id: <1563625366-3602-1-git-send-email-wang6495@umn.edu>
X-Mailer: git-send-email 2.7.4
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_MED autolearn=unavailable version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Tue, 23 Jul 2019 17:56:18 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	"open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	"moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
	Florian Westphal <fw@strlen.de>, open list <linux-kernel@vger.kernel.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	"open list:NETFILTER" <coreteam@netfilter.org>,
	"open list:NETFILTER" <netfilter-devel@vger.kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH] netfilter: ebtables: compat: fix a memory leak bug
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

From: Wenwen Wang <wenwen@cs.uga.edu>

In compat_do_replace(), a temporary buffer is allocated through vmalloc()
to hold entries copied from the user space. The buffer address is firstly
saved to 'newinfo->entries', and later on assigned to 'entries_tmp'. Then
the entries in this temporary buffer is copied to the internal kernel
structure through compat_copy_entries(). If this copy process fails,
compat_do_replace() should be terminated. However, the allocated temporary
buffer is not freed on this path, leading to a memory leak.

To fix the bug, free the buffer before returning from compat_do_replace().

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 net/bridge/netfilter/ebtables.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
index 963dfdc..fd84b48e 100644
--- a/net/bridge/netfilter/ebtables.c
+++ b/net/bridge/netfilter/ebtables.c
@@ -2261,8 +2261,10 @@ static int compat_do_replace(struct net *net, void __user *user,
 	state.buf_kern_len = size64;
 
 	ret = compat_copy_entries(entries_tmp, tmp.entries_size, &state);
-	if (WARN_ON(ret < 0))
+	if (WARN_ON(ret < 0)) {
+		vfree(entries_tmp);
 		goto out_unlock;
+	}
 
 	vfree(entries_tmp);
 	tmp.entries_size = size64;
-- 
2.7.4

