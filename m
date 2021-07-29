Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA293D9C22
	for <lists.bridge@lfdr.de>; Thu, 29 Jul 2021 05:19:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D5FC4032C;
	Thu, 29 Jul 2021 03:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pwC6piWNOmLG; Thu, 29 Jul 2021 03:19:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8B436402CB;
	Thu, 29 Jul 2021 03:19:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BD7FC0022;
	Thu, 29 Jul 2021 03:19:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5856DC000E
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 03:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3345D83ABD
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 03:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.dev
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CsMqu5d4Dwsy for <bridge@lists.linux-foundation.org>;
 Thu, 29 Jul 2021 03:19:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A380E83ABC
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 03:19:05 +0000 (UTC)
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1627528742;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F00D1B8fJlYlyOskFlI65HCDbK3t3Y9UGUyxuEUxhIc=;
 b=Yxw0jhdmkoSGZwZvREiQVjaFOw7JA2sJ3bpT2OARKuayiLGhRPtRY/2SvC8rMxF3sT47os
 9qvGwLYQGRQkL5NEFogHgIFEfd/89Vv2vlUbabLZDhgrPzKIo+huDuzAOVaXghlnpz+Xm9
 Yd+ywCR3qKJUkfR6uWczIbIFnR/K9CM=
Date: Thu, 29 Jul 2021 03:19:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: yajun.deng@linux.dev
Message-ID: <eaeec889b3a07cea1347d48269e5964e@linux.dev>
To: "Pablo Neira Ayuso" <pablo@netfilter.org>
In-Reply-To: <20210728161849.GA10433@salvia>
References: <20210728161849.GA10433@salvia>
 <20210726035702.11964-1-yajun.deng@linux.dev>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yajun.deng@linux.dev
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] netfilter: nf_conntrack_bridge: Fix not free
 when error
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

July 29, 2021 12:18 AM, "Pablo Neira Ayuso" <pablo@netfilter.org> wrote:=
=0A=0A> On Mon, Jul 26, 2021 at 11:57:02AM +0800, Yajun Deng wrote:=0A> =
=0A>> It should be added kfree_skb_list() when err is not equal to zero=
=0A>> in nf_br_ip_fragment().=0A>> =0A>> Fixes: 3c171f496ef5 ("netfilter:=
 bridge: add connection tracking system")=0A>> Signed-off-by: Yajun Deng =
<yajun.deng@linux.dev>=0A>> ---=0A>> net/bridge/netfilter/nf_conntrack_br=
idge.c | 12 ++++++++----=0A>> 1 file changed, 8 insertions(+), 4 deletion=
s(-)=0A>> =0A>> diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c=
=0A>> b/net/bridge/netfilter/nf_conntrack_bridge.c=0A>> index 8d033a75a76=
6..059f53903eda 100644=0A>> --- a/net/bridge/netfilter/nf_conntrack_bridg=
e.c=0A>> +++ b/net/bridge/netfilter/nf_conntrack_bridge.c=0A>> @@ -83,12 =
+83,16 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,=
=0A>> =0A>> skb->tstamp =3D tstamp;=0A>> err =3D output(net, sk, data, sk=
b);=0A>> - if (err || !iter.frag)=0A>> - break;=0A>> -=0A>> + if (err) {=
=0A>> + kfree_skb_list(iter.frag);=0A>> + return err;=0A>> + }=0A>> +=0A>=
> + if (!iter.frag)=0A>> + return 0;=0A>> +=0A>> skb =3D ip_fraglist_next=
(&iter);=0A>> }=0A>> - return err;=0A> =0A> Why removing this line above?=
 It enters slow_path: on success.=0A> =0AI used return rather than break,=
 it wouldn't enter the slow_path.=0A> This patch instead will keep this a=
ligned with IPv6.=0A> =0AI think err and !iter.frag are not related, ther=
e is no need to put them in an if statement,=0AWe still need to separate =
them after loop. So I separate them in loop and use return instead=0Aof b=
reak. In addition, if you insist, I will accept your patch.=0A>> }=0A>> s=
low_path:=0A>> /* This is a linearized skbuff, the original geometry is l=
ost for us.=0A>> --=0A>> 2.32.0
