Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E0D4B3AC5
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E33B681BF5;
	Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HtgnBi0vqYPM; Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 10BC9815AB;
	Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E063FC001A;
	Sun, 13 Feb 2022 10:14:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B09CCC000B
 for <bridge@lists.linux-foundation.org>; Tue,  8 Feb 2022 09:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 963CA401C3
 for <bridge@lists.linux-foundation.org>; Tue,  8 Feb 2022 09:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bDX0B_LPNuZ3 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Feb 2022 09:07:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDB6F401C1
 for <bridge@lists.linux-foundation.org>; Tue,  8 Feb 2022 09:07:23 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id r7so11634324wmq.5
 for <bridge@lists.linux-foundation.org>; Tue, 08 Feb 2022 01:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=vpEZx2aDaRD4hwz/cgEGHsBbudveBVKpDQc3oNrzJIc=;
 b=A1mUx61Urxs2tc3tDNhFy5T2KYzXThskLrNm4DZWlKBPDM1U1/UpjS3L5MCLg7Nwp0
 lruhQU7oJCghLyzpYkjK7jdMiWwSWztmQCbknVuOk1DFg94SmfPNWpwfsExjOy/+8Vt2
 MaMwlHLqPHn1YWbEMte4iUQ8Yfewa66RLkgp82QG3HJN5HRJDSV3Effiw9CKp9UWNc1z
 ux7bPK+bV8P8z1E/scBFoGuZT3y/GCGzIP9ULqrTl/JNZ69tR/PyHRlu4yQ3e+Rm7qSp
 Wyb552MCBAUv/yNsVjtNq7jOSEXvcY+mKjUYPm3iP7AYBZbFP8puo7690NMGVYyUi97N
 p8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=vpEZx2aDaRD4hwz/cgEGHsBbudveBVKpDQc3oNrzJIc=;
 b=NEPZE3akoWbEsqZPMuJhjdgodZ4PBbK4URRX4x4tge4Sb2R/fgawYK4Z41TZy4Q4gn
 c8Bn3AHRbo3h8uCGdt5nJE8na0ososzrV8meWGN7mV4/tnTzFs1fKzrkpILrRRfdI3De
 GWOoSENaaAEneVtn+uBng7IdH8f4zYtr9oJHbQ3ZGLrR6xESUznSNQiHBpeofyQIVLNI
 Y05lzSIz4ZJ6VoNJjkV8m/rUUY7R4mkRO2x03IlZj/PKB1lH4CX+ORgekzm98rYbzjNb
 tQD4R1z9VZUctHYXB4WycQbZIShCbau97QaftdUwgnvJLee3QmRISKp6dh8uCDarcSzu
 NDlA==
X-Gm-Message-State: AOAM5315N8r99mafmvvtyuUD4G2qmLm9trngobufEnoSZTbWzZMdm1Qp
 HwTu2Cn/e33o4dG0wKallHcJ++Uz1TwP6ym25d8=
X-Google-Smtp-Source: ABdhPJwGj5CMnZHIBULLOZXgzOyt/GzqPmlJb8H7Fsp+QBjdmImqlhcfcnu04//CymPcII4Qucj2gA==
X-Received: by 2002:a05:600c:4f06:: with SMTP id
 l6mr228404wmq.126.1644311241631; 
 Tue, 08 Feb 2022 01:07:21 -0800 (PST)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id u7sm585007wrm.15.2022.02.08.01.07.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 01:07:21 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Ido Schimmel <idosch@idosch.org>
In-Reply-To: <YgEkXARS160I9Ooe@lunn.ch>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
 <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
 <YgD5MglBy/UbN0uX@shredder> <YgEkXARS160I9Ooe@lunn.ch>
Date: Tue, 08 Feb 2022 10:06:43 +0100
Message-ID: <867da5viak.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, Hans Schultz <schultz.hans@gmail.com>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: Add support for
 bridge port in locked mode
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

On m=C3=A5n, feb 07, 2022 at 14:53, Andrew Lunn <andrew@lunn.ch> wrote:
>> > +	if (p->flags & BR_PORT_LOCKED) {
>> > +		fdb_entry =3D br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>> > +		if (!(fdb_entry && fdb_entry->dst =3D=3D p))
>> > +			goto drop;
>>=20
>> I'm not familiar with 802.1X so I have some questions:
>
> Me neither.
>
>>=20
>> 1. Do we need to differentiate between no FDB entry and an FDB entry
>> pointing to a different port than we expect?
>
> And extending that question, a static vs a dynamic entry?
>
>     Andrew

The question is - if there is an fdb entry or not - for the specific client
mac address behind the locked port in the bridge associated with the
respective locked port and vlan taken into consideration.
Normally you would have learning disabled, or from a fresh start if a port
is locked, it will not learn on incoming from that port, so you need to
add the fdb entry from user-space. In the common case you will want to
use static entries and remember the master flag for the entry to go to
the bridge module.
