Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6C76E7D77
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 16:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 441E361672;
	Wed, 19 Apr 2023 14:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 441E361672
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=S72bQ216
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W8v5GQKitNmE; Wed, 19 Apr 2023 14:51:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id ED6C7616AA;
	Wed, 19 Apr 2023 14:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED6C7616AA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91210C008C;
	Wed, 19 Apr 2023 14:51:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C8D0C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 14:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 235BC61698
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 14:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 235BC61698
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ROsM3PUr5c9F for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 14:51:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFFC161672
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFFC161672
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 14:51:28 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id u3so30377469ejj.12
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 07:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681915887; x=1684507887;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=RjstvdYGMUmwl7cuoyXhYmHvHwi1+kSblwe4AfO4hek=;
 b=S72bQ216c1qdQUkdu/+jPjWWX97Yo8PU2hHNUcu4JxwHcSouaiZzG7iMmqshjym9Fy
 Ua1d59+VZ6TmuTy3QqRTzwEj2PVoBsGzIIP3Hg1WZvkDBC1x/xQhXN3MBwa6hkM6G04l
 +cnDmHizyTZMlbsYbGfyRDXDmVm1dDuYTM+n1lAuSROUW0uIoKgeQCpLjMtsoA4rVvp6
 e0b9ozjgsK1en+uy8C4aTVWVQrxXSccdmgkfEsDDpnufegsXK91iHrWWH7MO5KurRPew
 0rPGsn4KIBdKAVIJwt6Hzmem3/iXs+w9RyGe2YSR4TUII736yF7/WmOq2/+qRAn+uAWS
 vapQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681915887; x=1684507887;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RjstvdYGMUmwl7cuoyXhYmHvHwi1+kSblwe4AfO4hek=;
 b=JMDE71r3QllKMBZm0LFWc8ttr23Viz1eyV3cNA9Gr3QIV0xb2sTlwG6QmyvykvuM7o
 sabtJLQnWSvZvIrtTvCp9RRo+wfUkt1heihyO3dx4KvpsKkeCRpYlXfsFlZMHTyESdL8
 5v2GjvaOVw5jAd4nw1oKW4o9zxWZXwiNToH2v70Mmk0BKJ0qlTv/0NqGfDoji7cmqA3l
 Vi9QRQLeooUUtIuFejhxW68sjta1tsq0/PvZD7dS4n8BEHVtS/qQeIGGZQJ3JmRjt+S/
 8jnGV6yToaL3c2I8uBAjKSmGHAR0HdSCvSyt5eG8O0TrKUGM+EHMELiQq2Xy9wxZBL0y
 lSCg==
X-Gm-Message-State: AAQBX9dwhkIDj5esE12En9UqoIrowGsPm+7GsaPyO+nVZ31QEC4ryuvL
 5oegKTXN0u38HGxwyRlP9Bk=
X-Google-Smtp-Source: AKy350Y+J74xVdupdmKrGhaq4ESmwt3/eFjWoEplpxHaVt+3Ucce8B8QPRA1/RLctUXnC0InuOV2wQ==
X-Received: by 2002:a17:907:86a4:b0:953:37eb:7727 with SMTP id
 qa36-20020a17090786a400b0095337eb7727mr4725912ejc.43.1681915886687; 
 Wed, 19 Apr 2023 07:51:26 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 ca11-20020a170906a3cb00b0094f14286f86sm6589334ejb.48.2023.04.19.07.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:51:26 -0700 (PDT)
Date: Wed, 19 Apr 2023 17:51:24 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230419145124.5z47v2p62nbskqr2@skbuf>
References: <20230413095830.2182382-1-idosch@nvidia.com>
 <95a773f6-5f88-712e-c494-9414d7090144@blackwall.org>
 <ZD/z2vI5ab0zPdRf@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZD/z2vI5ab0zPdRf@shredder>
Cc: petrm@nvidia.com, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 0/9] bridge: Add per-{Port,
 VLAN} neighbor suppression
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

On Wed, Apr 19, 2023 at 04:59:54PM +0300, Ido Schimmel wrote:
> On Wed, Apr 19, 2023 at 03:30:07PM +0300, Nikolay Aleksandrov wrote:
> > For the set:
> > Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
> 
> Thanks! Will rebase, retest and submit v1

Shouldn't the version numbers be independent of the RFC/PATCH
designation (and thus this would be a v2)? I know I was extremely
confused when I had to review a series by Colin Foster which jumped back
and forth between PATCH v6, RFC v3, PATCH v7, etc.
