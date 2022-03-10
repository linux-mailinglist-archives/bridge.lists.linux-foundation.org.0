Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4C64D4AAE
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 15:55:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3624408D1;
	Thu, 10 Mar 2022 14:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIy280-Wuf7S; Thu, 10 Mar 2022 14:55:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 44E7540195;
	Thu, 10 Mar 2022 14:55:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 03822C0073;
	Thu, 10 Mar 2022 14:55:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A719FC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EB1560ABE
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGUCl21A46Cq for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 14:55:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8C2260671
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=/58cWmygECTkPSPoDwqtqviybzKgiSNcNrLHiVOqlDE=; b=h7/+DopdaFXY6RnCGoW2MCpXek
 qjKJbQBjWD3BTW7lvhC3/IM7+YQ0Ur/v7fTn0R3Vn7u1Mj6C3SL/3JtCokFcECooPEFCCJLW+1jqP
 5EOLJB2P4lgIuPexvsE5raXxdasl+V1XPBy6P/+7lChYHfG1j1xhM21wZXl8I7mPu0cc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nSKBv-00A9LI-05; Thu, 10 Mar 2022 15:54:59 +0100
Date: Thu, 10 Mar 2022 15:54:58 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YioRQpUTJ7WmTLXQ@lunn.ch>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
> +									    chip->ports[spid].port,
> +									    &entry,
> +									    fid);

> +static int mv88e6xxx_find_vid_on_matching_fid(struct mv88e6xxx_chip *chip,
> +					      const struct mv88e6xxx_vtu_entry *entry,
> +					      void *priv)
> +{
> +	struct mv88e6xxx_fid_search_ctx *ctx = priv;
> +
> +	if (ctx->fid_search == entry->fid) {
> +		ctx->vid_found = entry->vid;
> +		return 1;
> +	}
> +	return 0;
> +}
> +
> +int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_chip *chip,
> +						  int port,
> +						  struct mv88e6xxx_atu_entry *entry,
> +						  u16 fid)
> +{
> +	struct switchdev_notifier_fdb_info info = {
> +		.addr = entry->mac,
> +		.vid = 0,
> +		.added_by_user = false,
> +		.is_local = false,
> +		.offloaded = true,
> +		.locked = true,
> +	};
> +	struct mv88e6xxx_fid_search_ctx ctx;
> +	struct netlink_ext_ack *extack;
> +	struct net_device *brport;
> +	struct dsa_port *dp;
> +	int err;
> +
> +	ctx.fid_search = fid;
> +	err = mv88e6xxx_vtu_walk(chip, mv88e6xxx_find_vid_on_matching_fid, &ctx);

I could be reading this code wrong, but it looks like you assume there
is a single new entry in the ATU. But interrupts on these devices are
slow. It would be easy for two or more devices to pop into existence
at the same time. Don't you need to walk the whole ATU to find all the
new entries? Have you tried this with a traffic generating populating
the ATU with new entries at different rates, up to line rate? Do you
get notifications for them all?

    Andrew
