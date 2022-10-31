Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD397613B87
	for <lists.bridge@lfdr.de>; Mon, 31 Oct 2022 17:40:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BC9B40493;
	Mon, 31 Oct 2022 16:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BC9B40493
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbZ9dELAduyC; Mon, 31 Oct 2022 16:40:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1F0C440562;
	Mon, 31 Oct 2022 16:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F0C440562
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C5E3BC007B;
	Mon, 31 Oct 2022 16:40:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B5639C002D
 for <bridge@lists.linux-foundation.org>; Mon, 31 Oct 2022 16:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9068560C26
 for <bridge@lists.linux-foundation.org>; Mon, 31 Oct 2022 16:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9068560C26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zkGMSIds-fEV for <bridge@lists.linux-foundation.org>;
 Mon, 31 Oct 2022 16:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B16560AFD
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B16560AFD
 for <bridge@lists.linux-foundation.org>; Mon, 31 Oct 2022 16:40:39 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 9EB1518846BA;
 Mon, 31 Oct 2022 16:40:36 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 96AD02500015;
 Mon, 31 Oct 2022 16:40:36 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 893569EC0007; Mon, 31 Oct 2022 16:40:36 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 31 Oct 2022 17:40:36 +0100
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Y1/fLCe3xApcBXCE@shredder>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-2-idosch@nvidia.com>
 <0b1655f30a383f9b12c0d0c9c11efa56@kapio-technology.com>
 <Y1/fLCe3xApcBXCE@shredder>
User-Agent: Gigahost Webmail
Message-ID: <4b70a4630474c0ce543e0fed70a36eaa@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 01/16] bridge: Add MAC
 Authentication Bypass (MAB) support
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

On 2022-10-31 15:43, Ido Schimmel wrote:
> On Sun, Oct 30, 2022 at 11:09:31PM +0100, netdev@kapio-technology.com 
> wrote:
>> On 2022-10-25 12:00, Ido Schimmel wrote:
>> > @@ -943,6 +946,14 @@ static int br_setport(struct net_bridge_port *p,
>> > struct nlattr *tb[],
>> >  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
>> > BR_NEIGH_SUPPRESS);
>> >  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
>> >  	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
>> > +	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
>> > +
>> > +	if ((p->flags & BR_PORT_MAB) &&
>> > +	    (!(p->flags & BR_PORT_LOCKED) || !(p->flags & BR_LEARNING))) {
>> > +		NL_SET_ERR_MSG(extack, "MAB can only be enabled on a locked port
>> > with learning enabled");
>> 
>> It's a bit odd to get this message when turning off learning on a port 
>> with
>> MAB on, e.g....
>> 
>> # bridge link set dev a2 learning off
>> Error: MAB can only be enabled on a locked port with learning enabled.
> 
> It's better if you suggest something else. How about:
> 
> "Bridge port must be locked and have learning enabled when MAB is 
> enabled"
> 
> ?

Yes, I think that is better in case it should not be split into more 
than one
message. At least it is not bound to a specific action.
