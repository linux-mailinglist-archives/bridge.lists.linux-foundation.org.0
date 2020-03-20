Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 152EE18C5AE
	for <lists.bridge@lfdr.de>; Fri, 20 Mar 2020 04:22:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8ECA87CE7;
	Fri, 20 Mar 2020 03:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MPMHSVS-lsm; Fri, 20 Mar 2020 03:22:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87E34878A9;
	Fri, 20 Mar 2020 03:22:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74AE8C07FF;
	Fri, 20 Mar 2020 03:22:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8A3E2C07FF
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 03:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77D15876D5
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 03:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoiEtFtlioSb for <bridge@lists.linux-foundation.org>;
 Fri, 20 Mar 2020 03:22:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD789868F9
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 03:22:17 +0000 (UTC)
Received: from localhost (c-73-193-106-77.hsd1.wa.comcast.net [73.193.106.77])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E7DDF158E851E;
 Thu, 19 Mar 2020 20:22:16 -0700 (PDT)
Date: Thu, 19 Mar 2020 20:22:06 -0700 (PDT)
Message-Id: <20200319.202206.1844889598253272050.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200319101414.201391-1-nikolay@cumulusnetworks.com>
References: <20200319101414.201391-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 19 Mar 2020 20:22:17 -0700 (PDT)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: vlan: include stats
 in dumps if requested
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
Date: Thu, 19 Mar 2020 12:14:14 +0200

> This patch adds support for vlan stats to be included when dumping vlan
> information. We have to dump them only when explicitly requested (thus the
> flag below) because that disables the vlan range compression and will make
> the dump significantly larger. In order to request the stats to be
> included we add a new dump attribute called BRIDGE_VLANDB_DUMP_FLAGS which
> can affect dumps with the following first flag:
>   - BRIDGE_VLANDB_DUMPF_STATS
> The stats are intentionally nested and put into separate attributes to make
> it easier for extending later since we plan to add per-vlan mcast stats,
> drop stats and possibly STP stats. This is the last missing piece from the
> new vlan API which makes the dumped vlan information complete.
> 
> A dump request which should include stats looks like:
>  [BRIDGE_VLANDB_DUMP_FLAGS] |= BRIDGE_VLANDB_DUMPF_STATS
> 
> A vlandb entry attribute with stats looks like:
>  [BRIDGE_VLANDB_ENTRY] = {
>      [BRIDGE_VLANDB_ENTRY_STATS] = {
>          [BRIDGE_VLANDB_STATS_RX_BYTES]
>          [BRIDGE_VLANDB_STATS_RX_PACKETS]
>          ...
>      }
>  }
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> ---
> v2: Use a separate dump attribute for the flags instead of a reserved
>     field to avoid uapi breakage as noted by DaveM.
>     Rebased and retested on the latest net-next.

Thanks for reworking UAPI.

Applied, thanks.
