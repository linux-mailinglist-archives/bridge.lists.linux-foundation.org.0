Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6E5BE7CC
	for <lists.bridge@lfdr.de>; Tue, 20 Sep 2022 15:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF56740395;
	Tue, 20 Sep 2022 13:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF56740395
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=HtPNPTze
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ceRHPn8tNBeg; Tue, 20 Sep 2022 13:57:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4DE7540C25;
	Tue, 20 Sep 2022 13:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DE7540C25
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F40B3C0077;
	Tue, 20 Sep 2022 13:57:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33674C002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 13:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF50340C24
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 13:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF50340C24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M47JufN0jopA for <bridge@lists.linux-foundation.org>;
 Tue, 20 Sep 2022 13:57:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ACDB40C11
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2ACDB40C11
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 13:57:27 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 o70-20020a17090a0a4c00b00202f898fa86so2566933pjo.2
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 06:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=lE9IeWt4ZfEIoMLs40uJOg+qZ5mr3mjtBbGAjXersxA=;
 b=HtPNPTze+/mlVdMUy7NMwg2BBNtvBxPyyW23YOMbux8VewqcNCx2/1H9Eo+Oo6qEzF
 la4o5yMKCw9k3JHG9ozBXwz9fovn1q1ELrK+bTf4LUHooYHHu22/I7d9bTGEx9ot0615
 trrKWnzg5FDi49lLYXGpMkA+Xr8B68elVV5ijzSb8GnI+CUSCW5dmgRjIcP3bzRxmVOE
 jE3U+BmSz+CmgM8fMmKfYzioHmHVLBTll1eyNPQQarQJKySIWWKxDH7GFRZZTsm5NTHT
 W2Rh+dda8iLbSKDvtleGCXJ2bqeHTZiC/FPywy5Jl44hOFPC/HbOUHkjJ0HiSrC6ha51
 ACfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=lE9IeWt4ZfEIoMLs40uJOg+qZ5mr3mjtBbGAjXersxA=;
 b=lxx/PFV+gLYQ14RJDoCB416DcsVFo9RB7qKJmeDq6FnAZPsDuZlP7GgLacdSPCFHaB
 /OWu/zw7furW2RN7Yqj+nUxEsvDmD3ymwISzfeeYngbL9N7a4zuwGSE8+NCb5AKlToe5
 UmJGlQkhJicUoqXprkDbHQF3ehwZybt5+0MmAG873mq5hXSuiL75d8y+C+2l5m5nkGsD
 AWnIHoIHc7cnirIqeBJIQmQGS+/kD0aT4FVVQCvE7qNeot+gyhW68Mvuszcml/BUqQJ2
 WdF4FbKrQg55vpZx71uO4AHpRuE97bIU/3GVy0MiEpTxS+fl9xvzX7LFuI64cJEZXTO0
 uxiA==
X-Gm-Message-State: ACrzQf3cRN5x246ltICDuyibWSaNhPVMRwxs5oqxvo9fsq00HidwbWko
 fqiupNgaff+nxy7rHpxZcOf6V+odM9GnBmfbWMc=
X-Google-Smtp-Source: AMsMyM7s7Yp9h3EaqTne8RjtOGu5ECJ4bCoLOXkWxRK1rWToUel1jBWm5+HbcVNyhel4s6VN0/DkiOpDZoFd7QmIG84=
X-Received: by 2002:a17:903:2442:b0:176:c8ee:a5d6 with SMTP id
 l2-20020a170903244200b00176c8eea5d6mr4877882pls.20.1663682246481; Tue, 20 Sep
 2022 06:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
 <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
In-Reply-To: <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Tue, 20 Sep 2022 09:57:15 -0400
Message-ID: <CAMWRUK7GSKOuAw_suryDCoq45VnKKy-yu36pAaR++2TxpZQ3Fw@mail.gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Content-Type: multipart/alternative; boundary="000000000000521a6b05e91c3576"
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/5] net: vlan: fix bridge binding
 behavior and add selftests
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

--000000000000521a6b05e91c3576
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 20, 2022 at 5:16 AM Nikolay Aleksandrov <razor@blackwall.org>
wrote:

> On 17/09/2022 23:17, Sevinj Aghayeva wrote:
> > When bridge binding is enabled for a vlan interface, it is expected
> > that the link state of the vlan interface will track the subset of the
> > ports that are also members of the corresponding vlan, rather than
> > that of all ports.
> >
> > Currently, this feature works as expected when a vlan interface is
> > created with bridge binding enabled:
> >
> >   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
> >         bridge_binding on
> >
> > However, the feature does not work when a vlan interface is created
> > with bridge binding disabled, and then enabled later:
> >
> >   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
> >         bridge_binding off
> >   ip link set vlan10 type vlan bridge_binding on
> >
> > After these two commands, the link state of the vlan interface
> > continues to track that of all ports, which is inconsistent and
> > confusing to users. This series fixes this bug and introduces two
> > tests for the valid behavior.
> >
> > Sevinj Aghayeva (5):
> >   net: core: export call_netdevice_notifiers_info
> >   net: core: introduce a new notifier for link-type-specific changes
> >   net: 8021q: notify bridge module of bridge-binding flag change
> >   net: bridge: handle link-type-specific changes in the bridge module
> >   selftests: net: tests for bridge binding behavior
> >
> >  include/linux/if_vlan.h                       |   4 +
> >  include/linux/netdevice.h                     |   3 +
> >  include/linux/notifier_info.h                 |  21 +++
> >  net/8021q/vlan.h                              |   2 +-
> >  net/8021q/vlan_dev.c                          |  20 ++-
> >  net/bridge/br.c                               |   5 +
> >  net/bridge/br_private.h                       |   7 +
> >  net/bridge/br_vlan.c                          |  18 +++
> >  net/core/dev.c                                |   7 +-
> >  tools/testing/selftests/net/Makefile          |   1 +
> >  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
> >  11 files changed, 223 insertions(+), 8 deletions(-)
> >  create mode 100644 include/linux/notifier_info.h
> >  create mode 100755
> tools/testing/selftests/net/bridge_vlan_binding_test.sh
> >
>
> The set looks good to me, the bridge and vlan direct dependency is gone and
> the new notification type is used for passing link type specific info.
>
> If the others are ok with it I think you can send it as non-RFC, but I'd
> give it
> a few more days at least. :)
>

Okay, I will wait until the end of the week.

Thanks!


>
> Thanks,
>  Nik
>
>

-- 

Sevinj.Aghayeva

--000000000000521a6b05e91c3576
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 20, 2022 at 5:16 AM Nikol=
ay Aleksandrov &lt;<a href=3D"mailto:razor@blackwall.org">razor@blackwall.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 17/09/2022 23:17, Sevinj Aghayeva wrote:<br>
&gt; When bridge binding is enabled for a vlan interface, it is expected<br=
>
&gt; that the link state of the vlan interface will track the subset of the=
<br>
&gt; ports that are also members of the corresponding vlan, rather than<br>
&gt; that of all ports.<br>
&gt; <br>
&gt; Currently, this feature works as expected when a vlan interface is<br>
&gt; created with bridge binding enabled:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0ip link add link br name vlan10 type vlan id 10 protocol 8=
02.1q \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bridge_binding on<br>
&gt; <br>
&gt; However, the feature does not work when a vlan interface is created<br=
>
&gt; with bridge binding disabled, and then enabled later:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0ip link add link br name vlan10 type vlan id 10 protocol 8=
02.1q \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bridge_binding off<br>
&gt;=C2=A0 =C2=A0ip link set vlan10 type vlan bridge_binding on<br>
&gt; <br>
&gt; After these two commands, the link state of the vlan interface<br>
&gt; continues to track that of all ports, which is inconsistent and<br>
&gt; confusing to users. This series fixes this bug and introduces two<br>
&gt; tests for the valid behavior.<br>
&gt; <br>
&gt; Sevinj Aghayeva (5):<br>
&gt;=C2=A0 =C2=A0net: core: export call_netdevice_notifiers_info<br>
&gt;=C2=A0 =C2=A0net: core: introduce a new notifier for link-type-specific=
 changes<br>
&gt;=C2=A0 =C2=A0net: 8021q: notify bridge module of bridge-binding flag ch=
ange<br>
&gt;=C2=A0 =C2=A0net: bridge: handle link-type-specific changes in the brid=
ge module<br>
&gt;=C2=A0 =C2=A0selftests: net: tests for bridge binding behavior<br>
&gt; <br>
&gt;=C2=A0 include/linux/if_vlan.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A04 +<br>
&gt;=C2=A0 include/linux/netdevice.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A03 +<br>
&gt;=C2=A0 include/linux/notifier_info.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 21 +++<br>
&gt;=C2=A0 net/8021q/vlan.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +-=
<br>
&gt;=C2=A0 net/8021q/vlan_dev.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 20 ++-<br>
&gt;=C2=A0 net/bridge/br.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=
=A05 +<br>
&gt;=C2=A0 net/bridge/br_private.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A07 +<br>
&gt;=C2=A0 net/bridge/br_vlan.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 18 +++<br>
&gt;=C2=A0 net/core/dev.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A07 +-<br>
&gt;=C2=A0 tools/testing/selftests/net/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A01 +<br>
&gt;=C2=A0 .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++=
++++++<br>
&gt;=C2=A0 11 files changed, 223 insertions(+), 8 deletions(-)<br>
&gt;=C2=A0 create mode 100644 include/linux/notifier_info.h<br>
&gt;=C2=A0 create mode 100755 tools/testing/selftests/net/bridge_vlan_bindi=
ng_test.sh<br>
&gt; <br>
<br>
The set looks good to me, the bridge and vlan direct dependency is gone and=
<br>
the new notification type is used for passing link type specific info.<br>
<br>
If the others are ok with it I think you can send it as non-RFC, but I&#39;=
d give it<br>
a few more days at least. :)<br></blockquote><div><br></div><div>Okay, I wi=
ll wait until the end of the week.</div><div><br></div><div>Thanks!</div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thanks,<br>
=C2=A0Nik<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><br></div><div>Sevinj.Agha=
yeva</div></div></div></div>

--000000000000521a6b05e91c3576--
