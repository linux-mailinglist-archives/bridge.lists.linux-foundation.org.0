Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A99614ECA56
	for <lists.bridge@lfdr.de>; Wed, 30 Mar 2022 19:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4CBA61274;
	Wed, 30 Mar 2022 17:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aK9lZ4bPZGpN; Wed, 30 Mar 2022 17:13:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4BB5B61279;
	Wed, 30 Mar 2022 17:13:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05D71C0082;
	Wed, 30 Mar 2022 17:13:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D15BC0012
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 17:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C569844C0
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 17:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cf8jcXfWK2G7 for <bridge@lists.linux-foundation.org>;
 Wed, 30 Mar 2022 17:13:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12B9180B46
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 17:13:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 443B8B81DA5;
 Wed, 30 Mar 2022 17:12:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EAF6C340EC;
 Wed, 30 Mar 2022 17:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648660377;
 bh=NIslaD6hR1K1hA7T5NIGktk7gAw8SD895+5pJcEGgq0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dQ1LDkKRmaafeVvWPpJTSn+pFHzwoYqAt2Wmvqu6sDtftkrF2t/MbhU+mN1l6IhP+
 I+lGp2xSM8UPqHBDfy1fbINTv4SYhA0Jx4hxe+jfFyyD12kKRZ5yC+uLvxzgn72huS
 znvN6VEsDUHpVMPnPKbfhvOSlatJHmtARI/0AML0g7nWN6RMBQLyckUXqHLP8c3yKX
 DQ0udvf17rUYDmWiXmPGY+sBAIwB/uwk0lEvyYnNg031j+V8iNEwZtsEVv/JhF5iJv
 EWAZIhh3h3vTZQYY+vgEI1od2OetFelV0j3RpvZ7ltUc2v7W8aAXV5QZcRZI194YFf
 j6sQAp2gDdlwg==
Date: Wed, 30 Mar 2022 10:12:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220330101256.53f6ef48@kernel.org>
In-Reply-To: <c512e765-f411-9305-013b-471a07e7f3ff@blackwall.org>
References: <20220329114052.237572-1-wintera@linux.ibm.com>
 <20220329175421.4a6325d9@kernel.org>
 <d2e45c4a-ed34-10d3-58cd-01b1c19bd004@blackwall.org>
 <c1ec0612-063b-dbfa-e10a-986786178c93@linux.ibm.com>
 <20220330085154.34440715@kernel.org>
 <c512e765-f411-9305-013b-471a07e7f3ff@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: linux-s390@vger.kernel.org, Alexandra Winter <wintera@linux.ibm.com>,
 netdev@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>, Hangbin Liu <liuhangbin@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2] veth: Support bonding events
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

On Wed, 30 Mar 2022 19:16:42 +0300 Nikolay Aleksandrov wrote:
> > Maybe opt-out? But assuming the event is only generated on
> > active/backup switch over - when would it be okay to ignore
> > the notification?
> 
> Let me just clarify, so I'm sure I've not misunderstood you. Do you mean opt-out as in
> make it default on? IMO that would be a problem, large scale setups would suddenly
> start propagating it to upper devices which would cause a lot of unnecessary bcast.
> I meant enable it only if needed, and only on specific ports (second part is not
> necessary, could be global, I think it's ok either way). I don't think any setup
> which has many upper vlans/macvlans would ever enable this.

That may be. I don't have a good understanding of scenarios in which
GARP is required and where it's not :) Goes without saying but the
default should follow the more common scenario.

> >> My concern was about the Hangbin's alternative proposal to notify all
> >> bridge ports. I hope in my porposal I was able to avoid infinite loops.  
> > 
> > Possibly I'm confused as to where the notification for bridge master
> > gets sent..  
> 
> IIUC it bypasses the bridge and sends a notify peers for the veth peer so it would
> generate a grat arp (inetdev_event -> NETDEV_NOTIFY_PEERS).

Ack, I was basically repeating the question of where does 
the notification with dev == br get generated.

There is a protection in this patch to make sure the other 
end of the veth is not plugged into a bridge (i.e. is not
a bridge port) but there can be a macvlan on top of that
veth that is part of a bridge, so IIUC that check is either
insufficient or unnecessary.
