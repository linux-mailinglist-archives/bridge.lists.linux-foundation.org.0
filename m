Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075C07A4644
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4D26414B5;
	Mon, 18 Sep 2023 09:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4D26414B5
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=K0MYzyZd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sm2kWnroEeEg; Mon, 18 Sep 2023 09:44:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4DF5141481;
	Mon, 18 Sep 2023 09:44:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DF5141481
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8654EC0DD8;
	Mon, 18 Sep 2023 09:44:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12C57C0032
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D165F40159
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D165F40159
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ya6y-XllmL08 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Sep 2023 17:58:49 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCD69400CF
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCD69400CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694627927;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qawn5ppsw1vm2xxtX3RUrgq9U34E1jYZhJD2HrMAzsc=;
 b=K0MYzyZdLkqMt7dMJEa4hhNdgqbYRTvwCdOqcs0Z4RByjL8FvzHh08xBWmYL6Kv22kWkpe
 +uOYG7x6+HtXKSAlJchvtneRa0McsJmdY7X+68EQCS7eyxKZmbxJ5JbfM+3lEHBUBj5yTh
 tsoplMvp8PxgBsDtdZYQYzca4uyFl3o=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-107-DCPnJ2wGOrmQPM9phsFezA-1; Wed, 13 Sep 2023 13:58:44 -0400
X-MC-Unique: DCPnJ2wGOrmQPM9phsFezA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7A33101B456;
 Wed, 13 Sep 2023 17:58:43 +0000 (UTC)
Received: from renaissance-vector.redhat.com (unknown [10.39.193.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A76A040C6EA8;
 Wed, 13 Sep 2023 17:58:41 +0000 (UTC)
From: Andrea Claudi <aclaudi@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 13 Sep 2023 19:58:25 +0200
Message-ID: <844947000ac7744a3b40b10f9cf971fd15572195.1694625043.git.aclaudi@redhat.com>
In-Reply-To: <cover.1694625043.git.aclaudi@redhat.com>
References: <cover.1694625043.git.aclaudi@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Approved-At: Mon, 18 Sep 2023 09:44:19 +0000
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH iproute2-next 1/2] configure: add the --color option
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

This commit allows users/packagers to choose a default for the color
output feature provided by some iproute2 tools.

The configure script option is documented in the script itself and it is
pretty much self-explanatory. The default value is set to "never" to
avoid changes to the current ip, tc, and bridge behaviour.

Signed-off-by: Andrea Claudi <aclaudi@redhat.com>
---
 Makefile  |  3 ++-
 configure | 37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 7d1819ce..a24844cf 100644
--- a/Makefile
+++ b/Makefile
@@ -41,7 +41,8 @@ endif
 DEFINES+=-DCONF_USR_DIR=\"$(CONF_USR_DIR)\" \
          -DCONF_ETC_DIR=\"$(CONF_ETC_DIR)\" \
          -DNETNS_RUN_DIR=\"$(NETNS_RUN_DIR)\" \
-         -DNETNS_ETC_DIR=\"$(NETNS_ETC_DIR)\"
+         -DNETNS_ETC_DIR=\"$(NETNS_ETC_DIR)\" \
+         -DCONF_COLOR=$(CONF_COLOR)
 
 #options for AX.25
 ADDLIB+=ax25_ntop.o
diff --git a/configure b/configure
index 18be5a03..eb689341 100755
--- a/configure
+++ b/configure
@@ -5,6 +5,7 @@
 INCLUDE="$PWD/include"
 PREFIX="/usr"
 LIBDIR="\${prefix}/lib"
+COLOR="never"
 
 # Output file which is input to Makefile
 CONFIG=config.mk
@@ -479,6 +480,24 @@ check_cap()
 	fi
 }
 
+check_color()
+{
+	case "$COLOR" in
+		never)
+			echo 'CONF_COLOR:=COLOR_OPT_NEVER' >> $CONFIG
+			echo 'never'
+			;;
+		auto)
+			echo 'CONF_COLOR:=COLOR_OPT_AUTO' >> $CONFIG
+			echo 'auto'
+			;;
+		always)
+			echo 'CONF_COLOR:=COLOR_OPT_ALWAYS' >> $CONFIG
+			echo 'always'
+			;;
+	esac
+}
+
 quiet_config()
 {
 	cat <<EOF
@@ -509,6 +528,10 @@ usage()
 {
 	cat <<EOF
 Usage: $0 [OPTIONS]
+	--color <never|auto|always>	Default color output configuration. Available options:
+					  never: color output is disabled (default)
+					  auto: color output is enabled if stdout is a terminal
+					  always: color output is enabled regardless of stdout state
 	--include_dir <dir>		Path to iproute2 include dir
 	--libdir <dir>			Path to iproute2 lib dir
 	--libbpf_dir <dir>		Path to libbpf DESTDIR
@@ -527,6 +550,11 @@ if [ $# -eq 1 ] && [ "$(echo $1 | cut -c 1)" != '-' ]; then
 else
 	while [ "$#" -gt 0 ]; do
 		case "$1" in
+			--color)
+				shift
+				COLOR="$1" ;;
+			--color=*)
+				COLOR="${1#*=}" ;;
 			--include_dir)
 				shift
 				INCLUDE="$1" ;;
@@ -563,6 +591,12 @@ else
 	done
 fi
 
+case "$COLOR" in
+	never) ;;
+	auto) ;;
+	always) ;;
+	*) usage 1 ;;
+esac
 [ -d "$INCLUDE" ] || usage 1
 if [ "${LIBBPF_DIR-unused}" != "unused" ]; then
 	[ -d "$LIBBPF_DIR" ] || usage 1
@@ -634,6 +668,9 @@ check_strlcpy
 echo -n "libcap support: "
 check_cap
 
+echo -n "color output: "
+check_color
+
 echo >> $CONFIG
 echo "%.o: %.c" >> $CONFIG
 echo '	$(QUIET_CC)$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) -c -o $@ $<' >> $CONFIG
-- 
2.41.0

