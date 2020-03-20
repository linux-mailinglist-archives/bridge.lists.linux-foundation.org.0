Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D7918D35B
	for <lists.bridge@lfdr.de>; Fri, 20 Mar 2020 16:52:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A145881B7;
	Fri, 20 Mar 2020 15:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N35Iok9I4j0k; Fri, 20 Mar 2020 15:52:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E42A4881EB;
	Fri, 20 Mar 2020 15:52:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D511AC07FF;
	Fri, 20 Mar 2020 15:52:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 02F4AC07FF
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 15:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3C2287514
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 15:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9a6177hdLz20 for <bridge@lists.linux-foundation.org>;
 Fri, 20 Mar 2020 15:52:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79322874CE
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 15:52:44 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7CF961584D837;
 Fri, 20 Mar 2020 08:52:43 -0700 (PDT)
Date: Fri, 20 Mar 2020 08:52:40 -0700 (PDT)
Message-Id: <20200320.085240.1137730407369663617.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
References: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 20 Mar 2020 08:52:43 -0700 (PDT)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 0/2] net: bridge: vlan options: nest
 the tunnel options
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
Date: Fri, 20 Mar 2020 13:23:01 +0200

> After a discussion with Roopa about the new tunnel vlan option, she
> suggested that we'll be adding more tunnel options and attributes, so
> it'd be better to have them all grouped together under one main vlan
> entry tunnel attribute instead of making them all main attributes. Since
> the tunnel code was added in this net-next cycle and still hasn't been
> released we can easily nest the BRIDGE_VLANDB_ENTRY_TUNNEL_ID attribute
> in BRIDGE_VLANDB_ENTRY_TUNNEL_INFO and allow for any new tunnel
> attributes to be added there. In addition one positive side-effect is
> that we can remove the outside vlan info flag which controlled the
> operation (setlink/dellink) and move it under a new nested attribute so
> user-space can specify it explicitly.
> 
> Thus the vlan tunnel format becomes:
>  [BRIDGE_VLANDB_ENTRY]
>      [BRIDGE_VLANDB_ENTRY_TUNNEL_INFO]
>          [BRIDGE_VLANDB_TINFO_ID]
>          [BRIDGE_VLANDB_TINFO_CMD]
>          ...

Makes sense, series applied, thanks.
