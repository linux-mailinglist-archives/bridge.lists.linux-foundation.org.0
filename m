Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4736C53B92F
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 14:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EF2D410B1;
	Thu,  2 Jun 2022 12:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96tDZuwrAXik; Thu,  2 Jun 2022 12:53:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 224F441553;
	Thu,  2 Jun 2022 12:53:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7422C0081;
	Thu,  2 Jun 2022 12:53:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0EE72C002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 12:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DEB1781390
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 12:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZ7NVPE5hkzt for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 12:53:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC7F481919
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 12:53:13 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id p19so2546700wmg.2
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 05:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k1P3Y5KcTgUHU2mC7q6Eh1Wa9ToCw2l2iR/tA2vzR4I=;
 b=Ck6x8U6cRd++Vs08614bd5FirYAglGi7jdxollKezH8QXJK7JK1O3fRZ5xieiLgCy+
 zjkyhCLZH+gKaBVtHX5RxG8hZvxZUQLTvfKbBxLlB0+aZt91I5mlMZFqciAlC9FZWJlW
 T4qG/mhSJ0C1HSgpqHuetEx1IdzV21DaumvZL2fnJIABxWjOJpTprN1TCJH97sUgvt1+
 y4lyd4b6l5tkntLKOSVdZNzVtwGy7v5EqzHQ+DPx+4k/u2GGyTNHRqQiNEACaX/oByZP
 i5n8PxKc6lrahgbpLli6O5GaUbxRnXCTaS6m2kTQo5Yupkjq3vP9lfpNrn+40uduSU9F
 UvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k1P3Y5KcTgUHU2mC7q6Eh1Wa9ToCw2l2iR/tA2vzR4I=;
 b=v97kwUz28+HNlfPIsSOsypuSytPfu4N7grNIQo5vnWcwlMyAEdS9MjtbZc68nqAh4i
 P+IeZV6ruZadKVPyvGuqmMUmgjv949jPy0cVKU/wbEIv8lCPzbQevuXw1GcFpSAMV78v
 +Aqk/dzor1Enh0pmX/+hSMqYbxy1QFqGfil8mE0V46XCu0qiRnr5tE42zT6hJ0fJPqzN
 bFUvyZVaZVx0iM2yzVhErxhXd7tAkJT+hwTtoP4G6UBWEMwx/yWus86+cdO+vv0843ms
 fvmrX2AlAi2/kXNapS4+JwtjTXQ5NPWcUuvO05ns64/VgOEZzHgCn+o+ykRn2/hcuwTG
 5uhw==
X-Gm-Message-State: AOAM532UTg0O6+FDrhBg8VtRlkSHb06QZs6Pz4Pc4NGfZJQ8dn6VJ8oz
 rZNuXd7QrJG8s8HeqC40+qdw3lwVpqSa9CgKGa4=
X-Google-Smtp-Source: ABdhPJzKKXocTTTBD+wk1Ub9d6UQ6JjGJTxLs2+XBnUsDTfjS/w0uMwXLOoKWct9Ic/iat66g1EeTc2vTvLk38QLnCc=
X-Received: by 2002:a05:600c:2105:b0:39c:37d0:6f5e with SMTP id
 u5-20020a05600c210500b0039c37d06f5emr166932wml.44.1654174392087; Thu, 02 Jun
 2022 05:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <86sfov2w8k.fsf@gmail.com> <YpCgxtJf9Qe7fTFd@shredder>
 <86sfoqgi5e.fsf@gmail.com> <YpYk4EIeH6sdRl+1@shredder>
 <86y1yfzap3.fsf@gmail.com>
 <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
 <86sfonjroi.fsf@gmail.com>
 <3d93d46d-c484-da0a-c12c-80e83eba31c9@blackwall.org>
 <YpiTbOsh0HBMwiTE@shredder>
 <86mtevjmie.fsf@gmail.com> <YpiqlziXDCg/1FJH@shredder>
In-Reply-To: <YpiqlziXDCg/1FJH@shredder>
From: Hans S <schultz.hans@gmail.com>
Date: Thu, 2 Jun 2022 14:53:00 +0200
Message-ID: <CAKUejP5Wa5hLZ_SfETPFewUiHgdnkYsCwbx7WcW1Uw7HBQ9icA@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Content-Type: multipart/alternative; boundary="00000000000009789005e0767df3"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

--00000000000009789005e0767df3
Content-Type: text/plain; charset="UTF-8"

On tor, jun 02, 2022 at 15:18, Ido Schimmel <idosch@nvidia.com> wrote:
> On Thu, Jun 02, 2022 at 02:08:41PM +0200, Hans Schultz wrote:
>
> br_fdb_find_rcu() does a lookup in the bridge driver FDB, but per the
> output above, the entry isn't there for some reason. It's only in HW.
>
> Can it be that you driver is deleting these entries from the bridge
> driver FDB via SWITCHDEV_FDB_DEL_TO_BRIDGE for some reason?
>

Yes, that sounds much like the case. So the replace of course just
modifies the SW fdb entry, and then it obviously removes the HW entry,
which triggers SWITCHDEV_FDB_DEL_TO_BRIDGE and then adds the replaced,
but because it comes from the SW bridge it doesn't need to do more.
But as there are only ops for port_fdb_add() and port_fdb_del(), there
is no way to know how to handle a replace. So it ends up just deleting
the SW fdb entry after all...

It is difficult for me to see how this scenario will be able to work
differently, or?

On Thu, Jun 2, 2022 at 2:18 PM Ido Schimmel <idosch@nvidia.com> wrote:

> On Thu, Jun 02, 2022 at 02:08:41PM +0200, Hans Schultz wrote:
> > >
> > > I think Hans is testing with mv88e6xxx which dumps entries directly
> from
> > > HW via ndo_fdb_dump(). See dsa_slave_port_fdb_do_dump() which sets
> > > NTF_SELF.
> > >
> > > Hans, are you seeing the entry twice? Once with 'master' and once with
> > > 'self'?
> > >
> >
> > When replacing a locked entry it looks like this:
> >
> > # bridge fdb show dev eth6 | grep 4c
> > 00:4c:4c:4c:4c:4c vlan 1 master br0 extern_learn offload locked
> >
> > # bridge fdb replace 00:4c:4c:4c:4c:4c dev eth6 vlan 1 master static ;
> bridge fdb show dev eth6 | grep 4c
> > 00:4c:4c:4c:4c:4c vlan 1 self static
>
> This output means that the FDB entry was deleted from the bridge driver
> FDB.
>
> >
> > The problem is then that the function
> > br_fdb_find_rcu(br,eth_hdr(skb)->h_source, vid);
> > , where the h_source and vid is the entry above, does not find the entry.
> > My hypothesis was then that this is because of the 'self' flag that I
> > see.
>
> br_fdb_find_rcu() does a lookup in the bridge driver FDB, but per the
> output above, the entry isn't there for some reason. It's only in HW.
>
> Can it be that you driver is deleting these entries from the bridge
> driver FDB via SWITCHDEV_FDB_DEL_TO_BRIDGE for some reason?
>
> >
> > I am thinking that the function dsa_slave_port_fdb_do_dump() is only for
> > debug, and thus does not really set any flags in the bridge modules FDB,
> > but then I don't understand why the above find function does not find
> > the entry?
>

--00000000000009789005e0767df3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On tor, jun 02, 2022 at 15:18, Ido Schimmel &lt;<a href=3D=
"mailto:idosch@nvidia.com">idosch@nvidia.com</a>&gt; wrote:<br>&gt; On Thu,=
 Jun 02, 2022 at 02:08:41PM +0200, Hans Schultz wrote:<br>&gt;<br>&gt; br_f=
db_find_rcu() does a lookup in the bridge driver FDB, but per the<br>&gt; o=
utput above, the entry isn&#39;t there for some reason. It&#39;s only in HW=
.<br>&gt;<br>&gt; Can it be that you driver is deleting these entries from =
the bridge<br>&gt; driver FDB via SWITCHDEV_FDB_DEL_TO_BRIDGE for some reas=
on?<br>&gt;<br><br>Yes, that sounds much like the case. So the replace of c=
ourse just<br>modifies the SW fdb entry, and then it obviously removes the =
HW entry,<br>which triggers SWITCHDEV_FDB_DEL_TO_BRIDGE and then adds the r=
eplaced,<br>but because it comes from the SW bridge it doesn&#39;t need to =
do more.<br>But as there are only ops for port_fdb_add() and port_fdb_del()=
, there<br>is no way to know how to handle a replace. So it ends up just de=
leting<br>the SW fdb entry after all...<br><br>It is difficult for me to se=
e how this scenario will be able to work<br>differently, or?<br></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun=
 2, 2022 at 2:18 PM Ido Schimmel &lt;<a href=3D"mailto:idosch@nvidia.com">i=
dosch@nvidia.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Thu, Jun 02, 2022 at 02:08:41PM +0200, Hans Schultz wrot=
e:<br>
&gt; &gt;<br>
&gt; &gt; I think Hans is testing with mv88e6xxx which dumps entries direct=
ly from<br>
&gt; &gt; HW via ndo_fdb_dump(). See dsa_slave_port_fdb_do_dump() which set=
s<br>
&gt; &gt; NTF_SELF.<br>
&gt; &gt;<br>
&gt; &gt; Hans, are you seeing the entry twice? Once with &#39;master&#39; =
and once with<br>
&gt; &gt; &#39;self&#39;?<br>
&gt; &gt;<br>
&gt; <br>
&gt; When replacing a locked entry it looks like this:<br>
&gt; <br>
&gt; # bridge fdb show dev eth6 | grep 4c<br>
&gt; 00:4c:4c:4c:4c:4c vlan 1 master br0 extern_learn offload locked<br>
&gt; <br>
&gt; # bridge fdb replace 00:4c:4c:4c:4c:4c dev eth6 vlan 1 master static ;=
 bridge fdb show dev eth6 | grep 4c<br>
&gt; 00:4c:4c:4c:4c:4c vlan 1 self static<br>
<br>
This output means that the FDB entry was deleted from the bridge driver<br>
FDB.<br>
<br>
&gt; <br>
&gt; The problem is then that the function<br>
&gt; br_fdb_find_rcu(br,eth_hdr(skb)-&gt;h_source, vid);<br>
&gt; , where the h_source and vid is the entry above, does not find the ent=
ry.<br>
&gt; My hypothesis was then that this is because of the &#39;self&#39; flag=
 that I<br>
&gt; see.<br>
<br>
br_fdb_find_rcu() does a lookup in the bridge driver FDB, but per the<br>
output above, the entry isn&#39;t there for some reason. It&#39;s only in H=
W.<br>
<br>
Can it be that you driver is deleting these entries from the bridge<br>
driver FDB via SWITCHDEV_FDB_DEL_TO_BRIDGE for some reason?<br>
<br>
&gt; <br>
&gt; I am thinking that the function dsa_slave_port_fdb_do_dump() is only f=
or<br>
&gt; debug, and thus does not really set any flags in the bridge modules FD=
B,<br>
&gt; but then I don&#39;t understand why the above find function does not f=
ind<br>
&gt; the entry?<br>
</blockquote></div>

--00000000000009789005e0767df3--
