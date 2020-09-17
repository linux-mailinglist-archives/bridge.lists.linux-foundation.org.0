Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A2F26CFD8
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 02:14:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 553D986D80;
	Thu, 17 Sep 2020 00:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id foTcxLlqrUeV; Thu, 17 Sep 2020 00:14:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4044686F43;
	Thu, 17 Sep 2020 00:14:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1E0B5C0051;
	Thu, 17 Sep 2020 00:14:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 22A60C0051
 for <bridge@lists.linux-foundation.org>; Thu, 17 Sep 2020 00:13:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 11C8387560
 for <bridge@lists.linux-foundation.org>; Thu, 17 Sep 2020 00:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4gmSlLewc9Rn for <bridge@lists.linux-foundation.org>;
 Thu, 17 Sep 2020 00:13:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9ADE287502
 for <bridge@lists.linux-foundation.org>; Thu, 17 Sep 2020 00:13:57 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5D6FA13C70972;
 Wed, 16 Sep 2020 16:57:09 -0700 (PDT)
Date: Wed, 16 Sep 2020 17:13:55 -0700 (PDT)
Message-Id: <20200916.171355.1205456391955745862.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200915145724.2065042-1-nikolay@cumulusnetworks.com>
References: <20200915145724.2065042-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Wed, 16 Sep 2020 16:57:09 -0700 (PDT)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: mcast: don't ignore
 return value of __grp_src_toex_excl
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
Date: Tue, 15 Sep 2020 17:57:24 +0300

> When we're handling TO_EXCLUDE report in EXCLUDE filter mode we should
> not ignore the return value of __grp_src_toex_excl() as we'll miss
> sending notifications about group changes.
> 
> Fixes: 5bf1e00b6849 ("net: bridge: mcast: support for IGMPV3/MLDv2 CHANGE_TO_INCLUDE/EXCLUDE report")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Applied, thank you.
