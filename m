Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C1AEC3B6
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:34:06 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2ED4519BF;
	Fri,  1 Nov 2019 13:33:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C8AE182A
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:46:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEDB663D
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:46:46 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id q2so3573854ljg.7
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jSTLEPaxXRk5sSmG9oSsPXFVdXLQlUfBUPDhCvkx5go=;
	b=RlJIncS5V/VeZ8tPU8EEBpDu0ecPVdk1TB589EL92OS3o6Lj/2CpEeDsKsB6b618GV
	8L3X3n1laq2hQ/uB/NIkih6WDZyT5owW4NktaFEqJOQeK6yQN3cufbWoZnaHcSDpgim7
	sLB18ckMTXbKNu2euww+eB/lnbRZu4oTB+QR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jSTLEPaxXRk5sSmG9oSsPXFVdXLQlUfBUPDhCvkx5go=;
	b=CexmbNR7jcRT2RnyQyOS0lGzeT3SXZ1LeOx0uW98riv8KaFAFBnU7D6lFvcckX3t0B
	fah+PdgxjdHuQ0fsjESBuwKJISfPs18tyZxaDQ/S2Iz5pmkvuQ4qqP9Ya9H/cMC6ubZB
	h0OLTumyX6PTKnGwErrT6FArKs5v2HxLDaGIS58V3U5OW8Zls/dGOC+N9KQoi6zmBSRq
	PDc0hpFefbipcakggbu7jFDXR5TqLaE3MY/fLYr/sOlSmDlXhb+CcwCR1Jp9uCX2sUPa
	pmYZQOHKZLlthjncn8dGYLZYoJkoBR5ZsgEj7faL4xvd54W+k3R9X1sDloV4K4WivCJO
	frTw==
X-Gm-Message-State: APjAAAW2l2hJrXZcgoyY6Hb426JYbNn6JYq/GMUwqWH+M3TjXp41Vaib
	p80/AbfdTAyXQViD4R3O9paKVA==
X-Google-Smtp-Source: APXvYqxE/rdihjXmi5LCYrM2menfTABueMAuRtPKQ209emxoC+iX2FZZzoleq8tRAVMciQR9j1ZvPA==
X-Received: by 2002:a2e:7a02:: with SMTP id v2mr3015462ljc.224.1572612405283; 
	Fri, 01 Nov 2019 05:46:45 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id t4sm2297909lji.40.2019.11.01.05.46.43
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:46:44 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:46:36 +0200
Message-Id: <20191101124639.32140-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
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
Subject: [Bridge] [PATCH net-next v2 0/3] net: bridge: minor followup
	optimizations
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

Hi,
After the converted flags to bitops we can take advantage of the flags
assignment and remove one test and three atomic bitops from the learning
paths (patch 01 and patch 02), patch 03 restores the unlikely() when taking
over HW learned entries.

v2: a clean export of the latest set version

Thanks,
 Nik


Nikolay Aleksandrov (3):
  net: bridge: fdb: br_fdb_update can take flags directly
  net: bridge: fdb: avoid two atomic bitops in
    br_fdb_external_learn_add()
  net: bridge: fdb: restore unlikely() when taking over externally added
    entries

 include/trace/events/bridge.h | 12 ++++++------
 net/bridge/br_fdb.c           | 30 +++++++++++++++---------------
 net/bridge/br_input.c         |  4 ++--
 net/bridge/br_private.h       |  2 +-
 4 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.21.0

