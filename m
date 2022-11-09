Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 987066226BF
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 10:21:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1B5060D6E;
	Wed,  9 Nov 2022 09:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1B5060D6E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=di4Uj0oh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFNMwFd9vmJ7; Wed,  9 Nov 2022 09:21:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 54A3860E77;
	Wed,  9 Nov 2022 09:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54A3860E77
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06840C002D;
	Wed,  9 Nov 2022 09:21:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5157EC002D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 09:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 200C84019D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 09:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 200C84019D
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=di4Uj0oh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w3wGdf48KsL1 for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 09:21:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CAE640B03
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CAE640B03
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 09:21:12 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id kt23so44967217ejc.7
 for <bridge@lists.linux-foundation.org>; Wed, 09 Nov 2022 01:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7g0AbY5/adDRQsHrmygyhM6FzTVG4xjy6DBIzTAO0mk=;
 b=di4Uj0oh7+iqBZqbaRrqFsIeaBk5lzHnPlWP+70SlXufN7d7RjOJrIzWoluXMpU7ob
 PRLFUxAtPWw3qG8bDgGxHlGh+BzNRm+YAZOTaMxGLjjFivHe3gX0ienVyqFBtfEaBB0i
 qLTCxSSx22l7uzAhr3q12mbKTHX18eVdYS2yRx+JsL4XFzNS0m8azxRmG0gpn1+wnevN
 0AW2RlLuAYmhmMnFUP7Dzg+CmaxknJd2sfymxW7NTi6qMQ4G7eTlRVCgWijlHru+iw4f
 F5cWmR2u3KnxtOL/m9O6NRwRVY0pr0wD25OUw/pDR3cm6AYQuNFMgX7ZyZSUGa6ZPAaM
 AbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7g0AbY5/adDRQsHrmygyhM6FzTVG4xjy6DBIzTAO0mk=;
 b=ns5CTrJns4hD/YVPw1pEL0NzlMYNu/lkLAmUt6XNicpqJzLkAGpeaaoXbJ4eKsN5EN
 P99pYvJX79xYifjP46h8mmyeO/MrM7H39FpeutZXx+Jop/qskcllcaOQ6OKLSqAcD83w
 JXETe0BZtLv2PA7JwrGDupy75NGoutft0ALUPFkafaYqTSFVU3tNyAT1JKLRWnZ7d9Bc
 2g89W6Zo/M/m3UO7jPbpP83Xtlucg6ZJ21AIn6N5ib682BhEl2gBBiwmyixSZC+HZkvl
 lDdrjdj1bwiwLA3Etrw9DiM7+AF8HpJfmQJFjD8FxiQHvJldMC5U+bt27UIOvhADCb7t
 WStw==
X-Gm-Message-State: ACrzQf0TREuQ4nRD5WNspVRGqsFK0ENECgvW24RPQCuyggBr1h8gDr1S
 R42m4a6sldJTgM43EokZIOs=
X-Google-Smtp-Source: AMsMyM5TLpQs092Eg9MW7B1tNG6W1ZYXz2ZXsCfVfkLGtxbgEXnKGft2jEf8L/GxoE++O6PG+IA5PA==
X-Received: by 2002:a17:906:9f15:b0:78c:fb5e:8592 with SMTP id
 fy21-20020a1709069f1500b0078cfb5e8592mr1096742ejc.711.1667985670076; 
 Wed, 09 Nov 2022 01:21:10 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 v2-20020a170906292200b00779cde476e4sm5625287ejd.62.2022.11.09.01.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Nov 2022 01:21:09 -0800 (PST)
Date: Wed, 9 Nov 2022 11:21:07 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221109092107.dzgogolaox7upnit@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <f433543efdb610ef5a6aba9ac52b4783ff137a13.1667902754.git.petrm@nvidia.com>
 <20221108145929.qmu2gvd5vvgvasyy@skbuf> <Y2tkNa7nnAdeD5Nc@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2tkNa7nnAdeD5Nc@shredder>
Cc: Petr Machata <petrm@nvidia.com>, Ivan Vecera <ivecera@redhat.com>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Jiri Pirko <jiri@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 11/15] mlxsw: spectrum_switchdev: Add
 locked bridge port support
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

On Wed, Nov 09, 2022 at 10:26:29AM +0200, Ido Schimmel wrote:
> On Tue, Nov 08, 2022 at 04:59:29PM +0200, Vladimir Oltean wrote:
> > Can't really figure out from the patch, sorry. Port security works with
> > LAG offload?
> 
> Yes. It's just that port security needs to be enabled on each of the
> member ports. FDB entries that point to a LAG are programmed with a
> lag_id. When a packet is received from a LAG the hardware will compare
> source_lag_id == lag_id instead of rx_local_port == tx_local_port.

Okay, understood, the concepts are clear.
