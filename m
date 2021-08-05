Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B30223E24B6
	for <lists.bridge@lfdr.de>; Fri,  6 Aug 2021 10:04:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9AFD831CA;
	Fri,  6 Aug 2021 08:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3tQgWUdzhiF; Fri,  6 Aug 2021 08:04:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9E2AF82EF0;
	Fri,  6 Aug 2021 08:04:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF0ECC0020;
	Fri,  6 Aug 2021 08:04:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32750C000E
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 09:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14F818266A
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 09:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MWqgCfaURIsk for <bridge@lists.linux-foundation.org>;
 Thu,  5 Aug 2021 09:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail3-165.sinamail.sina.com.cn (mail3-165.sinamail.sina.com.cn
 [202.108.3.165])
 by smtp1.osuosl.org (Postfix) with SMTP id 889B9825C3
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 09:59:27 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([1.24.238.81])
 by sina.com (172.16.97.32) with ESMTP
 id 610BB5380000BDEE; Thu, 5 Aug 2021 17:54:02 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 567959628750
From: Hillf Danton <hdanton@sina.com>
To: Nikolay Aleksandrov <razor@blackwall.org>,
	netdev@vger.kernel.org
Date: Thu,  5 Aug 2021 17:53:52 +0800
Message-Id: <20210805095352.2913-1-hdanton@sina.com>
In-Reply-To: <53339ad0-1028-2660-3241-58ee70d8247a@nvidia.com>
References: <20210805082903.711396-1-razor@blackwall.org>
 <20210805082903.711396-2-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 06 Aug 2021 08:04:43 +0000
Cc: syzbot+34fe5894623c4ab1b379@syzkaller.appspotmail.com,
 bridge@lists.linux-foundation.org, arnd@arndb.de, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: fix ioctl locking
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

On Thu, 5 Aug 2021 12:29:34 +0300 Nikolay Aleksandrov wrote:
> 
> I fixed the bridge side of things,

Thanks for your fix.

> but the unlock/lock suggestion was made first by Hillf.
> I forgot to add:
> 
> Suggested-by: Hillf Danton <hdanton@sina.com>
> 
> +CC Hillf
> 
> Hillf, since the rtnl unlock/lock suggestion was yours feel free to add
> your signed-off-by

I prefer the Cc tag over signed-off-by.
