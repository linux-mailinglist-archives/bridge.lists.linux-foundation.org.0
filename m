Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6EEC3C7
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:35:56 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5D2341504;
	Fri,  1 Nov 2019 13:34:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5D3917D1
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:39:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3409287B
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:39:00 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id t5so10139377ljk.0
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=juMaa8T+acHWGuY6rT694YoPoU3OVi+9bgYU3p25Mrw=;
	b=CdxHlu83H3t/gtHF/riMFi+m6lNx5ThrruSpaoo+VUnK8msYMR6ciuo+wnC1b1jSqT
	4I/Swi5lf5czdE/VjgaSq39bszkg3jtp+P3eL8JSiV0ud1VVUFeX5iAWqppQK3ZNNzIf
	+apLsBDr7x1hBH3cIBLU9KTLjJQ/NYSFuUZxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=juMaa8T+acHWGuY6rT694YoPoU3OVi+9bgYU3p25Mrw=;
	b=BlAUOamgcmYFLLz2hPK53Rj9lKM7QUjP6gEDxe9pjRcU3lX8EWFzhOuZNkTNOiPoyr
	6viANKPMQdyWtPXddbZs81A0NkO381Sz/FfBlzBTsSC/wu5TmeG2zIKPgifPc3K/YyIc
	1j2jB4R/4QGYpBr/zvGbO1GUk+nhvWSt3RqszVTzha/MAhh/bcuVKDvC/U3Il9SXf1KS
	NvT5C1/CwXfuiSVI9CA3WLlECuzpKN44TpwiL34YM3bzlLXrhUQr0MwW+zBcHYNshMVY
	UFm9CoE4X7wAmcd7cETpxvec3exoT4c0qq3eOyB4m78XCZl/rPcRu5DtSqYQJcGk4AG0
	wXwQ==
X-Gm-Message-State: APjAAAXXxiySKiNhbbwuAkXphS01KoFn91sOhfn4toqjZ9nkTUoTS0rE
	Ebp1Ayo58d/oM6L7yUn3W+KCXu4o0y8=
X-Google-Smtp-Source: APXvYqzExQp9cCONwbyoYn3ZKE/10UZ1my6j3aDGFIwTizcCGc1h/FDjSRvSucuoXW+TY6hqJrITjA==
X-Received: by 2002:a05:651c:28a:: with SMTP id
	b10mr7777962ljo.124.1572611938734; 
	Fri, 01 Nov 2019 05:38:58 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	f25sm2349909ljp.100.2019.11.01.05.38.57
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:38:58 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:38:42 +0200
Message-Id: <20191101123844.17518-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
References: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 2/3] net: bridge: fdb: avoid one atomic
	bitop in br_fdb_external_learn_add()
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

If we pass the BR_FDB_ADDED_BY_EXT_LEARN flag directly to fdb_create()
we can avoid one unconditional atomic bitop when learning a new entry.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index b37e0f4c1b2b..7db09410679b 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1113,14 +1113,14 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 
 	fdb = br_fdb_find(br, addr, vid);
 	if (!fdb) {
-		fdb = fdb_create(br, p, addr, vid, 0);
+		fdb = fdb_create(br, p, addr, vid,
+				 BIT(BR_FDB_ADDED_BY_EXT_LEARN));
 		if (!fdb) {
 			err = -ENOMEM;
 			goto err_unlock;
 		}
 		if (swdev_notify)
 			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
-		set_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags);
 		fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 	} else {
 		fdb->updated = jiffies;
-- 
2.21.0

