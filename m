Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB803323D9
	for <lists.bridge@lfdr.de>; Tue,  9 Mar 2021 12:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63613600D4;
	Tue,  9 Mar 2021 11:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id basjucVqfHus; Tue,  9 Mar 2021 11:24:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 155C1605C9;
	Tue,  9 Mar 2021 11:24:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D141EC0012;
	Tue,  9 Mar 2021 11:23:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3BAFC0001
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 11:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2907605C9
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 11:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZDKVkR1_h5TM for <bridge@lists.linux-foundation.org>;
 Tue,  9 Mar 2021 11:23:58 +0000 (UTC)
X-Greylist: delayed 00:22:24 by SQLgrey-1.8.0
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [IPv6:2a0a:51c0:0:12e:520::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EF82600D4
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 11:23:57 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1lJa77-0005Oy-1Q; Tue, 09 Mar 2021 12:01:21 +0100
Date: Tue, 9 Mar 2021 12:01:21 +0100
From: Florian Westphal <fw@strlen.de>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <20210309110121.GD10808@breakpoint.cc>
References: <20210309022854.17904-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210309022854.17904-1-baijiaju1990@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH] net: bridge: fix error return code of
 do_update_counters()
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

Jia-Ju Bai <baijiaju1990@gmail.com> wrote:
> When find_table_lock() returns NULL to t, no error return code of
> do_update_counters() is assigned.

Its -ENOENT.

>  	t = find_table_lock(net, name, &ret, &ebt_mutex);
                                       ^^^^^

ret is passed to find_table_lock, which passes it to
find_inlist_lock_noload() which will set *ret = -ENOENT
for NULL case.
