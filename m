Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3D8736D6D
	for <lists.bridge@lfdr.de>; Tue, 20 Jun 2023 15:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1384F60BB9;
	Tue, 20 Jun 2023 13:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1384F60BB9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=rTgv10FJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XM0iucGFq64N; Tue, 20 Jun 2023 13:35:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7220560808;
	Tue, 20 Jun 2023 13:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7220560808
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E70F5C008C;
	Tue, 20 Jun 2023 13:35:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5A002C0029
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jun 2023 13:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27FAE8222A
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jun 2023 13:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27FAE8222A
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=rTgv10FJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdtKWq55uOVh for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jun 2023 13:35:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AB1F81393
Received: from mail.avm.de (mail.avm.de [212.42.244.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AB1F81393
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jun 2023 13:35:45 +0000 (UTC)
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 20 Jun 2023 15:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1687268140; bh=MrPcbeDrxr4HgoSu5jcB9aacR6fimi8U0dJzhnLFLjI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rTgv10FJqE2xoImwD8S1DoPammERUkajgGhkxUh+1hCIP7yRNC9OF3Z3IkHSnL8Zz
 t/YiL38ZLRM1mWMJq1fwS1fcCt4ZLX7tRjYAGXnll9cX2vhE9lTkkEAHFva82hoLxz
 yODGjEJyrrLBmkL3Xm/977lqFzMelkEr6wsnY2pw=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 7361582151;
 Tue, 20 Jun 2023 15:35:41 +0200 (CEST)
Date: Tue, 20 Jun 2023 15:35:41 +0200
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZJGrLYsT7CcavLeR@u-jnixdorf.ads.avm.de>
References: <20230619071444.14625-1-jnixdorf-oss@avm.de>
 <20230619071444.14625-3-jnixdorf-oss@avm.de>
 <aac18591-b06b-d48d-368a-99fc3ac50e24@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aac18591-b06b-d48d-368a-99fc3ac50e24@blackwall.org>
X-purgate-ID: 149429::1687268140-8E7CAD8A-B5A0F401/0/0
X-purgate-type: clean
X-purgate-size: 4626
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, David Ahern <dsahern@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2 2/3] bridge: Add a limit on learned
 FDB entries
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

On Tue, Jun 20, 2023 at 09:55:31AM +0300, Nikolay Aleksandrov wrote:
> On 6/19/23 10:14, Johannes Nixdorf wrote:
> > +/* Set a FDB flag that implies the entry was not learned, and account
> > + * for changes in the learned status.
> > + */
> > +static void __fdb_set_flag_not_learned(struct net_bridge *br,
> > +				       struct net_bridge_fdb_entry *fdb,
> > +				       long nr)
> > +{
> > +	WARN_ON_ONCE(!(BIT(nr) & BR_FDB_NOT_LEARNED_MASK));
> 
> Please use *_bit

Can you tell me which *_bit helper you had in mind? The shortest option I could
come up with the ones I found seemed needlessly verbose and wasteful:

  static const unsigned long br_fdb_not_learned_mask = BR_FDB_NOT_LEARNED_MASK;
  ...
  WARN_ON_ONCE(test_bit(nr, &br_fdb_not_learned_mask));

> > +
> > +	/* learned before, but we set a flag that implies it's manually added */
> > +	if (!(fdb->flags & BR_FDB_NOT_LEARNED_MASK))
> 
> Please use *_bit

This will be fixed by the redesign to get rid of my use of hash_lock
(proposed later in this mail), as I'll only have to test one bit and can
use test_and_clear_bit then.

> > +		br->fdb_cur_learned_entries--;
> > +	set_bit(nr, &fdb->flags);
> > +}
> 
> Having a helper that conditionally decrements only is counterintuitive and
> people can get confused. Either add 2 helpers for inc/dec and use
> them where appropriate or don't use helpers at all.

The *_set_bit helper can only cause the count to drop, as there
is currently no flag that could turn a manually added entry back into
a dynamically learned one.

The analogous helper that increments the value would be *_clear_bit,
which I did not add because it has no users.

> > +	spin_unlock_bh(&br->hash_lock);
> > +}
> > +
> >   /* When a static FDB entry is deleted, the HW address from that entry is
> >    * also removed from the bridge private HW address list and updates all
> >    * the ports with needed information.
> > @@ -321,6 +353,8 @@ static void fdb_del_hw_addr(struct net_bridge *br, const unsigned char *addr)
> >   static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
> >   		       bool swdev_notify)
> >   {
> > +	bool learned = !(f->flags & BR_FDB_NOT_LEARNED_MASK);
> 
> *_bit

I do not know a *_bit helper that would help me test the intersection
of multiple bits on both sides. Do you have any in mind?

> > +
> >   	return fdb;
> >   }
> > @@ -894,7 +940,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
> >   			}
> >   			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
> > -				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> > +				fdb_set_flag_not_learned(br, fdb, BR_FDB_ADDED_BY_USER);
> 
> Unacceptable to take hash_lock and block all learning here, eventual
> consistency is ok or some other method that is much lighter and doesn't
> block all learning or requires a lock.

At the time of writing v2, this seemed difficult because we want to test
multiple bits and increment a counter, but remembering that clear_bit
is never called for the bits I care about I came up with the following
approach:

  a) Add a new flag BR_FDB_DYNAMIC_LEARNED, which is set to 1 iff
     BR_FDB_ADDED_BY_USER or BR_FDB_LOCAL are set in br_create.
     Every time BR_FDB_ADDED_BY_USER or BR_FDB_LOCAL is set, also clear
     BR_FDB_DYNAMIC_LEARNED, and decrement the count if it was 1 before.
     This solves the problem of testing two bits at once, and would not
     have been possible if we had a code path that could clear both bits,
     as it is not as easy to decide when to set BR_FDB_DYNAMIC_LEARNED
     again in that case.
  b) Replace the current count with an atomic_t.

I'll change it this way for v3.

> >   		return -EMSGSIZE;
> >   #ifdef CONFIG_BRIDGE_VLAN_FILTERING
> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > index 2119729ded2b..df079191479e 100644
> > --- a/net/bridge/br_private.h
> > +++ b/net/bridge/br_private.h
> > @@ -275,6 +275,8 @@ enum {
> >   	BR_FDB_LOCKED,
> >   };
> > +#define BR_FDB_NOT_LEARNED_MASK (BIT(BR_FDB_LOCAL) | BIT(BR_FDB_ADDED_BY_USER))
> 
> Not learned sounds confusing and doesn't accurately describe the entry.
> BR_FDB_DYNAMIC_LEARNED perhaps or some other name, that doesn't cause
> double negatives (not not learned).

Your proposal would not have captured the mask, as it describes all the
opposite cases, which were _not_ dynamically learned.

But with the proposed new flag from the hash_lock comment we can trivially
flip the meaning, so I went with your proposed name there.
