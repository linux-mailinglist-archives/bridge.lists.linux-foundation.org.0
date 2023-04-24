Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAEA6ED6BF
	for <lists.bridge@lfdr.de>; Mon, 24 Apr 2023 23:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42DC7417F2;
	Mon, 24 Apr 2023 21:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42DC7417F2
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=fKCN800j
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-9q67EfchuD; Mon, 24 Apr 2023 21:28:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8937C41C4D;
	Mon, 24 Apr 2023 21:28:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8937C41C4D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 282CBC008A;
	Mon, 24 Apr 2023 21:28:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D98F0C002A
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 21:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9FA0410E5
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 21:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9FA0410E5
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fKCN800j
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8pZ9QG-GnIq for <bridge@lists.linux-foundation.org>;
 Mon, 24 Apr 2023 21:28:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DCA340973
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DCA340973
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 21:28:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 86D9761975;
 Mon, 24 Apr 2023 21:28:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3819C433EF;
 Mon, 24 Apr 2023 21:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1682371681;
 bh=TbcvORIahzTgLz3kHT93WfnWCDehULA/wN2t4cFpWu0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fKCN800jVi4eb9DDyPNBVyG1nVaxWg8SobzwUe9FY691TiFhtJm9hkMxHEOwlgTZU
 35O9gfDi7RRePr3N4hRuha7B/lmVQcNLeuptx760LJpoegnA5n6pK5fP1I4pCK2aBo
 QNIxAZtIcbS3y+HLydEkj0I1KxVtezePqGZBStrLJMlN6BS1b0aXb84pfim3R5eiUO
 +XElV9jbuHXzvV4LDKB7de7f23Cz5bGWIq3BhwbtEYfrfoFfyXPv31ex57QzA7RD+e
 HNxFZ+iVjRRdY8iJ7yao0pi4NhQh1IbP/2X7jdCxhPw+LhhSzn3afLHGu1XXrHVU97
 5972nIC3ZEwdQ==
Date: Mon, 24 Apr 2023 14:28:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Hangbin Liu <liuhangbin@gmail.com>
Message-ID: <20230424142800.3d519650@kernel.org>
In-Reply-To: <ZEZK9AkChoOF3Lys@Laptop-X1>
References: <ZEZK9AkChoOF3Lys@Laptop-X1>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [Question] Any plan to write/update the bridge doc?
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

On Mon, 24 Apr 2023 17:25:08 +0800 Hangbin Liu wrote:
> Maybe someone already has asked. The only official Linux bridge document I
> got is a very ancient wiki page[1] or the ip link man page[2][3]. As there are
> many bridge stp/vlan/multicast paramegers. Should we add a detailed kernel
> document about each parameter? The parameter showed in ip link page seems
> a little brief.
> 
> I'd like to help do this work. But apparently neither my English nor my
> understanding of the code is good enough. Anyway, if you want, I can help
> write a draft version first and you (bridge maintainers) keep working on this.
> 
> [1] https://wiki.linuxfoundation.org/networking/bridge
> [2] https://man7.org/linux/man-pages/man8/bridge.8.html
> [3] https://man7.org/linux/man-pages/man8/ip-link.8.html

Sounds like we have 2 votes for the CLI man pages but I'd like to
register a vote for in-kernel documentation.

I work at a large company so my perspective may differ but from what 
I see:

 - users who want to call the kernel API should not have to look at 
   the CLI's man
 - man pages use archaic and arcane markup, I'd like to know how many
   people actually know how it works and how many copy / paste / look;
   ReST is prevalent, simple and commonly understood
 - in-kernel docs are rendered on the web as soon as they hit linux-next
 - we can make sure documentation is provided with the kernel changes,
   in an ideal world it doesn't matter but in practice the CLI support
   may never happen (no to mention that iproute does not hold all CLI)

Obviously if Stephen and Ido prefer to document the bridge CLI that's
perfectly fine, it's their call :) For new sections of uAPI, however,
I personally find in-kernel docs superior.
