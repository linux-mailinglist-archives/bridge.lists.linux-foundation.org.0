Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E8270D858
	for <lists.bridge@lfdr.de>; Tue, 23 May 2023 11:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C696418A8;
	Tue, 23 May 2023 09:04:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C696418A8
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=Atg44yxE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eSsPhS8JYz1Y; Tue, 23 May 2023 09:04:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 676F141D7D;
	Tue, 23 May 2023 09:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 676F141D7D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18B19C007A;
	Tue, 23 May 2023 09:04:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 69BBFC002A
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 09:04:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 321D560B05
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 09:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 321D560B05
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Atg44yxE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q0iUlvEv4DcL for <bridge@lists.linux-foundation.org>;
 Tue, 23 May 2023 09:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29BE5605BA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29BE5605BA
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 09:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684832675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Mh8toiKSONJxpueXVbWPsMK7oHcXlzbD/7oSSgzRjtc=;
 b=Atg44yxELlFgetfXQf95q+h/8jVZlZtgwu8+xOtUWVJxZv0e6oKv5JREG9yH1JUtq+dZUR
 xOg/Kzx/P3r5IZQXG1R538qOa9HBZn89I3EuRIYXy7l5Xsv4YCeYT6JVlPKdICSN7PoyfR
 cK0sc6DgiKxeWlivt5ejpgIf4+X2erU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-154-rgBPBWLRMeG9r3KzcPtnVg-1; Tue, 23 May 2023 05:04:31 -0400
X-MC-Unique: rgBPBWLRMeG9r3KzcPtnVg-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-3f08900caadso4958645e9.0
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 02:04:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684832670; x=1687424670;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Mh8toiKSONJxpueXVbWPsMK7oHcXlzbD/7oSSgzRjtc=;
 b=Uqhq+QVc8Vc68jcI9dziiI7DOhszkEWzBvuKlOnUTHhfq9y3iUGNvAqZosLU5kmYHQ
 /PQXYM1nPsAiIU6BdBhBCMC3G16/VWLJoUGMW9yk1FTO0Jw0+8WiPMKsHn6FmEy2jJwJ
 TVTkiSAo5Wx1mKO8H05UxmBSUEw9dCYg1QYSmxGhjuVnEMgKsb552EkSQz6u07/bGVU6
 58Sohl5bm+OGgQkCVvyxCdC1Zb9rCxfzsA6JNG5uUF5fAr0hwpSLHSC/AXL21geXrO2T
 hfMAc08TebH89yf+N/WuTz/k4DxiVfKDyME5rxrSy7cM1wrfL3rn71WW242NGUb+kBfZ
 1fHg==
X-Gm-Message-State: AC+VfDxGjILqmqIReVJIibCUkFlu8cmeyrzqmcCpohg83NENBQ88+jSL
 hnd7Xfbw8KovYoqeoQ7LOqNT2eA77YlLx0TyWfH7cjrnla1jk/Z/pL6oILwzBCcGEIcxcfII6lE
 aAK1ZDVGPFE0xAsegsjwdmbYiPnbQPj8=
X-Received: by 2002:a5d:4109:0:b0:305:ed26:856e with SMTP id
 l9-20020a5d4109000000b00305ed26856emr7803104wrp.4.1684832670602; 
 Tue, 23 May 2023 02:04:30 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4Qdyz8m4c2KZ0ByEomruT/rDD4o1h49hH+E+Q+j0J/L4RZJ3hQM4OxIcO31NyWdS+H6P0gGQ==
X-Received: by 2002:a5d:4109:0:b0:305:ed26:856e with SMTP id
 l9-20020a5d4109000000b00305ed26856emr7803067wrp.4.1684832670216; 
 Tue, 23 May 2023 02:04:30 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-246-0.dyn.eolo.it. [146.241.246.0])
 by smtp.gmail.com with ESMTPSA id
 f5-20020a5d4dc5000000b002fe13ec49fasm10326528wru.98.2023.05.23.02.04.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 May 2023 02:04:29 -0700 (PDT)
Message-ID: <de69794bc23a7a019136134cee1e819937f0777a.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ido Schimmel <idosch@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, 
 razor@blackwall.org
Date: Tue, 23 May 2023 11:04:27 +0200
In-Reply-To: <ZGx0/hwPmFFN2ivS@shredder>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
 <ZGd+9CUBM+eWG5FR@shredder> <20230519145218.659b0104@kernel.org>
 <ZGx0/hwPmFFN2ivS@shredder>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com,
 edumazet@google.com, jhs@mojatatu.com, roopa@nvidia.com,
 xiyou.wangcong@gmail.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] skbuff: bridge: Add layer 2 miss
	indication
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

On Tue, 2023-05-23 at 11:10 +0300, Ido Schimmel wrote:
> On Fri, May 19, 2023 at 02:52:18PM -0700, Jakub Kicinski wrote:
> > On Fri, 19 May 2023 16:51:48 +0300 Ido Schimmel wrote:
> > > diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> > > index fc17b9fd93e6..274e55455b15 100644
> > > --- a/net/bridge/br_input.c
> > > +++ b/net/bridge/br_input.c
> > > @@ -46,6 +46,8 @@ static int br_pass_frame_up(struct sk_buff *skb)
> > >          */
> > >         br_switchdev_frame_unmark(skb);
> > > =20
> > > +       skb->l2_miss =3D BR_INPUT_SKB_CB(skb)->miss;
> > > +
> > >         /* Bridge is just like any other port.  Make sure the
> > >          * packet is allowed except in promisc mode when someone
> > >          * may be running packet capture.
> > >=20
> > > Ran these changes through the selftest and it seems to work.
> >=20
> > Can we possibly put the new field at the end of the CB and then have TC
> > look at it in the CB? We already do a bit of such CB juggling in strp
> > (first member of struct sk_skb_cb).
>=20
> Using the CB between different layers is very fragile and I would like
> to avoid it. Note that the skb can pass various layers until hitting the
> classifier, each of which can decide to memset() the CB.
>=20
> Anyway, I think I have a better alternative. I added the 'l2_miss' bit
> to the tc skb extension and adjusted the bridge to mark packets via this
> extension. The entire thing is protected by the existing 'tc_skb_ext_tc'
> static key, so overhead is kept to a minimum when feature is disabled.
> Extended flower to enable / disable this key when filters that match on
> 'l2_miss' are added / removed.
>=20
> bridge change to mark the packet:
> https://github.com/idosch/linux/commit/3fab206492fcad9177f2340680f02ced1b=
9a0dec.patch
>=20
> flow_dissector change to dissect the info from the extension:
> https://github.com/idosch/linux/commit/1533c078b02586547817a4e63989a0db62=
aa5315.patch
>=20
> flower change to enable / disable the key:
> https://github.com/idosch/linux/commit/cf84b277511ec80fe565c41271abc6b2e2=
f629af.patch
>=20
> Advantages compared to the previous approach are that we do not need a
> new bit in the skb and that overhead is kept to a minimum when feature
> is disabled. Disadvantage is that overhead is higher when feature is
> enabled.
>=20
> WDYT?

Looks good to me.

I think you would only need to set/add the extension when l2_miss is
true, right? (with no extension l2 hit is assumed). That will avoid
unneeded overhead for br_dev_xmit().

All the others involved paths look like slow(er) one, so the occasional
skb extension overhead should not be a problem.

Cheers,

Paolo

