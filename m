Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 303ECE878D
	for <lists.bridge@lfdr.de>; Tue, 29 Oct 2019 12:54:59 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E9A721320;
	Tue, 29 Oct 2019 11:54:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2D62D13
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 801438A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:36 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v2so671279lji.4
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=aY6EYaegNeZcRsm3y6Fc/tP8DJiXWZJIyRTKtd4cdOY=;
	b=JX0+XLqvhhWwVNTSgLUt+U4eE0m6e2mXHAUy3HfntwvD5/OKXPWzF8iv+b/aLzKwV6
	nQUVRpKHMScYLWs/xrEptfreJXn0kPvyjh6KthqiaLKubSpOwcy8cjI0oBmz+OSRXe12
	7MQFbyfdhSjoKWhX/bpnEYFEY5GuNntiSS9eE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=aY6EYaegNeZcRsm3y6Fc/tP8DJiXWZJIyRTKtd4cdOY=;
	b=op2x79kpz/IE2SzBH8M+nTklpSO07fafBQwbSHxVORXb3FtyjiiE7Ruvs0wLfeHcNK
	FQ3pjPyet3P1lYp0lOiqIeALnBZGPojPvVJhV+aQiAEQlhlFPP+RSr0Cw5sXcaXS0aUy
	SC/8uVWW79qMxwfJvEuYyI5pvemYe+0v5/cYddxSa+X7VpvLMB996YBEFodX4TNC9uJp
	+wqoi1XMJpsPY857c7qGlZ0E0T8zkavu6v8doOuWM+FTSpmU8H3l/Nq5DsOcW0S8eiDW
	zYrhpHN5H+4VNdsrlw5o5KPt8wnBTLYt4Nu2MsAuebnS1Jckp/5Op6CyCEi5DHl+ZxaA
	5Erg==
X-Gm-Message-State: APjAAAUNanQn8zAnB7EDXfAYECqtXx7Lnh6a6Fvw7prXH5GoxhzgT0Jd
	2LS3IglfI1ljGJuxLUY6Iybj5A==
X-Google-Smtp-Source: APXvYqz19QJm2NAQDzY8qIOD/xkAWtvO6aW4OMuxGcTXUV0/uorPYMZFZtvZiI8SAs7etQsX8elXpA==
X-Received: by 2002:a2e:9149:: with SMTP id q9mr2443837ljg.49.1572350074595;
	Tue, 29 Oct 2019 04:54:34 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	r12sm11953310lfp.63.2019.10.29.04.54.32
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 29 Oct 2019 04:54:33 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 29 Oct 2019 13:45:52 +0200
Message-Id: <20191029114559.28653-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 0/7] net: bridge: convert fdbs to use
	bitops
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
We'd like to have a well-defined behaviour when changing fdb flags. The
problem is that we've added new fields which are changed from all
contexts without any locking. We are aware of the bit test/change races
and these are fine (we can remove them later), but it is considered
undefined behaviour to change bitfields from multiple threads and also
on some architectures that can result in unexpected results,
specifically when all fields between the changed ones are also
bitfields. The conversion to bitops shows the intent clearly and
makes them use functions with well-defined behaviour in such cases.
There is no overhead for the fast-path, the bit changing functions are
used only in special cases when learning and in the slow path.
In addition this conversion allows us to simplify fdb flag handling and
avoid bugs for future bits (e.g. a forgetting to clear the new bit when
allocating a new fdb). All bridge selftests passed, also tried all of the
converted bits manually in a VM.

Thanks,
 Nik

Nikolay Aleksandrov (7):
  net: bridge: fdb: convert is_local to bitops
  net: bridge: fdb: convert is_static to bitops
  net: bridge: fdb: convert is_sticky to bitops
  net: bridge: fdb: convert added_by_user to bitops
  net: bridge: fdb: convert added_by_external_learn to use bitops
  net: bridge: fdb: convert offloaded to use bitops
  net: bridge: fdb: set flags directly in fdb_create

 net/bridge/br_fdb.c       | 133 +++++++++++++++++++-------------------
 net/bridge/br_input.c     |   2 +-
 net/bridge/br_private.h   |  17 +++--
 net/bridge/br_switchdev.c |  12 ++--
 4 files changed, 85 insertions(+), 79 deletions(-)

-- 
2.21.0

