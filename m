Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F28C22CCE4
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 056AC8851E;
	Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fiz0n-EZOTgX; Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5356288489;
	Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40DBAC004C;
	Fri, 24 Jul 2020 18:21:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DEC30C016F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE6EA8714A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eez8A7fW62Ct for <bridge@lists.linux-foundation.org>;
 Wed, 10 Jun 2020 15:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 67C4E86F8D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 15:49:31 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z63so343284pfb.1
 for <bridge@lists.linux-foundation.org>; Wed, 10 Jun 2020 08:49:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J9spO8sCjIOMs0wQgccVfIprXE/wzCnPTAA23dgMAdc=;
 b=Yw7a3oD0Xi77E4tNhB6TBvYugeodK7CGYxXRsjjYM8rwU6TEt3juiOimHhr0BQWES5
 fsP5M4VH7lU5InPSCBqOlEOGWkJzV6/4DRthMdztFFpWHMhRVMmAjjtgQ2nTMqWwwbBq
 /4WMbgajGM6TSJmA09XhPcmZovbSI7mlrKOj9tD+P0JdQJsBgqK13qm/VJmgJcACsM6c
 aWwAdLRzE34/7RPtKVgCekKPRfgp41jIVln8MAOGulohbosFuUVkaFco+q3nvAOjcesm
 s8uibI4GlVs04q95EcAKgudptEFmZ1CGCI18AH5yNdi6XTG+Y0BgQb4+j/z4qD9it73U
 AZ2Q==
X-Gm-Message-State: AOAM530axgG0AA9p3DbuLOcAUZWNszRVx3LfREuh6HgIiCuMAmkuFkvi
 PCNL+0H8kOB2+Kn9Gnjnrxg=
X-Google-Smtp-Source: ABdhPJyu1eX5pyEODFKXM1tUOb06KZbLUOW+sULR/svGLkAhoxImKT7+pXfTo+K5VKZEdMa5hV0cwg==
X-Received: by 2002:a62:aa0a:: with SMTP id e10mr3428008pff.91.1591804170947; 
 Wed, 10 Jun 2020 08:49:30 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id c12sm242070pgm.73.2020.06.10.08.49.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 08:49:26 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 2C139403AB; Wed, 10 Jun 2020 15:49:25 +0000 (UTC)
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk,
 philipp.reisner@linbit.com, lars.ellenberg@linbit.com, axboe@kernel.dk,
 bfields@fieldses.org, chuck.lever@oracle.com, roopa@cumulusnetworks.com,
 nikolay@cumulusnetworks.com, davem@davemloft.net, kuba@kernel.org,
 dhowells@redhat.com, jarkko.sakkinen@linux.intel.com, jmorris@namei.org,
 serge@hallyn.com, christian.brauner@ubuntu.com
Date: Wed, 10 Jun 2020 15:49:18 +0000
Message-Id: <20200610154923.27510-1-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org,
 josh@joshtriplett.org, slyfox@gentoo.org, ast@kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 keescook@chromium.org
Subject: [Bridge] [PATCH 0/5] kmod/umh: a few fixes
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

From: Luis Chamberlain <mcgrof@kernel.org>

Tiezhu Yang had sent out a patch set with a slew of kmod selftest
fixes, and one patch which modified kmod to return 254 when a module
was not found. This opened up pandora's box about why that was being
used for and low and behold its because when UMH_WAIT_PROC is used
we call a kernel_wait4() call but have never unwrapped the error code.
The commit log for that fix details the rationale for the approach
taken. I'd appreciate some review on that, in particular nfs folks
as it seems a case was never really hit before.

This goes boot tested, selftested with kmod, and 0-day gives its
build blessings.

Luis Chamberlain (2):
  umh: fix processed error when UMH_WAIT_PROC is used
  selftests: simplify kmod failure value

Tiezhu Yang (3):
  selftests: kmod: Use variable NAME in kmod_test_0001()
  kmod: Remove redundant "be an" in the comment
  test_kmod: Avoid potential double free in trigger_config_run_type()

 drivers/block/drbd/drbd_nl.c         | 20 +++++------
 fs/nfsd/nfs4recover.c                |  2 +-
 include/linux/sched/task.h           | 13 ++++++++
 kernel/kmod.c                        |  5 ++-
 kernel/umh.c                         |  4 +--
 lib/test_kmod.c                      |  2 +-
 net/bridge/br_stp_if.c               | 10 ++----
 security/keys/request_key.c          |  2 +-
 tools/testing/selftests/kmod/kmod.sh | 50 +++++++++++++++++++++++-----
 9 files changed, 71 insertions(+), 37 deletions(-)

-- 
2.26.2

