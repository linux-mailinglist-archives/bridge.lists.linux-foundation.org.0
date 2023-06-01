Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FC971F090
	for <lists.bridge@lfdr.de>; Thu,  1 Jun 2023 19:22:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39C4A6136F;
	Thu,  1 Jun 2023 17:22:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39C4A6136F
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=KEYx5twP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12hPv0dyjTBi; Thu,  1 Jun 2023 17:22:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D24D361348;
	Thu,  1 Jun 2023 17:22:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D24D361348
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77B57C0088;
	Thu,  1 Jun 2023 17:22:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 589BCC0029
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jun 2023 17:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 332CC40610
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jun 2023 17:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 332CC40610
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=KEYx5twP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UsQkRiGIWd-N for <bridge@lists.linux-foundation.org>;
 Thu,  1 Jun 2023 17:21:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 308834053C
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 308834053C
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jun 2023 17:21:58 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-25632c99eecso482983a91.2
 for <bridge@lists.linux-foundation.org>; Thu, 01 Jun 2023 10:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1685640117;
 x=1688232117; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9j3narrsxe03huzqvKsSsW9jWi72TLYmmQBkxj0a2/Q=;
 b=KEYx5twPd+O8SA7JfI1OmQDyCGO+RfmBgA8+b1bhzTRsdGE5JXm9ZjX2I3zNs36QNt
 MSNrFV/EPqv1rlH276g+w3nC3+YVr6lJyuuxhk9kKU1JoY9CqaVxwK9oHiblKSXDGQPV
 owM5/BpCr71G9me5zvSAZR9S9o98TxxBm/LMCV9DkpRkInxblJ+4c5OcsmNbBsmis4OM
 29VL1cZXTCadFvyzP5YoZUwJEVmoSDj5qJgi1IduQcS1CfV9dP+Pe6pKe18fiO4xyA63
 XquN9N8CWLsSHKOKutjbAOHAQN3O0TNpa9mGasAjYj5j//Bx9knWhHbFEMUDiHFge5sh
 fSYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685640117; x=1688232117;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9j3narrsxe03huzqvKsSsW9jWi72TLYmmQBkxj0a2/Q=;
 b=eHmY8a+15gLu0TGM643fElCtgFL0/l89sxQj4z75m39Tf5kFU5IerxIbu0jKE7i0S4
 iqpwyjvKUqoAHWIrSGHG01WoBJ24VaS/x/eZ0rien8sSpx5ahlXeJQUKzyIV8C8sgiEX
 hX4QDzLwKI4/xB8snAnlqSI+ZRDyJ9C1rdVI55YdNbx6BIezgUmf8KwCV8VdpObFMfAc
 yu9Uso3J9Qnp7ttKuFBQos/vVdJZ7WGYpSOGvPPZYFcHk/RJXWxY4EMUqArb0H2x7bLT
 7HjzmY9vgciuV8p/qDiF+7A/innIC7TSO9hL44Ly2kwy50Sl9GwPL4tRZ1FMPgFhtPFQ
 ExMQ==
X-Gm-Message-State: AC+VfDyzFE2t04S265iMxSD5J6u71LvndPfBNKer7Wodmm7YssBRqeNE
 0a29JveLDJrFOZ3uFh45uiM6FQ==
X-Google-Smtp-Source: ACHHUZ69Pkn5lUIVNzFfEdC4BcORl/qWiATSJSkJVB+EKH3nAoSMnrs87OUraUJi1/5b3OyEobO9kQ==
X-Received: by 2002:a17:902:dac7:b0:1ac:8837:de9 with SMTP id
 q7-20020a170902dac700b001ac88370de9mr134946plx.3.1685640117453; 
 Thu, 01 Jun 2023 10:21:57 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 k6-20020a170902760600b001b1920cffdasm2378945pll.204.2023.06.01.10.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jun 2023 10:21:56 -0700 (PDT)
To: netdev@vger.kernel.org
Date: Thu,  1 Jun 2023 10:21:41 -0700
Message-Id: <20230601172145.51357-4-stephen@networkplumber.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230601172145.51357-1-stephen@networkplumber.org>
References: <20230601172145.51357-1-stephen@networkplumber.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH iproute2 3/7] bridge: make print_vlan_info static
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Function defined and used in only one file.

Signed-off-by: Stephen Hemminger <stephen@networkplumber.org>
---
 bridge/br_common.h | 1 -
 bridge/vlan.c      | 3 ++-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/bridge/br_common.h b/bridge/br_common.h
index 1bdee65844c1..704e76b0acb2 100644
--- a/bridge/br_common.h
+++ b/bridge/br_common.h
@@ -6,7 +6,6 @@
 #define MDB_RTR_RTA(r) \
 		((struct rtattr *)(((char *)(r)) + RTA_ALIGN(sizeof(__u32))))
 
-void print_vlan_info(struct rtattr *tb, int ifindex);
 int print_linkinfo(struct nlmsghdr *n, void *arg);
 int print_mdb_mon(struct nlmsghdr *n, void *arg);
 int print_fdb(struct nlmsghdr *n, void *arg);
diff --git a/bridge/vlan.c b/bridge/vlan.c
index 5b304ea94224..dfc62f83a5df 100644
--- a/bridge/vlan.c
+++ b/bridge/vlan.c
@@ -18,6 +18,7 @@
 
 static unsigned int filter_index, filter_vlan;
 static int vlan_rtm_cur_ifidx = -1;
+static void print_vlan_info(struct rtattr *tb, int ifindex);
 
 enum vlan_show_subject {
 	VLAN_SHOW_VLAN,
@@ -1309,7 +1310,7 @@ static int vlan_global_show(int argc, char **argv)
 	return 0;
 }
 
-void print_vlan_info(struct rtattr *tb, int ifindex)
+static void print_vlan_info(struct rtattr *tb, int ifindex)
 {
 	struct rtattr *i, *list = tb;
 	int rem = RTA_PAYLOAD(list);
-- 
2.39.2

