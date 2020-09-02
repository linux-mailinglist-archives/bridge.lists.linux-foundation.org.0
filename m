Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCB225B72F
	for <lists.bridge@lfdr.de>; Thu,  3 Sep 2020 01:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A54786A95;
	Wed,  2 Sep 2020 23:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Zj1uiQiy0fD; Wed,  2 Sep 2020 23:16:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1815C86A9C;
	Wed,  2 Sep 2020 23:16:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA2F1C0893;
	Wed,  2 Sep 2020 23:16:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 49436C0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 23:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 167F2230FB
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 23:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dsz+0mknkETe for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 23:16:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 0BAC620365
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 23:16:02 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9B9AD15751F2B;
 Wed,  2 Sep 2020 15:59:14 -0700 (PDT)
Date: Wed, 02 Sep 2020 16:16:00 -0700 (PDT)
Message-Id: <20200902.161600.826318185978889843.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <16ed8f8a-2040-5546-5cea-09a8a5b0bd7b@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
 <20200902.125846.1328960907241014780.davem@davemloft.net>
 <16ed8f8a-2040-5546-5cea-09a8a5b0bd7b@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Wed, 02 Sep 2020 15:59:14 -0700 (PDT)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v2 00/15] net: bridge: mcast: initial
 IGMPv3 support (part 1)
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

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Wed, 2 Sep 2020 23:08:40 +0300

> Once all the infra (with fast-path) for IGMPv3 is in, MLDv2 should
> be a much easier change, but I must admit given the amount of work
> this required I haven't yet looked into MLDv2 in details. The
> majority of the changes would be just switch protocol statements
> that take care of the IPv6 part.

As difficult as this is for me to do, I really have to be consistent
in my policy and push back on this.  We are far past the point of
accepting new features without ipv6 support as well, sorry.
