Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C3D681F91
	for <lists.bridge@lfdr.de>; Tue, 31 Jan 2023 00:23:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F20F3701ED;
	Mon, 30 Jan 2023 23:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F20F3701ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJkAFfABxZIb; Mon, 30 Jan 2023 23:23:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5C9E3709E3;
	Mon, 30 Jan 2023 23:23:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C9E3709E3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8E28C007C;
	Mon, 30 Jan 2023 23:23:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8248C002B
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 23:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4A0942D18
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 23:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4A0942D18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nW-0mUQ3YHpH for <bridge@lists.linux-foundation.org>;
 Mon, 30 Jan 2023 23:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8386142D9B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8386142D9B
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 23:23:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 52248CE1779;
 Mon, 30 Jan 2023 23:23:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51DD1C433EF;
 Mon, 30 Jan 2023 23:23:18 +0000 (UTC)
Date: Mon, 30 Jan 2023 18:23:16 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20230130182316.53d787ac@gandalf.local.home>
In-Reply-To: <87ilgof20x.fsf@nvidia.com>
References: <cover.1674752051.git.petrm@nvidia.com>
 <ed2e2e305dd49423745b62c0152a0b85bc84a767.1674752051.git.petrm@nvidia.com>
 <20230126125344.1b7b34e2@gandalf.local.home>
 <87ilgof20x.fsf@nvidia.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-trace-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next 06/16] net: bridge: Add a tracepoint
 for MDB overflows
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

On Mon, 30 Jan 2023 16:50:32 +0100
Petr Machata <petrm@nvidia.com> wrote:

> Steven Rostedt <rostedt@goodmis.org> writes:
> 
> > On Thu, 26 Jan 2023 18:01:14 +0100
> > Petr Machata <petrm@nvidia.com> wrote:
> >  
> >> +	TP_printk("dev %s af %u src %pI4/%pI6c grp %pI4/%pI6c/%pM vid %u",
> >> +		  __get_str(dev), __entry->af, __entry->src4, __entry->src6,
> >> +		  __entry->grp4, __entry->grp6, __entry->grpmac, __entry->vid)  
> >
> > And just have: 
> >
> > 	TP_printk("dev %s af %u src %pI6c grp %pI6c/%pM vid %u",
> > 		  __get_str(dev), __entry->af, __entry->src, __entry->grp,
> > 		  __entry->grpmac, __entry->vid)
> >
> > As the %pI6c should detect that it's a ipv4 address and show that.  
> 
> This means the IP addresses will always be IPv6, even for an IPv4 MDB
> entries. One can still figure out the true protocol from the address
> family field, but it might not be obvious. Plus the IPv4-mapped IPv6
> addresses are not really formatted as IPv4, though yeah, IPv4 notation
> is embedded in that.
> 
> All the information is still there, but... scrambled? Not sure the
> reduction in clarity is worth the 8 bytes that we save. The tracepoint
> is unlikely to trigger often.

8 bytes per event, and yes, ring buffer real estate is expensive.

And if you use trace-cmd or perf, we can always add a plugin to
libtraceevent that can format this much nicer based on the information that
is there.

-- Steve
