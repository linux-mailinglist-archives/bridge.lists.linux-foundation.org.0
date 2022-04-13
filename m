Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4B84FF478
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA2CC40209;
	Wed, 13 Apr 2022 10:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZcEjwYJZi0q; Wed, 13 Apr 2022 10:13:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3C84B400FF;
	Wed, 13 Apr 2022 10:13:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F25B3C0088;
	Wed, 13 Apr 2022 10:13:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 138D6C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E145960B61
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkwxIjOZKazP for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:12:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3BDF660B60
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:12:59 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id t25so2602060lfg.7
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=OBygPYoH9eOHMctG/tJ0Rr+r+PpqAulwebHK5F77MXU=;
 b=Ia7psltFGoptmW0526Vz++uGR6At0o1ULKvloYNv+OCuVIgA/EqAswUtc6HVrkzoto
 u4MyQU8VdPeGSuNanN4LqjudjLvopRJDKYoUsB4FRKaieWrALMWzwgHBUCUAcw/l6VM2
 V7NdmLPTPmYI5HabCRYTbO3FSswzV4S/0NnJFsO4SHDE5yYahaoKhnucNKR7+cS77KcZ
 aHMq5rpL1AbjfSzfBYqpU9MKvnSc6xYYfb02bnc4zaeDYgTQidX3mQRDDBnx3RJV+BDw
 o2vrqFC2ChxQFR4ROWHFP7/KGwjNogCOG52GJosICA+X8mA6OtVl+Vk6PKRVrCpCXC5Q
 np+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=OBygPYoH9eOHMctG/tJ0Rr+r+PpqAulwebHK5F77MXU=;
 b=iBcAegapKCb2IZPwxTf6togFVWQ78rwJXzi1gazMJJgfY1YDBxe7hnOU1L8L0xc4+0
 Oqncod83kfRUGJ/KQWPbNeoDkodcaFVyCySRWP7cotx+onPQiFRYkaY43PLPgFnwnFBD
 YgRUGqxuDQRdz2/ln/xKE21BLd9v2e6XcaVd9DTQaOPb+QcIBrjskSucEN1U2rQzwyPU
 aAjndkfD32Tww3jd2RxvEmrm04gV9TbjUcBOUvmeO9wpWK4/M3/mhSOvZU/MPWlBR5+t
 3D05rhnrYYOxsQti5VvloFpnkWTIRDGlOOQJem8jyf+0V852LEqAa1jHdl9EwQ+9S42v
 Bh4A==
X-Gm-Message-State: AOAM532apNnUP0z7Z+cjFRSgNqGI5iU1cZ0pC3I9TgfRPDAr2WY3F6JN
 WVmi/nVodT7oo9SsyOu0Mmw=
X-Google-Smtp-Source: ABdhPJxIizJFt16LnUJZJu6mpqeIp5tAua7vVaHpQQ0gOxgGyhkfSEHMNr8+o3lc5QOf0N6Eru4yjg==
X-Received: by 2002:ac2:48b9:0:b0:46b:c3eb:a54b with SMTP id
 u25-20020ac248b9000000b0046bc3eba54bmr3370857lfg.507.1649844777204; 
 Wed, 13 Apr 2022 03:12:57 -0700 (PDT)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 f16-20020a2eb5b0000000b0024b62fa91b9sm943284ljn.99.2022.04.13.03.12.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:12:56 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <586b97b3-0882-b42c-20f8-275a05b51beb@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
 <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
 <87v8ve9ppr.fsf@gmail.com>
 <5d597756-2fe1-e7cc-9ef3-c0323e2274f2@blackwall.org>
 <87pmll9xj1.fsf@gmail.com>
 <96bb8ff0-26d8-e9d3-e7c8-78f2abd28126@blackwall.org>
 <586b97b3-0882-b42c-20f8-275a05b51beb@blackwall.org>
Date: Wed, 13 Apr 2022 12:12:55 +0200
Message-ID: <87a6cp9tqw.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 08/13] net: bridge: avoid
	classifying unknown multicast as mrouters_only
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

On Wed, Apr 13, 2022 at 12:00, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 13/04/2022 11:55, Nikolay Aleksandrov wrote:
>> On 13/04/2022 11:51, Joachim Wiberg wrote:
>>> So, if I add a bridge flag, default off as you mentioned out earlier,
>>> which changes the default behavior of MCAST_FLOOD, then you'd be OK with
>>> that?  Something cheeky like this perhaps:
>>>     if (!ipv4_is_local_multicast(ip_hdr(skb)->daddr))
>>>        	BR_INPUT_SKB_CB(skb)->mrouters_only = !br_opt_get(br, BROPT_MCAST_FLOOD_RFC4541);
>> Exactly! And that is exactly what I had in mind when I wrote it. :)

Awesome, thank you! :)

> Just please use a different option name that better suggests what it does.

Heh, yeah spent a good while with my colleague (Tobias) thinking about
how to name this one.  I'll see what I can come up with, but whatever
shows up in the next patch iteration will be very open for discussion.

Cheers
 /Joachim
 
