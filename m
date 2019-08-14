Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3AD8D920
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 19:06:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AAB0BCDD;
	Wed, 14 Aug 2019 17:05:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73346B6D
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 17:05:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB5D676D
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 17:05:49 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id v15so5210331wml.0
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 10:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=O2/HKTzuPQzXFYnOU04mpGq15x9OswvlZvuEDIRAAnQ=;
	b=V/SyXvw7xrd+MWLR/nh0fkmNxWZ/WQ8km4+6y9dvSkoeS0pJy984CiDAuOnYi5IVK4
	P7Kj4fZwZ5ak+jjhlnu18TVd69ejsSTikKhaDYHQSvHWOavQtMxyCcAjpJJodIWR4ljq
	MJ6F+WcRksuQezr5hpPx3Pj16nxVXikG2YLBI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=O2/HKTzuPQzXFYnOU04mpGq15x9OswvlZvuEDIRAAnQ=;
	b=Xzhy2dt7uqzaFKNXd7bcTQQU0mxzaZPl0tkmmJfSnbbIhD1ldBRpa1rIkN8jUhOKXi
	T3kC9jvfZsewzTDW6UIqyL0Scgd4hAdR84hIpZh7H5aDNppukqM17lzcAn/Ar0GL8Xo8
	ZJx55Y605b/48QQOVRyYwmIJEwJZyKYv6W3NuQOg/uzXToOdKe4HGU9w1Co8x3rBELDQ
	VYapVKQolR/BYLwJu+FncaCX3Ln+CHvO83Sra9HerKHKD4T5ndudMY+ef1VKt8JFrznN
	kxvXnWuDhB+B+uRtRDVkFyBlg6Tkgrmp5qC18lK4N43EQwQAI3r3fOn7EsYFX6OE7O4t
	3Pqw==
X-Gm-Message-State: APjAAAWYmhgvAYFgSd6j7waWgC9Kfr8c5WhLxgXmiWpITtKCQjatGQu9
	0gy/p6MKpv/PES9JiUQXlSIjFQ==
X-Google-Smtp-Source: APXvYqyXSfM19Eb4tkyUfv1gY2xoc1LsvJX6UV935a0nB8a9WzTivi4eJj5ahgBUtNvNCiF4JlFnIQ==
X-Received: by 2002:a1c:6504:: with SMTP id z4mr142545wmb.172.1565802348437;
	Wed, 14 Aug 2019 10:05:48 -0700 (PDT)
Received: from wrk.www.tendawifi.com ([79.134.174.40])
	by smtp.gmail.com with ESMTPSA id c6sm332311wma.25.2019.08.14.10.05.47
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 14 Aug 2019 10:05:47 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Aug 2019 20:04:57 +0300
Message-Id: <20190814170501.1808-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <81258876-5f03-002c-5aa8-2d6d00e6d99e@cumulusnetworks.com>
References: <81258876-5f03-002c-5aa8-2d6d00e6d99e@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next v2 0/4] net: bridge: mdb: allow
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

v2: change patch 04 to avoid double notification and improve host group
    manual removal if no ports are present in the group

Thanks,
 Nik

Nikolay Aleksandrov (4):
  net: bridge: mdb: move vlan comments
  net: bridge: mdb: factor out mdb filling
  net: bridge: mdb: dump host-joined entries as well
  net: bridge: mdb: allow add/delete for host-joined groups

 net/bridge/br_mdb.c       | 173 +++++++++++++++++++++++++-------------
 net/bridge/br_multicast.c |  30 +++++--
 net/bridge/br_private.h   |   2 +
 3 files changed, 141 insertions(+), 64 deletions(-)

-- 
2.21.0

