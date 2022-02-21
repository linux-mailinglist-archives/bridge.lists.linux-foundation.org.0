Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7FB4BDA11
	for <lists.bridge@lfdr.de>; Mon, 21 Feb 2022 15:06:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05A24409A8;
	Mon, 21 Feb 2022 14:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sNkTw3mklL3t; Mon, 21 Feb 2022 14:06:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 94C0640991;
	Mon, 21 Feb 2022 14:06:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C7A4C0036;
	Mon, 21 Feb 2022 14:06:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80962C0011
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 14:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 608C660E61
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 14:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qoqhHQAz0Jy for <bridge@lists.linux-foundation.org>;
 Mon, 21 Feb 2022 14:06:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D04560E58
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 14:06:09 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id g39so18825845lfv.10
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 06:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=bk6iCziDs7KEQNE/9x22f3LO3qPYLR33HEQGFJDm3+k=;
 b=aq0QkXeh4owaIu+yypuEQ1a2yBDhwHw/SbxYGwXQJugzlJBo5NGN1vgaSKE1s8blTC
 nWlDO0+/q1CV1osEyC1ffUM28jtOwbQo4awy97wV1Vcg9B3+Z8FQxY6d78m2ViRfd0gm
 E8I3MGRy8Kk6+E7kBzN77teBDGcujJaspYOFJhzzMhBWVhdQIXCMu/af+jiYgaOexucX
 Lw0bstn4EUJRy2pUBz1IprvGW42vTqu1n1xdBYTSOY3twHqMnQvAME0a6FQDOKMJ9ZLi
 I2OySGBHpmlmw1hvIYla97mGlfYFL7tDQScnZw/w8+tUqo+8csOR7UozJ4hP/hAarYre
 qi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=bk6iCziDs7KEQNE/9x22f3LO3qPYLR33HEQGFJDm3+k=;
 b=3oiN8yeYCaQamrA5XSwPVsUJaubIQ4NFTI6iKLfGsCyYrpwxyasxRf7IUxbp/iF+dN
 aA+2U+nq67qezygVTYKwi9nW8/rIVX6j9S9FDLgNNcmetfCOvvShH4iwIaYS/5WUntu/
 25QhQZsC7SYLEHBn/Q9W5XjFv9+67Ot2k9LfeR+DtyT3nBOcKsrUwKK4KDxBzRGi7K3d
 Q8WwoT03l+WzWlKxZ5uE0a+JYNd4OELeSqOZGdDvyFB3kqXdS/oNEZqukPLMuGpunOvL
 q5jaFxTXPZgk7eZO3IuRkdZ6+VuhFcz23XbyRLZZ/DSFx2hfUC0WOUgFrDjUWX1QJN4n
 Gr1Q==
X-Gm-Message-State: AOAM532a7N9yKQ7XHzRfWUOUiCGvy62gmfmIPMKuEeenray9NGzoPZxg
 kr/eAt/YcSVgVxahtQiib7E=
X-Google-Smtp-Source: ABdhPJzgAFYt65DxXDN1Q3Wp51dwEeehuFeQLrHfCYHU4Yc4aaT7ljrmZjZD8OZxtCl1ulHLz1PRuQ==
X-Received: by 2002:ac2:5bc7:0:b0:442:c31e:876a with SMTP id
 u7-20020ac25bc7000000b00442c31e876amr13887095lfn.382.1645452367294; 
 Mon, 21 Feb 2022 06:06:07 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id v7sm1353013ljd.120.2022.02.21.06.06.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Feb 2022 06:06:06 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <YhIIJxxXP3JzD60/@shredder>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-5-schultz.hans+netdev@gmail.com>
 <20220219100034.lh343dkmc4fbiad3@skbuf> <YhIIJxxXP3JzD60/@shredder>
Date: Mon, 21 Feb 2022 15:05:58 +0100
Message-ID: <86h78sqpq1.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, Hans Schultz <schultz.hans@gmail.com>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, David Ahern <dsahern@kernel.org>,
 Ido Schimmel <idosch@nvidia.com>, Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Stephen Suryaputra <ssuryaextr@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 4/5] net: dsa: mv88e6xxx: Add
 support for bridge port locked mode
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

On s=C3=B6n, feb 20, 2022 at 11:21, Ido Schimmel <idosch@idosch.org> wrote:
> On Sat, Feb 19, 2022 at 12:00:34PM +0200, Vladimir Oltean wrote:
>> On Fri, Feb 18, 2022 at 04:51:47PM +0100, Hans Schultz wrote:
>> > diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6=
xxx/port.c
>> > index ab41619a809b..46b7381899a0 100644
>> > --- a/drivers/net/dsa/mv88e6xxx/port.c
>> > +++ b/drivers/net/dsa/mv88e6xxx/port.c
>> > @@ -1234,6 +1234,39 @@ int mv88e6xxx_port_set_mirror(struct mv88e6xxx_=
chip *chip, int port,
>> >  	return err;
>> >  }
>> >=20=20
>> > +int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
>> > +			    bool locked)
>> > +{
>> > +	u16 reg;
>> > +	int err;
>> > +
>> > +	err =3D mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	reg &=3D ~MV88E6XXX_PORT_CTL0_SA_FILT_MASK;
>> > +	if (locked)
>> > +		reg |=3D MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK;
>> > +
>> > +	err =3D mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	err =3D mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR,=
 &reg);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	reg &=3D ~MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
>> > +	if (locked)
>> > +		reg |=3D MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
>> > +
>> > +	err =3D mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR=
, reg);
>>=20
>> 	return mv88e6xxx_port_write(...);
>
> Not familiar with mv88e6xxx, but shouldn't there be a rollback of
> previous operations? Specifically mv88e6xxx_port_write()
>

If a register write function fails, I don't think that it would make
sense to try and resolve the situation by additional register write
calls (rollback).

>>=20
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	return 0;
>> > +}
