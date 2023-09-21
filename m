Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AE57A9209
	for <lists.bridge@lfdr.de>; Thu, 21 Sep 2023 09:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FC9641932;
	Thu, 21 Sep 2023 07:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FC9641932
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=NMB2AQTp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MluLt3li8-yZ; Thu, 21 Sep 2023 07:29:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9A5B441935;
	Thu, 21 Sep 2023 07:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A5B441935
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40AA4C0DD3;
	Thu, 21 Sep 2023 07:29:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 69532C0032
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 07:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C08B41935
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 07:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C08B41935
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q2DiFv0UFpq1 for <bridge@lists.linux-foundation.org>;
 Thu, 21 Sep 2023 07:29:19 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::119])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B90541932
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 07:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B90541932
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Thu, 21 Sep 2023 09:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695281357; bh=JrvLZ3k9m+n64XkQmbpSU7bQlFJHydepu1VAgRC4fjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NMB2AQTpZscNAsuFSRfZScH0ybRFIyIeR53TSy4h86jjz5qDM+IzU+FIw2oL/NPcl
 zhnc8wxUO+ZdzqqQLZ5HFVD3mlxjE1z4ClyazOPfmM3gJPEuiEQScC5o5xl2i2QhPt
 qFtFi76Fs4cMWLI6YWP2dAXrJ9tB8LL8+dqewJFg=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 29320800AA;
 Thu, 21 Sep 2023 09:29:17 +0200 (CEST)
Date: Thu, 21 Sep 2023 09:29:17 +0200
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZQvwzZrqC7pjaeS1@u-jnixdorf.ads.avm.de>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-4-39f0293807b8@avm.de>
 <f5aca33e-693f-9d8d-c45a-41ada00a9f03@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5aca33e-693f-9d8d-c45a-41ada00a9f03@blackwall.org>
X-purgate-ID: 149429::1695281356-9EC789BA-37F48EE5/0/0
X-purgate-type: clean
X-purgate-size: 786
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 4/6] net: bridge: Add netlink knobs
 for number / max learned FDB entries
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, Sep 20, 2023 at 01:50:32PM +0300, Nikolay Aleksandrov wrote:
> On 9/19/23 11:12, Johannes Nixdorf wrote:
> > [...]
> > diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> > index 505683ef9a26..f5d49a05e61b 100644
> > --- a/net/bridge/br_netlink.c
> > +++ b/net/bridge/br_netlink.c
> > @@ -1267,6 +1267,8 @@ static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
> >   	[IFLA_BR_VLAN_STATS_PER_PORT] = { .type = NLA_U8 },
> >   	[IFLA_BR_MULTI_BOOLOPT] =
> >   		NLA_POLICY_EXACT_LEN(sizeof(struct br_boolopt_multi)),
> > +	[IFLA_BR_FDB_N_LEARNED] = { .type = NLA_U32 },
> 
> hmm? I thought this one was RO.

You are right. I set this to NLA_REJECT locally for v5 now, analogously
to how IFLA_BRPORT_MCAST_N_GROUPS is specified.

> > [...]
