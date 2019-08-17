Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CD29103D
	for <lists.bridge@lfdr.de>; Sat, 17 Aug 2019 13:22:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0BD35B5F;
	Sat, 17 Aug 2019 11:22:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 199C0AEF
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 11:22:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 994B763D
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 11:22:27 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z11so3985874wrt.4
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 04:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=uGqrtStYIQ/gG4009jwt9tOaQZGkVkkXlx2NS4SiirU=;
	b=ZtM9408P+KgDletkOKWAlAdeR4QyapJg85TBbsvBLmOlmikx7HU4TLtj8fWPtGO5pb
	wGMfntiiKHX6RnFeLHAYEQ+BpM40BftYYtJVu8xKz6M6252kQAlCSjOIxZyTvPCES3fU
	5Az6CwpXff6ksO92Mc5WM8UdDiWlhJHqzbvKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=uGqrtStYIQ/gG4009jwt9tOaQZGkVkkXlx2NS4SiirU=;
	b=R/2DVmoCW21MnJU1oF3fOzAJWE0hbnwcMKRYhfae+HVaB+0dB7YOIh9OUXXu0kz5mt
	dYIt9WWJYK1qFVqUjHIBp1EbRD8r7qOm5JP3xnNNB9AT5St3eYdVl32tSrj0zr0U1QF/
	knbmP3SnTiFvegL71vzd/qWCtcyrCZshHxBxVITLYKRG8O9j1GYUx12tEjsYoclxeYFS
	tkUix2sBenQYF5UDsTkqyr88b/bUPfxXOzAbiKTumdHrtMT9L9TMbpvYPdKQoMtvpKGt
	ud6EZ0f+PM7hBpjWYdCeQmlUnFU+TopgeNqHjzyKM98ZzAQ/ZoyHvYEgqSjpe2TRabr3
	/1IQ==
X-Gm-Message-State: APjAAAV+kiaX0t4+DwSbgtHjsZRJlNXOzRSOzkBnlu3E1gALUBiOb8Iq
	e0igqdQLTkxbWM7V7ymaVJ62sQ==
X-Google-Smtp-Source: APXvYqzUUe6LtII18GjSQtJq3C+pwGe2SCorDdpnI4svQg2Ve5qN2A5IMizZYMhJfZASKI5aFExSxw==
X-Received: by 2002:a5d:6a45:: with SMTP id t5mr7938283wrw.228.1566040946127; 
	Sat, 17 Aug 2019 04:22:26 -0700 (PDT)
Received: from debil.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	o14sm13900244wrg.64.2019.08.17.04.22.25
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 17 Aug 2019 04:22:25 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Aug 2019 14:22:09 +0300
Message-Id: <20190817112213.27097-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816.130417.1610388599335442981.davem@davemloft.net>
References: <20190816.130417.1610388599335442981.davem@davemloft.net>
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
Subject: [Bridge] [PATCH net-next v3 0/4] net: bridge: mdb: allow
	dump/add/del of host-joined entries
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

v3: fix compiler warning in patch 04 (DaveM)
v2: change patch 04 to avoid double notification and improve host group
    manual removal if no ports are present in the group

Thanks,
 Nik


Nikolay Aleksandrov (4):
  net: bridge: mdb: move vlan comments
  net: bridge: mdb: factor out mdb filling
  net: bridge: mdb: dump host-joined entries as well
  net: bridge: mdb: allow add/delete for host-joined groups

 net/bridge/br_mdb.c       | 175 +++++++++++++++++++++++++-------------
 net/bridge/br_multicast.c |  30 +++++--
 net/bridge/br_private.h   |   2 +
 3 files changed, 142 insertions(+), 65 deletions(-)

-- 
2.21.0

