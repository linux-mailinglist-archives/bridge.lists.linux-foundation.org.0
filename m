Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D4207EB5
	for <lists.bridge@lfdr.de>; Wed, 24 Jun 2020 23:37:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E34D8850E;
	Wed, 24 Jun 2020 21:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z4P1Mjh67H36; Wed, 24 Jun 2020 21:37:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFC9588572;
	Wed, 24 Jun 2020 21:37:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A54C7C016F;
	Wed, 24 Jun 2020 21:37:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18A31C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 21:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07D9186591
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 21:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_fGkqFRtWHF for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 21:37:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65E58862BE
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 21:37:10 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CDF6A1272FA24;
 Wed, 24 Jun 2020 14:37:09 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:37:08 -0700 (PDT)
Message-Id: <20200624.143708.1919481157205194723.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
References: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 24 Jun 2020 14:37:10 -0700 (PDT)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, anuradhak@cumulusnetworks.com
Subject: Re: [Bridge] [PATCH net-next 0/4] net: bridge: fdb activity tracking
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
Date: Tue, 23 Jun 2020 23:47:14 +0300

> This set adds extensions needed for EVPN multi-homing proper and
> efficient mac sync. User-space (e.g. FRR) needs to be able to track
> non-dynamic entry activity on per-fdb basis depending if a tracked fdb is
> currently peer active or locally active and needs to be able to add new
> peer active fdb (static + track + inactive) without refreshing it to get
> real activity tracking. Patch 02 adds a new NDA attribute - NDA_FDB_EXT_ATTRS
> to avoid future pollution of NDA attributes by bridge or vxlan. New
> bridge/vxlan specific fdb attributes are embedded in NDA_FDB_EXT_ATTRS,
> which is used in patch 03 to pass the new NFEA_ACTIVITY_NOTIFY attribute
> which controls if an fdb should be tracked and also reflects its current
> state when dumping. It is treated as a bitfield, current valid bits are:
>  1 - mark an entry for activity tracking
>  2 - mark an entry as inactive to avoid multiple notifications and
>      reflect state properly
> 
> Patch 04 adds the ability to avoid refreshing an entry when changing it
> via the NFEA_DONT_REFRESH flag. That allows user-space to mark a static
> entry for tracking and keep its real activity unchanged.
> The set has been extensively tested with FRR and those changes will
> be upstreamed if/after it gets accepted.

Series applied, thanks.
