Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E49582459C9
	for <lists.bridge@lfdr.de>; Mon, 17 Aug 2020 00:10:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D12D87746;
	Sun, 16 Aug 2020 22:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FkuMCMbQddq9; Sun, 16 Aug 2020 22:10:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B98C787857;
	Sun, 16 Aug 2020 22:10:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A601C0890;
	Sun, 16 Aug 2020 22:10:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 09F6CC0051
 for <bridge@lists.linux-foundation.org>; Sun, 16 Aug 2020 22:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D7DF9204D6
 for <bridge@lists.linux-foundation.org>; Sun, 16 Aug 2020 22:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WumqowBVOuI0 for <bridge@lists.linux-foundation.org>;
 Sun, 16 Aug 2020 22:10:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id A12F920334
 for <bridge@lists.linux-foundation.org>; Sun, 16 Aug 2020 22:10:45 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8DD88127EA607;
 Sun, 16 Aug 2020 14:53:57 -0700 (PDT)
Date: Sun, 16 Aug 2020 15:10:40 -0700 (PDT)
Message-Id: <20200816.151040.1591962687263069414.davem@davemloft.net>
To: stephen@networkplumber.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200816150813.0b998607@hermes.lan>
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
 <20200816150813.0b998607@hermes.lan>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Aug 2020 14:53:57 -0700 (PDT)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 gluon@luebeck.freifunk.net, openwrt-devel@lists.openwrt.org
Subject: Re: [Bridge] [RFC PATCH net-next] bridge: Implement MLD Querier
 wake-up calls / Android bug workaround
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

From: Stephen Hemminger <stephen@networkplumber.org>
Date: Sun, 16 Aug 2020 15:08:13 -0700

> Rather than adding yet another feature to the bridge, could this hack be done by
> having a BPF hook? or netfilter module?

Stephen please do not quote an entire huge patch just to add a small
amount of commentary at the end.

Thank you.
