Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A19417A4645
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6BE361419;
	Mon, 18 Sep 2023 09:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6BE361419
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=E4nWVITv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PpYLAgjEWsrb; Mon, 18 Sep 2023 09:44:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2BAD460BCC;
	Mon, 18 Sep 2023 09:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BAD460BCC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E1932C0DDF;
	Mon, 18 Sep 2023 09:44:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1106BC0032
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D258E40159
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D258E40159
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=E4nWVITv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcsiaxIn6RMP for <bridge@lists.linux-foundation.org>;
 Wed, 13 Sep 2023 17:58:52 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16621400CF
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16621400CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694627930;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LEtiwNiM9PzpjRqi6jakAaaVv0eVpRImxmmfOJbw9+M=;
 b=E4nWVITvjdg6c9psb7qda+ghFKEQLGFyXAxc/06WTgsSGi5gC+uEvc2Dk6XyZRFZoU62NQ
 six6y1li9DU35Q9PuQd5J7rx4lOmi203n+UWo9o2hflcUGZZc8j0KHSIKUGwJ+liHqwcd5
 R97rIyFvvG/O9EQxZ444K+0vJPvZdbI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-NaXQbMMjPkOpPhfNncG2hg-1; Wed, 13 Sep 2023 13:58:47 -0400
X-MC-Unique: NaXQbMMjPkOpPhfNncG2hg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 222B681B08C;
 Wed, 13 Sep 2023 17:58:47 +0000 (UTC)
Received: from renaissance-vector.redhat.com (unknown [10.39.193.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8A97740C6EA8;
 Wed, 13 Sep 2023 17:58:44 +0000 (UTC)
From: Andrea Claudi <aclaudi@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 13 Sep 2023 19:58:26 +0200
Message-ID: <ccc21b33a1a338bc943ac5d0fb40a5bb7ad5fa43.1694625043.git.aclaudi@redhat.com>
In-Reply-To: <cover.1694625043.git.aclaudi@redhat.com>
References: <cover.1694625043.git.aclaudi@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Approved-At: Mon, 18 Sep 2023 09:44:19 +0000
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH iproute2-next 2/2] treewide: use configured value
	as the default color output
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

With Makefile providing -DCONF_COLOR, we can use its value as the
default color output.

This effectively allow users and packagers to define a default for the
color output feature without using shell aliases, and with minimum code
impact.

Signed-off-by: Andrea Claudi <aclaudi@redhat.com>
---
 bridge/bridge.c | 3 ++-
 ip/ip.c         | 2 +-
 tc/tc.c         | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/bridge/bridge.c b/bridge/bridge.c
index 704be50c..339101a8 100644
--- a/bridge/bridge.c
+++ b/bridge/bridge.c
@@ -23,7 +23,6 @@ int preferred_family = AF_UNSPEC;
 int oneline;
 int show_stats;
 int show_details;
-static int color;
 int compress_vlans;
 int json;
 int timestamp;
@@ -103,6 +102,8 @@ static int batch(const char *name)
 int
 main(int argc, char **argv)
 {
+	int color = CONF_COLOR;
+
 	while (argc > 1) {
 		const char *opt = argv[1];
 
diff --git a/ip/ip.c b/ip/ip.c
index 8c046ef1..860ff957 100644
--- a/ip/ip.c
+++ b/ip/ip.c
@@ -168,7 +168,7 @@ int main(int argc, char **argv)
 	const char *libbpf_version;
 	char *batch_file = NULL;
 	char *basename;
-	int color = 0;
+	int color = CONF_COLOR;
 
 	/* to run vrf exec without root, capabilities might be set, drop them
 	 * if not needed as the first thing.
diff --git a/tc/tc.c b/tc/tc.c
index 25820500..082c6677 100644
--- a/tc/tc.c
+++ b/tc/tc.c
@@ -35,7 +35,6 @@ int use_iec;
 int force;
 bool use_names;
 int json;
-int color;
 int oneline;
 int brief;
 
@@ -254,6 +253,7 @@ int main(int argc, char **argv)
 {
 	const char *libbpf_version;
 	char *batch_file = NULL;
+	int color = CONF_COLOR;
 	int ret;
 
 	while (argc > 1) {
-- 
2.41.0

