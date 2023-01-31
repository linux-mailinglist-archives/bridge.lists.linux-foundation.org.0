Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB0682BC4
	for <lists.bridge@lfdr.de>; Tue, 31 Jan 2023 12:47:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0A2A40253;
	Tue, 31 Jan 2023 11:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0A2A40253
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=Fo7vvvq4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XbaP2eq0Bqtc; Tue, 31 Jan 2023 11:47:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 24CB440241;
	Tue, 31 Jan 2023 11:47:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24CB440241
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BD813C0078;
	Tue, 31 Jan 2023 11:47:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D0227C002B
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 11:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9670404B6
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 11:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9670404B6
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Fo7vvvq4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-RMnL4EZlPx for <bridge@lists.linux-foundation.org>;
 Tue, 31 Jan 2023 11:47:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42FB14040B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42FB14040B
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 11:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675165629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=viqpHWhPo/KOVRQlm6/EPChg5qrOk8FiTFF1q6ZWvFs=;
 b=Fo7vvvq4cpC5wiS0VrPOv8sP5i1DrF54KkajQJKGbiPyd7MGHZxrBN/rkdvrO790Ey1FKK
 mwlY3bIksYIXnhj8QH7g0cEzkDsqkUzhoTU4B7Hrzg74AasLOoa1FFAa8e5axeHP6hykjz
 re+5rbbz7s1tUBepjx9HEdSaW15mr88=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-441-0V7aQ6NiM4yi25_0bY8i4Q-1; Tue, 31 Jan 2023 06:47:08 -0500
X-MC-Unique: 0V7aQ6NiM4yi25_0bY8i4Q-1
Received: by mail-qk1-f199.google.com with SMTP id
 v7-20020a05620a0f0700b006faffce43b2so8851892qkl.9
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 03:47:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=viqpHWhPo/KOVRQlm6/EPChg5qrOk8FiTFF1q6ZWvFs=;
 b=l2JLbQDBk2YGjiLs8mye6R7f6OC1FcQ8BT9uYW41wmE9Mheu3OtS34jiMX8jFI7B96
 B4I6jfbFNE12vTVoQIeHNikdSjXrdorZJuxL7Bx2bmAQoZhlS3qCLWfGoTIsIAe0FHkx
 ovOm9/1O1BZ0c74C0d7/TbbUJ8cMzqCPezEGV+uEJYIxeo65KiMgAB/CPE02f7WXNOJr
 z2hmXPU8w6pxZ3tBX2mcjxfZNFVucI33B0xN4PMBHD3wDDUhuslP3NiLelDMsQYh2FsB
 YQkBKx0nv77v23Bu/FWCSdGW1PQPqoNXayacgaGyrkC2+JhSrhTjHXrr0T6ogeBhUAdR
 TxUw==
X-Gm-Message-State: AO0yUKXsNRaNeRsiGLbWw1dLiaV3L2aHq/94zgFqMKFkMRRYvnQ80dpV
 FxaXiAslyh39/mLqVMucUoEu7ddV8bJ8A4Z/LU6TDNJfNHyMpEf6NMypxD81G93BAPxzvsXNhIL
 ibM3vYh/fyjH9w8ftpnQuE5wN0lleJRo=
X-Received: by 2002:a05:622a:1b26:b0:3b9:b608:15ff with SMTP id
 bb38-20020a05622a1b2600b003b9b60815ffmr151749qtb.6.1675165627640; 
 Tue, 31 Jan 2023 03:47:07 -0800 (PST)
X-Google-Smtp-Source: AK7set+OsvoMJaKEdiMO0IGIX2KVcCVugOQ5znDioMvtByElXVrSz1WJKmPFg6/YhgJO2QufL2FSxA==
X-Received: by 2002:a05:622a:1b26:b0:3b9:b608:15ff with SMTP id
 bb38-20020a05622a1b2600b003b9b60815ffmr151733qtb.6.1675165627386; 
 Tue, 31 Jan 2023 03:47:07 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-113-28.dyn.eolo.it.
 [146.241.113.28]) by smtp.gmail.com with ESMTPSA id
 k8-20020ac80208000000b003b1546ee6absm9792989qtg.11.2023.01.31.03.47.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Jan 2023 03:47:06 -0800 (PST)
Message-ID: <801a4a44f0fb6e37f79037eae9a3db50191cdb12.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>
Date: Tue, 31 Jan 2023 12:47:03 +0100
In-Reply-To: <c1a88f471a8aa6d780dde690e76b73ba15618b6d.1675010984.git.leon@kernel.org>
References: <c1a88f471a8aa6d780dde690e76b73ba15618b6d.1675010984.git.leon@kernel.org>
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2] netlink: provide an ability to set
 default extack message
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

Hello,

On Sun, 2023-01-29 at 18:51 +0200, Leon Romanovsky wrote:
> In netdev common pattern, extack pointer is forwarded to the drivers
> to be filled with error message. However, the caller can easily
> overwrite the filled message.
>=20
> Instead of adding multiple "if (!extack->_msg)" checks before any
> NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> add new macro to common code.
>=20
> [1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

I'm sorry for nit-picking, but checkpatch complains the author
(leon@kernel.org) does not match the SoB tag. A v3 with a suitable
From: tag should fix that.

Thanks,

Paolo

