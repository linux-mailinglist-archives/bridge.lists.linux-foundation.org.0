Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id F1444EC3BE
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:35:19 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A4BDC1AE0;
	Fri,  1 Nov 2019 13:34:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 61C6717C5
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:38:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB96087B
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:38:57 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v2so10118709lji.4
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eJi5RuoHHaWaDwWIiOiYivJc8X2A5zszL2ofHOuzPQw=;
	b=fELlXBC+m2oDVEVVp+lLH4PDPoC7PUuLgmWFlnU6B8iBP+LpO7IBe6HPsVehmLiDCO
	PBrXC8OPvIVRSXe6/E7Dztu7e9BBFyT2dbPD3bkfFRWz90CwSSS/8b4FH2PTl3oxa+0x
	pyRsWXRAGcSVOm7thhi3hYSUQAWxXTCkX4BTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eJi5RuoHHaWaDwWIiOiYivJc8X2A5zszL2ofHOuzPQw=;
	b=P3oEvGc0i6tTB5AeF7jkKbTpp3y+rQv9qgcQdHuAAitY0FeLHKFirVv8jbOlG7ol5r
	iCfVQG9LQfxGGKIXKx8HrLLnNqALWQnP73KNWOuNd+fsHkHmjCRMTIQOBanWiSfS1gGU
	npx00yvIcloICwyyMjZmQEq9/hvjDwdwfYJMgvic3l3lX/Wco8gX0LFkPkJtllEiogcS
	oA9ez8Jghqaueqn1Or3n0Y3FnY2nPPDqChxNNwseDpPc6zbxEDnH7/AEFBReFwvTaeyr
	FrSz5WSp5cMFAwpPdFQjqWviQGCa0U9FFKw9Nj79p2yN9GPgs+Ag1kcGTD0e5SrOVpLQ
	iwXg==
X-Gm-Message-State: APjAAAWVE+jMQMmC1P8+BeeeMoH2X+KRuKnM5vhYFUWBla1B8p4GrDiX
	YnhITz+2R6gP3bLfw5093NbYgg==
X-Google-Smtp-Source: APXvYqzZZL9C0nxRhxpitUItz37TOi+L7VLDMk1APpbU3NJv+h+y8i2n5s9c+mg0dQKoPq10ee78Kw==
X-Received: by 2002:a2e:9a9a:: with SMTP id p26mr3274753lji.164.1572611936105; 
	Fri, 01 Nov 2019 05:38:56 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	f25sm2349909ljp.100.2019.11.01.05.38.54
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:38:55 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:38:40 +0200
Message-Id: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 0/3] net: bridge: minor followup
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

