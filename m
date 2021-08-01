Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBE83DCB12
	for <lists.bridge@lfdr.de>; Sun,  1 Aug 2021 12:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14E2F4037D;
	Sun,  1 Aug 2021 10:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AiGJpPj-ukbS; Sun,  1 Aug 2021 10:16:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8DE1740375;
	Sun,  1 Aug 2021 10:16:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B1D7C0022;
	Sun,  1 Aug 2021 10:16:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7CAC0C000E
 for <bridge@lists.linux-foundation.org>; Sun,  1 Aug 2021 10:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B121607EE
 for <bridge@lists.linux-foundation.org>; Sun,  1 Aug 2021 10:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQe9Lgrad1m5 for <bridge@lists.linux-foundation.org>;
 Sun,  1 Aug 2021 10:16:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51FA9607BF
 for <bridge@lists.linux-foundation.org>; Sun,  1 Aug 2021 10:16:16 +0000 (UTC)
Received: from netfilter.org (bl11-146-165.dsl.telepac.pt [85.244.146.165])
 by mail.netfilter.org (Postfix) with ESMTPSA id D6CA060033;
 Sun,  1 Aug 2021 12:15:07 +0200 (CEST)
Date: Sun, 1 Aug 2021 12:15:37 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Yajun Deng <yajun.deng@linux.dev>
Message-ID: <20210801101537.GA20629@salvia>
References: <20210729082021.14407-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210729082021.14407-1-yajun.deng@linux.dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3] netfilter: nf_conntrack_bridge: Fix memory
 leak when error
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

On Thu, Jul 29, 2021 at 04:20:21PM +0800, Yajun Deng wrote:
> It should be added kfree_skb_list() when err is not equal to zero
> in nf_br_ip_fragment().

Applied, thanks.
