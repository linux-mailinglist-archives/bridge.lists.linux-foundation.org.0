Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 224955D7E2
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:49:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E2ACBEFE;
	Tue,  2 Jul 2019 21:48:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 283F219CA
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8877C87A
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:03 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id x17so17487312wrl.9
	for <bridge@lists.linux-foundation.org>;
	Tue, 02 Jul 2019 05:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=z8dZZIPpeZ1Qw73KcIU6q0OGE71quMthD7zEmsELvnY=;
	b=WaX5g02y0EPpCZNkzhaCztvLQ4Ru36Q/9DnYFyUVnT0Lt2Ro7A+fs9wicsQPbmRCRB
	4CRVtdcJRyW27MwQnkNt+FgU/9GS5MdEme98/kchdypCjlY0t9uaTr0Lrop/lxd1XHgk
	erq8PbI4Sm3m38nhYGFMzmqGR5/S8/Jvpj4CQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=z8dZZIPpeZ1Qw73KcIU6q0OGE71quMthD7zEmsELvnY=;
	b=fbDiiAU57wuvhSea9X6BksZrnAORDEY7JiV5dNat6hhfcpgcYQ5h+82JucPHrCBCGX
	rvwRP8o+kwV5gq3l6nXZA6RROZQIbp6SxdaKu5UbjSnAdQh0EP1ocLUC+6JasgiI+5Ug
	veRqrx05lnC2R4yvEY+yRfQe0n4yuup0h5LihKuXgVre9ICs3/nu4iGGq7fFlrFk2+Rc
	Nx7w4s9jqmr3+ow+AFZhtlLMgFF+akvFilxiKN2cbhi3QWTnxvZjcB3Uu2CjmrLbjDqD
	JJzpMk9NTEeTvfXkh3W+07ZktXGvuoHaSFQoM8ta9r+KdhdWLJcRl/9sUh6MAu4Oc6Qd
	3C6A==
X-Gm-Message-State: APjAAAWp1DC9190fROy5Ndwcdynf5C/UmCX3uCxfy3BfHv7vRcP2ZM2o
	UzFMkf8d8aF5sMJhIUs8PQCtbg==
X-Google-Smtp-Source: APXvYqxSvvR0qkSlyguGfRbfByRydHf5S7LBqHmC+qbtMiQVH/XrqNL4opuMaag4Wu6VRzDleQPELg==
X-Received: by 2002:a05:6000:11ca:: with SMTP id
	i10mr3816459wrx.56.1562069102074; 
	Tue, 02 Jul 2019 05:05:02 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id x5sm2542655wmf.33.2019.07.02.05.05.01
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Jul 2019 05:05:01 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue,  2 Jul 2019 15:00:17 +0300
Message-Id: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: martin@linuxlounge.net, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, yoshfuji@linux-ipv6.org,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, davem@davemloft.net
Subject: [Bridge] [PATCH net 0/4] net: bridge: fix possible stale skb
	pointers
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
In the bridge driver we have a couple of places which call pskb_may_pull
but we've cached skb pointers before that and use them after which can
lead to out-of-bounds/stale pointer use. I've had these in my "to fix"
list for some time and now we got a report (patch 01) so here they are.
Patches 02-04 are fixes based on code inspection. Also patch 01 was
tested by Martin Weinelt, Martin if you don't mind please add your
tested-by tag to it by replying with Tested-by: name <email>.
I've also briefly tested the set by trying to exercise those code paths.

Thanks,
 Nik

Nikolay Aleksandrov (4):
  net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report
    handling
  net: bridge: mcast: fix stale ipv6 hdr pointer when handling v6 query
  net: bridge: don't cache ether dest pointer on input
  net: bridge: stp: don't cache eth dest pointer before skb pull

 net/bridge/br_input.c     |  8 +++-----
 net/bridge/br_multicast.c | 23 +++++++++++++----------
 net/bridge/br_stp_bpdu.c  |  3 +--
 3 files changed, 17 insertions(+), 17 deletions(-)

-- 
2.21.0

