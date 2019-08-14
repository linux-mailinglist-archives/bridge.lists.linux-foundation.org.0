Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7CB8D663
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 16:40:46 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B1CFAEA3;
	Wed, 14 Aug 2019 14:40:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAEFAE63
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 14:40:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 042C467F
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 14:40:33 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 10so4817609wmp.3
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 07:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=MHZKJD3O96CYycYAww/OgcUVDON2lbDy33AAvVQm3jI=;
	b=NldIB9N9PO1nliz1xNKKn/2NA1LHMamHG/sVz+FBW6flX38Ti9erpdA39bqvIAhaaW
	DuP5LYLzNtdaPR3X6q3oWpJaGqIihzMqJh2NAjmwVmfM6tOKwgiQRlmoawQejARS0/Rt
	jTPH+TV7U693szIuaT+lDyi89FKjdcodYZVMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=MHZKJD3O96CYycYAww/OgcUVDON2lbDy33AAvVQm3jI=;
	b=FBhQfitxOn3YhDIUnwt/XiW1w1r35BeW/Ro04HBZQ9XXZkj5nNAHL5CCHXrGWkFSBD
	7T8ygj/OVm0uvf6kVFG9z/2Cv8rXc0NQqH96/jEmC1c1vS/Khg8ozTQ0mg4BL+h/2xCd
	Ky4vtTnIJeEmL/wmncrk3dVUmDYMl1gfAJHgukvCqUwEK1eASOiIS5zDGTbgopRGDozE
	tIZ5rYhvdug+mI/gICWv73RaUMKNUgJP6zZ7lv95jXAloddMHpFLA0kZgDuqpjpXbuNb
	ArxPYRbJSSib6MCH76Tgn6vq7ED1nG+x0nZofhcyV1oeNXUtX+TNRvBZ9ciNi7JfYE4d
	TTuQ==
X-Gm-Message-State: APjAAAXGk4tb/hZwFSbAOFOQZQNur/PpjtqvnAC9NG5RJwv8CgzdEwVE
	CAB3Jcd33y1RpAw6Yxsd7Q2RAA==
X-Google-Smtp-Source: APXvYqxuxacPXxY2kwnWoW7pIax7IPnwnDm71EHQV5QsniPNYeKCwOPX2FVU9xWiO15yMmupQeoyyg==
X-Received: by 2002:a1c:4d0c:: with SMTP id o12mr9176595wmh.62.1565793632453; 
	Wed, 14 Aug 2019 07:40:32 -0700 (PDT)
Received: from wrk.www.tendawifi.com ([79.134.174.40])
	by smtp.gmail.com with ESMTPSA id o8sm3383874wma.1.2019.08.14.07.40.31
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 14 Aug 2019 07:40:31 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Aug 2019 17:40:20 +0300
Message-Id: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 0/4] net: bridge: mdb: allow dump/add/del
	of host-joined entries
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
This set makes the bridge dump host-joined mdb entries, they should be
treated as normal entries since they take a slot and are aging out.
We already have notifications for them but we couldn't dump them until
now so they remained hidden. We dump them similar to how they're
notified, in order to keep user-space compatibility with the dumped
objects (e.g. iproute2 dumps mdbs in a format which can be fed into
add/del commands) we allow host-joined groups also to be added/deleted via
mdb commands. That can later be used for L2 mcast MAC manipulation as
was recently discussed. Note that iproute2 changes are not necessary,
this set will work with the current user-space mdb code.

Patch 01 - a trivial comment move
Patch 02 - factors out the mdb filling code so it can be
           re-used for the host-joined entries
Patch 03 - dumps host-joined entries
Patch 04 - allows manipulation of host-joined entries via standard mdb
           calls

Thanks,
 Nik

Nikolay Aleksandrov (4):
  net: bridge: mdb: move vlan comments
  net: bridge: mdb: factor out mdb filling
  net: bridge: mdb: dump host-joined entries as well
  net: bridge: mdb: allow add/delete for host-joined groups

 net/bridge/br_mdb.c       | 171 +++++++++++++++++++++++++-------------
 net/bridge/br_multicast.c |  24 ++++--
 net/bridge/br_private.h   |   2 +
 3 files changed, 133 insertions(+), 64 deletions(-)

-- 
2.21.0

