Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F91D7A9204
	for <lists.bridge@lfdr.de>; Thu, 21 Sep 2023 09:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8031E83BDB;
	Thu, 21 Sep 2023 07:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8031E83BDB
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=lMv+D89S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1aq0EnlmEm-d; Thu, 21 Sep 2023 07:23:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 08D3283BB8;
	Thu, 21 Sep 2023 07:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08D3283BB8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 834E0C0DD3;
	Thu, 21 Sep 2023 07:23:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB4E7C0032
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 07:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 926C383BD1
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 07:23:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 926C383BD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhjkF9U7sEf1 for <bridge@lists.linux-foundation.org>;
 Thu, 21 Sep 2023 07:23:51 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E74783BB8
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 07:23:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E74783BB8
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Thu, 21 Sep 2023 09:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695281026; bh=MGHRpPfMK3dwPqFHNJENwclFJsK7s432jc0AWt8qpKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lMv+D89SeUIroDzj3vpDvYr7y3M0PoPLmr9tkOthBnQGSLo+hcx1XT9UFQM0hgSlH
 xHaAXKtsZeL6XEjJmPq0Q4wHjoS0ePKH/Wgj4XjyHyUqWm4LTZ6KyEeZ6ykYL7Hb2p
 9EHrhm5VgBl1R5uzbSvyn+aOT7kXqu9MTNT9n8oM=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id E88A582147;
 Thu, 21 Sep 2023 09:23:46 +0200 (CEST)
Date: Thu, 21 Sep 2023 09:23:46 +0200
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZQvvgiz4rE8u6vba@u-jnixdorf.ads.avm.de>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-2-39f0293807b8@avm.de>
 <1c12b8f2-b28b-f326-b24f-f1ea602832d7@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c12b8f2-b28b-f326-b24f-f1ea602832d7@blackwall.org>
X-purgate-ID: 149429::1695281026-306BAD89-D1FD54B6/0/0
X-purgate-type: clean
X-purgate-size: 1728
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
Subject: Re: [Bridge] [PATCH net-next v4 2/6] net: bridge: Set
 strict_start_type for br_policy
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

On Wed, Sep 20, 2023 at 01:46:02PM +0300, Nikolay Aleksandrov wrote:
> On 9/19/23 11:12, Johannes Nixdorf wrote:
> > Set any new attributes added to br_policy to be parsed strictly, to
> > prevent userspace from passing garbage.
> > 
> > Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> > ---
> >   net/bridge/br_netlink.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> > index 10f0d33d8ccf..505683ef9a26 100644
> > --- a/net/bridge/br_netlink.c
> > +++ b/net/bridge/br_netlink.c
> > @@ -1229,6 +1229,8 @@ static size_t br_port_get_slave_size(const struct net_device *brdev,
> >   }
> >   static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
> > +	[IFLA_BR_UNSPEC]	= { .strict_start_type =
> > +				    IFLA_BR_MCAST_QUERIER_STATE + 1 },
> >   	[IFLA_BR_FORWARD_DELAY]	= { .type = NLA_U32 },
> >   	[IFLA_BR_HELLO_TIME]	= { .type = NLA_U32 },
> >   	[IFLA_BR_MAX_AGE]	= { .type = NLA_U32 },
> > 
> 
> instead of IFLA_BR_MCAST_QUERIER_STATE + 1, why not move around the patch
> and just use the new attribute name?
> These are uapi, they won't change.

I wanted to avoid having a state between the two commits where the new
attributes are already added, but not yet strictly verified. Otherwise
they would present a slightly different UAPI at that one commit boundary
than after this commit.

This is also not the only place in the kernel where strict_start_type
is specified that way. See e.g. commit c00041cf1cb8 ("net: bridge: Set
strict_start_type at two policies"), even though that seems mostly be
done to turn on strict_start_type preemtively, not in the same series
that adds the new attribute.
